from pathlib import Path
import xml.etree.ElementTree as ET
from dataclasses import dataclass, field
from typing import List, Optional, Dict, Set, Tuple
from urllib.request import urlopen
import re

type_map = {
    "void": "NoneType",
    "intptr_t": "c_size_t",
    "char": "c_char",
    "unsigned char": "c_uint",
    "int": "c_int",
    "unsigned int": "c_uint",
    "short": "c_short",
    "unsigned short": "c_ushort",
    "long": "c_long",
    "long long": "c_long_long",
    "size_t": "c_size_t",
    "ssize_t": "c_ssize_t",
    "float": "c_float",
    "float_t": "c_float",
    "double": "c_double",
    "uint8_t": "UInt8",
    "uint16_t": "UInt16",
    "uint32_t": "UInt32",
    "uint64_t": "UInt64",
    "int8_t": "Int8",
    "int16_t": "Int16",
    "int32_t": "Int32",
    "int64_t": "Int64",
}

# Extra useful groups (enums) that are not used in the commands from the specification
extra_groups = [
    "AlphaFunction",
    "AttribMask",
    "ContextFlagMask",
    "ContextProfileMask",
    "ConvolutionTargetEXT",
    "DepthStencilTextureMode",
    "FogCoordinatePointerType",
    "FogMode",
    "MatrixMode",
    "MeshMode1",
    "MeshMode2",
    "PathColorFormat",
    "PathFillMode",
    "PathFontStyle",
    "PathGenMode",
    "PathTransformType",
    "PixelCopyType",
    "SpecialNumbers",
    "TextureCompareMode",
    "TextureEnvMode",
    "TextureEnvParameter",
    "TextureMagFilter",
    "TextureMinFilter",
    "TextureSwizzle",
    "TextureWrapMode",
]


def to_snake_case(string: str) -> str:
    string = re.sub(r"(\d)D\b", r"_\1d", string)
    return re.sub(r"(?<=[a-z0-9])(?=[A-Z])|(?<=[A-Z])(?=[A-Z][a-z])", "_", string).lower()


@dataclass
class Type:
    name: str
    type: str
    ptr: bool = False
    struct: bool = False

    @classmethod
    def from_xml(cls, type_elem: ET.Element) -> "Type":
        """Factory method to create a Type from name and type string"""
        name = type_elem.find("name").text
        type_str = type_elem.text
        if not type_str and "struct" in name:
            clean_name = name.replace("struct ", "")
            return cls(name=clean_name, type="", struct=True)

        type_str = type_str.replace("typedef ", "").replace("khronos_", "").strip()
        type_str = re.sub(r"void\s*\*", "OpaquePointer", type_str)

        if "struct" in type_str:
            clean_type = type_str.replace("struct ", "").replace("*", "").strip()
            is_ptr = "*" in type_str
            return cls(name=name, type=clean_type, struct=True, ptr=is_ptr)

        return cls(name=name, type=type_map.get(type_str, type_str))

    def __str__(self):
        template = '''
@fieldwise_init
struct {name}(Copyable, Movable):
    """An opaque handle to a {name}."""
    pass
'''
        if self.ptr and self.struct:
            res = template.format(name=self.type)
            res += f"\ncomptime {self.name} = Ptr[{self.type}, ImmutAnyOrigin]"
            return res
        if self.struct:
            return template.format(name=self.name)
        return f"comptime {self.name} = {self.type}"


@dataclass
class EnumItem:
    """OpenGL enum item"""

    name: str
    value: str
    groups: List[str] = field(default_factory=list)

    @classmethod
    def from_xml(cls, enum_elem: ET.Element) -> "EnumItem":
        name = enum_elem.get("name")
        value = enum_elem.get("value")
        return cls(name=name, value=value, groups=enum_elem.attrib.get("group", "").split(","))

    @property
    def mojo_name(self):
        return self.name

    def __str__(self):
        return f"comptime {self.mojo_name} = {self.value}"


enums_template = """
@fieldwise_init
struct {name}(Intable, TrivialRegisterPassable):
    var value: {dtype}
    
    {aliases}
    
    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)
"""


def generate_enum(name: str, registry: "OpenGLRegistry") -> str:
    if not name:
        return ""
    dtype = registry.current_groups[name]
    dtype = dtype.type if dtype else "GLenum"
    aliases = "\n    ".join(f"comptime {e.mojo_name} = {name}({e.value})" for e in registry.enums.values() if name in e.groups)
    if not aliases:
        return ""
    res = enums_template.format(name=name, dtype=dtype, aliases=aliases)
    if dtype == "GLbitfield":
        res += """
    @always_inline
    def __or__(lhs, rhs: Self) -> Self:
        return Self(lhs.value | rhs.value)
"""
    return res


@dataclass
class CommandEl:
    """Element of OpenGL command"""

    type: str
    group: str


@dataclass
class ReturnType(CommandEl):
    """Return type of OpenGL command"""

    @classmethod
    def from_xml(cls, proto_el: ET.Element) -> "ReturnType":
        return cls(
            type=getattr(proto_el.find("ptype"), "text", None),
            group=proto_el.attrib.get("group"),
        )

    def __bool__(self):
        return bool(self.type)

    def __str__(self):
        return self.group or self.type


@dataclass
class CommandParam(CommandEl):
    """Parameter of OpenGL command"""

    name: str
    ptrs: int
    kind: str

    @classmethod
    def from_xml(cls, param_elem: ET.Element) -> "CommandParam":
        match_variable = re.compile(
            r"^\s*(?P<const_spec>const\s+)?(?P<type>(?:_cl_event|\w+))\s*(?P<raw_ptrs>.*?)\s*(?P<name>\w+)\s*;?\s*$"
        )
        match = match_variable.match(ET.tostring(param_elem, method="text", encoding="unicode").replace("struct", "").strip())
        param_name = match.group("name")
        if param_name in ["ref", "in"]:
            param_name += "_"
        return cls(
            name=param_name,
            type=match.group("type"),
            ptrs=match.group("raw_ptrs") + (match.group("const_spec") or ""),
            group=param_elem.attrib.get("group"),
            kind=param_elem.attrib.get("kind"),
        )

    def to_mojo_arg(self, anon=False):
        """Converts command parameter to Mojo function argument"""
        if anon:
            result = self.to_mojo_arg_inner()
            if self.is_nullable_pointer():
                name, type = result.split(": ", 1)
                return f"{name}: Optional[{type}]"
            return result
        name = to_snake_case(self.name)
        type = self.to_mojo_arg_inner().split(": ")[1]
        if "GLchar" in type:
            type = re.sub(r"Ptr\[\s*GLchar(?:[^\[\]]*|\[[^\]]*\])*\]", "String", type)
            name = "var " + name
            if "Ptr" in type:
                type = "List[String]"
        if type == "GLboolean":
            type = type.replace("GLboolean", "Bool")
        elif self.ptrs:
            type = re.sub(
                r"(?:Immut|Mut)AnyOrigin\]$",
                f"O_{to_snake_case(self.name)}]",
                type,
            )
        if self.is_nullable_pointer():
            type = f"Optional[{type}]"
        return f"{name}: {type}"

    def is_nullable_pointer(self) -> bool:
        return self.type == "void" and len(re.findall(r"\*", self.ptrs)) == 1

    def origin_generic(self) -> str:
        if self.ptrs and "GLchar" not in self.type:
            return f"O_{to_snake_case(self.name)}: Origin"
        return ""

    def to_mojo_arg_inner(self):
        """Converts command parameter to Mojo function argument"""
        type = self.group or type_map.get(self.type, self.type)
        if not self.ptrs:
            return f"{to_snake_case(self.name)}: {type}"
        ptr_tokens = re.findall(r"\*\s*(const)?", self.ptrs)
        for const_modifier in reversed(ptr_tokens):
            is_mutable = not bool(const_modifier)
            if type == "GLchar":
                is_mutable = False
            origin = "ImmutAnyOrigin" if not is_mutable else "MutAnyOrigin"
            type = f"Ptr[{type}, {origin}]"
        return f"{to_snake_case(self.name)}: {type}"

    def get_call_expr(self) -> str:
        """Returns the expression for calling the function pointer"""
        snake_name = to_snake_case(self.name)
        if self.is_nullable_pointer():
            return f"ffi_{snake_name}"
        if "GLchar" in self.type:
            return f"UnsafePointer[mut=False, GLchar, ImmutAnyOrigin](unsafe_from_address=Int({snake_name}.as_c_string_slice().unsafe_ptr()))"
        if "Bool" in self.to_mojo_arg():
            return f"GLboolean(Int({snake_name}))"
        if self.ptrs:
            ffi_type = self.to_mojo_arg_inner().split(": ", 1)[1]
            return f"{ffi_type}(unsafe_from_address=Int({snake_name}))"
        return snake_name

    def ffi_setup(self) -> str:
        if not self.is_nullable_pointer():
            return ""
        name = to_snake_case(self.name)
        ffi_type = self.to_mojo_arg_inner().split(": ", 1)[1]
        return f"""
    var ffi_{name}: Optional[{ffi_type}] = None
    if {name}:
        ffi_{name} = {ffi_type}(unsafe_from_address=Int({name}.value()))"""


@dataclass
class Command:
    """OpenGL command"""

    name: str
    return_type: ReturnType
    params: List[CommandParam] = field(default_factory=list)

    @classmethod
    def from_xml(cls, cmd_elem: ET.Element) -> "Command":
        proto_elem = cmd_elem.find("proto")
        if proto_elem is None:
            raise ValueError(f"Command {cmd_elem.find('name').text} has no proto")

        return_type = ReturnType.from_xml(proto_elem)

        params = [CommandParam.from_xml(param_elem) for param_elem in cmd_elem.findall("param")]
        return cls(name=proto_elem.find("name").text, return_type=return_type, params=params)

    def __str__(self):
        """Converts command to Mojo function declaration"""
        return f"""
{self._fn_str()}:{self.fn_body()}
    """

    def _fn_str(self, anon=False):
        res = "def "
        if not anon:
            res += f" {self.mojo_name()}"
        generics = [p.origin_generic() for p in self.params if p.origin_generic()] if not anon else []
        if generics:
            res += f"[{', '.join(g for g in generics if g)}, //]"
        res += f"({', '.join(p.to_mojo_arg(anon=anon) for p in self.params)})"
        if not anon:
            res += " raises"
        else:
            res += ' thin abi("C")'
        if self.return_type:
            res += f" -> {self.return_type}"
        return res

    def fn_body(self):
        call_args = [p.get_call_expr() for p in self.params]
        str_list = [p for p in self.params if "List" in p.to_mojo_arg()]
        body = "".join(p.ffi_setup() for p in self.params)
        if str_list:
            str_list = str_list[0]
            call_args[call_args.index(str_list.get_call_expr())] = "UnsafePointer[mut=False, UnsafePointer[mut=False, GLchar, ImmutAnyOrigin], ImmutAnyOrigin](unsafe_from_address=Int(c_list.unsafe_ptr()))"
            body += f"""\n    var c_list = [UnsafePointer[mut=False, GLchar, ImmutAnyOrigin](unsafe_from_address=Int(str.as_c_string_slice().unsafe_ptr())) for ref str in {to_snake_case(str_list.name)}]"""
        body += f"""
    return get_fn[{self.inner_name()}, "{self.name}"]()({", ".join(call_args)})
"""
        return body

    def inner_name(self):
        return f"{self.name}"

    def ptr_decl(self):
        return f"comptime {self.inner_name()} = {self._fn_str(anon=True)}"

    def mojo_name(self):
        return f"{to_snake_case(self.name.removeprefix('gl'))}"

    def fn_init(self):
        return f'table[]["{self.name}"] = load_fn_ptr("{self.name}", load)'


@dataclass
class Feature:
    """OpenGL feature"""

    api: str
    name: str
    number: str
    require: Set[str] = field(default_factory=set)
    remove: Set[str] = field(default_factory=set)

    @classmethod
    def from_xml(cls, xml: ET.Element) -> "Feature":
        require = set(el.attrib.get("name") for el in xml.findall("require/*"))
        remove = set(el.attrib.get("name") for el in xml.findall("remove/*"))
        return cls(
            api=xml.attrib.get("api"),
            name=xml.attrib.get("name"),
            number=xml.attrib.get("number"),
            require=require,
            remove=remove,
        )

    def __add__(self, other: "Feature") -> "Feature":
        assert self.api == other.api
        return Feature(
            api=self.api,
            name=self.name,
            number=self.number,
            require=self.require | other.require,
            remove=self.remove | other.remove,
        )

    def init_fns(self, registry: "OpenGLRegistry") -> str:
        return f"""
def init_{self.name.lower()}(load: LoadProc) raises:
    table = func_table.get_or_create_ptr()
    {"\n    ".join(f.fn_init() for f in registry.current_commands if f.name in self.require)}
    """


def parse_types(root: ET.Element) -> Dict[str, Type]:
    types = {}
    for type_elem in root.findall("types/type"):
        # Skip vendor extension types
        if type_elem.find("apientry") is not None:
            continue
        name_elem = type_elem.find("name")
        if name_elem is not None and name_elem.text:
            type = Type.from_xml(type_elem)
            types[type.name] = type
    return types


class OpenGLRegistry:
    def __init__(self, root: ET.Element):
        self.apis = set(feat.attrib["api"] for feat in root.findall("feature"))

        self.types = parse_types(root)
        self.enums = {enum.name: enum for enum in [EnumItem.from_xml(enum_elem) for enum_elem in root.findall("enums/enum")]}
        self.commands = {cmd.name: cmd for cmd in [Command.from_xml(cmd_elem) for cmd_elem in root.findall("commands/command")]}
        self.features = {api: [Feature.from_xml(feat) for feat in root.findall(f"feature[@api='{api}']")] for api in self.apis}
        self.fix_features_require()
        self.current_features: List[Feature] = []
        self.current_commands: List[Command] = []
        self.current_groups: Dict[str, CommandEl] = {}
        self.current_types: List[Type] = []

    def fix_features_require(self):
        """Remove duplicate require in features"""
        for api, feats in self.features.items():
            all_symbols = set()
            res = []
            for f in sorted(feats, key=lambda x: x.number):
                f.require -= all_symbols
                all_symbols.update(f.require)
                res.append(f)
            self.features[api] = res

    def select_opengl_symbols(self, api: str, version: str = None, core: bool = True):
        """Select OpenGL symbols for a given API and version"""
        if api not in self.features:
            raise ValueError(f"API {api} does not exist, valid APIs are {', '.join(self.features.keys())}")
        if not version:
            version = self.features[api][-1].number
        features = [f for f in self.features[api] if f.number <= version]
        res = sum(features, start=features[0])
        if core:
            res.require -= res.remove
        self.current_features = features
        self.current_commands = [cmd for cmd in self.commands.values() if cmd.name in res.require]
        self.current_groups = {cmp.group: cmp for cmd in self.current_commands for cmp in cmd.params + [cmd.return_type] if cmp.group}
        self.current_groups.update({g: None for g in extra_groups})
        types = set(p.type for cmd in self.current_commands for p in [*cmd.params, cmd.return_type])
        self.current_types = [self.types[t] for t in types if t in self.types]


def generate_mojo_file(registry: OpenGLRegistry, path: str):
    with open(path, "w") as f:
        f.write(
            """
# x-------------------------------------------x #
# | OpenGL bindings for Mojo
# x-------------------------------------------x #
"""
        )

        f.write(
            """
from std.ffi import _Global, c_char, c_int, c_uint, c_short, c_ushort, c_size_t, c_ssize_t, c_float, c_double
from std.memory import OpaquePointer
from std.os import abort
comptime Ptr = UnsafePointer

# ========= TYPES =========\n\n"""
        )
        for type in sorted(registry.current_types, key=lambda x: x.name):
            f.write(f"{type}\n")
        f.write(
            """
comptime GLDEBUGPROC = def(source: GLenum, type: GLenum, id: GLuint, severity: GLenum, length: GLsizei, message: Ptr[GLchar, ImmutAnyOrigin], user_param: OpaquePointer) thin abi("C")
"""
        )
        f.write(
            """
# ========= ENUMS =========\n\n"""
        )
        for group in sorted(registry.current_groups):
            f.write(generate_enum(group, registry))
        f.write(
            f"""
# ========= COMMANDS =========

comptime LoadProc = def(String) thin raises -> def() thin abi("C") -> None
comptime FuncPtr = ImmOpaquePointer[ImmUntrackedOrigin]

def _init_empty_table() -> Dict[StaticString, FuncPtr]:
    return {{}}
comptime func_table = _Global["table", _init_empty_table]()


@always_inline
def load_fn_ptr(name: String, load: LoadProc) raises -> FuncPtr:
    var func = load(name)
    return UnsafePointer(to=func).bitcast[FuncPtr]()[]


@always_inline
def get_fn[fn_type: ImplicitlyCopyable, name: StaticString]() raises -> fn_type:
    var ptr = func_table.get_or_create_ptr()[][name]
    return UnsafePointer(to=ptr).bitcast[fn_type]()[] 
"""
        )
        ptr_decls = [func.ptr_decl() for func in registry.current_commands]
        func_strs = [str(func) for func in registry.current_commands]

        f.write("\n".join(ptr_decls) + "\n\n")
        f.write("\n".join(func_strs) + "\n")

        for feat in registry.current_features:
            f.write(feat.init_fns(registry))

        f.write(
            f"""
# ========= INIT =========
def init_opengl(load: LoadProc) raises:
    {"\n    ".join([f"init_{feat.name.lower()}(load)" for feat in registry.current_features])}
    """
        )


if __name__ == "__main__":
    URL = "https://raw.githubusercontent.com/KhronosGroup/OpenGL-Registry/refs/heads/main/xml/gl.xml"
    OUT_FILE = Path("src/gl.mojo")
    OUT_DIR = OUT_FILE.parent
    OUT_DIR.mkdir(parents=True, exist_ok=True)
    with open(OUT_DIR / "__init__.mojo", "w") as f:
        f.write(f"from .gl import *\n")

    print("Fetching OpenGL registry...")
    with urlopen(URL) as src:
        spec = src.read().decode("utf-8")
        root = ET.fromstring(spec)

    registry = OpenGLRegistry(root)
    print("Resolving OpenGL symbols...")
    registry.select_opengl_symbols("gl", "4.6", core=True)

    print(f"Generating Mojo bindings to {OUT_FILE}...")
    generate_mojo_file(registry, OUT_FILE)
    print("Done.")
