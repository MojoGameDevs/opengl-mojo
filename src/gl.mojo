# x-------------------------------------------x #
# | OpenGL bindings for Mojo
# x-------------------------------------------x #

from std.ffi import _Global, c_char, c_int, c_uint, c_short, c_ushort, c_size_t, c_ssize_t, c_float, c_double
from std.memory import OpaquePointer
from std.os import abort

comptime Ptr = UnsafePointer

# ========= TYPES =========

comptime GLbitfield = c_uint
comptime GLboolean = c_uint
comptime GLbyte = Int8
comptime GLchar = c_char
comptime GLdouble = c_double
comptime GLenum = c_uint
comptime GLfloat = c_float
comptime GLint = c_int
comptime GLint64 = Int64
comptime GLintptr = c_size_t
comptime GLshort = Int16
comptime GLsizei = c_int
comptime GLsizeiptr = c_ssize_t


@fieldwise_init
struct __GLsync(Copyable, Movable):
    """An opaque handle to a __GLsync."""

    pass


comptime GLsync = Ptr[__GLsync, ImmutAnyOrigin]
comptime GLubyte = UInt8
comptime GLuint = c_uint
comptime GLuint64 = UInt64
comptime GLushort = UInt16

comptime GLDEBUGPROC = def(source: GLenum, type: GLenum, id: GLuint, severity: GLenum, length: GLsizei, message: Ptr[GLchar], userParam: OpaquePointer)

# ========= ENUMS =========


@fieldwise_init
struct AlphaFunction(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_NEVER = AlphaFunction(0x0200)
    comptime GL_LESS = AlphaFunction(0x0201)
    comptime GL_EQUAL = AlphaFunction(0x0202)
    comptime GL_LEQUAL = AlphaFunction(0x0203)
    comptime GL_GREATER = AlphaFunction(0x0204)
    comptime GL_NOTEQUAL = AlphaFunction(0x0205)
    comptime GL_GEQUAL = AlphaFunction(0x0206)
    comptime GL_ALWAYS = AlphaFunction(0x0207)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct AtomicCounterBufferPName(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_COMPUTE_SHADER = AtomicCounterBufferPName(0x90ED)
    comptime GL_ATOMIC_COUNTER_BUFFER_BINDING = AtomicCounterBufferPName(0x92C1)
    comptime GL_ATOMIC_COUNTER_BUFFER_DATA_SIZE = AtomicCounterBufferPName(0x92C4)
    comptime GL_ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTERS = AtomicCounterBufferPName(0x92C5)
    comptime GL_ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTER_INDICES = AtomicCounterBufferPName(0x92C6)
    comptime GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_VERTEX_SHADER = AtomicCounterBufferPName(0x92C7)
    comptime GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_CONTROL_SHADER = AtomicCounterBufferPName(0x92C8)
    comptime GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_EVALUATION_SHADER = AtomicCounterBufferPName(0x92C9)
    comptime GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_GEOMETRY_SHADER = AtomicCounterBufferPName(0x92CA)
    comptime GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_FRAGMENT_SHADER = AtomicCounterBufferPName(0x92CB)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct AttribMask(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_CURRENT_BIT = AttribMask(0x00000001)
    comptime GL_POINT_BIT = AttribMask(0x00000002)
    comptime GL_LINE_BIT = AttribMask(0x00000004)
    comptime GL_POLYGON_BIT = AttribMask(0x00000008)
    comptime GL_POLYGON_STIPPLE_BIT = AttribMask(0x00000010)
    comptime GL_PIXEL_MODE_BIT = AttribMask(0x00000020)
    comptime GL_LIGHTING_BIT = AttribMask(0x00000040)
    comptime GL_FOG_BIT = AttribMask(0x00000080)
    comptime GL_DEPTH_BUFFER_BIT = AttribMask(0x00000100)
    comptime GL_ACCUM_BUFFER_BIT = AttribMask(0x00000200)
    comptime GL_STENCIL_BUFFER_BIT = AttribMask(0x00000400)
    comptime GL_VIEWPORT_BIT = AttribMask(0x00000800)
    comptime GL_TRANSFORM_BIT = AttribMask(0x00001000)
    comptime GL_ENABLE_BIT = AttribMask(0x00002000)
    comptime GL_COLOR_BUFFER_BIT = AttribMask(0x00004000)
    comptime GL_HINT_BIT = AttribMask(0x00008000)
    comptime GL_EVAL_BIT = AttribMask(0x00010000)
    comptime GL_LIST_BIT = AttribMask(0x00020000)
    comptime GL_TEXTURE_BIT = AttribMask(0x00040000)
    comptime GL_SCISSOR_BIT = AttribMask(0x00080000)
    comptime GL_MULTISAMPLE_BIT = AttribMask(0x20000000)
    comptime GL_MULTISAMPLE_BIT_ARB = AttribMask(0x20000000)
    comptime GL_MULTISAMPLE_BIT_EXT = AttribMask(0x20000000)
    comptime GL_MULTISAMPLE_BIT_3DFX = AttribMask(0x20000000)
    comptime GL_ALL_ATTRIB_BITS = AttribMask(0xFFFFFFFF)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct AttributeType(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_INT = AttributeType(0x1404)
    comptime GL_UNSIGNED_INT = AttributeType(0x1405)
    comptime GL_FLOAT = AttributeType(0x1406)
    comptime GL_DOUBLE = AttributeType(0x140A)
    comptime GL_INT64_ARB = AttributeType(0x140E)
    comptime GL_INT64_NV = AttributeType(0x140E)
    comptime GL_UNSIGNED_INT64_ARB = AttributeType(0x140F)
    comptime GL_UNSIGNED_INT64_NV = AttributeType(0x140F)
    comptime GL_FLOAT_VEC2 = AttributeType(0x8B50)
    comptime GL_FLOAT_VEC2_ARB = AttributeType(0x8B50)
    comptime GL_FLOAT_VEC3 = AttributeType(0x8B51)
    comptime GL_FLOAT_VEC3_ARB = AttributeType(0x8B51)
    comptime GL_FLOAT_VEC4 = AttributeType(0x8B52)
    comptime GL_FLOAT_VEC4_ARB = AttributeType(0x8B52)
    comptime GL_INT_VEC2 = AttributeType(0x8B53)
    comptime GL_INT_VEC2_ARB = AttributeType(0x8B53)
    comptime GL_INT_VEC3 = AttributeType(0x8B54)
    comptime GL_INT_VEC3_ARB = AttributeType(0x8B54)
    comptime GL_INT_VEC4 = AttributeType(0x8B55)
    comptime GL_INT_VEC4_ARB = AttributeType(0x8B55)
    comptime GL_BOOL = AttributeType(0x8B56)
    comptime GL_BOOL_ARB = AttributeType(0x8B56)
    comptime GL_BOOL_VEC2 = AttributeType(0x8B57)
    comptime GL_BOOL_VEC2_ARB = AttributeType(0x8B57)
    comptime GL_BOOL_VEC3 = AttributeType(0x8B58)
    comptime GL_BOOL_VEC3_ARB = AttributeType(0x8B58)
    comptime GL_BOOL_VEC4 = AttributeType(0x8B59)
    comptime GL_BOOL_VEC4_ARB = AttributeType(0x8B59)
    comptime GL_FLOAT_MAT2 = AttributeType(0x8B5A)
    comptime GL_FLOAT_MAT2_ARB = AttributeType(0x8B5A)
    comptime GL_FLOAT_MAT3 = AttributeType(0x8B5B)
    comptime GL_FLOAT_MAT3_ARB = AttributeType(0x8B5B)
    comptime GL_FLOAT_MAT4 = AttributeType(0x8B5C)
    comptime GL_FLOAT_MAT4_ARB = AttributeType(0x8B5C)
    comptime GL_SAMPLER_1D = AttributeType(0x8B5D)
    comptime GL_SAMPLER_1D_ARB = AttributeType(0x8B5D)
    comptime GL_SAMPLER_2D = AttributeType(0x8B5E)
    comptime GL_SAMPLER_2D_ARB = AttributeType(0x8B5E)
    comptime GL_SAMPLER_3D = AttributeType(0x8B5F)
    comptime GL_SAMPLER_3D_ARB = AttributeType(0x8B5F)
    comptime GL_SAMPLER_3D_OES = AttributeType(0x8B5F)
    comptime GL_SAMPLER_CUBE = AttributeType(0x8B60)
    comptime GL_SAMPLER_CUBE_ARB = AttributeType(0x8B60)
    comptime GL_SAMPLER_1D_SHADOW = AttributeType(0x8B61)
    comptime GL_SAMPLER_1D_SHADOW_ARB = AttributeType(0x8B61)
    comptime GL_SAMPLER_2D_SHADOW = AttributeType(0x8B62)
    comptime GL_SAMPLER_2D_SHADOW_ARB = AttributeType(0x8B62)
    comptime GL_SAMPLER_2D_SHADOW_EXT = AttributeType(0x8B62)
    comptime GL_SAMPLER_2D_RECT = AttributeType(0x8B63)
    comptime GL_SAMPLER_2D_RECT_ARB = AttributeType(0x8B63)
    comptime GL_SAMPLER_2D_RECT_SHADOW = AttributeType(0x8B64)
    comptime GL_SAMPLER_2D_RECT_SHADOW_ARB = AttributeType(0x8B64)
    comptime GL_FLOAT_MAT2x3 = AttributeType(0x8B65)
    comptime GL_FLOAT_MAT2x3_NV = AttributeType(0x8B65)
    comptime GL_FLOAT_MAT2x4 = AttributeType(0x8B66)
    comptime GL_FLOAT_MAT2x4_NV = AttributeType(0x8B66)
    comptime GL_FLOAT_MAT3x2 = AttributeType(0x8B67)
    comptime GL_FLOAT_MAT3x2_NV = AttributeType(0x8B67)
    comptime GL_FLOAT_MAT3x4 = AttributeType(0x8B68)
    comptime GL_FLOAT_MAT3x4_NV = AttributeType(0x8B68)
    comptime GL_FLOAT_MAT4x2 = AttributeType(0x8B69)
    comptime GL_FLOAT_MAT4x2_NV = AttributeType(0x8B69)
    comptime GL_FLOAT_MAT4x3 = AttributeType(0x8B6A)
    comptime GL_FLOAT_MAT4x3_NV = AttributeType(0x8B6A)
    comptime GL_SAMPLER_BUFFER = AttributeType(0x8DC2)
    comptime GL_SAMPLER_1D_ARRAY_SHADOW = AttributeType(0x8DC3)
    comptime GL_SAMPLER_2D_ARRAY_SHADOW = AttributeType(0x8DC4)
    comptime GL_SAMPLER_CUBE_SHADOW = AttributeType(0x8DC5)
    comptime GL_UNSIGNED_INT_VEC2 = AttributeType(0x8DC6)
    comptime GL_UNSIGNED_INT_VEC3 = AttributeType(0x8DC7)
    comptime GL_UNSIGNED_INT_VEC4 = AttributeType(0x8DC8)
    comptime GL_INT_SAMPLER_1D = AttributeType(0x8DC9)
    comptime GL_INT_SAMPLER_2D = AttributeType(0x8DCA)
    comptime GL_INT_SAMPLER_3D = AttributeType(0x8DCB)
    comptime GL_INT_SAMPLER_CUBE = AttributeType(0x8DCC)
    comptime GL_INT_SAMPLER_2D_RECT = AttributeType(0x8DCD)
    comptime GL_INT_SAMPLER_1D_ARRAY = AttributeType(0x8DCE)
    comptime GL_INT_SAMPLER_2D_ARRAY = AttributeType(0x8DCF)
    comptime GL_INT_SAMPLER_BUFFER = AttributeType(0x8DD0)
    comptime GL_UNSIGNED_INT_SAMPLER_1D = AttributeType(0x8DD1)
    comptime GL_UNSIGNED_INT_SAMPLER_2D = AttributeType(0x8DD2)
    comptime GL_UNSIGNED_INT_SAMPLER_3D = AttributeType(0x8DD3)
    comptime GL_UNSIGNED_INT_SAMPLER_CUBE = AttributeType(0x8DD4)
    comptime GL_UNSIGNED_INT_SAMPLER_2D_RECT = AttributeType(0x8DD5)
    comptime GL_UNSIGNED_INT_SAMPLER_1D_ARRAY = AttributeType(0x8DD6)
    comptime GL_UNSIGNED_INT_SAMPLER_2D_ARRAY = AttributeType(0x8DD7)
    comptime GL_UNSIGNED_INT_SAMPLER_BUFFER = AttributeType(0x8DD8)
    comptime GL_DOUBLE_MAT2 = AttributeType(0x8F46)
    comptime GL_DOUBLE_MAT3 = AttributeType(0x8F47)
    comptime GL_DOUBLE_MAT4 = AttributeType(0x8F48)
    comptime GL_DOUBLE_MAT2x3 = AttributeType(0x8F49)
    comptime GL_DOUBLE_MAT2x4 = AttributeType(0x8F4A)
    comptime GL_DOUBLE_MAT3x2 = AttributeType(0x8F4B)
    comptime GL_DOUBLE_MAT3x4 = AttributeType(0x8F4C)
    comptime GL_DOUBLE_MAT4x2 = AttributeType(0x8F4D)
    comptime GL_DOUBLE_MAT4x3 = AttributeType(0x8F4E)
    comptime GL_INT64_VEC2_ARB = AttributeType(0x8FE9)
    comptime GL_INT64_VEC3_ARB = AttributeType(0x8FEA)
    comptime GL_INT64_VEC4_ARB = AttributeType(0x8FEB)
    comptime GL_UNSIGNED_INT64_VEC2_ARB = AttributeType(0x8FF5)
    comptime GL_UNSIGNED_INT64_VEC3_ARB = AttributeType(0x8FF6)
    comptime GL_UNSIGNED_INT64_VEC4_ARB = AttributeType(0x8FF7)
    comptime GL_DOUBLE_VEC2 = AttributeType(0x8FFC)
    comptime GL_DOUBLE_VEC3 = AttributeType(0x8FFD)
    comptime GL_DOUBLE_VEC4 = AttributeType(0x8FFE)
    comptime GL_SAMPLER_CUBE_MAP_ARRAY = AttributeType(0x900C)
    comptime GL_SAMPLER_CUBE_MAP_ARRAY_SHADOW = AttributeType(0x900D)
    comptime GL_INT_SAMPLER_CUBE_MAP_ARRAY = AttributeType(0x900E)
    comptime GL_UNSIGNED_INT_SAMPLER_CUBE_MAP_ARRAY = AttributeType(0x900F)
    comptime GL_IMAGE_1D = AttributeType(0x904C)
    comptime GL_IMAGE_2D = AttributeType(0x904D)
    comptime GL_IMAGE_3D = AttributeType(0x904E)
    comptime GL_IMAGE_2D_RECT = AttributeType(0x904F)
    comptime GL_IMAGE_CUBE = AttributeType(0x9050)
    comptime GL_IMAGE_BUFFER = AttributeType(0x9051)
    comptime GL_IMAGE_1D_ARRAY = AttributeType(0x9052)
    comptime GL_IMAGE_2D_ARRAY = AttributeType(0x9053)
    comptime GL_IMAGE_CUBE_MAP_ARRAY = AttributeType(0x9054)
    comptime GL_IMAGE_2D_MULTISAMPLE = AttributeType(0x9055)
    comptime GL_IMAGE_2D_MULTISAMPLE_ARRAY = AttributeType(0x9056)
    comptime GL_INT_IMAGE_1D = AttributeType(0x9057)
    comptime GL_INT_IMAGE_2D = AttributeType(0x9058)
    comptime GL_INT_IMAGE_3D = AttributeType(0x9059)
    comptime GL_INT_IMAGE_2D_RECT = AttributeType(0x905A)
    comptime GL_INT_IMAGE_CUBE = AttributeType(0x905B)
    comptime GL_INT_IMAGE_BUFFER = AttributeType(0x905C)
    comptime GL_INT_IMAGE_1D_ARRAY = AttributeType(0x905D)
    comptime GL_INT_IMAGE_2D_ARRAY = AttributeType(0x905E)
    comptime GL_INT_IMAGE_CUBE_MAP_ARRAY = AttributeType(0x905F)
    comptime GL_INT_IMAGE_2D_MULTISAMPLE = AttributeType(0x9060)
    comptime GL_INT_IMAGE_2D_MULTISAMPLE_ARRAY = AttributeType(0x9061)
    comptime GL_UNSIGNED_INT_IMAGE_1D = AttributeType(0x9062)
    comptime GL_UNSIGNED_INT_IMAGE_2D = AttributeType(0x9063)
    comptime GL_UNSIGNED_INT_IMAGE_3D = AttributeType(0x9064)
    comptime GL_UNSIGNED_INT_IMAGE_2D_RECT = AttributeType(0x9065)
    comptime GL_UNSIGNED_INT_IMAGE_CUBE = AttributeType(0x9066)
    comptime GL_UNSIGNED_INT_IMAGE_BUFFER = AttributeType(0x9067)
    comptime GL_UNSIGNED_INT_IMAGE_1D_ARRAY = AttributeType(0x9068)
    comptime GL_UNSIGNED_INT_IMAGE_2D_ARRAY = AttributeType(0x9069)
    comptime GL_UNSIGNED_INT_IMAGE_CUBE_MAP_ARRAY = AttributeType(0x906A)
    comptime GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE = AttributeType(0x906B)
    comptime GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE_ARRAY = AttributeType(0x906C)
    comptime GL_SAMPLER_2D_MULTISAMPLE = AttributeType(0x9108)
    comptime GL_INT_SAMPLER_2D_MULTISAMPLE = AttributeType(0x9109)
    comptime GL_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE = AttributeType(0x910A)
    comptime GL_SAMPLER_2D_MULTISAMPLE_ARRAY = AttributeType(0x910B)
    comptime GL_INT_SAMPLER_2D_MULTISAMPLE_ARRAY = AttributeType(0x910C)
    comptime GL_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE_ARRAY = AttributeType(0x910D)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct BindTransformFeedbackTarget(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_TRANSFORM_FEEDBACK = BindTransformFeedbackTarget(0x8E22)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct BlendEquationModeEXT(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_FUNC_ADD = BlendEquationModeEXT(0x8006)
    comptime GL_FUNC_ADD_EXT = BlendEquationModeEXT(0x8006)
    comptime GL_MIN = BlendEquationModeEXT(0x8007)
    comptime GL_MIN_EXT = BlendEquationModeEXT(0x8007)
    comptime GL_MAX = BlendEquationModeEXT(0x8008)
    comptime GL_MAX_EXT = BlendEquationModeEXT(0x8008)
    comptime GL_FUNC_SUBTRACT = BlendEquationModeEXT(0x800A)
    comptime GL_FUNC_SUBTRACT_EXT = BlendEquationModeEXT(0x800A)
    comptime GL_FUNC_REVERSE_SUBTRACT = BlendEquationModeEXT(0x800B)
    comptime GL_FUNC_REVERSE_SUBTRACT_EXT = BlendEquationModeEXT(0x800B)
    comptime GL_ALPHA_MIN_SGIX = BlendEquationModeEXT(0x8320)
    comptime GL_ALPHA_MAX_SGIX = BlendEquationModeEXT(0x8321)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct BlendingFactor(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_ZERO = BlendingFactor(0)
    comptime GL_ONE = BlendingFactor(1)
    comptime GL_SRC_COLOR = BlendingFactor(0x0300)
    comptime GL_ONE_MINUS_SRC_COLOR = BlendingFactor(0x0301)
    comptime GL_SRC_ALPHA = BlendingFactor(0x0302)
    comptime GL_ONE_MINUS_SRC_ALPHA = BlendingFactor(0x0303)
    comptime GL_DST_ALPHA = BlendingFactor(0x0304)
    comptime GL_ONE_MINUS_DST_ALPHA = BlendingFactor(0x0305)
    comptime GL_DST_COLOR = BlendingFactor(0x0306)
    comptime GL_ONE_MINUS_DST_COLOR = BlendingFactor(0x0307)
    comptime GL_SRC_ALPHA_SATURATE = BlendingFactor(0x0308)
    comptime GL_CONSTANT_COLOR = BlendingFactor(0x8001)
    comptime GL_ONE_MINUS_CONSTANT_COLOR = BlendingFactor(0x8002)
    comptime GL_CONSTANT_ALPHA = BlendingFactor(0x8003)
    comptime GL_ONE_MINUS_CONSTANT_ALPHA = BlendingFactor(0x8004)
    comptime GL_SRC1_ALPHA = BlendingFactor(0x8589)
    comptime GL_SRC1_COLOR = BlendingFactor(0x88F9)
    comptime GL_ONE_MINUS_SRC1_COLOR = BlendingFactor(0x88FA)
    comptime GL_ONE_MINUS_SRC1_ALPHA = BlendingFactor(0x88FB)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct BlitFramebufferFilter(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_NEAREST = BlitFramebufferFilter(0x2600)
    comptime GL_LINEAR = BlitFramebufferFilter(0x2601)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct Buffer(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_COLOR = Buffer(0x1800)
    comptime GL_DEPTH = Buffer(0x1801)
    comptime GL_STENCIL = Buffer(0x1802)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct BufferAccessARB(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_READ_ONLY = BufferAccessARB(0x88B8)
    comptime GL_WRITE_ONLY = BufferAccessARB(0x88B9)
    comptime GL_READ_WRITE = BufferAccessARB(0x88BA)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct BufferPNameARB(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_BUFFER_IMMUTABLE_STORAGE = BufferPNameARB(0x821F)
    comptime GL_BUFFER_STORAGE_FLAGS = BufferPNameARB(0x8220)
    comptime GL_BUFFER_SIZE = BufferPNameARB(0x8764)
    comptime GL_BUFFER_SIZE_ARB = BufferPNameARB(0x8764)
    comptime GL_BUFFER_USAGE = BufferPNameARB(0x8765)
    comptime GL_BUFFER_USAGE_ARB = BufferPNameARB(0x8765)
    comptime GL_BUFFER_ACCESS = BufferPNameARB(0x88BB)
    comptime GL_BUFFER_ACCESS_ARB = BufferPNameARB(0x88BB)
    comptime GL_BUFFER_MAPPED = BufferPNameARB(0x88BC)
    comptime GL_BUFFER_MAPPED_ARB = BufferPNameARB(0x88BC)
    comptime GL_BUFFER_ACCESS_FLAGS = BufferPNameARB(0x911F)
    comptime GL_BUFFER_MAP_LENGTH = BufferPNameARB(0x9120)
    comptime GL_BUFFER_MAP_OFFSET = BufferPNameARB(0x9121)
    comptime GL_BUFFER_CLIENT_POINTER_SIZE_MESA = BufferPNameARB(0x9790)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct BufferPointerNameARB(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_BUFFER_MAP_POINTER = BufferPointerNameARB(0x88BD)
    comptime GL_BUFFER_MAP_POINTER_ARB = BufferPointerNameARB(0x88BD)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct BufferStorageMask(Intable, TrivialRegisterPassable):
    var value: GLbitfield

    comptime GL_DYNAMIC_STORAGE_BIT = BufferStorageMask(0x0100)
    comptime GL_DYNAMIC_STORAGE_BIT_EXT = BufferStorageMask(0x0100)
    comptime GL_CLIENT_STORAGE_BIT = BufferStorageMask(0x0200)
    comptime GL_CLIENT_STORAGE_BIT_EXT = BufferStorageMask(0x0200)
    comptime GL_SPARSE_STORAGE_BIT_ARB = BufferStorageMask(0x0400)
    comptime GL_LGPU_SEPARATE_STORAGE_BIT_NVX = BufferStorageMask(0x0800)
    comptime GL_PER_GPU_STORAGE_BIT_NV = BufferStorageMask(0x0800)
    comptime GL_EXTERNAL_STORAGE_BIT_NVX = BufferStorageMask(0x2000)
    comptime GL_MAP_READ_BIT = BufferStorageMask(0x0001)
    comptime GL_MAP_READ_BIT_EXT = BufferStorageMask(0x0001)
    comptime GL_MAP_WRITE_BIT = BufferStorageMask(0x0002)
    comptime GL_MAP_WRITE_BIT_EXT = BufferStorageMask(0x0002)
    comptime GL_MAP_PERSISTENT_BIT = BufferStorageMask(0x0040)
    comptime GL_MAP_PERSISTENT_BIT_EXT = BufferStorageMask(0x0040)
    comptime GL_MAP_COHERENT_BIT = BufferStorageMask(0x0080)
    comptime GL_MAP_COHERENT_BIT_EXT = BufferStorageMask(0x0080)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)

    @always_inline
    def __or__(lhs, rhs: Self) -> Self:
        return Self(lhs.value | rhs.value)


@fieldwise_init
struct BufferStorageTarget(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_ARRAY_BUFFER = BufferStorageTarget(0x8892)
    comptime GL_ELEMENT_ARRAY_BUFFER = BufferStorageTarget(0x8893)
    comptime GL_PIXEL_PACK_BUFFER = BufferStorageTarget(0x88EB)
    comptime GL_PIXEL_UNPACK_BUFFER = BufferStorageTarget(0x88EC)
    comptime GL_UNIFORM_BUFFER = BufferStorageTarget(0x8A11)
    comptime GL_TEXTURE_BUFFER = BufferStorageTarget(0x8C2A)
    comptime GL_TRANSFORM_FEEDBACK_BUFFER = BufferStorageTarget(0x8C8E)
    comptime GL_COPY_READ_BUFFER = BufferStorageTarget(0x8F36)
    comptime GL_COPY_WRITE_BUFFER = BufferStorageTarget(0x8F37)
    comptime GL_DRAW_INDIRECT_BUFFER = BufferStorageTarget(0x8F3F)
    comptime GL_SHADER_STORAGE_BUFFER = BufferStorageTarget(0x90D2)
    comptime GL_DISPATCH_INDIRECT_BUFFER = BufferStorageTarget(0x90EE)
    comptime GL_QUERY_BUFFER = BufferStorageTarget(0x9192)
    comptime GL_ATOMIC_COUNTER_BUFFER = BufferStorageTarget(0x92C0)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct BufferTargetARB(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_PARAMETER_BUFFER = BufferTargetARB(0x80EE)
    comptime GL_ARRAY_BUFFER = BufferTargetARB(0x8892)
    comptime GL_ELEMENT_ARRAY_BUFFER = BufferTargetARB(0x8893)
    comptime GL_PIXEL_PACK_BUFFER = BufferTargetARB(0x88EB)
    comptime GL_PIXEL_UNPACK_BUFFER = BufferTargetARB(0x88EC)
    comptime GL_UNIFORM_BUFFER = BufferTargetARB(0x8A11)
    comptime GL_TEXTURE_BUFFER = BufferTargetARB(0x8C2A)
    comptime GL_TRANSFORM_FEEDBACK_BUFFER = BufferTargetARB(0x8C8E)
    comptime GL_COPY_READ_BUFFER = BufferTargetARB(0x8F36)
    comptime GL_COPY_WRITE_BUFFER = BufferTargetARB(0x8F37)
    comptime GL_DRAW_INDIRECT_BUFFER = BufferTargetARB(0x8F3F)
    comptime GL_SHADER_STORAGE_BUFFER = BufferTargetARB(0x90D2)
    comptime GL_DISPATCH_INDIRECT_BUFFER = BufferTargetARB(0x90EE)
    comptime GL_QUERY_BUFFER = BufferTargetARB(0x9192)
    comptime GL_ATOMIC_COUNTER_BUFFER = BufferTargetARB(0x92C0)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct BufferUsageARB(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_STREAM_DRAW = BufferUsageARB(0x88E0)
    comptime GL_STREAM_READ = BufferUsageARB(0x88E1)
    comptime GL_STREAM_COPY = BufferUsageARB(0x88E2)
    comptime GL_STATIC_DRAW = BufferUsageARB(0x88E4)
    comptime GL_STATIC_READ = BufferUsageARB(0x88E5)
    comptime GL_STATIC_COPY = BufferUsageARB(0x88E6)
    comptime GL_DYNAMIC_DRAW = BufferUsageARB(0x88E8)
    comptime GL_DYNAMIC_READ = BufferUsageARB(0x88E9)
    comptime GL_DYNAMIC_COPY = BufferUsageARB(0x88EA)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct ClampColorModeARB(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_FALSE = ClampColorModeARB(0)
    comptime GL_TRUE = ClampColorModeARB(1)
    comptime GL_FIXED_ONLY = ClampColorModeARB(0x891D)
    comptime GL_FIXED_ONLY_ARB = ClampColorModeARB(0x891D)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct ClampColorTargetARB(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_CLAMP_VERTEX_COLOR_ARB = ClampColorTargetARB(0x891A)
    comptime GL_CLAMP_FRAGMENT_COLOR_ARB = ClampColorTargetARB(0x891B)
    comptime GL_CLAMP_READ_COLOR = ClampColorTargetARB(0x891C)
    comptime GL_CLAMP_READ_COLOR_ARB = ClampColorTargetARB(0x891C)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct ClearBufferMask(Intable, TrivialRegisterPassable):
    var value: GLbitfield

    comptime GL_DEPTH_BUFFER_BIT = ClearBufferMask(0x00000100)
    comptime GL_ACCUM_BUFFER_BIT = ClearBufferMask(0x00000200)
    comptime GL_STENCIL_BUFFER_BIT = ClearBufferMask(0x00000400)
    comptime GL_COLOR_BUFFER_BIT = ClearBufferMask(0x00004000)
    comptime GL_COVERAGE_BUFFER_BIT_NV = ClearBufferMask(0x00008000)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)

    @always_inline
    def __or__(lhs, rhs: Self) -> Self:
        return Self(lhs.value | rhs.value)


@fieldwise_init
struct ClipControlDepth(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_NEGATIVE_ONE_TO_ONE = ClipControlDepth(0x935E)
    comptime GL_ZERO_TO_ONE = ClipControlDepth(0x935F)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct ClipControlOrigin(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_LOWER_LEFT = ClipControlOrigin(0x8CA1)
    comptime GL_UPPER_LEFT = ClipControlOrigin(0x8CA2)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct ColorBuffer(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_NONE = ColorBuffer(0)
    comptime GL_FRONT_LEFT = ColorBuffer(0x0400)
    comptime GL_FRONT_RIGHT = ColorBuffer(0x0401)
    comptime GL_BACK_LEFT = ColorBuffer(0x0402)
    comptime GL_BACK_RIGHT = ColorBuffer(0x0403)
    comptime GL_FRONT = ColorBuffer(0x0404)
    comptime GL_BACK = ColorBuffer(0x0405)
    comptime GL_LEFT = ColorBuffer(0x0406)
    comptime GL_RIGHT = ColorBuffer(0x0407)
    comptime GL_FRONT_AND_BACK = ColorBuffer(0x0408)
    comptime GL_COLOR_ATTACHMENT0 = ColorBuffer(0x8CE0)
    comptime GL_COLOR_ATTACHMENT1 = ColorBuffer(0x8CE1)
    comptime GL_COLOR_ATTACHMENT2 = ColorBuffer(0x8CE2)
    comptime GL_COLOR_ATTACHMENT3 = ColorBuffer(0x8CE3)
    comptime GL_COLOR_ATTACHMENT4 = ColorBuffer(0x8CE4)
    comptime GL_COLOR_ATTACHMENT5 = ColorBuffer(0x8CE5)
    comptime GL_COLOR_ATTACHMENT6 = ColorBuffer(0x8CE6)
    comptime GL_COLOR_ATTACHMENT7 = ColorBuffer(0x8CE7)
    comptime GL_COLOR_ATTACHMENT8 = ColorBuffer(0x8CE8)
    comptime GL_COLOR_ATTACHMENT9 = ColorBuffer(0x8CE9)
    comptime GL_COLOR_ATTACHMENT10 = ColorBuffer(0x8CEA)
    comptime GL_COLOR_ATTACHMENT11 = ColorBuffer(0x8CEB)
    comptime GL_COLOR_ATTACHMENT12 = ColorBuffer(0x8CEC)
    comptime GL_COLOR_ATTACHMENT13 = ColorBuffer(0x8CED)
    comptime GL_COLOR_ATTACHMENT14 = ColorBuffer(0x8CEE)
    comptime GL_COLOR_ATTACHMENT15 = ColorBuffer(0x8CEF)
    comptime GL_COLOR_ATTACHMENT16 = ColorBuffer(0x8CF0)
    comptime GL_COLOR_ATTACHMENT17 = ColorBuffer(0x8CF1)
    comptime GL_COLOR_ATTACHMENT18 = ColorBuffer(0x8CF2)
    comptime GL_COLOR_ATTACHMENT19 = ColorBuffer(0x8CF3)
    comptime GL_COLOR_ATTACHMENT20 = ColorBuffer(0x8CF4)
    comptime GL_COLOR_ATTACHMENT21 = ColorBuffer(0x8CF5)
    comptime GL_COLOR_ATTACHMENT22 = ColorBuffer(0x8CF6)
    comptime GL_COLOR_ATTACHMENT23 = ColorBuffer(0x8CF7)
    comptime GL_COLOR_ATTACHMENT24 = ColorBuffer(0x8CF8)
    comptime GL_COLOR_ATTACHMENT25 = ColorBuffer(0x8CF9)
    comptime GL_COLOR_ATTACHMENT26 = ColorBuffer(0x8CFA)
    comptime GL_COLOR_ATTACHMENT27 = ColorBuffer(0x8CFB)
    comptime GL_COLOR_ATTACHMENT28 = ColorBuffer(0x8CFC)
    comptime GL_COLOR_ATTACHMENT29 = ColorBuffer(0x8CFD)
    comptime GL_COLOR_ATTACHMENT30 = ColorBuffer(0x8CFE)
    comptime GL_COLOR_ATTACHMENT31 = ColorBuffer(0x8CFF)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct ColorPointerType(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_BYTE = ColorPointerType(0x1400)
    comptime GL_UNSIGNED_BYTE = ColorPointerType(0x1401)
    comptime GL_SHORT = ColorPointerType(0x1402)
    comptime GL_UNSIGNED_SHORT = ColorPointerType(0x1403)
    comptime GL_INT = ColorPointerType(0x1404)
    comptime GL_UNSIGNED_INT = ColorPointerType(0x1405)
    comptime GL_FLOAT = ColorPointerType(0x1406)
    comptime GL_DOUBLE = ColorPointerType(0x140A)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct ColorTableTarget(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_COLOR_TABLE = ColorTableTarget(0x80D0)
    comptime GL_POST_CONVOLUTION_COLOR_TABLE = ColorTableTarget(0x80D1)
    comptime GL_POST_COLOR_MATRIX_COLOR_TABLE = ColorTableTarget(0x80D2)
    comptime GL_PROXY_COLOR_TABLE = ColorTableTarget(0x80D3)
    comptime GL_PROXY_POST_CONVOLUTION_COLOR_TABLE = ColorTableTarget(0x80D4)
    comptime GL_PROXY_POST_COLOR_MATRIX_COLOR_TABLE = ColorTableTarget(0x80D5)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct ConditionalRenderMode(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_QUERY_WAIT = ConditionalRenderMode(0x8E13)
    comptime GL_QUERY_NO_WAIT = ConditionalRenderMode(0x8E14)
    comptime GL_QUERY_BY_REGION_WAIT = ConditionalRenderMode(0x8E15)
    comptime GL_QUERY_BY_REGION_NO_WAIT = ConditionalRenderMode(0x8E16)
    comptime GL_QUERY_WAIT_INVERTED = ConditionalRenderMode(0x8E17)
    comptime GL_QUERY_NO_WAIT_INVERTED = ConditionalRenderMode(0x8E18)
    comptime GL_QUERY_BY_REGION_WAIT_INVERTED = ConditionalRenderMode(0x8E19)
    comptime GL_QUERY_BY_REGION_NO_WAIT_INVERTED = ConditionalRenderMode(0x8E1A)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct ContextFlagMask(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_CONTEXT_FLAG_FORWARD_COMPATIBLE_BIT = ContextFlagMask(0x00000001)
    comptime GL_CONTEXT_FLAG_DEBUG_BIT = ContextFlagMask(0x00000002)
    comptime GL_CONTEXT_FLAG_DEBUG_BIT_KHR = ContextFlagMask(0x00000002)
    comptime GL_CONTEXT_FLAG_ROBUST_ACCESS_BIT = ContextFlagMask(0x00000004)
    comptime GL_CONTEXT_FLAG_ROBUST_ACCESS_BIT_ARB = ContextFlagMask(0x00000004)
    comptime GL_CONTEXT_FLAG_NO_ERROR_BIT = ContextFlagMask(0x00000008)
    comptime GL_CONTEXT_FLAG_NO_ERROR_BIT_KHR = ContextFlagMask(0x00000008)
    comptime GL_CONTEXT_FLAG_PROTECTED_CONTENT_BIT_EXT = ContextFlagMask(0x00000010)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct ContextProfileMask(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_CONTEXT_CORE_PROFILE_BIT = ContextProfileMask(0x00000001)
    comptime GL_CONTEXT_COMPATIBILITY_PROFILE_BIT = ContextProfileMask(0x00000002)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct ConvolutionTarget(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_CONVOLUTION_1D = ConvolutionTarget(0x8010)
    comptime GL_CONVOLUTION_2D = ConvolutionTarget(0x8011)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct ConvolutionTargetEXT(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_CONVOLUTION_1D = ConvolutionTargetEXT(0x8010)
    comptime GL_CONVOLUTION_1D_EXT = ConvolutionTargetEXT(0x8010)
    comptime GL_CONVOLUTION_2D = ConvolutionTargetEXT(0x8011)
    comptime GL_CONVOLUTION_2D_EXT = ConvolutionTargetEXT(0x8011)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct CopyBufferSubDataTarget(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_ARRAY_BUFFER = CopyBufferSubDataTarget(0x8892)
    comptime GL_ELEMENT_ARRAY_BUFFER = CopyBufferSubDataTarget(0x8893)
    comptime GL_PIXEL_PACK_BUFFER = CopyBufferSubDataTarget(0x88EB)
    comptime GL_PIXEL_UNPACK_BUFFER = CopyBufferSubDataTarget(0x88EC)
    comptime GL_UNIFORM_BUFFER = CopyBufferSubDataTarget(0x8A11)
    comptime GL_TEXTURE_BUFFER = CopyBufferSubDataTarget(0x8C2A)
    comptime GL_TRANSFORM_FEEDBACK_BUFFER = CopyBufferSubDataTarget(0x8C8E)
    comptime GL_COPY_READ_BUFFER = CopyBufferSubDataTarget(0x8F36)
    comptime GL_COPY_WRITE_BUFFER = CopyBufferSubDataTarget(0x8F37)
    comptime GL_DRAW_INDIRECT_BUFFER = CopyBufferSubDataTarget(0x8F3F)
    comptime GL_SHADER_STORAGE_BUFFER = CopyBufferSubDataTarget(0x90D2)
    comptime GL_DISPATCH_INDIRECT_BUFFER = CopyBufferSubDataTarget(0x90EE)
    comptime GL_QUERY_BUFFER = CopyBufferSubDataTarget(0x9192)
    comptime GL_ATOMIC_COUNTER_BUFFER = CopyBufferSubDataTarget(0x92C0)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct CopyImageSubDataTarget(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_TEXTURE_1D = CopyImageSubDataTarget(0x0DE0)
    comptime GL_TEXTURE_2D = CopyImageSubDataTarget(0x0DE1)
    comptime GL_TEXTURE_3D = CopyImageSubDataTarget(0x806F)
    comptime GL_TEXTURE_RECTANGLE = CopyImageSubDataTarget(0x84F5)
    comptime GL_TEXTURE_CUBE_MAP = CopyImageSubDataTarget(0x8513)
    comptime GL_TEXTURE_1D_ARRAY = CopyImageSubDataTarget(0x8C18)
    comptime GL_TEXTURE_2D_ARRAY = CopyImageSubDataTarget(0x8C1A)
    comptime GL_RENDERBUFFER = CopyImageSubDataTarget(0x8D41)
    comptime GL_TEXTURE_CUBE_MAP_ARRAY = CopyImageSubDataTarget(0x9009)
    comptime GL_TEXTURE_2D_MULTISAMPLE = CopyImageSubDataTarget(0x9100)
    comptime GL_TEXTURE_2D_MULTISAMPLE_ARRAY = CopyImageSubDataTarget(0x9102)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct DebugSeverity(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_DONT_CARE = DebugSeverity(0x1100)
    comptime GL_DEBUG_SEVERITY_NOTIFICATION = DebugSeverity(0x826B)
    comptime GL_DEBUG_SEVERITY_HIGH = DebugSeverity(0x9146)
    comptime GL_DEBUG_SEVERITY_MEDIUM = DebugSeverity(0x9147)
    comptime GL_DEBUG_SEVERITY_LOW = DebugSeverity(0x9148)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct DebugSource(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_DONT_CARE = DebugSource(0x1100)
    comptime GL_DEBUG_SOURCE_API = DebugSource(0x8246)
    comptime GL_DEBUG_SOURCE_WINDOW_SYSTEM = DebugSource(0x8247)
    comptime GL_DEBUG_SOURCE_SHADER_COMPILER = DebugSource(0x8248)
    comptime GL_DEBUG_SOURCE_THIRD_PARTY = DebugSource(0x8249)
    comptime GL_DEBUG_SOURCE_APPLICATION = DebugSource(0x824A)
    comptime GL_DEBUG_SOURCE_OTHER = DebugSource(0x824B)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct DebugType(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_DONT_CARE = DebugType(0x1100)
    comptime GL_DEBUG_TYPE_ERROR = DebugType(0x824C)
    comptime GL_DEBUG_TYPE_DEPRECATED_BEHAVIOR = DebugType(0x824D)
    comptime GL_DEBUG_TYPE_UNDEFINED_BEHAVIOR = DebugType(0x824E)
    comptime GL_DEBUG_TYPE_PORTABILITY = DebugType(0x824F)
    comptime GL_DEBUG_TYPE_PERFORMANCE = DebugType(0x8250)
    comptime GL_DEBUG_TYPE_OTHER = DebugType(0x8251)
    comptime GL_DEBUG_TYPE_MARKER = DebugType(0x8268)
    comptime GL_DEBUG_TYPE_PUSH_GROUP = DebugType(0x8269)
    comptime GL_DEBUG_TYPE_POP_GROUP = DebugType(0x826A)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct DepthFunction(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_NEVER = DepthFunction(0x0200)
    comptime GL_LESS = DepthFunction(0x0201)
    comptime GL_EQUAL = DepthFunction(0x0202)
    comptime GL_LEQUAL = DepthFunction(0x0203)
    comptime GL_GREATER = DepthFunction(0x0204)
    comptime GL_NOTEQUAL = DepthFunction(0x0205)
    comptime GL_GEQUAL = DepthFunction(0x0206)
    comptime GL_ALWAYS = DepthFunction(0x0207)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct DepthStencilTextureMode(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_STENCIL_INDEX = DepthStencilTextureMode(0x1901)
    comptime GL_DEPTH_COMPONENT = DepthStencilTextureMode(0x1902)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct DrawBufferMode(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_NONE = DrawBufferMode(0)
    comptime GL_NONE_OES = DrawBufferMode(0)
    comptime GL_FRONT_LEFT = DrawBufferMode(0x0400)
    comptime GL_FRONT_RIGHT = DrawBufferMode(0x0401)
    comptime GL_BACK_LEFT = DrawBufferMode(0x0402)
    comptime GL_BACK_RIGHT = DrawBufferMode(0x0403)
    comptime GL_FRONT = DrawBufferMode(0x0404)
    comptime GL_BACK = DrawBufferMode(0x0405)
    comptime GL_LEFT = DrawBufferMode(0x0406)
    comptime GL_RIGHT = DrawBufferMode(0x0407)
    comptime GL_FRONT_AND_BACK = DrawBufferMode(0x0408)
    comptime GL_AUX0 = DrawBufferMode(0x0409)
    comptime GL_AUX1 = DrawBufferMode(0x040A)
    comptime GL_AUX2 = DrawBufferMode(0x040B)
    comptime GL_AUX3 = DrawBufferMode(0x040C)
    comptime GL_COLOR_ATTACHMENT0 = DrawBufferMode(0x8CE0)
    comptime GL_COLOR_ATTACHMENT0_NV = DrawBufferMode(0x8CE0)
    comptime GL_COLOR_ATTACHMENT1 = DrawBufferMode(0x8CE1)
    comptime GL_COLOR_ATTACHMENT1_NV = DrawBufferMode(0x8CE1)
    comptime GL_COLOR_ATTACHMENT2 = DrawBufferMode(0x8CE2)
    comptime GL_COLOR_ATTACHMENT2_NV = DrawBufferMode(0x8CE2)
    comptime GL_COLOR_ATTACHMENT3 = DrawBufferMode(0x8CE3)
    comptime GL_COLOR_ATTACHMENT3_NV = DrawBufferMode(0x8CE3)
    comptime GL_COLOR_ATTACHMENT4 = DrawBufferMode(0x8CE4)
    comptime GL_COLOR_ATTACHMENT4_NV = DrawBufferMode(0x8CE4)
    comptime GL_COLOR_ATTACHMENT5 = DrawBufferMode(0x8CE5)
    comptime GL_COLOR_ATTACHMENT5_NV = DrawBufferMode(0x8CE5)
    comptime GL_COLOR_ATTACHMENT6 = DrawBufferMode(0x8CE6)
    comptime GL_COLOR_ATTACHMENT6_NV = DrawBufferMode(0x8CE6)
    comptime GL_COLOR_ATTACHMENT7 = DrawBufferMode(0x8CE7)
    comptime GL_COLOR_ATTACHMENT7_NV = DrawBufferMode(0x8CE7)
    comptime GL_COLOR_ATTACHMENT8 = DrawBufferMode(0x8CE8)
    comptime GL_COLOR_ATTACHMENT8_NV = DrawBufferMode(0x8CE8)
    comptime GL_COLOR_ATTACHMENT9 = DrawBufferMode(0x8CE9)
    comptime GL_COLOR_ATTACHMENT9_NV = DrawBufferMode(0x8CE9)
    comptime GL_COLOR_ATTACHMENT10 = DrawBufferMode(0x8CEA)
    comptime GL_COLOR_ATTACHMENT10_NV = DrawBufferMode(0x8CEA)
    comptime GL_COLOR_ATTACHMENT11 = DrawBufferMode(0x8CEB)
    comptime GL_COLOR_ATTACHMENT11_NV = DrawBufferMode(0x8CEB)
    comptime GL_COLOR_ATTACHMENT12 = DrawBufferMode(0x8CEC)
    comptime GL_COLOR_ATTACHMENT12_NV = DrawBufferMode(0x8CEC)
    comptime GL_COLOR_ATTACHMENT13 = DrawBufferMode(0x8CED)
    comptime GL_COLOR_ATTACHMENT13_NV = DrawBufferMode(0x8CED)
    comptime GL_COLOR_ATTACHMENT14 = DrawBufferMode(0x8CEE)
    comptime GL_COLOR_ATTACHMENT14_NV = DrawBufferMode(0x8CEE)
    comptime GL_COLOR_ATTACHMENT15 = DrawBufferMode(0x8CEF)
    comptime GL_COLOR_ATTACHMENT15_NV = DrawBufferMode(0x8CEF)
    comptime GL_COLOR_ATTACHMENT16 = DrawBufferMode(0x8CF0)
    comptime GL_COLOR_ATTACHMENT17 = DrawBufferMode(0x8CF1)
    comptime GL_COLOR_ATTACHMENT18 = DrawBufferMode(0x8CF2)
    comptime GL_COLOR_ATTACHMENT19 = DrawBufferMode(0x8CF3)
    comptime GL_COLOR_ATTACHMENT20 = DrawBufferMode(0x8CF4)
    comptime GL_COLOR_ATTACHMENT21 = DrawBufferMode(0x8CF5)
    comptime GL_COLOR_ATTACHMENT22 = DrawBufferMode(0x8CF6)
    comptime GL_COLOR_ATTACHMENT23 = DrawBufferMode(0x8CF7)
    comptime GL_COLOR_ATTACHMENT24 = DrawBufferMode(0x8CF8)
    comptime GL_COLOR_ATTACHMENT25 = DrawBufferMode(0x8CF9)
    comptime GL_COLOR_ATTACHMENT26 = DrawBufferMode(0x8CFA)
    comptime GL_COLOR_ATTACHMENT27 = DrawBufferMode(0x8CFB)
    comptime GL_COLOR_ATTACHMENT28 = DrawBufferMode(0x8CFC)
    comptime GL_COLOR_ATTACHMENT29 = DrawBufferMode(0x8CFD)
    comptime GL_COLOR_ATTACHMENT30 = DrawBufferMode(0x8CFE)
    comptime GL_COLOR_ATTACHMENT31 = DrawBufferMode(0x8CFF)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct DrawElementsType(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_UNSIGNED_BYTE = DrawElementsType(0x1401)
    comptime GL_UNSIGNED_SHORT = DrawElementsType(0x1403)
    comptime GL_UNSIGNED_INT = DrawElementsType(0x1405)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct EnableCap(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_POINT_SMOOTH = EnableCap(0x0B10)
    comptime GL_LINE_SMOOTH = EnableCap(0x0B20)
    comptime GL_LINE_STIPPLE = EnableCap(0x0B24)
    comptime GL_POLYGON_SMOOTH = EnableCap(0x0B41)
    comptime GL_POLYGON_STIPPLE = EnableCap(0x0B42)
    comptime GL_CULL_FACE = EnableCap(0x0B44)
    comptime GL_LIGHTING = EnableCap(0x0B50)
    comptime GL_COLOR_MATERIAL = EnableCap(0x0B57)
    comptime GL_FOG = EnableCap(0x0B60)
    comptime GL_DEPTH_TEST = EnableCap(0x0B71)
    comptime GL_STENCIL_TEST = EnableCap(0x0B90)
    comptime GL_NORMALIZE = EnableCap(0x0BA1)
    comptime GL_ALPHA_TEST = EnableCap(0x0BC0)
    comptime GL_DITHER = EnableCap(0x0BD0)
    comptime GL_BLEND = EnableCap(0x0BE2)
    comptime GL_INDEX_LOGIC_OP = EnableCap(0x0BF1)
    comptime GL_COLOR_LOGIC_OP = EnableCap(0x0BF2)
    comptime GL_SCISSOR_TEST = EnableCap(0x0C11)
    comptime GL_TEXTURE_GEN_S = EnableCap(0x0C60)
    comptime GL_TEXTURE_GEN_T = EnableCap(0x0C61)
    comptime GL_TEXTURE_GEN_R = EnableCap(0x0C62)
    comptime GL_TEXTURE_GEN_Q = EnableCap(0x0C63)
    comptime GL_AUTO_NORMAL = EnableCap(0x0D80)
    comptime GL_MAP1_COLOR_4 = EnableCap(0x0D90)
    comptime GL_MAP1_INDEX = EnableCap(0x0D91)
    comptime GL_MAP1_NORMAL = EnableCap(0x0D92)
    comptime GL_MAP1_TEXTURE_COORD_1 = EnableCap(0x0D93)
    comptime GL_MAP1_TEXTURE_COORD_2 = EnableCap(0x0D94)
    comptime GL_MAP1_TEXTURE_COORD_3 = EnableCap(0x0D95)
    comptime GL_MAP1_TEXTURE_COORD_4 = EnableCap(0x0D96)
    comptime GL_MAP1_VERTEX_3 = EnableCap(0x0D97)
    comptime GL_MAP1_VERTEX_4 = EnableCap(0x0D98)
    comptime GL_MAP2_COLOR_4 = EnableCap(0x0DB0)
    comptime GL_MAP2_INDEX = EnableCap(0x0DB1)
    comptime GL_MAP2_NORMAL = EnableCap(0x0DB2)
    comptime GL_MAP2_TEXTURE_COORD_1 = EnableCap(0x0DB3)
    comptime GL_MAP2_TEXTURE_COORD_2 = EnableCap(0x0DB4)
    comptime GL_MAP2_TEXTURE_COORD_3 = EnableCap(0x0DB5)
    comptime GL_MAP2_TEXTURE_COORD_4 = EnableCap(0x0DB6)
    comptime GL_MAP2_VERTEX_3 = EnableCap(0x0DB7)
    comptime GL_MAP2_VERTEX_4 = EnableCap(0x0DB8)
    comptime GL_TEXTURE_1D = EnableCap(0x0DE0)
    comptime GL_TEXTURE_2D = EnableCap(0x0DE1)
    comptime GL_POLYGON_OFFSET_POINT = EnableCap(0x2A01)
    comptime GL_POLYGON_OFFSET_LINE = EnableCap(0x2A02)
    comptime GL_CLIP_PLANE0 = EnableCap(0x3000)
    comptime GL_CLIP_DISTANCE0 = EnableCap(0x3000)
    comptime GL_CLIP_PLANE1 = EnableCap(0x3001)
    comptime GL_CLIP_DISTANCE1 = EnableCap(0x3001)
    comptime GL_CLIP_PLANE2 = EnableCap(0x3002)
    comptime GL_CLIP_DISTANCE2 = EnableCap(0x3002)
    comptime GL_CLIP_PLANE3 = EnableCap(0x3003)
    comptime GL_CLIP_DISTANCE3 = EnableCap(0x3003)
    comptime GL_CLIP_PLANE4 = EnableCap(0x3004)
    comptime GL_CLIP_DISTANCE4 = EnableCap(0x3004)
    comptime GL_CLIP_PLANE5 = EnableCap(0x3005)
    comptime GL_CLIP_DISTANCE5 = EnableCap(0x3005)
    comptime GL_CLIP_DISTANCE6 = EnableCap(0x3006)
    comptime GL_CLIP_DISTANCE7 = EnableCap(0x3007)
    comptime GL_LIGHT0 = EnableCap(0x4000)
    comptime GL_LIGHT1 = EnableCap(0x4001)
    comptime GL_LIGHT2 = EnableCap(0x4002)
    comptime GL_LIGHT3 = EnableCap(0x4003)
    comptime GL_LIGHT4 = EnableCap(0x4004)
    comptime GL_LIGHT5 = EnableCap(0x4005)
    comptime GL_LIGHT6 = EnableCap(0x4006)
    comptime GL_LIGHT7 = EnableCap(0x4007)
    comptime GL_CONVOLUTION_1D_EXT = EnableCap(0x8010)
    comptime GL_CONVOLUTION_2D_EXT = EnableCap(0x8011)
    comptime GL_SEPARABLE_2D_EXT = EnableCap(0x8012)
    comptime GL_HISTOGRAM_EXT = EnableCap(0x8024)
    comptime GL_MINMAX_EXT = EnableCap(0x802E)
    comptime GL_POLYGON_OFFSET_FILL = EnableCap(0x8037)
    comptime GL_RESCALE_NORMAL_EXT = EnableCap(0x803A)
    comptime GL_TEXTURE_3D_EXT = EnableCap(0x806F)
    comptime GL_VERTEX_ARRAY = EnableCap(0x8074)
    comptime GL_NORMAL_ARRAY = EnableCap(0x8075)
    comptime GL_COLOR_ARRAY = EnableCap(0x8076)
    comptime GL_INDEX_ARRAY = EnableCap(0x8077)
    comptime GL_TEXTURE_COORD_ARRAY = EnableCap(0x8078)
    comptime GL_EDGE_FLAG_ARRAY = EnableCap(0x8079)
    comptime GL_INTERLACE_SGIX = EnableCap(0x8094)
    comptime GL_MULTISAMPLE = EnableCap(0x809D)
    comptime GL_MULTISAMPLE_SGIS = EnableCap(0x809D)
    comptime GL_SAMPLE_ALPHA_TO_COVERAGE = EnableCap(0x809E)
    comptime GL_SAMPLE_ALPHA_TO_MASK_SGIS = EnableCap(0x809E)
    comptime GL_SAMPLE_ALPHA_TO_ONE = EnableCap(0x809F)
    comptime GL_SAMPLE_ALPHA_TO_ONE_SGIS = EnableCap(0x809F)
    comptime GL_SAMPLE_COVERAGE = EnableCap(0x80A0)
    comptime GL_SAMPLE_MASK_SGIS = EnableCap(0x80A0)
    comptime GL_TEXTURE_COLOR_TABLE_SGI = EnableCap(0x80BC)
    comptime GL_COLOR_TABLE = EnableCap(0x80D0)
    comptime GL_COLOR_TABLE_SGI = EnableCap(0x80D0)
    comptime GL_POST_CONVOLUTION_COLOR_TABLE = EnableCap(0x80D1)
    comptime GL_POST_CONVOLUTION_COLOR_TABLE_SGI = EnableCap(0x80D1)
    comptime GL_POST_COLOR_MATRIX_COLOR_TABLE = EnableCap(0x80D2)
    comptime GL_POST_COLOR_MATRIX_COLOR_TABLE_SGI = EnableCap(0x80D2)
    comptime GL_TEXTURE_4D_SGIS = EnableCap(0x8134)
    comptime GL_PIXEL_TEX_GEN_SGIX = EnableCap(0x8139)
    comptime GL_SPRITE_SGIX = EnableCap(0x8148)
    comptime GL_REFERENCE_PLANE_SGIX = EnableCap(0x817D)
    comptime GL_IR_INSTRUMENT1_SGIX = EnableCap(0x817F)
    comptime GL_CALLIGRAPHIC_FRAGMENT_SGIX = EnableCap(0x8183)
    comptime GL_FRAMEZOOM_SGIX = EnableCap(0x818B)
    comptime GL_FOG_OFFSET_SGIX = EnableCap(0x8198)
    comptime GL_SHARED_TEXTURE_PALETTE_EXT = EnableCap(0x81FB)
    comptime GL_DEBUG_OUTPUT_SYNCHRONOUS = EnableCap(0x8242)
    comptime GL_ASYNC_HISTOGRAM_SGIX = EnableCap(0x832C)
    comptime GL_PIXEL_TEXTURE_SGIS = EnableCap(0x8353)
    comptime GL_ASYNC_TEX_IMAGE_SGIX = EnableCap(0x835C)
    comptime GL_ASYNC_DRAW_PIXELS_SGIX = EnableCap(0x835D)
    comptime GL_ASYNC_READ_PIXELS_SGIX = EnableCap(0x835E)
    comptime GL_FRAGMENT_LIGHTING_SGIX = EnableCap(0x8400)
    comptime GL_FRAGMENT_COLOR_MATERIAL_SGIX = EnableCap(0x8401)
    comptime GL_FRAGMENT_LIGHT0_SGIX = EnableCap(0x840C)
    comptime GL_FRAGMENT_LIGHT1_SGIX = EnableCap(0x840D)
    comptime GL_FRAGMENT_LIGHT2_SGIX = EnableCap(0x840E)
    comptime GL_FRAGMENT_LIGHT3_SGIX = EnableCap(0x840F)
    comptime GL_FRAGMENT_LIGHT4_SGIX = EnableCap(0x8410)
    comptime GL_FRAGMENT_LIGHT5_SGIX = EnableCap(0x8411)
    comptime GL_FRAGMENT_LIGHT6_SGIX = EnableCap(0x8412)
    comptime GL_FRAGMENT_LIGHT7_SGIX = EnableCap(0x8413)
    comptime GL_TEXTURE_RECTANGLE = EnableCap(0x84F5)
    comptime GL_TEXTURE_RECTANGLE_ARB = EnableCap(0x84F5)
    comptime GL_TEXTURE_RECTANGLE_NV = EnableCap(0x84F5)
    comptime GL_TEXTURE_CUBE_MAP = EnableCap(0x8513)
    comptime GL_TEXTURE_CUBE_MAP_ARB = EnableCap(0x8513)
    comptime GL_TEXTURE_CUBE_MAP_EXT = EnableCap(0x8513)
    comptime GL_TEXTURE_CUBE_MAP_OES = EnableCap(0x8513)
    comptime GL_PROGRAM_POINT_SIZE = EnableCap(0x8642)
    comptime GL_DEPTH_CLAMP = EnableCap(0x864F)
    comptime GL_TEXTURE_CUBE_MAP_SEAMLESS = EnableCap(0x884F)
    comptime GL_SAMPLE_SHADING = EnableCap(0x8C36)
    comptime GL_RASTERIZER_DISCARD = EnableCap(0x8C89)
    comptime GL_TEXTURE_GEN_STR_OES = EnableCap(0x8D60)
    comptime GL_PRIMITIVE_RESTART_FIXED_INDEX = EnableCap(0x8D69)
    comptime GL_FRAMEBUFFER_SRGB = EnableCap(0x8DB9)
    comptime GL_SAMPLE_MASK = EnableCap(0x8E51)
    comptime GL_FETCH_PER_SAMPLE_ARM = EnableCap(0x8F65)
    comptime GL_PRIMITIVE_RESTART = EnableCap(0x8F9D)
    comptime GL_DEBUG_OUTPUT = EnableCap(0x92E0)
    comptime GL_SHADING_RATE_IMAGE_PER_PRIMITIVE_NV = EnableCap(0x95B1)
    comptime GL_FRAMEBUFFER_FETCH_NONCOHERENT_QCOM = EnableCap(0x96A2)
    comptime GL_SHADING_RATE_PRESERVE_ASPECT_RATIO_QCOM = EnableCap(0x96A5)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct ErrorCode(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_NO_ERROR = ErrorCode(0)
    comptime GL_INVALID_ENUM = ErrorCode(0x0500)
    comptime GL_INVALID_VALUE = ErrorCode(0x0501)
    comptime GL_INVALID_OPERATION = ErrorCode(0x0502)
    comptime GL_STACK_OVERFLOW = ErrorCode(0x0503)
    comptime GL_STACK_UNDERFLOW = ErrorCode(0x0504)
    comptime GL_OUT_OF_MEMORY = ErrorCode(0x0505)
    comptime GL_INVALID_FRAMEBUFFER_OPERATION = ErrorCode(0x0506)
    comptime GL_INVALID_FRAMEBUFFER_OPERATION_EXT = ErrorCode(0x0506)
    comptime GL_INVALID_FRAMEBUFFER_OPERATION_OES = ErrorCode(0x0506)
    comptime GL_TABLE_TOO_LARGE_EXT = ErrorCode(0x8031)
    comptime GL_TABLE_TOO_LARGE = ErrorCode(0x8031)
    comptime GL_TEXTURE_TOO_LARGE_EXT = ErrorCode(0x8065)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct FogCoordinatePointerType(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_FLOAT = FogCoordinatePointerType(0x1406)
    comptime GL_DOUBLE = FogCoordinatePointerType(0x140A)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct FogMode(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_EXP = FogMode(0x0800)
    comptime GL_EXP2 = FogMode(0x0801)
    comptime GL_LINEAR = FogMode(0x2601)
    comptime GL_FOG_FUNC_SGIS = FogMode(0x812A)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct FramebufferAttachment(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_DEPTH_STENCIL_ATTACHMENT = FramebufferAttachment(0x821A)
    comptime GL_COLOR_ATTACHMENT0 = FramebufferAttachment(0x8CE0)
    comptime GL_COLOR_ATTACHMENT1 = FramebufferAttachment(0x8CE1)
    comptime GL_COLOR_ATTACHMENT2 = FramebufferAttachment(0x8CE2)
    comptime GL_COLOR_ATTACHMENT3 = FramebufferAttachment(0x8CE3)
    comptime GL_COLOR_ATTACHMENT4 = FramebufferAttachment(0x8CE4)
    comptime GL_COLOR_ATTACHMENT5 = FramebufferAttachment(0x8CE5)
    comptime GL_COLOR_ATTACHMENT6 = FramebufferAttachment(0x8CE6)
    comptime GL_COLOR_ATTACHMENT7 = FramebufferAttachment(0x8CE7)
    comptime GL_COLOR_ATTACHMENT8 = FramebufferAttachment(0x8CE8)
    comptime GL_COLOR_ATTACHMENT9 = FramebufferAttachment(0x8CE9)
    comptime GL_COLOR_ATTACHMENT10 = FramebufferAttachment(0x8CEA)
    comptime GL_COLOR_ATTACHMENT11 = FramebufferAttachment(0x8CEB)
    comptime GL_COLOR_ATTACHMENT12 = FramebufferAttachment(0x8CEC)
    comptime GL_COLOR_ATTACHMENT13 = FramebufferAttachment(0x8CED)
    comptime GL_COLOR_ATTACHMENT14 = FramebufferAttachment(0x8CEE)
    comptime GL_COLOR_ATTACHMENT15 = FramebufferAttachment(0x8CEF)
    comptime GL_COLOR_ATTACHMENT16 = FramebufferAttachment(0x8CF0)
    comptime GL_COLOR_ATTACHMENT17 = FramebufferAttachment(0x8CF1)
    comptime GL_COLOR_ATTACHMENT18 = FramebufferAttachment(0x8CF2)
    comptime GL_COLOR_ATTACHMENT19 = FramebufferAttachment(0x8CF3)
    comptime GL_COLOR_ATTACHMENT20 = FramebufferAttachment(0x8CF4)
    comptime GL_COLOR_ATTACHMENT21 = FramebufferAttachment(0x8CF5)
    comptime GL_COLOR_ATTACHMENT22 = FramebufferAttachment(0x8CF6)
    comptime GL_COLOR_ATTACHMENT23 = FramebufferAttachment(0x8CF7)
    comptime GL_COLOR_ATTACHMENT24 = FramebufferAttachment(0x8CF8)
    comptime GL_COLOR_ATTACHMENT25 = FramebufferAttachment(0x8CF9)
    comptime GL_COLOR_ATTACHMENT26 = FramebufferAttachment(0x8CFA)
    comptime GL_COLOR_ATTACHMENT27 = FramebufferAttachment(0x8CFB)
    comptime GL_COLOR_ATTACHMENT28 = FramebufferAttachment(0x8CFC)
    comptime GL_COLOR_ATTACHMENT29 = FramebufferAttachment(0x8CFD)
    comptime GL_COLOR_ATTACHMENT30 = FramebufferAttachment(0x8CFE)
    comptime GL_COLOR_ATTACHMENT31 = FramebufferAttachment(0x8CFF)
    comptime GL_DEPTH_ATTACHMENT = FramebufferAttachment(0x8D00)
    comptime GL_STENCIL_ATTACHMENT = FramebufferAttachment(0x8D20)
    comptime GL_SHADING_RATE_ATTACHMENT_EXT = FramebufferAttachment(0x96D1)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct FramebufferAttachmentParameterName(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING = FramebufferAttachmentParameterName(0x8210)
    comptime GL_FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING_EXT = FramebufferAttachmentParameterName(0x8210)
    comptime GL_FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE = FramebufferAttachmentParameterName(0x8211)
    comptime GL_FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE_EXT = FramebufferAttachmentParameterName(0x8211)
    comptime GL_FRAMEBUFFER_ATTACHMENT_RED_SIZE = FramebufferAttachmentParameterName(0x8212)
    comptime GL_FRAMEBUFFER_ATTACHMENT_GREEN_SIZE = FramebufferAttachmentParameterName(0x8213)
    comptime GL_FRAMEBUFFER_ATTACHMENT_BLUE_SIZE = FramebufferAttachmentParameterName(0x8214)
    comptime GL_FRAMEBUFFER_ATTACHMENT_ALPHA_SIZE = FramebufferAttachmentParameterName(0x8215)
    comptime GL_FRAMEBUFFER_ATTACHMENT_DEPTH_SIZE = FramebufferAttachmentParameterName(0x8216)
    comptime GL_FRAMEBUFFER_ATTACHMENT_STENCIL_SIZE = FramebufferAttachmentParameterName(0x8217)
    comptime GL_FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE = FramebufferAttachmentParameterName(0x8CD0)
    comptime GL_FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE_EXT = FramebufferAttachmentParameterName(0x8CD0)
    comptime GL_FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE_OES = FramebufferAttachmentParameterName(0x8CD0)
    comptime GL_FRAMEBUFFER_ATTACHMENT_OBJECT_NAME = FramebufferAttachmentParameterName(0x8CD1)
    comptime GL_FRAMEBUFFER_ATTACHMENT_OBJECT_NAME_EXT = FramebufferAttachmentParameterName(0x8CD1)
    comptime GL_FRAMEBUFFER_ATTACHMENT_OBJECT_NAME_OES = FramebufferAttachmentParameterName(0x8CD1)
    comptime GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL = FramebufferAttachmentParameterName(0x8CD2)
    comptime GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL_EXT = FramebufferAttachmentParameterName(0x8CD2)
    comptime GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL_OES = FramebufferAttachmentParameterName(0x8CD2)
    comptime GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE = FramebufferAttachmentParameterName(0x8CD3)
    comptime GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE_EXT = FramebufferAttachmentParameterName(0x8CD3)
    comptime GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE_OES = FramebufferAttachmentParameterName(0x8CD3)
    comptime GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_3D_ZOFFSET_EXT = FramebufferAttachmentParameterName(0x8CD4)
    comptime GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_3D_ZOFFSET_OES = FramebufferAttachmentParameterName(0x8CD4)
    comptime GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER = FramebufferAttachmentParameterName(0x8CD4)
    comptime GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER_EXT = FramebufferAttachmentParameterName(0x8CD4)
    comptime GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_SAMPLES_EXT = FramebufferAttachmentParameterName(0x8D6C)
    comptime GL_FRAMEBUFFER_ATTACHMENT_LAYERED = FramebufferAttachmentParameterName(0x8DA7)
    comptime GL_FRAMEBUFFER_ATTACHMENT_LAYERED_ARB = FramebufferAttachmentParameterName(0x8DA7)
    comptime GL_FRAMEBUFFER_ATTACHMENT_LAYERED_EXT = FramebufferAttachmentParameterName(0x8DA7)
    comptime GL_FRAMEBUFFER_ATTACHMENT_LAYERED_OES = FramebufferAttachmentParameterName(0x8DA7)
    comptime GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_SCALE_IMG = FramebufferAttachmentParameterName(0x913F)
    comptime GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_NUM_VIEWS_OVR = FramebufferAttachmentParameterName(0x9630)
    comptime GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_BASE_VIEW_INDEX_OVR = FramebufferAttachmentParameterName(0x9632)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct FramebufferParameterName(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_FRAMEBUFFER_DEFAULT_WIDTH = FramebufferParameterName(0x9310)
    comptime GL_FRAMEBUFFER_DEFAULT_HEIGHT = FramebufferParameterName(0x9311)
    comptime GL_FRAMEBUFFER_DEFAULT_LAYERS = FramebufferParameterName(0x9312)
    comptime GL_FRAMEBUFFER_DEFAULT_SAMPLES = FramebufferParameterName(0x9313)
    comptime GL_FRAMEBUFFER_DEFAULT_FIXED_SAMPLE_LOCATIONS = FramebufferParameterName(0x9314)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct FramebufferStatus(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_FRAMEBUFFER_UNDEFINED = FramebufferStatus(0x8219)
    comptime GL_FRAMEBUFFER_COMPLETE = FramebufferStatus(0x8CD5)
    comptime GL_FRAMEBUFFER_INCOMPLETE_ATTACHMENT = FramebufferStatus(0x8CD6)
    comptime GL_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT = FramebufferStatus(0x8CD7)
    comptime GL_FRAMEBUFFER_INCOMPLETE_DRAW_BUFFER = FramebufferStatus(0x8CDB)
    comptime GL_FRAMEBUFFER_INCOMPLETE_READ_BUFFER = FramebufferStatus(0x8CDC)
    comptime GL_FRAMEBUFFER_UNSUPPORTED = FramebufferStatus(0x8CDD)
    comptime GL_FRAMEBUFFER_INCOMPLETE_MULTISAMPLE = FramebufferStatus(0x8D56)
    comptime GL_FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS = FramebufferStatus(0x8DA8)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct FramebufferTarget(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_READ_FRAMEBUFFER = FramebufferTarget(0x8CA8)
    comptime GL_DRAW_FRAMEBUFFER = FramebufferTarget(0x8CA9)
    comptime GL_FRAMEBUFFER = FramebufferTarget(0x8D40)
    comptime GL_FRAMEBUFFER_OES = FramebufferTarget(0x8D40)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct FrontFaceDirection(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_CW = FrontFaceDirection(0x0900)
    comptime GL_CCW = FrontFaceDirection(0x0901)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct GetFramebufferParameter(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_DOUBLEBUFFER = GetFramebufferParameter(0x0C32)
    comptime GL_STEREO = GetFramebufferParameter(0x0C33)
    comptime GL_SAMPLE_BUFFERS = GetFramebufferParameter(0x80A8)
    comptime GL_SAMPLES = GetFramebufferParameter(0x80A9)
    comptime GL_IMPLEMENTATION_COLOR_READ_TYPE = GetFramebufferParameter(0x8B9A)
    comptime GL_IMPLEMENTATION_COLOR_READ_FORMAT = GetFramebufferParameter(0x8B9B)
    comptime GL_FRAMEBUFFER_DEFAULT_WIDTH = GetFramebufferParameter(0x9310)
    comptime GL_FRAMEBUFFER_DEFAULT_HEIGHT = GetFramebufferParameter(0x9311)
    comptime GL_FRAMEBUFFER_DEFAULT_LAYERS = GetFramebufferParameter(0x9312)
    comptime GL_FRAMEBUFFER_DEFAULT_SAMPLES = GetFramebufferParameter(0x9313)
    comptime GL_FRAMEBUFFER_DEFAULT_FIXED_SAMPLE_LOCATIONS = GetFramebufferParameter(0x9314)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct GetMultisamplePNameNV(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_SAMPLE_POSITION = GetMultisamplePNameNV(0x8E50)
    comptime GL_SAMPLE_LOCATION_ARB = GetMultisamplePNameNV(0x8E50)
    comptime GL_PROGRAMMABLE_SAMPLE_LOCATION_ARB = GetMultisamplePNameNV(0x9341)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct GetPName(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_CURRENT_COLOR = GetPName(0x0B00)
    comptime GL_CURRENT_INDEX = GetPName(0x0B01)
    comptime GL_CURRENT_NORMAL = GetPName(0x0B02)
    comptime GL_CURRENT_TEXTURE_COORDS = GetPName(0x0B03)
    comptime GL_CURRENT_RASTER_COLOR = GetPName(0x0B04)
    comptime GL_CURRENT_RASTER_INDEX = GetPName(0x0B05)
    comptime GL_CURRENT_RASTER_TEXTURE_COORDS = GetPName(0x0B06)
    comptime GL_CURRENT_RASTER_POSITION = GetPName(0x0B07)
    comptime GL_CURRENT_RASTER_POSITION_VALID = GetPName(0x0B08)
    comptime GL_CURRENT_RASTER_DISTANCE = GetPName(0x0B09)
    comptime GL_POINT_SMOOTH = GetPName(0x0B10)
    comptime GL_POINT_SIZE = GetPName(0x0B11)
    comptime GL_POINT_SIZE_RANGE = GetPName(0x0B12)
    comptime GL_SMOOTH_POINT_SIZE_RANGE = GetPName(0x0B12)
    comptime GL_POINT_SIZE_GRANULARITY = GetPName(0x0B13)
    comptime GL_SMOOTH_POINT_SIZE_GRANULARITY = GetPName(0x0B13)
    comptime GL_LINE_SMOOTH = GetPName(0x0B20)
    comptime GL_LINE_WIDTH = GetPName(0x0B21)
    comptime GL_LINE_WIDTH_RANGE = GetPName(0x0B22)
    comptime GL_SMOOTH_LINE_WIDTH_RANGE = GetPName(0x0B22)
    comptime GL_LINE_WIDTH_GRANULARITY = GetPName(0x0B23)
    comptime GL_SMOOTH_LINE_WIDTH_GRANULARITY = GetPName(0x0B23)
    comptime GL_LINE_STIPPLE = GetPName(0x0B24)
    comptime GL_LINE_STIPPLE_PATTERN = GetPName(0x0B25)
    comptime GL_LINE_STIPPLE_REPEAT = GetPName(0x0B26)
    comptime GL_LIST_MODE = GetPName(0x0B30)
    comptime GL_MAX_LIST_NESTING = GetPName(0x0B31)
    comptime GL_LIST_BASE = GetPName(0x0B32)
    comptime GL_LIST_INDEX = GetPName(0x0B33)
    comptime GL_POLYGON_MODE = GetPName(0x0B40)
    comptime GL_POLYGON_SMOOTH = GetPName(0x0B41)
    comptime GL_POLYGON_STIPPLE = GetPName(0x0B42)
    comptime GL_EDGE_FLAG = GetPName(0x0B43)
    comptime GL_CULL_FACE = GetPName(0x0B44)
    comptime GL_CULL_FACE_MODE = GetPName(0x0B45)
    comptime GL_FRONT_FACE = GetPName(0x0B46)
    comptime GL_LIGHTING = GetPName(0x0B50)
    comptime GL_LIGHT_MODEL_LOCAL_VIEWER = GetPName(0x0B51)
    comptime GL_LIGHT_MODEL_TWO_SIDE = GetPName(0x0B52)
    comptime GL_LIGHT_MODEL_AMBIENT = GetPName(0x0B53)
    comptime GL_SHADE_MODEL = GetPName(0x0B54)
    comptime GL_COLOR_MATERIAL_FACE = GetPName(0x0B55)
    comptime GL_COLOR_MATERIAL_PARAMETER = GetPName(0x0B56)
    comptime GL_COLOR_MATERIAL = GetPName(0x0B57)
    comptime GL_FOG = GetPName(0x0B60)
    comptime GL_FOG_INDEX = GetPName(0x0B61)
    comptime GL_FOG_DENSITY = GetPName(0x0B62)
    comptime GL_FOG_START = GetPName(0x0B63)
    comptime GL_FOG_END = GetPName(0x0B64)
    comptime GL_FOG_MODE = GetPName(0x0B65)
    comptime GL_FOG_COLOR = GetPName(0x0B66)
    comptime GL_DEPTH_RANGE = GetPName(0x0B70)
    comptime GL_DEPTH_TEST = GetPName(0x0B71)
    comptime GL_DEPTH_WRITEMASK = GetPName(0x0B72)
    comptime GL_DEPTH_CLEAR_VALUE = GetPName(0x0B73)
    comptime GL_DEPTH_FUNC = GetPName(0x0B74)
    comptime GL_ACCUM_CLEAR_VALUE = GetPName(0x0B80)
    comptime GL_STENCIL_TEST = GetPName(0x0B90)
    comptime GL_STENCIL_CLEAR_VALUE = GetPName(0x0B91)
    comptime GL_STENCIL_FUNC = GetPName(0x0B92)
    comptime GL_STENCIL_VALUE_MASK = GetPName(0x0B93)
    comptime GL_STENCIL_FAIL = GetPName(0x0B94)
    comptime GL_STENCIL_PASS_DEPTH_FAIL = GetPName(0x0B95)
    comptime GL_STENCIL_PASS_DEPTH_PASS = GetPName(0x0B96)
    comptime GL_STENCIL_REF = GetPName(0x0B97)
    comptime GL_STENCIL_WRITEMASK = GetPName(0x0B98)
    comptime GL_MATRIX_MODE = GetPName(0x0BA0)
    comptime GL_NORMALIZE = GetPName(0x0BA1)
    comptime GL_VIEWPORT = GetPName(0x0BA2)
    comptime GL_MODELVIEW_STACK_DEPTH = GetPName(0x0BA3)
    comptime GL_MODELVIEW0_STACK_DEPTH_EXT = GetPName(0x0BA3)
    comptime GL_PROJECTION_STACK_DEPTH = GetPName(0x0BA4)
    comptime GL_TEXTURE_STACK_DEPTH = GetPName(0x0BA5)
    comptime GL_MODELVIEW_MATRIX = GetPName(0x0BA6)
    comptime GL_MODELVIEW0_MATRIX_EXT = GetPName(0x0BA6)
    comptime GL_PROJECTION_MATRIX = GetPName(0x0BA7)
    comptime GL_TEXTURE_MATRIX = GetPName(0x0BA8)
    comptime GL_ATTRIB_STACK_DEPTH = GetPName(0x0BB0)
    comptime GL_CLIENT_ATTRIB_STACK_DEPTH = GetPName(0x0BB1)
    comptime GL_ALPHA_TEST = GetPName(0x0BC0)
    comptime GL_ALPHA_TEST_QCOM = GetPName(0x0BC0)
    comptime GL_ALPHA_TEST_FUNC = GetPName(0x0BC1)
    comptime GL_ALPHA_TEST_FUNC_QCOM = GetPName(0x0BC1)
    comptime GL_ALPHA_TEST_REF = GetPName(0x0BC2)
    comptime GL_ALPHA_TEST_REF_QCOM = GetPName(0x0BC2)
    comptime GL_DITHER = GetPName(0x0BD0)
    comptime GL_BLEND_DST = GetPName(0x0BE0)
    comptime GL_BLEND_SRC = GetPName(0x0BE1)
    comptime GL_BLEND = GetPName(0x0BE2)
    comptime GL_LOGIC_OP_MODE = GetPName(0x0BF0)
    comptime GL_INDEX_LOGIC_OP = GetPName(0x0BF1)
    comptime GL_LOGIC_OP = GetPName(0x0BF1)
    comptime GL_COLOR_LOGIC_OP = GetPName(0x0BF2)
    comptime GL_AUX_BUFFERS = GetPName(0x0C00)
    comptime GL_DRAW_BUFFER = GetPName(0x0C01)
    comptime GL_DRAW_BUFFER_EXT = GetPName(0x0C01)
    comptime GL_READ_BUFFER = GetPName(0x0C02)
    comptime GL_READ_BUFFER_EXT = GetPName(0x0C02)
    comptime GL_READ_BUFFER_NV = GetPName(0x0C02)
    comptime GL_SCISSOR_BOX = GetPName(0x0C10)
    comptime GL_SCISSOR_TEST = GetPName(0x0C11)
    comptime GL_INDEX_CLEAR_VALUE = GetPName(0x0C20)
    comptime GL_INDEX_WRITEMASK = GetPName(0x0C21)
    comptime GL_COLOR_CLEAR_VALUE = GetPName(0x0C22)
    comptime GL_COLOR_WRITEMASK = GetPName(0x0C23)
    comptime GL_INDEX_MODE = GetPName(0x0C30)
    comptime GL_RGBA_MODE = GetPName(0x0C31)
    comptime GL_DOUBLEBUFFER = GetPName(0x0C32)
    comptime GL_STEREO = GetPName(0x0C33)
    comptime GL_RENDER_MODE = GetPName(0x0C40)
    comptime GL_PERSPECTIVE_CORRECTION_HINT = GetPName(0x0C50)
    comptime GL_POINT_SMOOTH_HINT = GetPName(0x0C51)
    comptime GL_LINE_SMOOTH_HINT = GetPName(0x0C52)
    comptime GL_POLYGON_SMOOTH_HINT = GetPName(0x0C53)
    comptime GL_FOG_HINT = GetPName(0x0C54)
    comptime GL_TEXTURE_GEN_S = GetPName(0x0C60)
    comptime GL_TEXTURE_GEN_T = GetPName(0x0C61)
    comptime GL_TEXTURE_GEN_R = GetPName(0x0C62)
    comptime GL_TEXTURE_GEN_Q = GetPName(0x0C63)
    comptime GL_PIXEL_MAP_I_TO_I_SIZE = GetPName(0x0CB0)
    comptime GL_PIXEL_MAP_S_TO_S_SIZE = GetPName(0x0CB1)
    comptime GL_PIXEL_MAP_I_TO_R_SIZE = GetPName(0x0CB2)
    comptime GL_PIXEL_MAP_I_TO_G_SIZE = GetPName(0x0CB3)
    comptime GL_PIXEL_MAP_I_TO_B_SIZE = GetPName(0x0CB4)
    comptime GL_PIXEL_MAP_I_TO_A_SIZE = GetPName(0x0CB5)
    comptime GL_PIXEL_MAP_R_TO_R_SIZE = GetPName(0x0CB6)
    comptime GL_PIXEL_MAP_G_TO_G_SIZE = GetPName(0x0CB7)
    comptime GL_PIXEL_MAP_B_TO_B_SIZE = GetPName(0x0CB8)
    comptime GL_PIXEL_MAP_A_TO_A_SIZE = GetPName(0x0CB9)
    comptime GL_UNPACK_SWAP_BYTES = GetPName(0x0CF0)
    comptime GL_UNPACK_LSB_FIRST = GetPName(0x0CF1)
    comptime GL_UNPACK_ROW_LENGTH = GetPName(0x0CF2)
    comptime GL_UNPACK_SKIP_ROWS = GetPName(0x0CF3)
    comptime GL_UNPACK_SKIP_PIXELS = GetPName(0x0CF4)
    comptime GL_UNPACK_ALIGNMENT = GetPName(0x0CF5)
    comptime GL_PACK_SWAP_BYTES = GetPName(0x0D00)
    comptime GL_PACK_LSB_FIRST = GetPName(0x0D01)
    comptime GL_PACK_ROW_LENGTH = GetPName(0x0D02)
    comptime GL_PACK_ROW_LENGTH_NV = GetPName(0x0D02)
    comptime GL_PACK_SKIP_ROWS = GetPName(0x0D03)
    comptime GL_PACK_SKIP_ROWS_NV = GetPName(0x0D03)
    comptime GL_PACK_SKIP_PIXELS = GetPName(0x0D04)
    comptime GL_PACK_SKIP_PIXELS_NV = GetPName(0x0D04)
    comptime GL_PACK_ALIGNMENT = GetPName(0x0D05)
    comptime GL_MAP_COLOR = GetPName(0x0D10)
    comptime GL_MAP_STENCIL = GetPName(0x0D11)
    comptime GL_INDEX_SHIFT = GetPName(0x0D12)
    comptime GL_INDEX_OFFSET = GetPName(0x0D13)
    comptime GL_RED_SCALE = GetPName(0x0D14)
    comptime GL_RED_BIAS = GetPName(0x0D15)
    comptime GL_ZOOM_X = GetPName(0x0D16)
    comptime GL_ZOOM_Y = GetPName(0x0D17)
    comptime GL_GREEN_SCALE = GetPName(0x0D18)
    comptime GL_GREEN_BIAS = GetPName(0x0D19)
    comptime GL_BLUE_SCALE = GetPName(0x0D1A)
    comptime GL_BLUE_BIAS = GetPName(0x0D1B)
    comptime GL_ALPHA_SCALE = GetPName(0x0D1C)
    comptime GL_ALPHA_BIAS = GetPName(0x0D1D)
    comptime GL_DEPTH_SCALE = GetPName(0x0D1E)
    comptime GL_DEPTH_BIAS = GetPName(0x0D1F)
    comptime GL_MAX_EVAL_ORDER = GetPName(0x0D30)
    comptime GL_MAX_LIGHTS = GetPName(0x0D31)
    comptime GL_MAX_CLIP_PLANES = GetPName(0x0D32)
    comptime GL_MAX_CLIP_DISTANCES = GetPName(0x0D32)
    comptime GL_MAX_TEXTURE_SIZE = GetPName(0x0D33)
    comptime GL_MAX_PIXEL_MAP_TABLE = GetPName(0x0D34)
    comptime GL_MAX_ATTRIB_STACK_DEPTH = GetPName(0x0D35)
    comptime GL_MAX_MODELVIEW_STACK_DEPTH = GetPName(0x0D36)
    comptime GL_MAX_NAME_STACK_DEPTH = GetPName(0x0D37)
    comptime GL_MAX_PROJECTION_STACK_DEPTH = GetPName(0x0D38)
    comptime GL_MAX_TEXTURE_STACK_DEPTH = GetPName(0x0D39)
    comptime GL_MAX_VIEWPORT_DIMS = GetPName(0x0D3A)
    comptime GL_MAX_CLIENT_ATTRIB_STACK_DEPTH = GetPName(0x0D3B)
    comptime GL_SUBPIXEL_BITS = GetPName(0x0D50)
    comptime GL_INDEX_BITS = GetPName(0x0D51)
    comptime GL_RED_BITS = GetPName(0x0D52)
    comptime GL_GREEN_BITS = GetPName(0x0D53)
    comptime GL_BLUE_BITS = GetPName(0x0D54)
    comptime GL_ALPHA_BITS = GetPName(0x0D55)
    comptime GL_DEPTH_BITS = GetPName(0x0D56)
    comptime GL_STENCIL_BITS = GetPName(0x0D57)
    comptime GL_ACCUM_RED_BITS = GetPName(0x0D58)
    comptime GL_ACCUM_GREEN_BITS = GetPName(0x0D59)
    comptime GL_ACCUM_BLUE_BITS = GetPName(0x0D5A)
    comptime GL_ACCUM_ALPHA_BITS = GetPName(0x0D5B)
    comptime GL_NAME_STACK_DEPTH = GetPName(0x0D70)
    comptime GL_AUTO_NORMAL = GetPName(0x0D80)
    comptime GL_MAP1_COLOR_4 = GetPName(0x0D90)
    comptime GL_MAP1_INDEX = GetPName(0x0D91)
    comptime GL_MAP1_NORMAL = GetPName(0x0D92)
    comptime GL_MAP1_TEXTURE_COORD_1 = GetPName(0x0D93)
    comptime GL_MAP1_TEXTURE_COORD_2 = GetPName(0x0D94)
    comptime GL_MAP1_TEXTURE_COORD_3 = GetPName(0x0D95)
    comptime GL_MAP1_TEXTURE_COORD_4 = GetPName(0x0D96)
    comptime GL_MAP1_VERTEX_3 = GetPName(0x0D97)
    comptime GL_MAP1_VERTEX_4 = GetPName(0x0D98)
    comptime GL_MAP2_COLOR_4 = GetPName(0x0DB0)
    comptime GL_MAP2_INDEX = GetPName(0x0DB1)
    comptime GL_MAP2_NORMAL = GetPName(0x0DB2)
    comptime GL_MAP2_TEXTURE_COORD_1 = GetPName(0x0DB3)
    comptime GL_MAP2_TEXTURE_COORD_2 = GetPName(0x0DB4)
    comptime GL_MAP2_TEXTURE_COORD_3 = GetPName(0x0DB5)
    comptime GL_MAP2_TEXTURE_COORD_4 = GetPName(0x0DB6)
    comptime GL_MAP2_VERTEX_3 = GetPName(0x0DB7)
    comptime GL_MAP2_VERTEX_4 = GetPName(0x0DB8)
    comptime GL_MAP1_GRID_DOMAIN = GetPName(0x0DD0)
    comptime GL_MAP1_GRID_SEGMENTS = GetPName(0x0DD1)
    comptime GL_MAP2_GRID_DOMAIN = GetPName(0x0DD2)
    comptime GL_MAP2_GRID_SEGMENTS = GetPName(0x0DD3)
    comptime GL_TEXTURE_1D = GetPName(0x0DE0)
    comptime GL_TEXTURE_2D = GetPName(0x0DE1)
    comptime GL_FEEDBACK_BUFFER_SIZE = GetPName(0x0DF1)
    comptime GL_FEEDBACK_BUFFER_TYPE = GetPName(0x0DF2)
    comptime GL_SELECTION_BUFFER_SIZE = GetPName(0x0DF4)
    comptime GL_POLYGON_OFFSET_UNITS = GetPName(0x2A00)
    comptime GL_POLYGON_OFFSET_POINT = GetPName(0x2A01)
    comptime GL_POLYGON_OFFSET_LINE = GetPName(0x2A02)
    comptime GL_CLIP_PLANE0 = GetPName(0x3000)
    comptime GL_CLIP_PLANE1 = GetPName(0x3001)
    comptime GL_CLIP_PLANE2 = GetPName(0x3002)
    comptime GL_CLIP_PLANE3 = GetPName(0x3003)
    comptime GL_CLIP_PLANE4 = GetPName(0x3004)
    comptime GL_CLIP_PLANE5 = GetPName(0x3005)
    comptime GL_LIGHT0 = GetPName(0x4000)
    comptime GL_LIGHT1 = GetPName(0x4001)
    comptime GL_LIGHT2 = GetPName(0x4002)
    comptime GL_LIGHT3 = GetPName(0x4003)
    comptime GL_LIGHT4 = GetPName(0x4004)
    comptime GL_LIGHT5 = GetPName(0x4005)
    comptime GL_LIGHT6 = GetPName(0x4006)
    comptime GL_LIGHT7 = GetPName(0x4007)
    comptime GL_BLEND_COLOR = GetPName(0x8005)
    comptime GL_BLEND_COLOR_EXT = GetPName(0x8005)
    comptime GL_BLEND_EQUATION = GetPName(0x8009)
    comptime GL_BLEND_EQUATION_EXT = GetPName(0x8009)
    comptime GL_BLEND_EQUATION_OES = GetPName(0x8009)
    comptime GL_BLEND_EQUATION_RGB = GetPName(0x8009)
    comptime GL_PACK_CMYK_HINT_EXT = GetPName(0x800E)
    comptime GL_UNPACK_CMYK_HINT_EXT = GetPName(0x800F)
    comptime GL_CONVOLUTION_1D_EXT = GetPName(0x8010)
    comptime GL_CONVOLUTION_2D_EXT = GetPName(0x8011)
    comptime GL_SEPARABLE_2D_EXT = GetPName(0x8012)
    comptime GL_POST_CONVOLUTION_RED_SCALE_EXT = GetPName(0x801C)
    comptime GL_POST_CONVOLUTION_GREEN_SCALE_EXT = GetPName(0x801D)
    comptime GL_POST_CONVOLUTION_BLUE_SCALE_EXT = GetPName(0x801E)
    comptime GL_POST_CONVOLUTION_ALPHA_SCALE_EXT = GetPName(0x801F)
    comptime GL_POST_CONVOLUTION_RED_BIAS_EXT = GetPName(0x8020)
    comptime GL_POST_CONVOLUTION_GREEN_BIAS_EXT = GetPName(0x8021)
    comptime GL_POST_CONVOLUTION_BLUE_BIAS_EXT = GetPName(0x8022)
    comptime GL_POST_CONVOLUTION_ALPHA_BIAS_EXT = GetPName(0x8023)
    comptime GL_HISTOGRAM_EXT = GetPName(0x8024)
    comptime GL_MINMAX_EXT = GetPName(0x802E)
    comptime GL_POLYGON_OFFSET_FILL = GetPName(0x8037)
    comptime GL_POLYGON_OFFSET_FACTOR = GetPName(0x8038)
    comptime GL_POLYGON_OFFSET_BIAS_EXT = GetPName(0x8039)
    comptime GL_RESCALE_NORMAL_EXT = GetPName(0x803A)
    comptime GL_TEXTURE_BINDING_1D = GetPName(0x8068)
    comptime GL_TEXTURE_BINDING_2D = GetPName(0x8069)
    comptime GL_TEXTURE_3D_BINDING_EXT = GetPName(0x806A)
    comptime GL_TEXTURE_BINDING_3D = GetPName(0x806A)
    comptime GL_PACK_SKIP_IMAGES = GetPName(0x806B)
    comptime GL_PACK_SKIP_IMAGES_EXT = GetPName(0x806B)
    comptime GL_PACK_IMAGE_HEIGHT = GetPName(0x806C)
    comptime GL_PACK_IMAGE_HEIGHT_EXT = GetPName(0x806C)
    comptime GL_UNPACK_SKIP_IMAGES = GetPName(0x806D)
    comptime GL_UNPACK_SKIP_IMAGES_EXT = GetPName(0x806D)
    comptime GL_UNPACK_IMAGE_HEIGHT = GetPName(0x806E)
    comptime GL_UNPACK_IMAGE_HEIGHT_EXT = GetPName(0x806E)
    comptime GL_TEXTURE_3D_EXT = GetPName(0x806F)
    comptime GL_MAX_3D_TEXTURE_SIZE = GetPName(0x8073)
    comptime GL_MAX_3D_TEXTURE_SIZE_EXT = GetPName(0x8073)
    comptime GL_VERTEX_ARRAY = GetPName(0x8074)
    comptime GL_NORMAL_ARRAY = GetPName(0x8075)
    comptime GL_COLOR_ARRAY = GetPName(0x8076)
    comptime GL_INDEX_ARRAY = GetPName(0x8077)
    comptime GL_TEXTURE_COORD_ARRAY = GetPName(0x8078)
    comptime GL_EDGE_FLAG_ARRAY = GetPName(0x8079)
    comptime GL_VERTEX_ARRAY_SIZE = GetPName(0x807A)
    comptime GL_VERTEX_ARRAY_TYPE = GetPName(0x807B)
    comptime GL_VERTEX_ARRAY_STRIDE = GetPName(0x807C)
    comptime GL_VERTEX_ARRAY_COUNT_EXT = GetPName(0x807D)
    comptime GL_NORMAL_ARRAY_TYPE = GetPName(0x807E)
    comptime GL_NORMAL_ARRAY_STRIDE = GetPName(0x807F)
    comptime GL_NORMAL_ARRAY_COUNT_EXT = GetPName(0x8080)
    comptime GL_COLOR_ARRAY_SIZE = GetPName(0x8081)
    comptime GL_COLOR_ARRAY_TYPE = GetPName(0x8082)
    comptime GL_COLOR_ARRAY_STRIDE = GetPName(0x8083)
    comptime GL_COLOR_ARRAY_COUNT_EXT = GetPName(0x8084)
    comptime GL_INDEX_ARRAY_TYPE = GetPName(0x8085)
    comptime GL_INDEX_ARRAY_STRIDE = GetPName(0x8086)
    comptime GL_INDEX_ARRAY_COUNT_EXT = GetPName(0x8087)
    comptime GL_TEXTURE_COORD_ARRAY_SIZE = GetPName(0x8088)
    comptime GL_TEXTURE_COORD_ARRAY_TYPE = GetPName(0x8089)
    comptime GL_TEXTURE_COORD_ARRAY_STRIDE = GetPName(0x808A)
    comptime GL_TEXTURE_COORD_ARRAY_COUNT_EXT = GetPName(0x808B)
    comptime GL_EDGE_FLAG_ARRAY_STRIDE = GetPName(0x808C)
    comptime GL_EDGE_FLAG_ARRAY_COUNT_EXT = GetPName(0x808D)
    comptime GL_INTERLACE_SGIX = GetPName(0x8094)
    comptime GL_DETAIL_TEXTURE_2D_BINDING_SGIS = GetPName(0x8096)
    comptime GL_MULTISAMPLE_SGIS = GetPName(0x809D)
    comptime GL_SAMPLE_ALPHA_TO_MASK_SGIS = GetPName(0x809E)
    comptime GL_SAMPLE_ALPHA_TO_ONE_SGIS = GetPName(0x809F)
    comptime GL_SAMPLE_MASK_SGIS = GetPName(0x80A0)
    comptime GL_SAMPLE_BUFFERS = GetPName(0x80A8)
    comptime GL_SAMPLE_BUFFERS_SGIS = GetPName(0x80A8)
    comptime GL_SAMPLES = GetPName(0x80A9)
    comptime GL_SAMPLES_SGIS = GetPName(0x80A9)
    comptime GL_SAMPLE_COVERAGE_VALUE = GetPName(0x80AA)
    comptime GL_SAMPLE_MASK_VALUE_SGIS = GetPName(0x80AA)
    comptime GL_SAMPLE_COVERAGE_INVERT = GetPName(0x80AB)
    comptime GL_SAMPLE_MASK_INVERT_SGIS = GetPName(0x80AB)
    comptime GL_SAMPLE_PATTERN_SGIS = GetPName(0x80AC)
    comptime GL_COLOR_MATRIX_SGI = GetPName(0x80B1)
    comptime GL_COLOR_MATRIX_STACK_DEPTH_SGI = GetPName(0x80B2)
    comptime GL_MAX_COLOR_MATRIX_STACK_DEPTH_SGI = GetPName(0x80B3)
    comptime GL_POST_COLOR_MATRIX_RED_SCALE_SGI = GetPName(0x80B4)
    comptime GL_POST_COLOR_MATRIX_GREEN_SCALE_SGI = GetPName(0x80B5)
    comptime GL_POST_COLOR_MATRIX_BLUE_SCALE_SGI = GetPName(0x80B6)
    comptime GL_POST_COLOR_MATRIX_ALPHA_SCALE_SGI = GetPName(0x80B7)
    comptime GL_POST_COLOR_MATRIX_RED_BIAS_SGI = GetPName(0x80B8)
    comptime GL_POST_COLOR_MATRIX_GREEN_BIAS_SGI = GetPName(0x80B9)
    comptime GL_POST_COLOR_MATRIX_BLUE_BIAS_SGI = GetPName(0x80BA)
    comptime GL_POST_COLOR_MATRIX_ALPHA_BIAS_SGI = GetPName(0x80BB)
    comptime GL_TEXTURE_COLOR_TABLE_SGI = GetPName(0x80BC)
    comptime GL_BLEND_DST_RGB = GetPName(0x80C8)
    comptime GL_BLEND_SRC_RGB = GetPName(0x80C9)
    comptime GL_BLEND_DST_ALPHA = GetPName(0x80CA)
    comptime GL_BLEND_SRC_ALPHA = GetPName(0x80CB)
    comptime GL_COLOR_TABLE_SGI = GetPName(0x80D0)
    comptime GL_POST_CONVOLUTION_COLOR_TABLE_SGI = GetPName(0x80D1)
    comptime GL_POST_COLOR_MATRIX_COLOR_TABLE_SGI = GetPName(0x80D2)
    comptime GL_MAX_ELEMENTS_VERTICES = GetPName(0x80E8)
    comptime GL_MAX_ELEMENTS_INDICES = GetPName(0x80E9)
    comptime GL_POINT_SIZE_MIN = GetPName(0x8126)
    comptime GL_POINT_SIZE_MIN_ARB = GetPName(0x8126)
    comptime GL_POINT_SIZE_MIN_EXT = GetPName(0x8126)
    comptime GL_POINT_SIZE_MIN_SGIS = GetPName(0x8126)
    comptime GL_POINT_SIZE_MAX = GetPName(0x8127)
    comptime GL_POINT_SIZE_MAX_ARB = GetPName(0x8127)
    comptime GL_POINT_SIZE_MAX_EXT = GetPName(0x8127)
    comptime GL_POINT_SIZE_MAX_SGIS = GetPName(0x8127)
    comptime GL_POINT_FADE_THRESHOLD_SIZE = GetPName(0x8128)
    comptime GL_POINT_FADE_THRESHOLD_SIZE_ARB = GetPName(0x8128)
    comptime GL_POINT_FADE_THRESHOLD_SIZE_EXT = GetPName(0x8128)
    comptime GL_POINT_FADE_THRESHOLD_SIZE_SGIS = GetPName(0x8128)
    comptime GL_DISTANCE_ATTENUATION_EXT = GetPName(0x8129)
    comptime GL_DISTANCE_ATTENUATION_SGIS = GetPName(0x8129)
    comptime GL_POINT_DISTANCE_ATTENUATION = GetPName(0x8129)
    comptime GL_POINT_DISTANCE_ATTENUATION_ARB = GetPName(0x8129)
    comptime GL_FOG_FUNC_POINTS_SGIS = GetPName(0x812B)
    comptime GL_MAX_FOG_FUNC_POINTS_SGIS = GetPName(0x812C)
    comptime GL_PACK_SKIP_VOLUMES_SGIS = GetPName(0x8130)
    comptime GL_PACK_IMAGE_DEPTH_SGIS = GetPName(0x8131)
    comptime GL_UNPACK_SKIP_VOLUMES_SGIS = GetPName(0x8132)
    comptime GL_UNPACK_IMAGE_DEPTH_SGIS = GetPName(0x8133)
    comptime GL_TEXTURE_4D_SGIS = GetPName(0x8134)
    comptime GL_MAX_4D_TEXTURE_SIZE_SGIS = GetPName(0x8138)
    comptime GL_PIXEL_TEX_GEN_SGIX = GetPName(0x8139)
    comptime GL_PIXEL_TILE_BEST_ALIGNMENT_SGIX = GetPName(0x813E)
    comptime GL_PIXEL_TILE_CACHE_INCREMENT_SGIX = GetPName(0x813F)
    comptime GL_PIXEL_TILE_WIDTH_SGIX = GetPName(0x8140)
    comptime GL_PIXEL_TILE_HEIGHT_SGIX = GetPName(0x8141)
    comptime GL_PIXEL_TILE_GRID_WIDTH_SGIX = GetPName(0x8142)
    comptime GL_PIXEL_TILE_GRID_HEIGHT_SGIX = GetPName(0x8143)
    comptime GL_PIXEL_TILE_GRID_DEPTH_SGIX = GetPName(0x8144)
    comptime GL_PIXEL_TILE_CACHE_SIZE_SGIX = GetPName(0x8145)
    comptime GL_SPRITE_SGIX = GetPName(0x8148)
    comptime GL_SPRITE_MODE_SGIX = GetPName(0x8149)
    comptime GL_SPRITE_AXIS_SGIX = GetPName(0x814A)
    comptime GL_SPRITE_TRANSLATION_SGIX = GetPName(0x814B)
    comptime GL_TEXTURE_4D_BINDING_SGIS = GetPName(0x814F)
    comptime GL_MAX_CLIPMAP_DEPTH_SGIX = GetPName(0x8177)
    comptime GL_MAX_CLIPMAP_VIRTUAL_DEPTH_SGIX = GetPName(0x8178)
    comptime GL_POST_TEXTURE_FILTER_BIAS_RANGE_SGIX = GetPName(0x817B)
    comptime GL_POST_TEXTURE_FILTER_SCALE_RANGE_SGIX = GetPName(0x817C)
    comptime GL_REFERENCE_PLANE_SGIX = GetPName(0x817D)
    comptime GL_REFERENCE_PLANE_EQUATION_SGIX = GetPName(0x817E)
    comptime GL_IR_INSTRUMENT1_SGIX = GetPName(0x817F)
    comptime GL_INSTRUMENT_MEASUREMENTS_SGIX = GetPName(0x8181)
    comptime GL_CALLIGRAPHIC_FRAGMENT_SGIX = GetPName(0x8183)
    comptime GL_FRAMEZOOM_SGIX = GetPName(0x818B)
    comptime GL_FRAMEZOOM_FACTOR_SGIX = GetPName(0x818C)
    comptime GL_MAX_FRAMEZOOM_FACTOR_SGIX = GetPName(0x818D)
    comptime GL_GENERATE_MIPMAP_HINT_SGIS = GetPName(0x8192)
    comptime GL_DEFORMATIONS_MASK_SGIX = GetPName(0x8196)
    comptime GL_FOG_OFFSET_SGIX = GetPName(0x8198)
    comptime GL_FOG_OFFSET_VALUE_SGIX = GetPName(0x8199)
    comptime GL_LIGHT_MODEL_COLOR_CONTROL = GetPName(0x81F8)
    comptime GL_SHARED_TEXTURE_PALETTE_EXT = GetPName(0x81FB)
    comptime GL_MAJOR_VERSION = GetPName(0x821B)
    comptime GL_MINOR_VERSION = GetPName(0x821C)
    comptime GL_NUM_EXTENSIONS = GetPName(0x821D)
    comptime GL_CONTEXT_FLAGS = GetPName(0x821E)
    comptime GL_PROGRAM_PIPELINE_BINDING = GetPName(0x825A)
    comptime GL_MAX_VIEWPORTS = GetPName(0x825B)
    comptime GL_VIEWPORT_SUBPIXEL_BITS = GetPName(0x825C)
    comptime GL_VIEWPORT_BOUNDS_RANGE = GetPName(0x825D)
    comptime GL_LAYER_PROVOKING_VERTEX = GetPName(0x825E)
    comptime GL_VIEWPORT_INDEX_PROVOKING_VERTEX = GetPName(0x825F)
    comptime GL_MAX_COMPUTE_UNIFORM_COMPONENTS = GetPName(0x8263)
    comptime GL_MAX_COMPUTE_ATOMIC_COUNTER_BUFFERS = GetPName(0x8264)
    comptime GL_MAX_COMPUTE_ATOMIC_COUNTERS = GetPName(0x8265)
    comptime GL_MAX_COMBINED_COMPUTE_UNIFORM_COMPONENTS = GetPName(0x8266)
    comptime GL_MAX_DEBUG_GROUP_STACK_DEPTH = GetPName(0x826C)
    comptime GL_DEBUG_GROUP_STACK_DEPTH = GetPName(0x826D)
    comptime GL_MAX_UNIFORM_LOCATIONS = GetPName(0x826E)
    comptime GL_VERTEX_BINDING_DIVISOR = GetPName(0x82D6)
    comptime GL_VERTEX_BINDING_OFFSET = GetPName(0x82D7)
    comptime GL_VERTEX_BINDING_STRIDE = GetPName(0x82D8)
    comptime GL_MAX_VERTEX_ATTRIB_RELATIVE_OFFSET = GetPName(0x82D9)
    comptime GL_MAX_VERTEX_ATTRIB_BINDINGS = GetPName(0x82DA)
    comptime GL_MAX_LABEL_LENGTH = GetPName(0x82E8)
    comptime GL_CONVOLUTION_HINT_SGIX = GetPName(0x8316)
    comptime GL_ASYNC_MARKER_SGIX = GetPName(0x8329)
    comptime GL_PIXEL_TEX_GEN_MODE_SGIX = GetPName(0x832B)
    comptime GL_ASYNC_HISTOGRAM_SGIX = GetPName(0x832C)
    comptime GL_MAX_ASYNC_HISTOGRAM_SGIX = GetPName(0x832D)
    comptime GL_PIXEL_TEXTURE_SGIS = GetPName(0x8353)
    comptime GL_ASYNC_TEX_IMAGE_SGIX = GetPName(0x835C)
    comptime GL_ASYNC_DRAW_PIXELS_SGIX = GetPName(0x835D)
    comptime GL_ASYNC_READ_PIXELS_SGIX = GetPName(0x835E)
    comptime GL_MAX_ASYNC_TEX_IMAGE_SGIX = GetPName(0x835F)
    comptime GL_MAX_ASYNC_DRAW_PIXELS_SGIX = GetPName(0x8360)
    comptime GL_MAX_ASYNC_READ_PIXELS_SGIX = GetPName(0x8361)
    comptime GL_VERTEX_PRECLIP_SGIX = GetPName(0x83EE)
    comptime GL_VERTEX_PRECLIP_HINT_SGIX = GetPName(0x83EF)
    comptime GL_FRAGMENT_LIGHTING_SGIX = GetPName(0x8400)
    comptime GL_FRAGMENT_COLOR_MATERIAL_SGIX = GetPName(0x8401)
    comptime GL_FRAGMENT_COLOR_MATERIAL_FACE_SGIX = GetPName(0x8402)
    comptime GL_FRAGMENT_COLOR_MATERIAL_PARAMETER_SGIX = GetPName(0x8403)
    comptime GL_MAX_FRAGMENT_LIGHTS_SGIX = GetPName(0x8404)
    comptime GL_MAX_ACTIVE_LIGHTS_SGIX = GetPName(0x8405)
    comptime GL_LIGHT_ENV_MODE_SGIX = GetPName(0x8407)
    comptime GL_FRAGMENT_LIGHT_MODEL_LOCAL_VIEWER_SGIX = GetPName(0x8408)
    comptime GL_FRAGMENT_LIGHT_MODEL_TWO_SIDE_SGIX = GetPName(0x8409)
    comptime GL_FRAGMENT_LIGHT_MODEL_AMBIENT_SGIX = GetPName(0x840A)
    comptime GL_FRAGMENT_LIGHT_MODEL_NORMAL_INTERPOLATION_SGIX = GetPName(0x840B)
    comptime GL_FRAGMENT_LIGHT0_SGIX = GetPName(0x840C)
    comptime GL_PACK_RESAMPLE_SGIX = GetPName(0x842E)
    comptime GL_UNPACK_RESAMPLE_SGIX = GetPName(0x842F)
    comptime GL_ALIASED_POINT_SIZE_RANGE = GetPName(0x846D)
    comptime GL_ALIASED_LINE_WIDTH_RANGE = GetPName(0x846E)
    comptime GL_ACTIVE_TEXTURE = GetPName(0x84E0)
    comptime GL_MAX_RENDERBUFFER_SIZE = GetPName(0x84E8)
    comptime GL_TEXTURE_COMPRESSION_HINT = GetPName(0x84EF)
    comptime GL_TEXTURE_BINDING_RECTANGLE = GetPName(0x84F6)
    comptime GL_TEXTURE_BINDING_RECTANGLE_ARB = GetPName(0x84F6)
    comptime GL_TEXTURE_BINDING_RECTANGLE_NV = GetPName(0x84F6)
    comptime GL_MAX_RECTANGLE_TEXTURE_SIZE = GetPName(0x84F8)
    comptime GL_MAX_TEXTURE_LOD_BIAS = GetPName(0x84FD)
    comptime GL_TEXTURE_BINDING_CUBE_MAP = GetPName(0x8514)
    comptime GL_TEXTURE_BINDING_CUBE_MAP_ARB = GetPName(0x8514)
    comptime GL_TEXTURE_BINDING_CUBE_MAP_EXT = GetPName(0x8514)
    comptime GL_TEXTURE_BINDING_CUBE_MAP_OES = GetPName(0x8514)
    comptime GL_MAX_CUBE_MAP_TEXTURE_SIZE = GetPName(0x851C)
    comptime GL_MAX_CUBE_MAP_TEXTURE_SIZE_ARB = GetPName(0x851C)
    comptime GL_MAX_CUBE_MAP_TEXTURE_SIZE_EXT = GetPName(0x851C)
    comptime GL_MAX_CUBE_MAP_TEXTURE_SIZE_OES = GetPName(0x851C)
    comptime GL_PACK_SUBSAMPLE_RATE_SGIX = GetPName(0x85A0)
    comptime GL_UNPACK_SUBSAMPLE_RATE_SGIX = GetPName(0x85A1)
    comptime GL_VERTEX_ARRAY_BINDING = GetPName(0x85B5)
    comptime GL_PROGRAM_POINT_SIZE = GetPName(0x8642)
    comptime GL_NUM_COMPRESSED_TEXTURE_FORMATS = GetPName(0x86A2)
    comptime GL_COMPRESSED_TEXTURE_FORMATS = GetPName(0x86A3)
    comptime GL_NUM_PROGRAM_BINARY_FORMATS = GetPName(0x87FE)
    comptime GL_PROGRAM_BINARY_FORMATS = GetPName(0x87FF)
    comptime GL_STENCIL_BACK_FUNC = GetPName(0x8800)
    comptime GL_STENCIL_BACK_FAIL = GetPName(0x8801)
    comptime GL_STENCIL_BACK_PASS_DEPTH_FAIL = GetPName(0x8802)
    comptime GL_STENCIL_BACK_PASS_DEPTH_PASS = GetPName(0x8803)
    comptime GL_MAX_DRAW_BUFFERS = GetPName(0x8824)
    comptime GL_BLEND_EQUATION_ALPHA = GetPName(0x883D)
    comptime GL_MAX_VERTEX_ATTRIBS = GetPName(0x8869)
    comptime GL_MAX_TEXTURE_IMAGE_UNITS = GetPName(0x8872)
    comptime GL_ARRAY_BUFFER_BINDING = GetPName(0x8894)
    comptime GL_ELEMENT_ARRAY_BUFFER_BINDING = GetPName(0x8895)
    comptime GL_PIXEL_PACK_BUFFER_BINDING = GetPName(0x88ED)
    comptime GL_PIXEL_UNPACK_BUFFER_BINDING = GetPName(0x88EF)
    comptime GL_MAX_DUAL_SOURCE_DRAW_BUFFERS = GetPName(0x88FC)
    comptime GL_MAX_ARRAY_TEXTURE_LAYERS = GetPName(0x88FF)
    comptime GL_MIN_PROGRAM_TEXEL_OFFSET = GetPName(0x8904)
    comptime GL_MAX_PROGRAM_TEXEL_OFFSET = GetPName(0x8905)
    comptime GL_SAMPLER_BINDING = GetPName(0x8919)
    comptime GL_FRAGMENT_SHADER_ATI = GetPName(0x8920)
    comptime GL_UNIFORM_BUFFER_BINDING = GetPName(0x8A28)
    comptime GL_UNIFORM_BUFFER_START = GetPName(0x8A29)
    comptime GL_UNIFORM_BUFFER_SIZE = GetPName(0x8A2A)
    comptime GL_MAX_VERTEX_UNIFORM_BLOCKS = GetPName(0x8A2B)
    comptime GL_MAX_GEOMETRY_UNIFORM_BLOCKS = GetPName(0x8A2C)
    comptime GL_MAX_FRAGMENT_UNIFORM_BLOCKS = GetPName(0x8A2D)
    comptime GL_MAX_COMBINED_UNIFORM_BLOCKS = GetPName(0x8A2E)
    comptime GL_MAX_UNIFORM_BUFFER_BINDINGS = GetPName(0x8A2F)
    comptime GL_MAX_UNIFORM_BLOCK_SIZE = GetPName(0x8A30)
    comptime GL_MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS = GetPName(0x8A31)
    comptime GL_MAX_COMBINED_GEOMETRY_UNIFORM_COMPONENTS = GetPName(0x8A32)
    comptime GL_MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS = GetPName(0x8A33)
    comptime GL_UNIFORM_BUFFER_OFFSET_ALIGNMENT = GetPName(0x8A34)
    comptime GL_MAX_FRAGMENT_UNIFORM_COMPONENTS = GetPName(0x8B49)
    comptime GL_MAX_VERTEX_UNIFORM_COMPONENTS = GetPName(0x8B4A)
    comptime GL_MAX_VARYING_FLOATS = GetPName(0x8B4B)
    comptime GL_MAX_VARYING_COMPONENTS = GetPName(0x8B4B)
    comptime GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS = GetPName(0x8B4C)
    comptime GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS = GetPName(0x8B4D)
    comptime GL_FRAGMENT_SHADER_DERIVATIVE_HINT = GetPName(0x8B8B)
    comptime GL_CURRENT_PROGRAM = GetPName(0x8B8D)
    comptime GL_IMPLEMENTATION_COLOR_READ_TYPE = GetPName(0x8B9A)
    comptime GL_IMPLEMENTATION_COLOR_READ_FORMAT = GetPName(0x8B9B)
    comptime GL_TEXTURE_BINDING_1D_ARRAY = GetPName(0x8C1C)
    comptime GL_TEXTURE_BINDING_2D_ARRAY = GetPName(0x8C1D)
    comptime GL_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS = GetPName(0x8C29)
    comptime GL_MAX_TEXTURE_BUFFER_SIZE = GetPName(0x8C2B)
    comptime GL_TEXTURE_BINDING_BUFFER = GetPName(0x8C2C)
    comptime GL_TRANSFORM_FEEDBACK_BUFFER_START = GetPName(0x8C84)
    comptime GL_TRANSFORM_FEEDBACK_BUFFER_SIZE = GetPName(0x8C85)
    comptime GL_TRANSFORM_FEEDBACK_BUFFER_BINDING = GetPName(0x8C8F)
    comptime GL_MOTION_ESTIMATION_SEARCH_BLOCK_X_QCOM = GetPName(0x8C90)
    comptime GL_MOTION_ESTIMATION_SEARCH_BLOCK_Y_QCOM = GetPName(0x8C91)
    comptime GL_STENCIL_BACK_REF = GetPName(0x8CA3)
    comptime GL_STENCIL_BACK_VALUE_MASK = GetPName(0x8CA4)
    comptime GL_STENCIL_BACK_WRITEMASK = GetPName(0x8CA5)
    comptime GL_DRAW_FRAMEBUFFER_BINDING = GetPName(0x8CA6)
    comptime GL_RENDERBUFFER_BINDING = GetPName(0x8CA7)
    comptime GL_READ_FRAMEBUFFER_BINDING = GetPName(0x8CAA)
    comptime GL_MAX_COLOR_ATTACHMENTS = GetPName(0x8CDF)
    comptime GL_MAX_COLOR_ATTACHMENTS_EXT = GetPName(0x8CDF)
    comptime GL_MAX_COLOR_ATTACHMENTS_NV = GetPName(0x8CDF)
    comptime GL_TEXTURE_GEN_STR_OES = GetPName(0x8D60)
    comptime GL_MAX_ELEMENT_INDEX = GetPName(0x8D6B)
    comptime GL_MAX_GEOMETRY_UNIFORM_COMPONENTS = GetPName(0x8DDF)
    comptime GL_SHADER_BINARY_FORMATS = GetPName(0x8DF8)
    comptime GL_NUM_SHADER_BINARY_FORMATS = GetPName(0x8DF9)
    comptime GL_SHADER_COMPILER = GetPName(0x8DFA)
    comptime GL_MAX_VERTEX_UNIFORM_VECTORS = GetPName(0x8DFB)
    comptime GL_MAX_VARYING_VECTORS = GetPName(0x8DFC)
    comptime GL_MAX_FRAGMENT_UNIFORM_VECTORS = GetPName(0x8DFD)
    comptime GL_TIMESTAMP = GetPName(0x8E28)
    comptime GL_TIMESTAMP_EXT = GetPName(0x8E28)
    comptime GL_PROVOKING_VERTEX = GetPName(0x8E4F)
    comptime GL_MAX_SAMPLE_MASK_WORDS = GetPName(0x8E59)
    comptime GL_MAX_TESS_CONTROL_UNIFORM_BLOCKS = GetPName(0x8E89)
    comptime GL_MAX_TESS_EVALUATION_UNIFORM_BLOCKS = GetPName(0x8E8A)
    comptime GL_FETCH_PER_SAMPLE_ARM = GetPName(0x8F65)
    comptime GL_FRAGMENT_SHADER_FRAMEBUFFER_FETCH_MRT_ARM = GetPName(0x8F66)
    comptime GL_FRAGMENT_SHADING_RATE_NON_TRIVIAL_COMBINERS_SUPPORTED_EXT = GetPName(0x8F6F)
    comptime GL_PRIMITIVE_RESTART_INDEX = GetPName(0x8F9E)
    comptime GL_MIN_MAP_BUFFER_ALIGNMENT = GetPName(0x90BC)
    comptime GL_SHADER_STORAGE_BUFFER_BINDING = GetPName(0x90D3)
    comptime GL_SHADER_STORAGE_BUFFER_START = GetPName(0x90D4)
    comptime GL_SHADER_STORAGE_BUFFER_SIZE = GetPName(0x90D5)
    comptime GL_MAX_VERTEX_SHADER_STORAGE_BLOCKS = GetPName(0x90D6)
    comptime GL_MAX_GEOMETRY_SHADER_STORAGE_BLOCKS = GetPName(0x90D7)
    comptime GL_MAX_TESS_CONTROL_SHADER_STORAGE_BLOCKS = GetPName(0x90D8)
    comptime GL_MAX_TESS_EVALUATION_SHADER_STORAGE_BLOCKS = GetPName(0x90D9)
    comptime GL_MAX_FRAGMENT_SHADER_STORAGE_BLOCKS = GetPName(0x90DA)
    comptime GL_MAX_COMPUTE_SHADER_STORAGE_BLOCKS = GetPName(0x90DB)
    comptime GL_MAX_COMBINED_SHADER_STORAGE_BLOCKS = GetPName(0x90DC)
    comptime GL_MAX_SHADER_STORAGE_BUFFER_BINDINGS = GetPName(0x90DD)
    comptime GL_SHADER_STORAGE_BUFFER_OFFSET_ALIGNMENT = GetPName(0x90DF)
    comptime GL_MAX_COMPUTE_WORK_GROUP_INVOCATIONS = GetPName(0x90EB)
    comptime GL_DISPATCH_INDIRECT_BUFFER_BINDING = GetPName(0x90EF)
    comptime GL_TEXTURE_BINDING_2D_MULTISAMPLE = GetPName(0x9104)
    comptime GL_TEXTURE_BINDING_2D_MULTISAMPLE_ARRAY = GetPName(0x9105)
    comptime GL_MAX_COLOR_TEXTURE_SAMPLES = GetPName(0x910E)
    comptime GL_MAX_DEPTH_TEXTURE_SAMPLES = GetPName(0x910F)
    comptime GL_MAX_INTEGER_SAMPLES = GetPName(0x9110)
    comptime GL_MAX_SERVER_WAIT_TIMEOUT = GetPName(0x9111)
    comptime GL_MAX_VERTEX_OUTPUT_COMPONENTS = GetPName(0x9122)
    comptime GL_MAX_GEOMETRY_INPUT_COMPONENTS = GetPName(0x9123)
    comptime GL_MAX_GEOMETRY_OUTPUT_COMPONENTS = GetPName(0x9124)
    comptime GL_MAX_FRAGMENT_INPUT_COMPONENTS = GetPName(0x9125)
    comptime GL_CONTEXT_PROFILE_MASK = GetPName(0x9126)
    comptime GL_TEXTURE_BUFFER_OFFSET_ALIGNMENT = GetPName(0x919F)
    comptime GL_MAX_COMPUTE_UNIFORM_BLOCKS = GetPName(0x91BB)
    comptime GL_MAX_COMPUTE_TEXTURE_IMAGE_UNITS = GetPName(0x91BC)
    comptime GL_MAX_COMPUTE_WORK_GROUP_COUNT = GetPName(0x91BE)
    comptime GL_MAX_COMPUTE_WORK_GROUP_SIZE = GetPName(0x91BF)
    comptime GL_MAX_VERTEX_ATOMIC_COUNTERS = GetPName(0x92D2)
    comptime GL_MAX_TESS_CONTROL_ATOMIC_COUNTERS = GetPName(0x92D3)
    comptime GL_MAX_TESS_EVALUATION_ATOMIC_COUNTERS = GetPName(0x92D4)
    comptime GL_MAX_GEOMETRY_ATOMIC_COUNTERS = GetPName(0x92D5)
    comptime GL_MAX_FRAGMENT_ATOMIC_COUNTERS = GetPName(0x92D6)
    comptime GL_MAX_COMBINED_ATOMIC_COUNTERS = GetPName(0x92D7)
    comptime GL_MAX_FRAMEBUFFER_WIDTH = GetPName(0x9315)
    comptime GL_MAX_FRAMEBUFFER_HEIGHT = GetPName(0x9316)
    comptime GL_MAX_FRAMEBUFFER_LAYERS = GetPName(0x9317)
    comptime GL_MAX_FRAMEBUFFER_SAMPLES = GetPName(0x9318)
    comptime GL_NUM_DEVICE_UUIDS_EXT = GetPName(0x9596)
    comptime GL_DEVICE_UUID_EXT = GetPName(0x9597)
    comptime GL_DRIVER_UUID_EXT = GetPName(0x9598)
    comptime GL_DEVICE_LUID_EXT = GetPName(0x9599)
    comptime GL_DEVICE_NODE_MASK_EXT = GetPName(0x959A)
    comptime GL_SHADING_RATE_IMAGE_PER_PRIMITIVE_NV = GetPName(0x95B1)
    comptime GL_SHADING_RATE_IMAGE_PALETTE_COUNT_NV = GetPName(0x95B2)
    comptime GL_MAX_TIMELINE_SEMAPHORE_VALUE_DIFFERENCE_NV = GetPName(0x95B6)
    comptime GL_FRAMEBUFFER_FETCH_NONCOHERENT_QCOM = GetPName(0x96A2)
    comptime GL_SHADING_RATE_QCOM = GetPName(0x96A4)
    comptime GL_SHADING_RATE_EXT = GetPName(0x96D0)
    comptime GL_MIN_FRAGMENT_SHADING_RATE_ATTACHMENT_TEXEL_WIDTH_EXT = GetPName(0x96D7)
    comptime GL_MAX_FRAGMENT_SHADING_RATE_ATTACHMENT_TEXEL_WIDTH_EXT = GetPName(0x96D8)
    comptime GL_MIN_FRAGMENT_SHADING_RATE_ATTACHMENT_TEXEL_HEIGHT_EXT = GetPName(0x96D9)
    comptime GL_MAX_FRAGMENT_SHADING_RATE_ATTACHMENT_TEXEL_HEIGHT_EXT = GetPName(0x96DA)
    comptime GL_MAX_FRAGMENT_SHADING_RATE_ATTACHMENT_TEXEL_ASPECT_RATIO_EXT = GetPName(0x96DB)
    comptime GL_MAX_FRAGMENT_SHADING_RATE_ATTACHMENT_LAYERS_EXT = GetPName(0x96DC)
    comptime GL_FRAGMENT_SHADING_RATE_WITH_SHADER_DEPTH_STENCIL_WRITES_SUPPORTED_EXT = GetPName(0x96DD)
    comptime GL_FRAGMENT_SHADING_RATE_WITH_SAMPLE_MASK_SUPPORTED_EXT = GetPName(0x96DE)
    comptime GL_FRAGMENT_SHADING_RATE_ATTACHMENT_WITH_DEFAULT_FRAMEBUFFER_SUPPORTED_EXT = GetPName(0x96DF)
    comptime GL_SHADER_CORE_COUNT_ARM = GetPName(0x96F0)
    comptime GL_SHADER_CORE_ACTIVE_COUNT_ARM = GetPName(0x96F1)
    comptime GL_SHADER_CORE_PRESENT_MASK_ARM = GetPName(0x96F2)
    comptime GL_SHADER_CORE_MAX_WARP_COUNT_ARM = GetPName(0x96F3)
    comptime GL_SHADER_CORE_PIXEL_RATE_ARM = GetPName(0x96F4)
    comptime GL_SHADER_CORE_TEXEL_RATE_ARM = GetPName(0x96F5)
    comptime GL_SHADER_CORE_FMA_RATE_ARM = GetPName(0x96F6)
    comptime GL_MAX_TASK_WORK_GROUP_TOTAL_COUNT_EXT = GetPName(0x9740)
    comptime GL_MAX_MESH_WORK_GROUP_TOTAL_COUNT_EXT = GetPName(0x9741)
    comptime GL_MAX_TASK_PAYLOAD_SIZE_EXT = GetPName(0x9742)
    comptime GL_MAX_TASK_SHARED_MEMORY_SIZE_EXT = GetPName(0x9743)
    comptime GL_MAX_MESH_SHARED_MEMORY_SIZE_EXT = GetPName(0x9744)
    comptime GL_MAX_TASK_PAYLOAD_AND_SHARED_MEMORY_SIZE_EXT = GetPName(0x9745)
    comptime GL_MAX_MESH_PAYLOAD_AND_SHARED_MEMORY_SIZE_EXT = GetPName(0x9746)
    comptime GL_MAX_MESH_OUTPUT_MEMORY_SIZE_EXT = GetPName(0x9747)
    comptime GL_MAX_MESH_PAYLOAD_AND_OUTPUT_MEMORY_SIZE_EXT = GetPName(0x9748)
    comptime GL_MAX_MESH_OUTPUT_COMPONENTS_EXT = GetPName(0x9749)
    comptime GL_MAX_MESH_OUTPUT_LAYERS_EXT = GetPName(0x974A)
    comptime GL_MAX_PREFERRED_TASK_WORK_GROUP_INVOCATIONS_EXT = GetPName(0x974B)
    comptime GL_MAX_PREFERRED_MESH_WORK_GROUP_INVOCATIONS_EXT = GetPName(0x974C)
    comptime GL_MESH_PREFERS_LOCAL_INVOCATION_VERTEX_OUTPUT_EXT = GetPName(0x974D)
    comptime GL_MESH_PREFERS_LOCAL_INVOCATION_PRIMITIVE_OUTPUT_EXT = GetPName(0x974E)
    comptime GL_MESH_PREFERS_COMPACT_VERTEX_OUTPUT_EXT = GetPName(0x974F)
    comptime GL_MESH_PREFERS_COMPACT_PRIMITIVE_OUTPUT_EXT = GetPName(0x9750)
    comptime GL_MAX_TASK_WORK_GROUP_COUNT_EXT = GetPName(0x9751)
    comptime GL_MAX_MESH_WORK_GROUP_COUNT_EXT = GetPName(0x9752)
    comptime GL_MAX_MESH_OUTPUT_PRIMITIVES_EXT = GetPName(0x9756)
    comptime GL_MAX_MESH_WORK_GROUP_INVOCATIONS_EXT = GetPName(0x9757)
    comptime GL_MAX_MESH_WORK_GROUP_SIZE_EXT = GetPName(0x9758)
    comptime GL_MAX_TASK_WORK_GROUP_INVOCATIONS_EXT = GetPName(0x9759)
    comptime GL_MAX_TASK_WORK_GROUP_SIZE_EXT = GetPName(0x975A)
    comptime GL_FRAGMENT_SHADING_RATE_PRIMITIVE_RATE_WITH_MULTI_VIEWPORT_SUPPORTED_EXT = GetPName(0x9780)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct GetTextureParameter(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_TEXTURE_WIDTH = GetTextureParameter(0x1000)
    comptime GL_TEXTURE_HEIGHT = GetTextureParameter(0x1001)
    comptime GL_TEXTURE_INTERNAL_FORMAT = GetTextureParameter(0x1003)
    comptime GL_TEXTURE_COMPONENTS = GetTextureParameter(0x1003)
    comptime GL_TEXTURE_BORDER_COLOR = GetTextureParameter(0x1004)
    comptime GL_TEXTURE_BORDER_COLOR_NV = GetTextureParameter(0x1004)
    comptime GL_TEXTURE_BORDER = GetTextureParameter(0x1005)
    comptime GL_TEXTURE_MAG_FILTER = GetTextureParameter(0x2800)
    comptime GL_TEXTURE_MIN_FILTER = GetTextureParameter(0x2801)
    comptime GL_TEXTURE_WRAP_S = GetTextureParameter(0x2802)
    comptime GL_TEXTURE_WRAP_T = GetTextureParameter(0x2803)
    comptime GL_TEXTURE_RED_SIZE = GetTextureParameter(0x805C)
    comptime GL_TEXTURE_GREEN_SIZE = GetTextureParameter(0x805D)
    comptime GL_TEXTURE_BLUE_SIZE = GetTextureParameter(0x805E)
    comptime GL_TEXTURE_ALPHA_SIZE = GetTextureParameter(0x805F)
    comptime GL_TEXTURE_LUMINANCE_SIZE = GetTextureParameter(0x8060)
    comptime GL_TEXTURE_INTENSITY_SIZE = GetTextureParameter(0x8061)
    comptime GL_TEXTURE_PRIORITY = GetTextureParameter(0x8066)
    comptime GL_TEXTURE_RESIDENT = GetTextureParameter(0x8067)
    comptime GL_TEXTURE_DEPTH_EXT = GetTextureParameter(0x8071)
    comptime GL_TEXTURE_WRAP_R_EXT = GetTextureParameter(0x8072)
    comptime GL_DETAIL_TEXTURE_LEVEL_SGIS = GetTextureParameter(0x809A)
    comptime GL_DETAIL_TEXTURE_MODE_SGIS = GetTextureParameter(0x809B)
    comptime GL_DETAIL_TEXTURE_FUNC_POINTS_SGIS = GetTextureParameter(0x809C)
    comptime GL_SHARPEN_TEXTURE_FUNC_POINTS_SGIS = GetTextureParameter(0x80B0)
    comptime GL_SHADOW_AMBIENT_SGIX = GetTextureParameter(0x80BF)
    comptime GL_DUAL_TEXTURE_SELECT_SGIS = GetTextureParameter(0x8124)
    comptime GL_QUAD_TEXTURE_SELECT_SGIS = GetTextureParameter(0x8125)
    comptime GL_TEXTURE_4DSIZE_SGIS = GetTextureParameter(0x8136)
    comptime GL_TEXTURE_WRAP_Q_SGIS = GetTextureParameter(0x8137)
    comptime GL_TEXTURE_MIN_LOD_SGIS = GetTextureParameter(0x813A)
    comptime GL_TEXTURE_MAX_LOD_SGIS = GetTextureParameter(0x813B)
    comptime GL_TEXTURE_BASE_LEVEL_SGIS = GetTextureParameter(0x813C)
    comptime GL_TEXTURE_MAX_LEVEL_SGIS = GetTextureParameter(0x813D)
    comptime GL_TEXTURE_FILTER4_SIZE_SGIS = GetTextureParameter(0x8147)
    comptime GL_TEXTURE_CLIPMAP_CENTER_SGIX = GetTextureParameter(0x8171)
    comptime GL_TEXTURE_CLIPMAP_FRAME_SGIX = GetTextureParameter(0x8172)
    comptime GL_TEXTURE_CLIPMAP_OFFSET_SGIX = GetTextureParameter(0x8173)
    comptime GL_TEXTURE_CLIPMAP_VIRTUAL_DEPTH_SGIX = GetTextureParameter(0x8174)
    comptime GL_TEXTURE_CLIPMAP_LOD_OFFSET_SGIX = GetTextureParameter(0x8175)
    comptime GL_TEXTURE_CLIPMAP_DEPTH_SGIX = GetTextureParameter(0x8176)
    comptime GL_POST_TEXTURE_FILTER_BIAS_SGIX = GetTextureParameter(0x8179)
    comptime GL_POST_TEXTURE_FILTER_SCALE_SGIX = GetTextureParameter(0x817A)
    comptime GL_TEXTURE_LOD_BIAS_S_SGIX = GetTextureParameter(0x818E)
    comptime GL_TEXTURE_LOD_BIAS_T_SGIX = GetTextureParameter(0x818F)
    comptime GL_TEXTURE_LOD_BIAS_R_SGIX = GetTextureParameter(0x8190)
    comptime GL_GENERATE_MIPMAP_SGIS = GetTextureParameter(0x8191)
    comptime GL_TEXTURE_COMPARE_SGIX = GetTextureParameter(0x819A)
    comptime GL_TEXTURE_COMPARE_OPERATOR_SGIX = GetTextureParameter(0x819B)
    comptime GL_TEXTURE_LEQUAL_R_SGIX = GetTextureParameter(0x819C)
    comptime GL_TEXTURE_GEQUAL_R_SGIX = GetTextureParameter(0x819D)
    comptime GL_TEXTURE_MAX_CLAMP_S_SGIX = GetTextureParameter(0x8369)
    comptime GL_TEXTURE_MAX_CLAMP_T_SGIX = GetTextureParameter(0x836A)
    comptime GL_TEXTURE_MAX_CLAMP_R_SGIX = GetTextureParameter(0x836B)
    comptime GL_NORMAL_MAP = GetTextureParameter(0x8511)
    comptime GL_NORMAL_MAP_ARB = GetTextureParameter(0x8511)
    comptime GL_NORMAL_MAP_EXT = GetTextureParameter(0x8511)
    comptime GL_NORMAL_MAP_NV = GetTextureParameter(0x8511)
    comptime GL_NORMAL_MAP_OES = GetTextureParameter(0x8511)
    comptime GL_REFLECTION_MAP = GetTextureParameter(0x8512)
    comptime GL_REFLECTION_MAP_ARB = GetTextureParameter(0x8512)
    comptime GL_REFLECTION_MAP_EXT = GetTextureParameter(0x8512)
    comptime GL_REFLECTION_MAP_NV = GetTextureParameter(0x8512)
    comptime GL_REFLECTION_MAP_OES = GetTextureParameter(0x8512)
    comptime GL_TEXTURE_UNNORMALIZED_COORDINATES_ARM = GetTextureParameter(0x8F6A)
    comptime GL_SURFACE_COMPRESSION_EXT = GetTextureParameter(0x96C0)
    comptime GL_TEXTURE_Y_DEGAMMA_QCOM = GetTextureParameter(0x9710)
    comptime GL_TEXTURE_CBCR_DEGAMMA_QCOM = GetTextureParameter(0x9711)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct GraphicsResetStatus(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_NO_ERROR = GraphicsResetStatus(0)
    comptime GL_GUILTY_CONTEXT_RESET = GraphicsResetStatus(0x8253)
    comptime GL_INNOCENT_CONTEXT_RESET = GraphicsResetStatus(0x8254)
    comptime GL_UNKNOWN_CONTEXT_RESET = GraphicsResetStatus(0x8255)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct HintMode(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_DONT_CARE = HintMode(0x1100)
    comptime GL_FASTEST = HintMode(0x1101)
    comptime GL_NICEST = HintMode(0x1102)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct HintTarget(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_PERSPECTIVE_CORRECTION_HINT = HintTarget(0x0C50)
    comptime GL_POINT_SMOOTH_HINT = HintTarget(0x0C51)
    comptime GL_LINE_SMOOTH_HINT = HintTarget(0x0C52)
    comptime GL_POLYGON_SMOOTH_HINT = HintTarget(0x0C53)
    comptime GL_FOG_HINT = HintTarget(0x0C54)
    comptime GL_PACK_CMYK_HINT_EXT = HintTarget(0x800E)
    comptime GL_UNPACK_CMYK_HINT_EXT = HintTarget(0x800F)
    comptime GL_PHONG_HINT_WIN = HintTarget(0x80EB)
    comptime GL_CLIP_VOLUME_CLIPPING_HINT_EXT = HintTarget(0x80F0)
    comptime GL_TEXTURE_MULTI_BUFFER_HINT_SGIX = HintTarget(0x812E)
    comptime GL_GENERATE_MIPMAP_HINT = HintTarget(0x8192)
    comptime GL_GENERATE_MIPMAP_HINT_SGIS = HintTarget(0x8192)
    comptime GL_PROGRAM_BINARY_RETRIEVABLE_HINT = HintTarget(0x8257)
    comptime GL_CONVOLUTION_HINT_SGIX = HintTarget(0x8316)
    comptime GL_SCALEBIAS_HINT_SGIX = HintTarget(0x8322)
    comptime GL_LINE_QUALITY_HINT_SGIX = HintTarget(0x835B)
    comptime GL_VERTEX_PRECLIP_SGIX = HintTarget(0x83EE)
    comptime GL_VERTEX_PRECLIP_HINT_SGIX = HintTarget(0x83EF)
    comptime GL_TEXTURE_COMPRESSION_HINT = HintTarget(0x84EF)
    comptime GL_TEXTURE_COMPRESSION_HINT_ARB = HintTarget(0x84EF)
    comptime GL_VERTEX_ARRAY_STORAGE_HINT_APPLE = HintTarget(0x851F)
    comptime GL_MULTISAMPLE_FILTER_HINT_NV = HintTarget(0x8534)
    comptime GL_TRANSFORM_HINT_APPLE = HintTarget(0x85B1)
    comptime GL_TEXTURE_STORAGE_HINT_APPLE = HintTarget(0x85BC)
    comptime GL_FRAGMENT_SHADER_DERIVATIVE_HINT = HintTarget(0x8B8B)
    comptime GL_FRAGMENT_SHADER_DERIVATIVE_HINT_ARB = HintTarget(0x8B8B)
    comptime GL_FRAGMENT_SHADER_DERIVATIVE_HINT_OES = HintTarget(0x8B8B)
    comptime GL_BINNING_CONTROL_HINT_QCOM = HintTarget(0x8FB0)
    comptime GL_PREFER_DOUBLEBUFFER_HINT_PGI = HintTarget(0x1A1F8)
    comptime GL_CONSERVE_MEMORY_HINT_PGI = HintTarget(0x1A1FD)
    comptime GL_RECLAIM_MEMORY_HINT_PGI = HintTarget(0x1A1FE)
    comptime GL_NATIVE_GRAPHICS_BEGIN_HINT_PGI = HintTarget(0x1A203)
    comptime GL_NATIVE_GRAPHICS_END_HINT_PGI = HintTarget(0x1A204)
    comptime GL_ALWAYS_FAST_HINT_PGI = HintTarget(0x1A20C)
    comptime GL_ALWAYS_SOFT_HINT_PGI = HintTarget(0x1A20D)
    comptime GL_ALLOW_DRAW_OBJ_HINT_PGI = HintTarget(0x1A20E)
    comptime GL_ALLOW_DRAW_WIN_HINT_PGI = HintTarget(0x1A20F)
    comptime GL_ALLOW_DRAW_FRG_HINT_PGI = HintTarget(0x1A210)
    comptime GL_ALLOW_DRAW_MEM_HINT_PGI = HintTarget(0x1A211)
    comptime GL_STRICT_DEPTHFUNC_HINT_PGI = HintTarget(0x1A216)
    comptime GL_STRICT_LIGHTING_HINT_PGI = HintTarget(0x1A217)
    comptime GL_STRICT_SCISSOR_HINT_PGI = HintTarget(0x1A218)
    comptime GL_FULL_STIPPLE_HINT_PGI = HintTarget(0x1A219)
    comptime GL_CLIP_NEAR_HINT_PGI = HintTarget(0x1A220)
    comptime GL_CLIP_FAR_HINT_PGI = HintTarget(0x1A221)
    comptime GL_WIDE_LINE_HINT_PGI = HintTarget(0x1A222)
    comptime GL_BACK_NORMALS_HINT_PGI = HintTarget(0x1A223)
    comptime GL_VERTEX_DATA_HINT_PGI = HintTarget(0x1A22A)
    comptime GL_VERTEX_CONSISTENT_HINT_PGI = HintTarget(0x1A22B)
    comptime GL_MATERIAL_SIDE_HINT_PGI = HintTarget(0x1A22C)
    comptime GL_MAX_VERTEX_HINT_PGI = HintTarget(0x1A22D)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct HistogramTarget(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_HISTOGRAM = HistogramTarget(0x8024)
    comptime GL_PROXY_HISTOGRAM = HistogramTarget(0x8025)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct InternalFormat(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_STENCIL_INDEX = InternalFormat(0x1901)
    comptime GL_STENCIL_INDEX_OES = InternalFormat(0x1901)
    comptime GL_DEPTH_COMPONENT = InternalFormat(0x1902)
    comptime GL_RED = InternalFormat(0x1903)
    comptime GL_RED_EXT = InternalFormat(0x1903)
    comptime GL_RGB = InternalFormat(0x1907)
    comptime GL_RGBA = InternalFormat(0x1908)
    comptime GL_R3_G3_B2 = InternalFormat(0x2A10)
    comptime GL_ALPHA4 = InternalFormat(0x803B)
    comptime GL_ALPHA4_EXT = InternalFormat(0x803B)
    comptime GL_ALPHA8 = InternalFormat(0x803C)
    comptime GL_ALPHA8_EXT = InternalFormat(0x803C)
    comptime GL_ALPHA8_OES = InternalFormat(0x803C)
    comptime GL_ALPHA12 = InternalFormat(0x803D)
    comptime GL_ALPHA12_EXT = InternalFormat(0x803D)
    comptime GL_ALPHA16 = InternalFormat(0x803E)
    comptime GL_ALPHA16_EXT = InternalFormat(0x803E)
    comptime GL_LUMINANCE4 = InternalFormat(0x803F)
    comptime GL_LUMINANCE4_EXT = InternalFormat(0x803F)
    comptime GL_LUMINANCE8 = InternalFormat(0x8040)
    comptime GL_LUMINANCE8_EXT = InternalFormat(0x8040)
    comptime GL_LUMINANCE8_OES = InternalFormat(0x8040)
    comptime GL_LUMINANCE12 = InternalFormat(0x8041)
    comptime GL_LUMINANCE12_EXT = InternalFormat(0x8041)
    comptime GL_LUMINANCE16 = InternalFormat(0x8042)
    comptime GL_LUMINANCE16_EXT = InternalFormat(0x8042)
    comptime GL_LUMINANCE4_ALPHA4 = InternalFormat(0x8043)
    comptime GL_LUMINANCE4_ALPHA4_EXT = InternalFormat(0x8043)
    comptime GL_LUMINANCE4_ALPHA4_OES = InternalFormat(0x8043)
    comptime GL_LUMINANCE6_ALPHA2 = InternalFormat(0x8044)
    comptime GL_LUMINANCE6_ALPHA2_EXT = InternalFormat(0x8044)
    comptime GL_LUMINANCE8_ALPHA8 = InternalFormat(0x8045)
    comptime GL_LUMINANCE8_ALPHA8_EXT = InternalFormat(0x8045)
    comptime GL_LUMINANCE8_ALPHA8_OES = InternalFormat(0x8045)
    comptime GL_LUMINANCE12_ALPHA4 = InternalFormat(0x8046)
    comptime GL_LUMINANCE12_ALPHA4_EXT = InternalFormat(0x8046)
    comptime GL_LUMINANCE12_ALPHA12 = InternalFormat(0x8047)
    comptime GL_LUMINANCE12_ALPHA12_EXT = InternalFormat(0x8047)
    comptime GL_LUMINANCE16_ALPHA16 = InternalFormat(0x8048)
    comptime GL_LUMINANCE16_ALPHA16_EXT = InternalFormat(0x8048)
    comptime GL_INTENSITY = InternalFormat(0x8049)
    comptime GL_INTENSITY4 = InternalFormat(0x804A)
    comptime GL_INTENSITY4_EXT = InternalFormat(0x804A)
    comptime GL_INTENSITY8 = InternalFormat(0x804B)
    comptime GL_INTENSITY8_EXT = InternalFormat(0x804B)
    comptime GL_INTENSITY12 = InternalFormat(0x804C)
    comptime GL_INTENSITY12_EXT = InternalFormat(0x804C)
    comptime GL_INTENSITY16 = InternalFormat(0x804D)
    comptime GL_INTENSITY16_EXT = InternalFormat(0x804D)
    comptime GL_RGB2_EXT = InternalFormat(0x804E)
    comptime GL_RGB4 = InternalFormat(0x804F)
    comptime GL_RGB4_EXT = InternalFormat(0x804F)
    comptime GL_RGB5 = InternalFormat(0x8050)
    comptime GL_RGB5_EXT = InternalFormat(0x8050)
    comptime GL_RGB8 = InternalFormat(0x8051)
    comptime GL_RGB8_EXT = InternalFormat(0x8051)
    comptime GL_RGB8_OES = InternalFormat(0x8051)
    comptime GL_RGB10 = InternalFormat(0x8052)
    comptime GL_RGB10_EXT = InternalFormat(0x8052)
    comptime GL_RGB12 = InternalFormat(0x8053)
    comptime GL_RGB12_EXT = InternalFormat(0x8053)
    comptime GL_RGB16 = InternalFormat(0x8054)
    comptime GL_RGB16_EXT = InternalFormat(0x8054)
    comptime GL_RGBA2 = InternalFormat(0x8055)
    comptime GL_RGBA2_EXT = InternalFormat(0x8055)
    comptime GL_RGBA4 = InternalFormat(0x8056)
    comptime GL_RGBA4_EXT = InternalFormat(0x8056)
    comptime GL_RGBA4_OES = InternalFormat(0x8056)
    comptime GL_RGB5_A1 = InternalFormat(0x8057)
    comptime GL_RGB5_A1_EXT = InternalFormat(0x8057)
    comptime GL_RGB5_A1_OES = InternalFormat(0x8057)
    comptime GL_RGBA8 = InternalFormat(0x8058)
    comptime GL_RGBA8_EXT = InternalFormat(0x8058)
    comptime GL_RGBA8_OES = InternalFormat(0x8058)
    comptime GL_RGB10_A2 = InternalFormat(0x8059)
    comptime GL_RGB10_A2_EXT = InternalFormat(0x8059)
    comptime GL_RGBA12 = InternalFormat(0x805A)
    comptime GL_RGBA12_EXT = InternalFormat(0x805A)
    comptime GL_RGBA16 = InternalFormat(0x805B)
    comptime GL_RGBA16_EXT = InternalFormat(0x805B)
    comptime GL_DUAL_ALPHA4_SGIS = InternalFormat(0x8110)
    comptime GL_DUAL_ALPHA8_SGIS = InternalFormat(0x8111)
    comptime GL_DUAL_ALPHA12_SGIS = InternalFormat(0x8112)
    comptime GL_DUAL_ALPHA16_SGIS = InternalFormat(0x8113)
    comptime GL_DUAL_LUMINANCE4_SGIS = InternalFormat(0x8114)
    comptime GL_DUAL_LUMINANCE8_SGIS = InternalFormat(0x8115)
    comptime GL_DUAL_LUMINANCE12_SGIS = InternalFormat(0x8116)
    comptime GL_DUAL_LUMINANCE16_SGIS = InternalFormat(0x8117)
    comptime GL_DUAL_INTENSITY4_SGIS = InternalFormat(0x8118)
    comptime GL_DUAL_INTENSITY8_SGIS = InternalFormat(0x8119)
    comptime GL_DUAL_INTENSITY12_SGIS = InternalFormat(0x811A)
    comptime GL_DUAL_INTENSITY16_SGIS = InternalFormat(0x811B)
    comptime GL_DUAL_LUMINANCE_ALPHA4_SGIS = InternalFormat(0x811C)
    comptime GL_DUAL_LUMINANCE_ALPHA8_SGIS = InternalFormat(0x811D)
    comptime GL_QUAD_ALPHA4_SGIS = InternalFormat(0x811E)
    comptime GL_QUAD_ALPHA8_SGIS = InternalFormat(0x811F)
    comptime GL_QUAD_LUMINANCE4_SGIS = InternalFormat(0x8120)
    comptime GL_QUAD_LUMINANCE8_SGIS = InternalFormat(0x8121)
    comptime GL_QUAD_INTENSITY4_SGIS = InternalFormat(0x8122)
    comptime GL_QUAD_INTENSITY8_SGIS = InternalFormat(0x8123)
    comptime GL_DEPTH_COMPONENT16 = InternalFormat(0x81A5)
    comptime GL_DEPTH_COMPONENT16_ARB = InternalFormat(0x81A5)
    comptime GL_DEPTH_COMPONENT16_OES = InternalFormat(0x81A5)
    comptime GL_DEPTH_COMPONENT16_SGIX = InternalFormat(0x81A5)
    comptime GL_DEPTH_COMPONENT24 = InternalFormat(0x81A6)
    comptime GL_DEPTH_COMPONENT24_ARB = InternalFormat(0x81A6)
    comptime GL_DEPTH_COMPONENT24_OES = InternalFormat(0x81A6)
    comptime GL_DEPTH_COMPONENT24_SGIX = InternalFormat(0x81A6)
    comptime GL_DEPTH_COMPONENT32 = InternalFormat(0x81A7)
    comptime GL_DEPTH_COMPONENT32_ARB = InternalFormat(0x81A7)
    comptime GL_DEPTH_COMPONENT32_OES = InternalFormat(0x81A7)
    comptime GL_DEPTH_COMPONENT32_SGIX = InternalFormat(0x81A7)
    comptime GL_COMPRESSED_RED = InternalFormat(0x8225)
    comptime GL_COMPRESSED_RG = InternalFormat(0x8226)
    comptime GL_RG = InternalFormat(0x8227)
    comptime GL_R8 = InternalFormat(0x8229)
    comptime GL_R8_EXT = InternalFormat(0x8229)
    comptime GL_R16 = InternalFormat(0x822A)
    comptime GL_R16_EXT = InternalFormat(0x822A)
    comptime GL_RG8 = InternalFormat(0x822B)
    comptime GL_RG8_EXT = InternalFormat(0x822B)
    comptime GL_RG16 = InternalFormat(0x822C)
    comptime GL_RG16_EXT = InternalFormat(0x822C)
    comptime GL_R16F = InternalFormat(0x822D)
    comptime GL_R16F_EXT = InternalFormat(0x822D)
    comptime GL_R32F = InternalFormat(0x822E)
    comptime GL_R32F_EXT = InternalFormat(0x822E)
    comptime GL_RG16F = InternalFormat(0x822F)
    comptime GL_RG16F_EXT = InternalFormat(0x822F)
    comptime GL_RG32F = InternalFormat(0x8230)
    comptime GL_RG32F_EXT = InternalFormat(0x8230)
    comptime GL_R8I = InternalFormat(0x8231)
    comptime GL_R8UI = InternalFormat(0x8232)
    comptime GL_R16I = InternalFormat(0x8233)
    comptime GL_R16UI = InternalFormat(0x8234)
    comptime GL_R32I = InternalFormat(0x8235)
    comptime GL_R32UI = InternalFormat(0x8236)
    comptime GL_RG8I = InternalFormat(0x8237)
    comptime GL_RG8UI = InternalFormat(0x8238)
    comptime GL_RG16I = InternalFormat(0x8239)
    comptime GL_RG16UI = InternalFormat(0x823A)
    comptime GL_RG32I = InternalFormat(0x823B)
    comptime GL_RG32UI = InternalFormat(0x823C)
    comptime GL_COMPRESSED_RGB_S3TC_DXT1_EXT = InternalFormat(0x83F0)
    comptime GL_COMPRESSED_RGBA_S3TC_DXT1_EXT = InternalFormat(0x83F1)
    comptime GL_COMPRESSED_RGBA_S3TC_DXT3_ANGLE = InternalFormat(0x83F2)
    comptime GL_COMPRESSED_RGBA_S3TC_DXT3_EXT = InternalFormat(0x83F2)
    comptime GL_COMPRESSED_RGBA_S3TC_DXT5_ANGLE = InternalFormat(0x83F3)
    comptime GL_COMPRESSED_RGBA_S3TC_DXT5_EXT = InternalFormat(0x83F3)
    comptime GL_COMPRESSED_RGB = InternalFormat(0x84ED)
    comptime GL_COMPRESSED_RGBA = InternalFormat(0x84EE)
    comptime GL_DEPTH_STENCIL = InternalFormat(0x84F9)
    comptime GL_DEPTH_STENCIL_EXT = InternalFormat(0x84F9)
    comptime GL_DEPTH_STENCIL_NV = InternalFormat(0x84F9)
    comptime GL_DEPTH_STENCIL_OES = InternalFormat(0x84F9)
    comptime GL_COMPRESSED_RGB_FXT1_3DFX = InternalFormat(0x86B0)
    comptime GL_COMPRESSED_RGBA_FXT1_3DFX = InternalFormat(0x86B1)
    comptime GL_DEPTH_STENCIL_MESA = InternalFormat(0x8750)
    comptime GL_ATC_RGBA_INTERPOLATED_ALPHA_AMD = InternalFormat(0x87EE)
    comptime GL_3DC_X_AMD = InternalFormat(0x87F9)
    comptime GL_3DC_XY_AMD = InternalFormat(0x87FA)
    comptime GL_RGBA32F = InternalFormat(0x8814)
    comptime GL_RGBA32F_ARB = InternalFormat(0x8814)
    comptime GL_RGBA32F_EXT = InternalFormat(0x8814)
    comptime GL_RGB32F = InternalFormat(0x8815)
    comptime GL_RGB32F_ARB = InternalFormat(0x8815)
    comptime GL_RGB32F_EXT = InternalFormat(0x8815)
    comptime GL_RGBA16F = InternalFormat(0x881A)
    comptime GL_RGBA16F_ARB = InternalFormat(0x881A)
    comptime GL_RGBA16F_EXT = InternalFormat(0x881A)
    comptime GL_RGB16F = InternalFormat(0x881B)
    comptime GL_RGB16F_ARB = InternalFormat(0x881B)
    comptime GL_RGB16F_EXT = InternalFormat(0x881B)
    comptime GL_ETC1_SRGB8_NV = InternalFormat(0x88EE)
    comptime GL_DEPTH24_STENCIL8 = InternalFormat(0x88F0)
    comptime GL_DEPTH24_STENCIL8_EXT = InternalFormat(0x88F0)
    comptime GL_DEPTH24_STENCIL8_OES = InternalFormat(0x88F0)
    comptime GL_COMPRESSED_SRGB_PVRTC_2BPPV1_EXT = InternalFormat(0x8A54)
    comptime GL_COMPRESSED_SRGB_PVRTC_4BPPV1_EXT = InternalFormat(0x8A55)
    comptime GL_COMPRESSED_SRGB_ALPHA_PVRTC_2BPPV1_EXT = InternalFormat(0x8A56)
    comptime GL_COMPRESSED_SRGB_ALPHA_PVRTC_4BPPV1_EXT = InternalFormat(0x8A57)
    comptime GL_COMPRESSED_RGB_PVRTC_4BPPV1_IMG = InternalFormat(0x8C00)
    comptime GL_COMPRESSED_RGB_PVRTC_2BPPV1_IMG = InternalFormat(0x8C01)
    comptime GL_COMPRESSED_RGBA_PVRTC_4BPPV1_IMG = InternalFormat(0x8C02)
    comptime GL_COMPRESSED_RGBA_PVRTC_2BPPV1_IMG = InternalFormat(0x8C03)
    comptime GL_R11F_G11F_B10F = InternalFormat(0x8C3A)
    comptime GL_R11F_G11F_B10F_APPLE = InternalFormat(0x8C3A)
    comptime GL_R11F_G11F_B10F_EXT = InternalFormat(0x8C3A)
    comptime GL_RGB9_E5 = InternalFormat(0x8C3D)
    comptime GL_RGB9_E5_APPLE = InternalFormat(0x8C3D)
    comptime GL_RGB9_E5_EXT = InternalFormat(0x8C3D)
    comptime GL_SRGB = InternalFormat(0x8C40)
    comptime GL_SRGB_EXT = InternalFormat(0x8C40)
    comptime GL_SRGB8 = InternalFormat(0x8C41)
    comptime GL_SRGB8_EXT = InternalFormat(0x8C41)
    comptime GL_SRGB8_NV = InternalFormat(0x8C41)
    comptime GL_SRGB_ALPHA = InternalFormat(0x8C42)
    comptime GL_SRGB_ALPHA_EXT = InternalFormat(0x8C42)
    comptime GL_SRGB8_ALPHA8 = InternalFormat(0x8C43)
    comptime GL_SRGB8_ALPHA8_EXT = InternalFormat(0x8C43)
    comptime GL_COMPRESSED_SRGB = InternalFormat(0x8C48)
    comptime GL_COMPRESSED_SRGB_ALPHA = InternalFormat(0x8C49)
    comptime GL_COMPRESSED_SRGB_S3TC_DXT1_EXT = InternalFormat(0x8C4C)
    comptime GL_COMPRESSED_SRGB_S3TC_DXT1_NV = InternalFormat(0x8C4C)
    comptime GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT1_EXT = InternalFormat(0x8C4D)
    comptime GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT1_NV = InternalFormat(0x8C4D)
    comptime GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT3_EXT = InternalFormat(0x8C4E)
    comptime GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT3_NV = InternalFormat(0x8C4E)
    comptime GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT5_EXT = InternalFormat(0x8C4F)
    comptime GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT5_NV = InternalFormat(0x8C4F)
    comptime GL_COMPRESSED_LUMINANCE_LATC1_EXT = InternalFormat(0x8C70)
    comptime GL_COMPRESSED_SIGNED_LUMINANCE_LATC1_EXT = InternalFormat(0x8C71)
    comptime GL_COMPRESSED_LUMINANCE_ALPHA_LATC2_EXT = InternalFormat(0x8C72)
    comptime GL_COMPRESSED_SIGNED_LUMINANCE_ALPHA_LATC2_EXT = InternalFormat(0x8C73)
    comptime GL_ATC_RGB_AMD = InternalFormat(0x8C92)
    comptime GL_ATC_RGBA_EXPLICIT_ALPHA_AMD = InternalFormat(0x8C93)
    comptime GL_DEPTH_COMPONENT32F = InternalFormat(0x8CAC)
    comptime GL_DEPTH32F_STENCIL8 = InternalFormat(0x8CAD)
    comptime GL_STENCIL_INDEX1 = InternalFormat(0x8D46)
    comptime GL_STENCIL_INDEX1_EXT = InternalFormat(0x8D46)
    comptime GL_STENCIL_INDEX1_OES = InternalFormat(0x8D46)
    comptime GL_STENCIL_INDEX4 = InternalFormat(0x8D47)
    comptime GL_STENCIL_INDEX4_EXT = InternalFormat(0x8D47)
    comptime GL_STENCIL_INDEX4_OES = InternalFormat(0x8D47)
    comptime GL_STENCIL_INDEX8 = InternalFormat(0x8D48)
    comptime GL_STENCIL_INDEX8_EXT = InternalFormat(0x8D48)
    comptime GL_STENCIL_INDEX8_OES = InternalFormat(0x8D48)
    comptime GL_STENCIL_INDEX16 = InternalFormat(0x8D49)
    comptime GL_STENCIL_INDEX16_EXT = InternalFormat(0x8D49)
    comptime GL_RGB565_OES = InternalFormat(0x8D62)
    comptime GL_RGB565 = InternalFormat(0x8D62)
    comptime GL_ETC1_RGB8_OES = InternalFormat(0x8D64)
    comptime GL_RGBA32UI = InternalFormat(0x8D70)
    comptime GL_RGBA32UI_EXT = InternalFormat(0x8D70)
    comptime GL_RGB32UI = InternalFormat(0x8D71)
    comptime GL_RGB32UI_EXT = InternalFormat(0x8D71)
    comptime GL_ALPHA32UI_EXT = InternalFormat(0x8D72)
    comptime GL_INTENSITY32UI_EXT = InternalFormat(0x8D73)
    comptime GL_LUMINANCE32UI_EXT = InternalFormat(0x8D74)
    comptime GL_LUMINANCE_ALPHA32UI_EXT = InternalFormat(0x8D75)
    comptime GL_RGBA16UI = InternalFormat(0x8D76)
    comptime GL_RGBA16UI_EXT = InternalFormat(0x8D76)
    comptime GL_RGB16UI = InternalFormat(0x8D77)
    comptime GL_RGB16UI_EXT = InternalFormat(0x8D77)
    comptime GL_ALPHA16UI_EXT = InternalFormat(0x8D78)
    comptime GL_INTENSITY16UI_EXT = InternalFormat(0x8D79)
    comptime GL_LUMINANCE16UI_EXT = InternalFormat(0x8D7A)
    comptime GL_LUMINANCE_ALPHA16UI_EXT = InternalFormat(0x8D7B)
    comptime GL_RGBA8UI = InternalFormat(0x8D7C)
    comptime GL_RGBA8UI_EXT = InternalFormat(0x8D7C)
    comptime GL_RGB8UI = InternalFormat(0x8D7D)
    comptime GL_RGB8UI_EXT = InternalFormat(0x8D7D)
    comptime GL_ALPHA8UI_EXT = InternalFormat(0x8D7E)
    comptime GL_INTENSITY8UI_EXT = InternalFormat(0x8D7F)
    comptime GL_LUMINANCE8UI_EXT = InternalFormat(0x8D80)
    comptime GL_LUMINANCE_ALPHA8UI_EXT = InternalFormat(0x8D81)
    comptime GL_RGBA32I = InternalFormat(0x8D82)
    comptime GL_RGBA32I_EXT = InternalFormat(0x8D82)
    comptime GL_RGB32I = InternalFormat(0x8D83)
    comptime GL_RGB32I_EXT = InternalFormat(0x8D83)
    comptime GL_ALPHA32I_EXT = InternalFormat(0x8D84)
    comptime GL_INTENSITY32I_EXT = InternalFormat(0x8D85)
    comptime GL_LUMINANCE32I_EXT = InternalFormat(0x8D86)
    comptime GL_LUMINANCE_ALPHA32I_EXT = InternalFormat(0x8D87)
    comptime GL_RGBA16I = InternalFormat(0x8D88)
    comptime GL_RGBA16I_EXT = InternalFormat(0x8D88)
    comptime GL_RGB16I = InternalFormat(0x8D89)
    comptime GL_RGB16I_EXT = InternalFormat(0x8D89)
    comptime GL_ALPHA16I_EXT = InternalFormat(0x8D8A)
    comptime GL_INTENSITY16I_EXT = InternalFormat(0x8D8B)
    comptime GL_LUMINANCE16I_EXT = InternalFormat(0x8D8C)
    comptime GL_LUMINANCE_ALPHA16I_EXT = InternalFormat(0x8D8D)
    comptime GL_RGBA8I = InternalFormat(0x8D8E)
    comptime GL_RGBA8I_EXT = InternalFormat(0x8D8E)
    comptime GL_RGB8I = InternalFormat(0x8D8F)
    comptime GL_RGB8I_EXT = InternalFormat(0x8D8F)
    comptime GL_ALPHA8I_EXT = InternalFormat(0x8D90)
    comptime GL_INTENSITY8I_EXT = InternalFormat(0x8D91)
    comptime GL_LUMINANCE8I_EXT = InternalFormat(0x8D92)
    comptime GL_LUMINANCE_ALPHA8I_EXT = InternalFormat(0x8D93)
    comptime GL_DEPTH_COMPONENT32F_NV = InternalFormat(0x8DAB)
    comptime GL_DEPTH32F_STENCIL8_NV = InternalFormat(0x8DAC)
    comptime GL_COMPRESSED_RED_RGTC1 = InternalFormat(0x8DBB)
    comptime GL_COMPRESSED_RED_RGTC1_EXT = InternalFormat(0x8DBB)
    comptime GL_COMPRESSED_SIGNED_RED_RGTC1 = InternalFormat(0x8DBC)
    comptime GL_COMPRESSED_SIGNED_RED_RGTC1_EXT = InternalFormat(0x8DBC)
    comptime GL_COMPRESSED_RED_GREEN_RGTC2_EXT = InternalFormat(0x8DBD)
    comptime GL_COMPRESSED_RG_RGTC2 = InternalFormat(0x8DBD)
    comptime GL_COMPRESSED_SIGNED_RED_GREEN_RGTC2_EXT = InternalFormat(0x8DBE)
    comptime GL_COMPRESSED_SIGNED_RG_RGTC2 = InternalFormat(0x8DBE)
    comptime GL_COMPRESSED_RGBA_BPTC_UNORM = InternalFormat(0x8E8C)
    comptime GL_COMPRESSED_RGBA_BPTC_UNORM_ARB = InternalFormat(0x8E8C)
    comptime GL_COMPRESSED_RGBA_BPTC_UNORM_EXT = InternalFormat(0x8E8C)
    comptime GL_COMPRESSED_SRGB_ALPHA_BPTC_UNORM = InternalFormat(0x8E8D)
    comptime GL_COMPRESSED_SRGB_ALPHA_BPTC_UNORM_ARB = InternalFormat(0x8E8D)
    comptime GL_COMPRESSED_SRGB_ALPHA_BPTC_UNORM_EXT = InternalFormat(0x8E8D)
    comptime GL_COMPRESSED_RGB_BPTC_SIGNED_FLOAT = InternalFormat(0x8E8E)
    comptime GL_COMPRESSED_RGB_BPTC_SIGNED_FLOAT_ARB = InternalFormat(0x8E8E)
    comptime GL_COMPRESSED_RGB_BPTC_SIGNED_FLOAT_EXT = InternalFormat(0x8E8E)
    comptime GL_COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT = InternalFormat(0x8E8F)
    comptime GL_COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT_ARB = InternalFormat(0x8E8F)
    comptime GL_COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT_EXT = InternalFormat(0x8E8F)
    comptime GL_R8_SNORM = InternalFormat(0x8F94)
    comptime GL_RG8_SNORM = InternalFormat(0x8F95)
    comptime GL_RGB8_SNORM = InternalFormat(0x8F96)
    comptime GL_RGBA8_SNORM = InternalFormat(0x8F97)
    comptime GL_R16_SNORM = InternalFormat(0x8F98)
    comptime GL_R16_SNORM_EXT = InternalFormat(0x8F98)
    comptime GL_RG16_SNORM = InternalFormat(0x8F99)
    comptime GL_RG16_SNORM_EXT = InternalFormat(0x8F99)
    comptime GL_RGB16_SNORM = InternalFormat(0x8F9A)
    comptime GL_RGB16_SNORM_EXT = InternalFormat(0x8F9A)
    comptime GL_RGBA16_SNORM = InternalFormat(0x8F9B)
    comptime GL_RGBA16_SNORM_EXT = InternalFormat(0x8F9B)
    comptime GL_SR8_EXT = InternalFormat(0x8FBD)
    comptime GL_SRG8_EXT = InternalFormat(0x8FBE)
    comptime GL_RGB10_A2UI = InternalFormat(0x906F)
    comptime GL_COMPRESSED_RGBA_PVRTC_2BPPV2_IMG = InternalFormat(0x9137)
    comptime GL_COMPRESSED_RGBA_PVRTC_4BPPV2_IMG = InternalFormat(0x9138)
    comptime GL_COMPRESSED_R11_EAC = InternalFormat(0x9270)
    comptime GL_COMPRESSED_R11_EAC_OES = InternalFormat(0x9270)
    comptime GL_COMPRESSED_SIGNED_R11_EAC = InternalFormat(0x9271)
    comptime GL_COMPRESSED_SIGNED_R11_EAC_OES = InternalFormat(0x9271)
    comptime GL_COMPRESSED_RG11_EAC = InternalFormat(0x9272)
    comptime GL_COMPRESSED_RG11_EAC_OES = InternalFormat(0x9272)
    comptime GL_COMPRESSED_SIGNED_RG11_EAC = InternalFormat(0x9273)
    comptime GL_COMPRESSED_SIGNED_RG11_EAC_OES = InternalFormat(0x9273)
    comptime GL_COMPRESSED_RGB8_ETC2 = InternalFormat(0x9274)
    comptime GL_COMPRESSED_RGB8_ETC2_OES = InternalFormat(0x9274)
    comptime GL_COMPRESSED_SRGB8_ETC2 = InternalFormat(0x9275)
    comptime GL_COMPRESSED_SRGB8_ETC2_OES = InternalFormat(0x9275)
    comptime GL_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2 = InternalFormat(0x9276)
    comptime GL_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2_OES = InternalFormat(0x9276)
    comptime GL_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2 = InternalFormat(0x9277)
    comptime GL_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2_OES = InternalFormat(0x9277)
    comptime GL_COMPRESSED_RGBA8_ETC2_EAC = InternalFormat(0x9278)
    comptime GL_COMPRESSED_RGBA8_ETC2_EAC_OES = InternalFormat(0x9278)
    comptime GL_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC = InternalFormat(0x9279)
    comptime GL_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC_OES = InternalFormat(0x9279)
    comptime GL_COMPRESSED_RGBA_ASTC_4x4 = InternalFormat(0x93B0)
    comptime GL_COMPRESSED_RGBA_ASTC_4x4_KHR = InternalFormat(0x93B0)
    comptime GL_COMPRESSED_RGBA_ASTC_5x4 = InternalFormat(0x93B1)
    comptime GL_COMPRESSED_RGBA_ASTC_5x4_KHR = InternalFormat(0x93B1)
    comptime GL_COMPRESSED_RGBA_ASTC_5x5 = InternalFormat(0x93B2)
    comptime GL_COMPRESSED_RGBA_ASTC_5x5_KHR = InternalFormat(0x93B2)
    comptime GL_COMPRESSED_RGBA_ASTC_6x5 = InternalFormat(0x93B3)
    comptime GL_COMPRESSED_RGBA_ASTC_6x5_KHR = InternalFormat(0x93B3)
    comptime GL_COMPRESSED_RGBA_ASTC_6x6 = InternalFormat(0x93B4)
    comptime GL_COMPRESSED_RGBA_ASTC_6x6_KHR = InternalFormat(0x93B4)
    comptime GL_COMPRESSED_RGBA_ASTC_8x5 = InternalFormat(0x93B5)
    comptime GL_COMPRESSED_RGBA_ASTC_8x5_KHR = InternalFormat(0x93B5)
    comptime GL_COMPRESSED_RGBA_ASTC_8x6 = InternalFormat(0x93B6)
    comptime GL_COMPRESSED_RGBA_ASTC_8x6_KHR = InternalFormat(0x93B6)
    comptime GL_COMPRESSED_RGBA_ASTC_8x8 = InternalFormat(0x93B7)
    comptime GL_COMPRESSED_RGBA_ASTC_8x8_KHR = InternalFormat(0x93B7)
    comptime GL_COMPRESSED_RGBA_ASTC_10x5 = InternalFormat(0x93B8)
    comptime GL_COMPRESSED_RGBA_ASTC_10x5_KHR = InternalFormat(0x93B8)
    comptime GL_COMPRESSED_RGBA_ASTC_10x6 = InternalFormat(0x93B9)
    comptime GL_COMPRESSED_RGBA_ASTC_10x6_KHR = InternalFormat(0x93B9)
    comptime GL_COMPRESSED_RGBA_ASTC_10x8 = InternalFormat(0x93BA)
    comptime GL_COMPRESSED_RGBA_ASTC_10x8_KHR = InternalFormat(0x93BA)
    comptime GL_COMPRESSED_RGBA_ASTC_10x10 = InternalFormat(0x93BB)
    comptime GL_COMPRESSED_RGBA_ASTC_10x10_KHR = InternalFormat(0x93BB)
    comptime GL_COMPRESSED_RGBA_ASTC_12x10 = InternalFormat(0x93BC)
    comptime GL_COMPRESSED_RGBA_ASTC_12x10_KHR = InternalFormat(0x93BC)
    comptime GL_COMPRESSED_RGBA_ASTC_12x12 = InternalFormat(0x93BD)
    comptime GL_COMPRESSED_RGBA_ASTC_12x12_KHR = InternalFormat(0x93BD)
    comptime GL_COMPRESSED_RGBA_ASTC_3x3x3_OES = InternalFormat(0x93C0)
    comptime GL_COMPRESSED_RGBA_ASTC_4x3x3_OES = InternalFormat(0x93C1)
    comptime GL_COMPRESSED_RGBA_ASTC_4x4x3_OES = InternalFormat(0x93C2)
    comptime GL_COMPRESSED_RGBA_ASTC_4x4x4_OES = InternalFormat(0x93C3)
    comptime GL_COMPRESSED_RGBA_ASTC_5x4x4_OES = InternalFormat(0x93C4)
    comptime GL_COMPRESSED_RGBA_ASTC_5x5x4_OES = InternalFormat(0x93C5)
    comptime GL_COMPRESSED_RGBA_ASTC_5x5x5_OES = InternalFormat(0x93C6)
    comptime GL_COMPRESSED_RGBA_ASTC_6x5x5_OES = InternalFormat(0x93C7)
    comptime GL_COMPRESSED_RGBA_ASTC_6x6x5_OES = InternalFormat(0x93C8)
    comptime GL_COMPRESSED_RGBA_ASTC_6x6x6_OES = InternalFormat(0x93C9)
    comptime GL_COMPRESSED_SRGB8_ALPHA8_ASTC_4x4 = InternalFormat(0x93D0)
    comptime GL_COMPRESSED_SRGB8_ALPHA8_ASTC_4x4_KHR = InternalFormat(0x93D0)
    comptime GL_COMPRESSED_SRGB8_ALPHA8_ASTC_5x4 = InternalFormat(0x93D1)
    comptime GL_COMPRESSED_SRGB8_ALPHA8_ASTC_5x4_KHR = InternalFormat(0x93D1)
    comptime GL_COMPRESSED_SRGB8_ALPHA8_ASTC_5x5 = InternalFormat(0x93D2)
    comptime GL_COMPRESSED_SRGB8_ALPHA8_ASTC_5x5_KHR = InternalFormat(0x93D2)
    comptime GL_COMPRESSED_SRGB8_ALPHA8_ASTC_6x5 = InternalFormat(0x93D3)
    comptime GL_COMPRESSED_SRGB8_ALPHA8_ASTC_6x5_KHR = InternalFormat(0x93D3)
    comptime GL_COMPRESSED_SRGB8_ALPHA8_ASTC_6x6 = InternalFormat(0x93D4)
    comptime GL_COMPRESSED_SRGB8_ALPHA8_ASTC_6x6_KHR = InternalFormat(0x93D4)
    comptime GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x5 = InternalFormat(0x93D5)
    comptime GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x5_KHR = InternalFormat(0x93D5)
    comptime GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x6 = InternalFormat(0x93D6)
    comptime GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x6_KHR = InternalFormat(0x93D6)
    comptime GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x8 = InternalFormat(0x93D7)
    comptime GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x8_KHR = InternalFormat(0x93D7)
    comptime GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x5 = InternalFormat(0x93D8)
    comptime GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x5_KHR = InternalFormat(0x93D8)
    comptime GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x6 = InternalFormat(0x93D9)
    comptime GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x6_KHR = InternalFormat(0x93D9)
    comptime GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x8 = InternalFormat(0x93DA)
    comptime GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x8_KHR = InternalFormat(0x93DA)
    comptime GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x10 = InternalFormat(0x93DB)
    comptime GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x10_KHR = InternalFormat(0x93DB)
    comptime GL_COMPRESSED_SRGB8_ALPHA8_ASTC_12x10 = InternalFormat(0x93DC)
    comptime GL_COMPRESSED_SRGB8_ALPHA8_ASTC_12x10_KHR = InternalFormat(0x93DC)
    comptime GL_COMPRESSED_SRGB8_ALPHA8_ASTC_12x12 = InternalFormat(0x93DD)
    comptime GL_COMPRESSED_SRGB8_ALPHA8_ASTC_12x12_KHR = InternalFormat(0x93DD)
    comptime GL_COMPRESSED_SRGB8_ALPHA8_ASTC_3x3x3_OES = InternalFormat(0x93E0)
    comptime GL_COMPRESSED_SRGB8_ALPHA8_ASTC_4x3x3_OES = InternalFormat(0x93E1)
    comptime GL_COMPRESSED_SRGB8_ALPHA8_ASTC_4x4x3_OES = InternalFormat(0x93E2)
    comptime GL_COMPRESSED_SRGB8_ALPHA8_ASTC_4x4x4_OES = InternalFormat(0x93E3)
    comptime GL_COMPRESSED_SRGB8_ALPHA8_ASTC_5x4x4_OES = InternalFormat(0x93E4)
    comptime GL_COMPRESSED_SRGB8_ALPHA8_ASTC_5x5x4_OES = InternalFormat(0x93E5)
    comptime GL_COMPRESSED_SRGB8_ALPHA8_ASTC_5x5x5_OES = InternalFormat(0x93E6)
    comptime GL_COMPRESSED_SRGB8_ALPHA8_ASTC_6x5x5_OES = InternalFormat(0x93E7)
    comptime GL_COMPRESSED_SRGB8_ALPHA8_ASTC_6x6x5_OES = InternalFormat(0x93E8)
    comptime GL_COMPRESSED_SRGB8_ALPHA8_ASTC_6x6x6_OES = InternalFormat(0x93E9)
    comptime GL_COMPRESSED_SRGB_ALPHA_PVRTC_2BPPV2_IMG = InternalFormat(0x93F0)
    comptime GL_COMPRESSED_SRGB_ALPHA_PVRTC_4BPPV2_IMG = InternalFormat(0x93F1)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct InternalFormatPName(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_SAMPLES = InternalFormatPName(0x80A9)
    comptime GL_GENERATE_MIPMAP = InternalFormatPName(0x8191)
    comptime GL_INTERNALFORMAT_SUPPORTED = InternalFormatPName(0x826F)
    comptime GL_INTERNALFORMAT_PREFERRED = InternalFormatPName(0x8270)
    comptime GL_INTERNALFORMAT_RED_SIZE = InternalFormatPName(0x8271)
    comptime GL_INTERNALFORMAT_GREEN_SIZE = InternalFormatPName(0x8272)
    comptime GL_INTERNALFORMAT_BLUE_SIZE = InternalFormatPName(0x8273)
    comptime GL_INTERNALFORMAT_ALPHA_SIZE = InternalFormatPName(0x8274)
    comptime GL_INTERNALFORMAT_DEPTH_SIZE = InternalFormatPName(0x8275)
    comptime GL_INTERNALFORMAT_STENCIL_SIZE = InternalFormatPName(0x8276)
    comptime GL_INTERNALFORMAT_SHARED_SIZE = InternalFormatPName(0x8277)
    comptime GL_INTERNALFORMAT_RED_TYPE = InternalFormatPName(0x8278)
    comptime GL_INTERNALFORMAT_GREEN_TYPE = InternalFormatPName(0x8279)
    comptime GL_INTERNALFORMAT_BLUE_TYPE = InternalFormatPName(0x827A)
    comptime GL_INTERNALFORMAT_ALPHA_TYPE = InternalFormatPName(0x827B)
    comptime GL_INTERNALFORMAT_DEPTH_TYPE = InternalFormatPName(0x827C)
    comptime GL_INTERNALFORMAT_STENCIL_TYPE = InternalFormatPName(0x827D)
    comptime GL_MAX_WIDTH = InternalFormatPName(0x827E)
    comptime GL_MAX_HEIGHT = InternalFormatPName(0x827F)
    comptime GL_MAX_DEPTH = InternalFormatPName(0x8280)
    comptime GL_MAX_LAYERS = InternalFormatPName(0x8281)
    comptime GL_COLOR_COMPONENTS = InternalFormatPName(0x8283)
    comptime GL_COLOR_RENDERABLE = InternalFormatPName(0x8286)
    comptime GL_DEPTH_RENDERABLE = InternalFormatPName(0x8287)
    comptime GL_STENCIL_RENDERABLE = InternalFormatPName(0x8288)
    comptime GL_FRAMEBUFFER_RENDERABLE = InternalFormatPName(0x8289)
    comptime GL_FRAMEBUFFER_RENDERABLE_LAYERED = InternalFormatPName(0x828A)
    comptime GL_FRAMEBUFFER_BLEND = InternalFormatPName(0x828B)
    comptime GL_READ_PIXELS = InternalFormatPName(0x828C)
    comptime GL_READ_PIXELS_FORMAT = InternalFormatPName(0x828D)
    comptime GL_READ_PIXELS_TYPE = InternalFormatPName(0x828E)
    comptime GL_TEXTURE_IMAGE_FORMAT = InternalFormatPName(0x828F)
    comptime GL_TEXTURE_IMAGE_TYPE = InternalFormatPName(0x8290)
    comptime GL_GET_TEXTURE_IMAGE_FORMAT = InternalFormatPName(0x8291)
    comptime GL_GET_TEXTURE_IMAGE_TYPE = InternalFormatPName(0x8292)
    comptime GL_MIPMAP = InternalFormatPName(0x8293)
    comptime GL_AUTO_GENERATE_MIPMAP = InternalFormatPName(0x8295)
    comptime GL_COLOR_ENCODING = InternalFormatPName(0x8296)
    comptime GL_SRGB_READ = InternalFormatPName(0x8297)
    comptime GL_SRGB_WRITE = InternalFormatPName(0x8298)
    comptime GL_FILTER = InternalFormatPName(0x829A)
    comptime GL_VERTEX_TEXTURE = InternalFormatPName(0x829B)
    comptime GL_TESS_CONTROL_TEXTURE = InternalFormatPName(0x829C)
    comptime GL_TESS_EVALUATION_TEXTURE = InternalFormatPName(0x829D)
    comptime GL_GEOMETRY_TEXTURE = InternalFormatPName(0x829E)
    comptime GL_FRAGMENT_TEXTURE = InternalFormatPName(0x829F)
    comptime GL_COMPUTE_TEXTURE = InternalFormatPName(0x82A0)
    comptime GL_TEXTURE_SHADOW = InternalFormatPName(0x82A1)
    comptime GL_TEXTURE_GATHER = InternalFormatPName(0x82A2)
    comptime GL_TEXTURE_GATHER_SHADOW = InternalFormatPName(0x82A3)
    comptime GL_SHADER_IMAGE_LOAD = InternalFormatPName(0x82A4)
    comptime GL_SHADER_IMAGE_STORE = InternalFormatPName(0x82A5)
    comptime GL_SHADER_IMAGE_ATOMIC = InternalFormatPName(0x82A6)
    comptime GL_IMAGE_TEXEL_SIZE = InternalFormatPName(0x82A7)
    comptime GL_IMAGE_COMPATIBILITY_CLASS = InternalFormatPName(0x82A8)
    comptime GL_IMAGE_PIXEL_FORMAT = InternalFormatPName(0x82A9)
    comptime GL_IMAGE_PIXEL_TYPE = InternalFormatPName(0x82AA)
    comptime GL_SIMULTANEOUS_TEXTURE_AND_DEPTH_TEST = InternalFormatPName(0x82AC)
    comptime GL_SIMULTANEOUS_TEXTURE_AND_STENCIL_TEST = InternalFormatPName(0x82AD)
    comptime GL_SIMULTANEOUS_TEXTURE_AND_DEPTH_WRITE = InternalFormatPName(0x82AE)
    comptime GL_SIMULTANEOUS_TEXTURE_AND_STENCIL_WRITE = InternalFormatPName(0x82AF)
    comptime GL_TEXTURE_COMPRESSED_BLOCK_WIDTH = InternalFormatPName(0x82B1)
    comptime GL_TEXTURE_COMPRESSED_BLOCK_HEIGHT = InternalFormatPName(0x82B2)
    comptime GL_TEXTURE_COMPRESSED_BLOCK_SIZE = InternalFormatPName(0x82B3)
    comptime GL_CLEAR_BUFFER = InternalFormatPName(0x82B4)
    comptime GL_TEXTURE_VIEW = InternalFormatPName(0x82B5)
    comptime GL_VIEW_COMPATIBILITY_CLASS = InternalFormatPName(0x82B6)
    comptime GL_TEXTURE_COMPRESSED = InternalFormatPName(0x86A1)
    comptime GL_NUM_SURFACE_COMPRESSION_FIXED_RATES_EXT = InternalFormatPName(0x8F6E)
    comptime GL_IMAGE_FORMAT_COMPATIBILITY_TYPE = InternalFormatPName(0x90C7)
    comptime GL_CLEAR_TEXTURE = InternalFormatPName(0x9365)
    comptime GL_NUM_SAMPLE_COUNTS = InternalFormatPName(0x9380)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct InvalidateFramebufferAttachment(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_COLOR = InvalidateFramebufferAttachment(0x1800)
    comptime GL_DEPTH = InvalidateFramebufferAttachment(0x1801)
    comptime GL_STENCIL = InvalidateFramebufferAttachment(0x1802)
    comptime GL_DEPTH_STENCIL_ATTACHMENT = InvalidateFramebufferAttachment(0x821A)
    comptime GL_COLOR_ATTACHMENT0 = InvalidateFramebufferAttachment(0x8CE0)
    comptime GL_COLOR_ATTACHMENT0_EXT = InvalidateFramebufferAttachment(0x8CE0)
    comptime GL_COLOR_ATTACHMENT0_NV = InvalidateFramebufferAttachment(0x8CE0)
    comptime GL_COLOR_ATTACHMENT0_OES = InvalidateFramebufferAttachment(0x8CE0)
    comptime GL_COLOR_ATTACHMENT1 = InvalidateFramebufferAttachment(0x8CE1)
    comptime GL_COLOR_ATTACHMENT1_EXT = InvalidateFramebufferAttachment(0x8CE1)
    comptime GL_COLOR_ATTACHMENT1_NV = InvalidateFramebufferAttachment(0x8CE1)
    comptime GL_COLOR_ATTACHMENT2 = InvalidateFramebufferAttachment(0x8CE2)
    comptime GL_COLOR_ATTACHMENT2_EXT = InvalidateFramebufferAttachment(0x8CE2)
    comptime GL_COLOR_ATTACHMENT2_NV = InvalidateFramebufferAttachment(0x8CE2)
    comptime GL_COLOR_ATTACHMENT3 = InvalidateFramebufferAttachment(0x8CE3)
    comptime GL_COLOR_ATTACHMENT3_EXT = InvalidateFramebufferAttachment(0x8CE3)
    comptime GL_COLOR_ATTACHMENT3_NV = InvalidateFramebufferAttachment(0x8CE3)
    comptime GL_COLOR_ATTACHMENT4 = InvalidateFramebufferAttachment(0x8CE4)
    comptime GL_COLOR_ATTACHMENT4_EXT = InvalidateFramebufferAttachment(0x8CE4)
    comptime GL_COLOR_ATTACHMENT4_NV = InvalidateFramebufferAttachment(0x8CE4)
    comptime GL_COLOR_ATTACHMENT5 = InvalidateFramebufferAttachment(0x8CE5)
    comptime GL_COLOR_ATTACHMENT5_EXT = InvalidateFramebufferAttachment(0x8CE5)
    comptime GL_COLOR_ATTACHMENT5_NV = InvalidateFramebufferAttachment(0x8CE5)
    comptime GL_COLOR_ATTACHMENT6 = InvalidateFramebufferAttachment(0x8CE6)
    comptime GL_COLOR_ATTACHMENT6_EXT = InvalidateFramebufferAttachment(0x8CE6)
    comptime GL_COLOR_ATTACHMENT6_NV = InvalidateFramebufferAttachment(0x8CE6)
    comptime GL_COLOR_ATTACHMENT7 = InvalidateFramebufferAttachment(0x8CE7)
    comptime GL_COLOR_ATTACHMENT7_EXT = InvalidateFramebufferAttachment(0x8CE7)
    comptime GL_COLOR_ATTACHMENT7_NV = InvalidateFramebufferAttachment(0x8CE7)
    comptime GL_COLOR_ATTACHMENT8 = InvalidateFramebufferAttachment(0x8CE8)
    comptime GL_COLOR_ATTACHMENT8_EXT = InvalidateFramebufferAttachment(0x8CE8)
    comptime GL_COLOR_ATTACHMENT8_NV = InvalidateFramebufferAttachment(0x8CE8)
    comptime GL_COLOR_ATTACHMENT9 = InvalidateFramebufferAttachment(0x8CE9)
    comptime GL_COLOR_ATTACHMENT9_EXT = InvalidateFramebufferAttachment(0x8CE9)
    comptime GL_COLOR_ATTACHMENT9_NV = InvalidateFramebufferAttachment(0x8CE9)
    comptime GL_COLOR_ATTACHMENT10 = InvalidateFramebufferAttachment(0x8CEA)
    comptime GL_COLOR_ATTACHMENT10_EXT = InvalidateFramebufferAttachment(0x8CEA)
    comptime GL_COLOR_ATTACHMENT10_NV = InvalidateFramebufferAttachment(0x8CEA)
    comptime GL_COLOR_ATTACHMENT11 = InvalidateFramebufferAttachment(0x8CEB)
    comptime GL_COLOR_ATTACHMENT11_EXT = InvalidateFramebufferAttachment(0x8CEB)
    comptime GL_COLOR_ATTACHMENT11_NV = InvalidateFramebufferAttachment(0x8CEB)
    comptime GL_COLOR_ATTACHMENT12 = InvalidateFramebufferAttachment(0x8CEC)
    comptime GL_COLOR_ATTACHMENT12_EXT = InvalidateFramebufferAttachment(0x8CEC)
    comptime GL_COLOR_ATTACHMENT12_NV = InvalidateFramebufferAttachment(0x8CEC)
    comptime GL_COLOR_ATTACHMENT13 = InvalidateFramebufferAttachment(0x8CED)
    comptime GL_COLOR_ATTACHMENT13_EXT = InvalidateFramebufferAttachment(0x8CED)
    comptime GL_COLOR_ATTACHMENT13_NV = InvalidateFramebufferAttachment(0x8CED)
    comptime GL_COLOR_ATTACHMENT14 = InvalidateFramebufferAttachment(0x8CEE)
    comptime GL_COLOR_ATTACHMENT14_EXT = InvalidateFramebufferAttachment(0x8CEE)
    comptime GL_COLOR_ATTACHMENT14_NV = InvalidateFramebufferAttachment(0x8CEE)
    comptime GL_COLOR_ATTACHMENT15 = InvalidateFramebufferAttachment(0x8CEF)
    comptime GL_COLOR_ATTACHMENT15_EXT = InvalidateFramebufferAttachment(0x8CEF)
    comptime GL_COLOR_ATTACHMENT15_NV = InvalidateFramebufferAttachment(0x8CEF)
    comptime GL_COLOR_ATTACHMENT16 = InvalidateFramebufferAttachment(0x8CF0)
    comptime GL_COLOR_ATTACHMENT17 = InvalidateFramebufferAttachment(0x8CF1)
    comptime GL_COLOR_ATTACHMENT18 = InvalidateFramebufferAttachment(0x8CF2)
    comptime GL_COLOR_ATTACHMENT19 = InvalidateFramebufferAttachment(0x8CF3)
    comptime GL_COLOR_ATTACHMENT20 = InvalidateFramebufferAttachment(0x8CF4)
    comptime GL_COLOR_ATTACHMENT21 = InvalidateFramebufferAttachment(0x8CF5)
    comptime GL_COLOR_ATTACHMENT22 = InvalidateFramebufferAttachment(0x8CF6)
    comptime GL_COLOR_ATTACHMENT23 = InvalidateFramebufferAttachment(0x8CF7)
    comptime GL_COLOR_ATTACHMENT24 = InvalidateFramebufferAttachment(0x8CF8)
    comptime GL_COLOR_ATTACHMENT25 = InvalidateFramebufferAttachment(0x8CF9)
    comptime GL_COLOR_ATTACHMENT26 = InvalidateFramebufferAttachment(0x8CFA)
    comptime GL_COLOR_ATTACHMENT27 = InvalidateFramebufferAttachment(0x8CFB)
    comptime GL_COLOR_ATTACHMENT28 = InvalidateFramebufferAttachment(0x8CFC)
    comptime GL_COLOR_ATTACHMENT29 = InvalidateFramebufferAttachment(0x8CFD)
    comptime GL_COLOR_ATTACHMENT30 = InvalidateFramebufferAttachment(0x8CFE)
    comptime GL_COLOR_ATTACHMENT31 = InvalidateFramebufferAttachment(0x8CFF)
    comptime GL_DEPTH_ATTACHMENT = InvalidateFramebufferAttachment(0x8D00)
    comptime GL_DEPTH_ATTACHMENT_EXT = InvalidateFramebufferAttachment(0x8D00)
    comptime GL_DEPTH_ATTACHMENT_OES = InvalidateFramebufferAttachment(0x8D00)
    comptime GL_STENCIL_ATTACHMENT_EXT = InvalidateFramebufferAttachment(0x8D20)
    comptime GL_STENCIL_ATTACHMENT_OES = InvalidateFramebufferAttachment(0x8D20)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct LogicOp(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_CLEAR = LogicOp(0x1500)
    comptime GL_AND = LogicOp(0x1501)
    comptime GL_AND_REVERSE = LogicOp(0x1502)
    comptime GL_COPY = LogicOp(0x1503)
    comptime GL_AND_INVERTED = LogicOp(0x1504)
    comptime GL_NOOP = LogicOp(0x1505)
    comptime GL_XOR = LogicOp(0x1506)
    comptime GL_OR = LogicOp(0x1507)
    comptime GL_NOR = LogicOp(0x1508)
    comptime GL_EQUIV = LogicOp(0x1509)
    comptime GL_INVERT = LogicOp(0x150A)
    comptime GL_OR_REVERSE = LogicOp(0x150B)
    comptime GL_COPY_INVERTED = LogicOp(0x150C)
    comptime GL_OR_INVERTED = LogicOp(0x150D)
    comptime GL_NAND = LogicOp(0x150E)
    comptime GL_SET = LogicOp(0x150F)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct MapBufferAccessMask(Intable, TrivialRegisterPassable):
    var value: GLbitfield

    comptime GL_MAP_READ_BIT = MapBufferAccessMask(0x0001)
    comptime GL_MAP_READ_BIT_EXT = MapBufferAccessMask(0x0001)
    comptime GL_MAP_WRITE_BIT = MapBufferAccessMask(0x0002)
    comptime GL_MAP_WRITE_BIT_EXT = MapBufferAccessMask(0x0002)
    comptime GL_MAP_INVALIDATE_RANGE_BIT = MapBufferAccessMask(0x0004)
    comptime GL_MAP_INVALIDATE_RANGE_BIT_EXT = MapBufferAccessMask(0x0004)
    comptime GL_MAP_INVALIDATE_BUFFER_BIT = MapBufferAccessMask(0x0008)
    comptime GL_MAP_INVALIDATE_BUFFER_BIT_EXT = MapBufferAccessMask(0x0008)
    comptime GL_MAP_FLUSH_EXPLICIT_BIT = MapBufferAccessMask(0x0010)
    comptime GL_MAP_FLUSH_EXPLICIT_BIT_EXT = MapBufferAccessMask(0x0010)
    comptime GL_MAP_UNSYNCHRONIZED_BIT = MapBufferAccessMask(0x0020)
    comptime GL_MAP_UNSYNCHRONIZED_BIT_EXT = MapBufferAccessMask(0x0020)
    comptime GL_MAP_PERSISTENT_BIT = MapBufferAccessMask(0x0040)
    comptime GL_MAP_PERSISTENT_BIT_EXT = MapBufferAccessMask(0x0040)
    comptime GL_MAP_COHERENT_BIT = MapBufferAccessMask(0x0080)
    comptime GL_MAP_COHERENT_BIT_EXT = MapBufferAccessMask(0x0080)
    comptime GL_MAP_CLIENT_POINTER_BIT_MESA = MapBufferAccessMask(0x4000)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)

    @always_inline
    def __or__(lhs, rhs: Self) -> Self:
        return Self(lhs.value | rhs.value)


@fieldwise_init
struct MapQuery(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_COEFF = MapQuery(0x0A00)
    comptime GL_ORDER = MapQuery(0x0A01)
    comptime GL_DOMAIN = MapQuery(0x0A02)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct MapTarget(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_MAP1_COLOR_4 = MapTarget(0x0D90)
    comptime GL_MAP1_INDEX = MapTarget(0x0D91)
    comptime GL_MAP1_NORMAL = MapTarget(0x0D92)
    comptime GL_MAP1_TEXTURE_COORD_1 = MapTarget(0x0D93)
    comptime GL_MAP1_TEXTURE_COORD_2 = MapTarget(0x0D94)
    comptime GL_MAP1_TEXTURE_COORD_3 = MapTarget(0x0D95)
    comptime GL_MAP1_TEXTURE_COORD_4 = MapTarget(0x0D96)
    comptime GL_MAP1_VERTEX_3 = MapTarget(0x0D97)
    comptime GL_MAP1_VERTEX_4 = MapTarget(0x0D98)
    comptime GL_MAP2_COLOR_4 = MapTarget(0x0DB0)
    comptime GL_MAP2_INDEX = MapTarget(0x0DB1)
    comptime GL_MAP2_NORMAL = MapTarget(0x0DB2)
    comptime GL_MAP2_TEXTURE_COORD_1 = MapTarget(0x0DB3)
    comptime GL_MAP2_TEXTURE_COORD_2 = MapTarget(0x0DB4)
    comptime GL_MAP2_TEXTURE_COORD_3 = MapTarget(0x0DB5)
    comptime GL_MAP2_TEXTURE_COORD_4 = MapTarget(0x0DB6)
    comptime GL_MAP2_VERTEX_3 = MapTarget(0x0DB7)
    comptime GL_MAP2_VERTEX_4 = MapTarget(0x0DB8)
    comptime GL_GEOMETRY_DEFORMATION_SGIX = MapTarget(0x8194)
    comptime GL_TEXTURE_DEFORMATION_SGIX = MapTarget(0x8195)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct MatrixMode(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_MODELVIEW = MatrixMode(0x1700)
    comptime GL_MODELVIEW0_EXT = MatrixMode(0x1700)
    comptime GL_PROJECTION = MatrixMode(0x1701)
    comptime GL_TEXTURE = MatrixMode(0x1702)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct MemoryBarrierMask(Intable, TrivialRegisterPassable):
    var value: GLbitfield

    comptime GL_VERTEX_ATTRIB_ARRAY_BARRIER_BIT = MemoryBarrierMask(0x00000001)
    comptime GL_VERTEX_ATTRIB_ARRAY_BARRIER_BIT_EXT = MemoryBarrierMask(0x00000001)
    comptime GL_ELEMENT_ARRAY_BARRIER_BIT = MemoryBarrierMask(0x00000002)
    comptime GL_ELEMENT_ARRAY_BARRIER_BIT_EXT = MemoryBarrierMask(0x00000002)
    comptime GL_UNIFORM_BARRIER_BIT = MemoryBarrierMask(0x00000004)
    comptime GL_UNIFORM_BARRIER_BIT_EXT = MemoryBarrierMask(0x00000004)
    comptime GL_TEXTURE_FETCH_BARRIER_BIT = MemoryBarrierMask(0x00000008)
    comptime GL_TEXTURE_FETCH_BARRIER_BIT_EXT = MemoryBarrierMask(0x00000008)
    comptime GL_SHADER_GLOBAL_ACCESS_BARRIER_BIT_NV = MemoryBarrierMask(0x00000010)
    comptime GL_SHADER_IMAGE_ACCESS_BARRIER_BIT = MemoryBarrierMask(0x00000020)
    comptime GL_SHADER_IMAGE_ACCESS_BARRIER_BIT_EXT = MemoryBarrierMask(0x00000020)
    comptime GL_COMMAND_BARRIER_BIT = MemoryBarrierMask(0x00000040)
    comptime GL_COMMAND_BARRIER_BIT_EXT = MemoryBarrierMask(0x00000040)
    comptime GL_PIXEL_BUFFER_BARRIER_BIT = MemoryBarrierMask(0x00000080)
    comptime GL_PIXEL_BUFFER_BARRIER_BIT_EXT = MemoryBarrierMask(0x00000080)
    comptime GL_TEXTURE_UPDATE_BARRIER_BIT = MemoryBarrierMask(0x00000100)
    comptime GL_TEXTURE_UPDATE_BARRIER_BIT_EXT = MemoryBarrierMask(0x00000100)
    comptime GL_BUFFER_UPDATE_BARRIER_BIT = MemoryBarrierMask(0x00000200)
    comptime GL_BUFFER_UPDATE_BARRIER_BIT_EXT = MemoryBarrierMask(0x00000200)
    comptime GL_FRAMEBUFFER_BARRIER_BIT = MemoryBarrierMask(0x00000400)
    comptime GL_FRAMEBUFFER_BARRIER_BIT_EXT = MemoryBarrierMask(0x00000400)
    comptime GL_TRANSFORM_FEEDBACK_BARRIER_BIT = MemoryBarrierMask(0x00000800)
    comptime GL_TRANSFORM_FEEDBACK_BARRIER_BIT_EXT = MemoryBarrierMask(0x00000800)
    comptime GL_ATOMIC_COUNTER_BARRIER_BIT = MemoryBarrierMask(0x00001000)
    comptime GL_ATOMIC_COUNTER_BARRIER_BIT_EXT = MemoryBarrierMask(0x00001000)
    comptime GL_SHADER_STORAGE_BARRIER_BIT = MemoryBarrierMask(0x00002000)
    comptime GL_CLIENT_MAPPED_BUFFER_BARRIER_BIT = MemoryBarrierMask(0x00004000)
    comptime GL_CLIENT_MAPPED_BUFFER_BARRIER_BIT_EXT = MemoryBarrierMask(0x00004000)
    comptime GL_QUERY_BUFFER_BARRIER_BIT = MemoryBarrierMask(0x00008000)
    comptime GL_ALL_BARRIER_BITS = MemoryBarrierMask(0xFFFFFFFF)
    comptime GL_ALL_BARRIER_BITS_EXT = MemoryBarrierMask(0xFFFFFFFF)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)

    @always_inline
    def __or__(lhs, rhs: Self) -> Self:
        return Self(lhs.value | rhs.value)


@fieldwise_init
struct MeshMode1(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_POINT = MeshMode1(0x1B00)
    comptime GL_LINE = MeshMode1(0x1B01)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct MeshMode2(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_POINT = MeshMode2(0x1B00)
    comptime GL_LINE = MeshMode2(0x1B01)
    comptime GL_FILL = MeshMode2(0x1B02)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct MinmaxTarget(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_MINMAX = MinmaxTarget(0x802E)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct NormalPointerType(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_BYTE = NormalPointerType(0x1400)
    comptime GL_SHORT = NormalPointerType(0x1402)
    comptime GL_INT = NormalPointerType(0x1404)
    comptime GL_FLOAT = NormalPointerType(0x1406)
    comptime GL_DOUBLE = NormalPointerType(0x140A)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct ObjectIdentifier(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_TEXTURE = ObjectIdentifier(0x1702)
    comptime GL_VERTEX_ARRAY = ObjectIdentifier(0x8074)
    comptime GL_BUFFER = ObjectIdentifier(0x82E0)
    comptime GL_SHADER = ObjectIdentifier(0x82E1)
    comptime GL_PROGRAM = ObjectIdentifier(0x82E2)
    comptime GL_QUERY = ObjectIdentifier(0x82E3)
    comptime GL_PROGRAM_PIPELINE = ObjectIdentifier(0x82E4)
    comptime GL_SAMPLER = ObjectIdentifier(0x82E6)
    comptime GL_FRAMEBUFFER = ObjectIdentifier(0x8D40)
    comptime GL_RENDERBUFFER = ObjectIdentifier(0x8D41)
    comptime GL_TRANSFORM_FEEDBACK = ObjectIdentifier(0x8E22)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct PatchParameterName(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_PATCH_VERTICES = PatchParameterName(0x8E72)
    comptime GL_PATCH_DEFAULT_INNER_LEVEL = PatchParameterName(0x8E73)
    comptime GL_PATCH_DEFAULT_OUTER_LEVEL = PatchParameterName(0x8E74)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct PathColorFormat(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_NONE = PathColorFormat(0)
    comptime GL_ALPHA = PathColorFormat(0x1906)
    comptime GL_RGB = PathColorFormat(0x1907)
    comptime GL_RGBA = PathColorFormat(0x1908)
    comptime GL_LUMINANCE = PathColorFormat(0x1909)
    comptime GL_LUMINANCE_ALPHA = PathColorFormat(0x190A)
    comptime GL_INTENSITY = PathColorFormat(0x8049)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct PathFillMode(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_INVERT = PathFillMode(0x150A)
    comptime GL_PATH_FILL_MODE_NV = PathFillMode(0x9080)
    comptime GL_COUNT_UP_NV = PathFillMode(0x9088)
    comptime GL_COUNT_DOWN_NV = PathFillMode(0x9089)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct PathFontStyle(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_BOLD_BIT_NV = PathFontStyle(0x01)
    comptime GL_ITALIC_BIT_NV = PathFontStyle(0x02)
    comptime GL_NONE = PathFontStyle(0)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct PathGenMode(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_NONE = PathGenMode(0)
    comptime GL_EYE_LINEAR = PathGenMode(0x2400)
    comptime GL_OBJECT_LINEAR = PathGenMode(0x2401)
    comptime GL_CONSTANT = PathGenMode(0x8576)
    comptime GL_PATH_OBJECT_BOUNDING_BOX_NV = PathGenMode(0x908A)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct PathTransformType(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_NONE = PathTransformType(0)
    comptime GL_TRANSLATE_X_NV = PathTransformType(0x908E)
    comptime GL_TRANSLATE_Y_NV = PathTransformType(0x908F)
    comptime GL_TRANSLATE_2D_NV = PathTransformType(0x9090)
    comptime GL_TRANSLATE_3D_NV = PathTransformType(0x9091)
    comptime GL_AFFINE_2D_NV = PathTransformType(0x9092)
    comptime GL_AFFINE_3D_NV = PathTransformType(0x9094)
    comptime GL_TRANSPOSE_AFFINE_2D_NV = PathTransformType(0x9096)
    comptime GL_TRANSPOSE_AFFINE_3D_NV = PathTransformType(0x9098)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct PipelineParameterName(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_ACTIVE_PROGRAM = PipelineParameterName(0x8259)
    comptime GL_FRAGMENT_SHADER = PipelineParameterName(0x8B30)
    comptime GL_VERTEX_SHADER = PipelineParameterName(0x8B31)
    comptime GL_INFO_LOG_LENGTH = PipelineParameterName(0x8B84)
    comptime GL_GEOMETRY_SHADER = PipelineParameterName(0x8DD9)
    comptime GL_TESS_EVALUATION_SHADER = PipelineParameterName(0x8E87)
    comptime GL_TESS_CONTROL_SHADER = PipelineParameterName(0x8E88)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct PixelCopyType(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_COLOR = PixelCopyType(0x1800)
    comptime GL_COLOR_EXT = PixelCopyType(0x1800)
    comptime GL_DEPTH = PixelCopyType(0x1801)
    comptime GL_DEPTH_EXT = PixelCopyType(0x1801)
    comptime GL_STENCIL = PixelCopyType(0x1802)
    comptime GL_STENCIL_EXT = PixelCopyType(0x1802)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct PixelFormat(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_UNSIGNED_SHORT = PixelFormat(0x1403)
    comptime GL_UNSIGNED_INT = PixelFormat(0x1405)
    comptime GL_COLOR_INDEX = PixelFormat(0x1900)
    comptime GL_STENCIL_INDEX = PixelFormat(0x1901)
    comptime GL_DEPTH_COMPONENT = PixelFormat(0x1902)
    comptime GL_RED = PixelFormat(0x1903)
    comptime GL_RED_EXT = PixelFormat(0x1903)
    comptime GL_GREEN = PixelFormat(0x1904)
    comptime GL_BLUE = PixelFormat(0x1905)
    comptime GL_ALPHA = PixelFormat(0x1906)
    comptime GL_RGB = PixelFormat(0x1907)
    comptime GL_RGBA = PixelFormat(0x1908)
    comptime GL_LUMINANCE = PixelFormat(0x1909)
    comptime GL_LUMINANCE_ALPHA = PixelFormat(0x190A)
    comptime GL_ABGR_EXT = PixelFormat(0x8000)
    comptime GL_CMYK_EXT = PixelFormat(0x800C)
    comptime GL_CMYKA_EXT = PixelFormat(0x800D)
    comptime GL_BGR = PixelFormat(0x80E0)
    comptime GL_BGR_EXT = PixelFormat(0x80E0)
    comptime GL_BGRA = PixelFormat(0x80E1)
    comptime GL_BGRA_EXT = PixelFormat(0x80E1)
    comptime GL_BGRA_IMG = PixelFormat(0x80E1)
    comptime GL_YCRCB_422_SGIX = PixelFormat(0x81BB)
    comptime GL_YCRCB_444_SGIX = PixelFormat(0x81BC)
    comptime GL_RG = PixelFormat(0x8227)
    comptime GL_RG_INTEGER = PixelFormat(0x8228)
    comptime GL_DEPTH_STENCIL = PixelFormat(0x84F9)
    comptime GL_RED_INTEGER = PixelFormat(0x8D94)
    comptime GL_GREEN_INTEGER = PixelFormat(0x8D95)
    comptime GL_BLUE_INTEGER = PixelFormat(0x8D96)
    comptime GL_RGB_INTEGER = PixelFormat(0x8D98)
    comptime GL_RGBA_INTEGER = PixelFormat(0x8D99)
    comptime GL_BGR_INTEGER = PixelFormat(0x8D9A)
    comptime GL_BGRA_INTEGER = PixelFormat(0x8D9B)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct PixelMap(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_PIXEL_MAP_I_TO_I = PixelMap(0x0C70)
    comptime GL_PIXEL_MAP_S_TO_S = PixelMap(0x0C71)
    comptime GL_PIXEL_MAP_I_TO_R = PixelMap(0x0C72)
    comptime GL_PIXEL_MAP_I_TO_G = PixelMap(0x0C73)
    comptime GL_PIXEL_MAP_I_TO_B = PixelMap(0x0C74)
    comptime GL_PIXEL_MAP_I_TO_A = PixelMap(0x0C75)
    comptime GL_PIXEL_MAP_R_TO_R = PixelMap(0x0C76)
    comptime GL_PIXEL_MAP_G_TO_G = PixelMap(0x0C77)
    comptime GL_PIXEL_MAP_B_TO_B = PixelMap(0x0C78)
    comptime GL_PIXEL_MAP_A_TO_A = PixelMap(0x0C79)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct PixelStoreParameter(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_UNPACK_SWAP_BYTES = PixelStoreParameter(0x0CF0)
    comptime GL_UNPACK_LSB_FIRST = PixelStoreParameter(0x0CF1)
    comptime GL_UNPACK_ROW_LENGTH = PixelStoreParameter(0x0CF2)
    comptime GL_UNPACK_ROW_LENGTH_EXT = PixelStoreParameter(0x0CF2)
    comptime GL_UNPACK_SKIP_ROWS = PixelStoreParameter(0x0CF3)
    comptime GL_UNPACK_SKIP_ROWS_EXT = PixelStoreParameter(0x0CF3)
    comptime GL_UNPACK_SKIP_PIXELS = PixelStoreParameter(0x0CF4)
    comptime GL_UNPACK_SKIP_PIXELS_EXT = PixelStoreParameter(0x0CF4)
    comptime GL_UNPACK_ALIGNMENT = PixelStoreParameter(0x0CF5)
    comptime GL_PACK_SWAP_BYTES = PixelStoreParameter(0x0D00)
    comptime GL_PACK_LSB_FIRST = PixelStoreParameter(0x0D01)
    comptime GL_PACK_ROW_LENGTH = PixelStoreParameter(0x0D02)
    comptime GL_PACK_ROW_LENGTH_NV = PixelStoreParameter(0x0D02)
    comptime GL_PACK_SKIP_ROWS = PixelStoreParameter(0x0D03)
    comptime GL_PACK_SKIP_ROWS_NV = PixelStoreParameter(0x0D03)
    comptime GL_PACK_SKIP_PIXELS = PixelStoreParameter(0x0D04)
    comptime GL_PACK_SKIP_PIXELS_NV = PixelStoreParameter(0x0D04)
    comptime GL_PACK_ALIGNMENT = PixelStoreParameter(0x0D05)
    comptime GL_PACK_SKIP_IMAGES = PixelStoreParameter(0x806B)
    comptime GL_PACK_SKIP_IMAGES_EXT = PixelStoreParameter(0x806B)
    comptime GL_PACK_IMAGE_HEIGHT = PixelStoreParameter(0x806C)
    comptime GL_PACK_IMAGE_HEIGHT_EXT = PixelStoreParameter(0x806C)
    comptime GL_UNPACK_SKIP_IMAGES = PixelStoreParameter(0x806D)
    comptime GL_UNPACK_SKIP_IMAGES_EXT = PixelStoreParameter(0x806D)
    comptime GL_UNPACK_IMAGE_HEIGHT = PixelStoreParameter(0x806E)
    comptime GL_UNPACK_IMAGE_HEIGHT_EXT = PixelStoreParameter(0x806E)
    comptime GL_PACK_SKIP_VOLUMES_SGIS = PixelStoreParameter(0x8130)
    comptime GL_PACK_IMAGE_DEPTH_SGIS = PixelStoreParameter(0x8131)
    comptime GL_UNPACK_SKIP_VOLUMES_SGIS = PixelStoreParameter(0x8132)
    comptime GL_UNPACK_IMAGE_DEPTH_SGIS = PixelStoreParameter(0x8133)
    comptime GL_PIXEL_TILE_WIDTH_SGIX = PixelStoreParameter(0x8140)
    comptime GL_PIXEL_TILE_HEIGHT_SGIX = PixelStoreParameter(0x8141)
    comptime GL_PIXEL_TILE_GRID_WIDTH_SGIX = PixelStoreParameter(0x8142)
    comptime GL_PIXEL_TILE_GRID_HEIGHT_SGIX = PixelStoreParameter(0x8143)
    comptime GL_PIXEL_TILE_GRID_DEPTH_SGIX = PixelStoreParameter(0x8144)
    comptime GL_PIXEL_TILE_CACHE_SIZE_SGIX = PixelStoreParameter(0x8145)
    comptime GL_PACK_RESAMPLE_SGIX = PixelStoreParameter(0x842E)
    comptime GL_UNPACK_RESAMPLE_SGIX = PixelStoreParameter(0x842F)
    comptime GL_PACK_SUBSAMPLE_RATE_SGIX = PixelStoreParameter(0x85A0)
    comptime GL_UNPACK_SUBSAMPLE_RATE_SGIX = PixelStoreParameter(0x85A1)
    comptime GL_PACK_RESAMPLE_OML = PixelStoreParameter(0x8984)
    comptime GL_UNPACK_RESAMPLE_OML = PixelStoreParameter(0x8985)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct PixelType(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_BYTE = PixelType(0x1400)
    comptime GL_UNSIGNED_BYTE = PixelType(0x1401)
    comptime GL_SHORT = PixelType(0x1402)
    comptime GL_UNSIGNED_SHORT = PixelType(0x1403)
    comptime GL_INT = PixelType(0x1404)
    comptime GL_UNSIGNED_INT = PixelType(0x1405)
    comptime GL_FLOAT = PixelType(0x1406)
    comptime GL_HALF_FLOAT = PixelType(0x140B)
    comptime GL_HALF_FLOAT_ARB = PixelType(0x140B)
    comptime GL_HALF_FLOAT_NV = PixelType(0x140B)
    comptime GL_HALF_APPLE = PixelType(0x140B)
    comptime GL_BITMAP = PixelType(0x1A00)
    comptime GL_UNSIGNED_BYTE_3_3_2 = PixelType(0x8032)
    comptime GL_UNSIGNED_BYTE_3_3_2_EXT = PixelType(0x8032)
    comptime GL_UNSIGNED_SHORT_4_4_4_4 = PixelType(0x8033)
    comptime GL_UNSIGNED_SHORT_4_4_4_4_EXT = PixelType(0x8033)
    comptime GL_UNSIGNED_SHORT_5_5_5_1 = PixelType(0x8034)
    comptime GL_UNSIGNED_SHORT_5_5_5_1_EXT = PixelType(0x8034)
    comptime GL_UNSIGNED_INT_8_8_8_8 = PixelType(0x8035)
    comptime GL_UNSIGNED_INT_8_8_8_8_EXT = PixelType(0x8035)
    comptime GL_UNSIGNED_INT_10_10_10_2 = PixelType(0x8036)
    comptime GL_UNSIGNED_INT_10_10_10_2_EXT = PixelType(0x8036)
    comptime GL_UNSIGNED_BYTE_2_3_3_REV = PixelType(0x8362)
    comptime GL_UNSIGNED_BYTE_2_3_3_REV_EXT = PixelType(0x8362)
    comptime GL_UNSIGNED_SHORT_5_6_5 = PixelType(0x8363)
    comptime GL_UNSIGNED_SHORT_5_6_5_EXT = PixelType(0x8363)
    comptime GL_UNSIGNED_SHORT_5_6_5_REV = PixelType(0x8364)
    comptime GL_UNSIGNED_SHORT_5_6_5_REV_EXT = PixelType(0x8364)
    comptime GL_UNSIGNED_SHORT_4_4_4_4_REV = PixelType(0x8365)
    comptime GL_UNSIGNED_SHORT_4_4_4_4_REV_EXT = PixelType(0x8365)
    comptime GL_UNSIGNED_SHORT_4_4_4_4_REV_IMG = PixelType(0x8365)
    comptime GL_UNSIGNED_SHORT_1_5_5_5_REV = PixelType(0x8366)
    comptime GL_UNSIGNED_SHORT_1_5_5_5_REV_EXT = PixelType(0x8366)
    comptime GL_UNSIGNED_INT_8_8_8_8_REV = PixelType(0x8367)
    comptime GL_UNSIGNED_INT_8_8_8_8_REV_EXT = PixelType(0x8367)
    comptime GL_UNSIGNED_INT_2_10_10_10_REV = PixelType(0x8368)
    comptime GL_UNSIGNED_INT_2_10_10_10_REV_EXT = PixelType(0x8368)
    comptime GL_UNSIGNED_INT_24_8 = PixelType(0x84FA)
    comptime GL_UNSIGNED_INT_24_8_EXT = PixelType(0x84FA)
    comptime GL_UNSIGNED_INT_24_8_NV = PixelType(0x84FA)
    comptime GL_UNSIGNED_INT_24_8_OES = PixelType(0x84FA)
    comptime GL_UNSIGNED_INT_10F_11F_11F_REV = PixelType(0x8C3B)
    comptime GL_UNSIGNED_INT_10F_11F_11F_REV_APPLE = PixelType(0x8C3B)
    comptime GL_UNSIGNED_INT_10F_11F_11F_REV_EXT = PixelType(0x8C3B)
    comptime GL_UNSIGNED_INT_5_9_9_9_REV = PixelType(0x8C3E)
    comptime GL_UNSIGNED_INT_5_9_9_9_REV_APPLE = PixelType(0x8C3E)
    comptime GL_UNSIGNED_INT_5_9_9_9_REV_EXT = PixelType(0x8C3E)
    comptime GL_FLOAT_32_UNSIGNED_INT_24_8_REV = PixelType(0x8DAD)
    comptime GL_FLOAT_32_UNSIGNED_INT_24_8_REV_NV = PixelType(0x8DAD)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct PointParameterNameARB(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_POINT_SIZE_MIN = PointParameterNameARB(0x8126)
    comptime GL_POINT_SIZE_MIN_ARB = PointParameterNameARB(0x8126)
    comptime GL_POINT_SIZE_MIN_EXT = PointParameterNameARB(0x8126)
    comptime GL_POINT_SIZE_MIN_SGIS = PointParameterNameARB(0x8126)
    comptime GL_POINT_SIZE_MAX = PointParameterNameARB(0x8127)
    comptime GL_POINT_SIZE_MAX_ARB = PointParameterNameARB(0x8127)
    comptime GL_POINT_SIZE_MAX_EXT = PointParameterNameARB(0x8127)
    comptime GL_POINT_SIZE_MAX_SGIS = PointParameterNameARB(0x8127)
    comptime GL_POINT_FADE_THRESHOLD_SIZE = PointParameterNameARB(0x8128)
    comptime GL_POINT_FADE_THRESHOLD_SIZE_ARB = PointParameterNameARB(0x8128)
    comptime GL_POINT_FADE_THRESHOLD_SIZE_EXT = PointParameterNameARB(0x8128)
    comptime GL_POINT_FADE_THRESHOLD_SIZE_SGIS = PointParameterNameARB(0x8128)
    comptime GL_DISTANCE_ATTENUATION_EXT = PointParameterNameARB(0x8129)
    comptime GL_DISTANCE_ATTENUATION_SGIS = PointParameterNameARB(0x8129)
    comptime GL_POINT_DISTANCE_ATTENUATION = PointParameterNameARB(0x8129)
    comptime GL_POINT_DISTANCE_ATTENUATION_ARB = PointParameterNameARB(0x8129)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct PolygonMode(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_POINT = PolygonMode(0x1B00)
    comptime GL_LINE = PolygonMode(0x1B01)
    comptime GL_FILL = PolygonMode(0x1B02)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct PrecisionType(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_LOW_FLOAT = PrecisionType(0x8DF0)
    comptime GL_MEDIUM_FLOAT = PrecisionType(0x8DF1)
    comptime GL_HIGH_FLOAT = PrecisionType(0x8DF2)
    comptime GL_LOW_INT = PrecisionType(0x8DF3)
    comptime GL_MEDIUM_INT = PrecisionType(0x8DF4)
    comptime GL_HIGH_INT = PrecisionType(0x8DF5)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct PrimitiveType(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_POINTS = PrimitiveType(0x0000)
    comptime GL_LINES = PrimitiveType(0x0001)
    comptime GL_LINE_LOOP = PrimitiveType(0x0002)
    comptime GL_LINE_STRIP = PrimitiveType(0x0003)
    comptime GL_TRIANGLES = PrimitiveType(0x0004)
    comptime GL_TRIANGLE_STRIP = PrimitiveType(0x0005)
    comptime GL_TRIANGLE_FAN = PrimitiveType(0x0006)
    comptime GL_QUADS = PrimitiveType(0x0007)
    comptime GL_QUADS_EXT = PrimitiveType(0x0007)
    comptime GL_QUAD_STRIP = PrimitiveType(0x0008)
    comptime GL_POLYGON = PrimitiveType(0x0009)
    comptime GL_LINES_ADJACENCY = PrimitiveType(0x000A)
    comptime GL_LINES_ADJACENCY_ARB = PrimitiveType(0x000A)
    comptime GL_LINES_ADJACENCY_EXT = PrimitiveType(0x000A)
    comptime GL_LINE_STRIP_ADJACENCY = PrimitiveType(0x000B)
    comptime GL_LINE_STRIP_ADJACENCY_ARB = PrimitiveType(0x000B)
    comptime GL_LINE_STRIP_ADJACENCY_EXT = PrimitiveType(0x000B)
    comptime GL_TRIANGLES_ADJACENCY = PrimitiveType(0x000C)
    comptime GL_TRIANGLES_ADJACENCY_ARB = PrimitiveType(0x000C)
    comptime GL_TRIANGLES_ADJACENCY_EXT = PrimitiveType(0x000C)
    comptime GL_TRIANGLE_STRIP_ADJACENCY = PrimitiveType(0x000D)
    comptime GL_TRIANGLE_STRIP_ADJACENCY_ARB = PrimitiveType(0x000D)
    comptime GL_TRIANGLE_STRIP_ADJACENCY_EXT = PrimitiveType(0x000D)
    comptime GL_PATCHES = PrimitiveType(0x000E)
    comptime GL_PATCHES_EXT = PrimitiveType(0x000E)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct ProgramInterface(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_TRANSFORM_FEEDBACK_BUFFER = ProgramInterface(0x8C8E)
    comptime GL_UNIFORM = ProgramInterface(0x92E1)
    comptime GL_UNIFORM_BLOCK = ProgramInterface(0x92E2)
    comptime GL_PROGRAM_INPUT = ProgramInterface(0x92E3)
    comptime GL_PROGRAM_OUTPUT = ProgramInterface(0x92E4)
    comptime GL_BUFFER_VARIABLE = ProgramInterface(0x92E5)
    comptime GL_SHADER_STORAGE_BLOCK = ProgramInterface(0x92E6)
    comptime GL_VERTEX_SUBROUTINE = ProgramInterface(0x92E8)
    comptime GL_TESS_CONTROL_SUBROUTINE = ProgramInterface(0x92E9)
    comptime GL_TESS_EVALUATION_SUBROUTINE = ProgramInterface(0x92EA)
    comptime GL_GEOMETRY_SUBROUTINE = ProgramInterface(0x92EB)
    comptime GL_FRAGMENT_SUBROUTINE = ProgramInterface(0x92EC)
    comptime GL_COMPUTE_SUBROUTINE = ProgramInterface(0x92ED)
    comptime GL_VERTEX_SUBROUTINE_UNIFORM = ProgramInterface(0x92EE)
    comptime GL_TESS_CONTROL_SUBROUTINE_UNIFORM = ProgramInterface(0x92EF)
    comptime GL_TESS_EVALUATION_SUBROUTINE_UNIFORM = ProgramInterface(0x92F0)
    comptime GL_GEOMETRY_SUBROUTINE_UNIFORM = ProgramInterface(0x92F1)
    comptime GL_FRAGMENT_SUBROUTINE_UNIFORM = ProgramInterface(0x92F2)
    comptime GL_COMPUTE_SUBROUTINE_UNIFORM = ProgramInterface(0x92F3)
    comptime GL_TRANSFORM_FEEDBACK_VARYING = ProgramInterface(0x92F4)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct ProgramInterfacePName(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_ACTIVE_RESOURCES = ProgramInterfacePName(0x92F5)
    comptime GL_MAX_NAME_LENGTH = ProgramInterfacePName(0x92F6)
    comptime GL_MAX_NUM_ACTIVE_VARIABLES = ProgramInterfacePName(0x92F7)
    comptime GL_MAX_NUM_COMPATIBLE_SUBROUTINES = ProgramInterfacePName(0x92F8)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct ProgramParameterPName(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_PROGRAM_BINARY_RETRIEVABLE_HINT = ProgramParameterPName(0x8257)
    comptime GL_PROGRAM_SEPARABLE = ProgramParameterPName(0x8258)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct ProgramPropertyARB(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_COMPUTE_WORK_GROUP_SIZE = ProgramPropertyARB(0x8267)
    comptime GL_PROGRAM_BINARY_LENGTH = ProgramPropertyARB(0x8741)
    comptime GL_GEOMETRY_VERTICES_OUT = ProgramPropertyARB(0x8916)
    comptime GL_GEOMETRY_INPUT_TYPE = ProgramPropertyARB(0x8917)
    comptime GL_GEOMETRY_OUTPUT_TYPE = ProgramPropertyARB(0x8918)
    comptime GL_ACTIVE_UNIFORM_BLOCK_MAX_NAME_LENGTH = ProgramPropertyARB(0x8A35)
    comptime GL_ACTIVE_UNIFORM_BLOCKS = ProgramPropertyARB(0x8A36)
    comptime GL_DELETE_STATUS = ProgramPropertyARB(0x8B80)
    comptime GL_LINK_STATUS = ProgramPropertyARB(0x8B82)
    comptime GL_VALIDATE_STATUS = ProgramPropertyARB(0x8B83)
    comptime GL_INFO_LOG_LENGTH = ProgramPropertyARB(0x8B84)
    comptime GL_ATTACHED_SHADERS = ProgramPropertyARB(0x8B85)
    comptime GL_ACTIVE_UNIFORMS = ProgramPropertyARB(0x8B86)
    comptime GL_ACTIVE_UNIFORM_MAX_LENGTH = ProgramPropertyARB(0x8B87)
    comptime GL_ACTIVE_ATTRIBUTES = ProgramPropertyARB(0x8B89)
    comptime GL_ACTIVE_ATTRIBUTE_MAX_LENGTH = ProgramPropertyARB(0x8B8A)
    comptime GL_TRANSFORM_FEEDBACK_VARYING_MAX_LENGTH = ProgramPropertyARB(0x8C76)
    comptime GL_TRANSFORM_FEEDBACK_BUFFER_MODE = ProgramPropertyARB(0x8C7F)
    comptime GL_TRANSFORM_FEEDBACK_VARYINGS = ProgramPropertyARB(0x8C83)
    comptime GL_ACTIVE_ATOMIC_COUNTER_BUFFERS = ProgramPropertyARB(0x92D9)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct ProgramResourceProperty(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_NUM_COMPATIBLE_SUBROUTINES = ProgramResourceProperty(0x8E4A)
    comptime GL_COMPATIBLE_SUBROUTINES = ProgramResourceProperty(0x8E4B)
    comptime GL_UNIFORM = ProgramResourceProperty(0x92E1)
    comptime GL_IS_PER_PATCH = ProgramResourceProperty(0x92E7)
    comptime GL_NAME_LENGTH = ProgramResourceProperty(0x92F9)
    comptime GL_TYPE = ProgramResourceProperty(0x92FA)
    comptime GL_ARRAY_SIZE = ProgramResourceProperty(0x92FB)
    comptime GL_OFFSET = ProgramResourceProperty(0x92FC)
    comptime GL_BLOCK_INDEX = ProgramResourceProperty(0x92FD)
    comptime GL_ARRAY_STRIDE = ProgramResourceProperty(0x92FE)
    comptime GL_MATRIX_STRIDE = ProgramResourceProperty(0x92FF)
    comptime GL_IS_ROW_MAJOR = ProgramResourceProperty(0x9300)
    comptime GL_ATOMIC_COUNTER_BUFFER_INDEX = ProgramResourceProperty(0x9301)
    comptime GL_BUFFER_BINDING = ProgramResourceProperty(0x9302)
    comptime GL_BUFFER_DATA_SIZE = ProgramResourceProperty(0x9303)
    comptime GL_NUM_ACTIVE_VARIABLES = ProgramResourceProperty(0x9304)
    comptime GL_ACTIVE_VARIABLES = ProgramResourceProperty(0x9305)
    comptime GL_REFERENCED_BY_VERTEX_SHADER = ProgramResourceProperty(0x9306)
    comptime GL_REFERENCED_BY_TESS_CONTROL_SHADER = ProgramResourceProperty(0x9307)
    comptime GL_REFERENCED_BY_TESS_EVALUATION_SHADER = ProgramResourceProperty(0x9308)
    comptime GL_REFERENCED_BY_GEOMETRY_SHADER = ProgramResourceProperty(0x9309)
    comptime GL_REFERENCED_BY_FRAGMENT_SHADER = ProgramResourceProperty(0x930A)
    comptime GL_REFERENCED_BY_COMPUTE_SHADER = ProgramResourceProperty(0x930B)
    comptime GL_TOP_LEVEL_ARRAY_SIZE = ProgramResourceProperty(0x930C)
    comptime GL_TOP_LEVEL_ARRAY_STRIDE = ProgramResourceProperty(0x930D)
    comptime GL_LOCATION = ProgramResourceProperty(0x930E)
    comptime GL_LOCATION_INDEX = ProgramResourceProperty(0x930F)
    comptime GL_LOCATION_COMPONENT = ProgramResourceProperty(0x934A)
    comptime GL_TRANSFORM_FEEDBACK_BUFFER_INDEX = ProgramResourceProperty(0x934B)
    comptime GL_TRANSFORM_FEEDBACK_BUFFER_STRIDE = ProgramResourceProperty(0x934C)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct ProgramStagePName(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_ACTIVE_SUBROUTINES = ProgramStagePName(0x8DE5)
    comptime GL_ACTIVE_SUBROUTINE_UNIFORMS = ProgramStagePName(0x8DE6)
    comptime GL_ACTIVE_SUBROUTINE_UNIFORM_LOCATIONS = ProgramStagePName(0x8E47)
    comptime GL_ACTIVE_SUBROUTINE_MAX_LENGTH = ProgramStagePName(0x8E48)
    comptime GL_ACTIVE_SUBROUTINE_UNIFORM_MAX_LENGTH = ProgramStagePName(0x8E49)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct QueryCounterTarget(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_TIMESTAMP = QueryCounterTarget(0x8E28)
    comptime GL_TIMESTAMP_EXT = QueryCounterTarget(0x8E28)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct QueryObjectParameterName(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_QUERY_TARGET = QueryObjectParameterName(0x82EA)
    comptime GL_QUERY_RESULT = QueryObjectParameterName(0x8866)
    comptime GL_QUERY_RESULT_AVAILABLE = QueryObjectParameterName(0x8867)
    comptime GL_QUERY_RESULT_NO_WAIT = QueryObjectParameterName(0x9194)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct QueryParameterName(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_QUERY_COUNTER_BITS = QueryParameterName(0x8864)
    comptime GL_CURRENT_QUERY = QueryParameterName(0x8865)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct QueryTarget(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_TRANSFORM_FEEDBACK_OVERFLOW = QueryTarget(0x82EC)
    comptime GL_VERTICES_SUBMITTED = QueryTarget(0x82EE)
    comptime GL_PRIMITIVES_SUBMITTED = QueryTarget(0x82EF)
    comptime GL_VERTEX_SHADER_INVOCATIONS = QueryTarget(0x82F0)
    comptime GL_TIME_ELAPSED = QueryTarget(0x88BF)
    comptime GL_SAMPLES_PASSED = QueryTarget(0x8914)
    comptime GL_ANY_SAMPLES_PASSED = QueryTarget(0x8C2F)
    comptime GL_PRIMITIVES_GENERATED = QueryTarget(0x8C87)
    comptime GL_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN = QueryTarget(0x8C88)
    comptime GL_ANY_SAMPLES_PASSED_CONSERVATIVE = QueryTarget(0x8D6A)
    comptime GL_TASK_SHADER_INVOCATIONS_EXT = QueryTarget(0x9753)
    comptime GL_MESH_SHADER_INVOCATIONS_EXT = QueryTarget(0x9754)
    comptime GL_MESH_PRIMITIVES_GENERATED_EXT = QueryTarget(0x9755)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct ReadBufferMode(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_NONE = ReadBufferMode(0)
    comptime GL_NONE_OES = ReadBufferMode(0)
    comptime GL_FRONT_LEFT = ReadBufferMode(0x0400)
    comptime GL_FRONT_RIGHT = ReadBufferMode(0x0401)
    comptime GL_BACK_LEFT = ReadBufferMode(0x0402)
    comptime GL_BACK_RIGHT = ReadBufferMode(0x0403)
    comptime GL_FRONT = ReadBufferMode(0x0404)
    comptime GL_BACK = ReadBufferMode(0x0405)
    comptime GL_LEFT = ReadBufferMode(0x0406)
    comptime GL_RIGHT = ReadBufferMode(0x0407)
    comptime GL_AUX0 = ReadBufferMode(0x0409)
    comptime GL_AUX1 = ReadBufferMode(0x040A)
    comptime GL_AUX2 = ReadBufferMode(0x040B)
    comptime GL_AUX3 = ReadBufferMode(0x040C)
    comptime GL_COLOR_ATTACHMENT0 = ReadBufferMode(0x8CE0)
    comptime GL_COLOR_ATTACHMENT1 = ReadBufferMode(0x8CE1)
    comptime GL_COLOR_ATTACHMENT2 = ReadBufferMode(0x8CE2)
    comptime GL_COLOR_ATTACHMENT3 = ReadBufferMode(0x8CE3)
    comptime GL_COLOR_ATTACHMENT4 = ReadBufferMode(0x8CE4)
    comptime GL_COLOR_ATTACHMENT5 = ReadBufferMode(0x8CE5)
    comptime GL_COLOR_ATTACHMENT6 = ReadBufferMode(0x8CE6)
    comptime GL_COLOR_ATTACHMENT7 = ReadBufferMode(0x8CE7)
    comptime GL_COLOR_ATTACHMENT8 = ReadBufferMode(0x8CE8)
    comptime GL_COLOR_ATTACHMENT9 = ReadBufferMode(0x8CE9)
    comptime GL_COLOR_ATTACHMENT10 = ReadBufferMode(0x8CEA)
    comptime GL_COLOR_ATTACHMENT11 = ReadBufferMode(0x8CEB)
    comptime GL_COLOR_ATTACHMENT12 = ReadBufferMode(0x8CEC)
    comptime GL_COLOR_ATTACHMENT13 = ReadBufferMode(0x8CED)
    comptime GL_COLOR_ATTACHMENT14 = ReadBufferMode(0x8CEE)
    comptime GL_COLOR_ATTACHMENT15 = ReadBufferMode(0x8CEF)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct RenderbufferParameterName(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_RENDERBUFFER_COVERAGE_SAMPLES_NV = RenderbufferParameterName(0x8CAB)
    comptime GL_RENDERBUFFER_SAMPLES = RenderbufferParameterName(0x8CAB)
    comptime GL_RENDERBUFFER_SAMPLES_ANGLE = RenderbufferParameterName(0x8CAB)
    comptime GL_RENDERBUFFER_SAMPLES_APPLE = RenderbufferParameterName(0x8CAB)
    comptime GL_RENDERBUFFER_SAMPLES_EXT = RenderbufferParameterName(0x8CAB)
    comptime GL_RENDERBUFFER_SAMPLES_NV = RenderbufferParameterName(0x8CAB)
    comptime GL_RENDERBUFFER_WIDTH = RenderbufferParameterName(0x8D42)
    comptime GL_RENDERBUFFER_WIDTH_EXT = RenderbufferParameterName(0x8D42)
    comptime GL_RENDERBUFFER_WIDTH_OES = RenderbufferParameterName(0x8D42)
    comptime GL_RENDERBUFFER_HEIGHT = RenderbufferParameterName(0x8D43)
    comptime GL_RENDERBUFFER_HEIGHT_EXT = RenderbufferParameterName(0x8D43)
    comptime GL_RENDERBUFFER_HEIGHT_OES = RenderbufferParameterName(0x8D43)
    comptime GL_RENDERBUFFER_INTERNAL_FORMAT = RenderbufferParameterName(0x8D44)
    comptime GL_RENDERBUFFER_INTERNAL_FORMAT_EXT = RenderbufferParameterName(0x8D44)
    comptime GL_RENDERBUFFER_INTERNAL_FORMAT_OES = RenderbufferParameterName(0x8D44)
    comptime GL_RENDERBUFFER_RED_SIZE = RenderbufferParameterName(0x8D50)
    comptime GL_RENDERBUFFER_RED_SIZE_EXT = RenderbufferParameterName(0x8D50)
    comptime GL_RENDERBUFFER_RED_SIZE_OES = RenderbufferParameterName(0x8D50)
    comptime GL_RENDERBUFFER_GREEN_SIZE = RenderbufferParameterName(0x8D51)
    comptime GL_RENDERBUFFER_GREEN_SIZE_EXT = RenderbufferParameterName(0x8D51)
    comptime GL_RENDERBUFFER_GREEN_SIZE_OES = RenderbufferParameterName(0x8D51)
    comptime GL_RENDERBUFFER_BLUE_SIZE = RenderbufferParameterName(0x8D52)
    comptime GL_RENDERBUFFER_BLUE_SIZE_EXT = RenderbufferParameterName(0x8D52)
    comptime GL_RENDERBUFFER_BLUE_SIZE_OES = RenderbufferParameterName(0x8D52)
    comptime GL_RENDERBUFFER_ALPHA_SIZE = RenderbufferParameterName(0x8D53)
    comptime GL_RENDERBUFFER_ALPHA_SIZE_EXT = RenderbufferParameterName(0x8D53)
    comptime GL_RENDERBUFFER_ALPHA_SIZE_OES = RenderbufferParameterName(0x8D53)
    comptime GL_RENDERBUFFER_DEPTH_SIZE = RenderbufferParameterName(0x8D54)
    comptime GL_RENDERBUFFER_DEPTH_SIZE_EXT = RenderbufferParameterName(0x8D54)
    comptime GL_RENDERBUFFER_DEPTH_SIZE_OES = RenderbufferParameterName(0x8D54)
    comptime GL_RENDERBUFFER_STENCIL_SIZE = RenderbufferParameterName(0x8D55)
    comptime GL_RENDERBUFFER_STENCIL_SIZE_EXT = RenderbufferParameterName(0x8D55)
    comptime GL_RENDERBUFFER_STENCIL_SIZE_OES = RenderbufferParameterName(0x8D55)
    comptime GL_RENDERBUFFER_COLOR_SAMPLES_NV = RenderbufferParameterName(0x8E10)
    comptime GL_RENDERBUFFER_SAMPLES_IMG = RenderbufferParameterName(0x9133)
    comptime GL_RENDERBUFFER_STORAGE_SAMPLES_AMD = RenderbufferParameterName(0x91B2)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct RenderbufferTarget(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_RENDERBUFFER = RenderbufferTarget(0x8D41)
    comptime GL_RENDERBUFFER_OES = RenderbufferTarget(0x8D41)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct SamplerParameterF(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_TEXTURE_BORDER_COLOR = SamplerParameterF(0x1004)
    comptime GL_TEXTURE_MIN_LOD = SamplerParameterF(0x813A)
    comptime GL_TEXTURE_MAX_LOD = SamplerParameterF(0x813B)
    comptime GL_TEXTURE_MAX_ANISOTROPY = SamplerParameterF(0x84FE)
    comptime GL_TEXTURE_LOD_BIAS = SamplerParameterF(0x8501)
    comptime GL_TEXTURE_UNNORMALIZED_COORDINATES_ARM = SamplerParameterF(0x8F6A)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct SamplerParameterI(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_TEXTURE_MAG_FILTER = SamplerParameterI(0x2800)
    comptime GL_TEXTURE_MIN_FILTER = SamplerParameterI(0x2801)
    comptime GL_TEXTURE_WRAP_S = SamplerParameterI(0x2802)
    comptime GL_TEXTURE_WRAP_T = SamplerParameterI(0x2803)
    comptime GL_TEXTURE_WRAP_R = SamplerParameterI(0x8072)
    comptime GL_TEXTURE_COMPARE_MODE = SamplerParameterI(0x884C)
    comptime GL_TEXTURE_COMPARE_FUNC = SamplerParameterI(0x884D)
    comptime GL_TEXTURE_UNNORMALIZED_COORDINATES_ARM = SamplerParameterI(0x8F6A)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct SeparableTarget(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_SEPARABLE_2D = SeparableTarget(0x8012)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct ShaderBinaryFormat(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_SGX_BINARY_IMG = ShaderBinaryFormat(0x8C0A)
    comptime GL_MALI_SHADER_BINARY_ARM = ShaderBinaryFormat(0x8F60)
    comptime GL_SHADER_BINARY_VIV = ShaderBinaryFormat(0x8FC4)
    comptime GL_SHADER_BINARY_DMP = ShaderBinaryFormat(0x9250)
    comptime GL_GCCSO_SHADER_BINARY_FJ = ShaderBinaryFormat(0x9260)
    comptime GL_SHADER_BINARY_FORMAT_SPIR_V = ShaderBinaryFormat(0x9551)
    comptime GL_SHADER_BINARY_HUAWEI = ShaderBinaryFormat(0x9770)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct ShaderParameterName(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_SHADER_TYPE = ShaderParameterName(0x8B4F)
    comptime GL_DELETE_STATUS = ShaderParameterName(0x8B80)
    comptime GL_COMPILE_STATUS = ShaderParameterName(0x8B81)
    comptime GL_INFO_LOG_LENGTH = ShaderParameterName(0x8B84)
    comptime GL_SHADER_SOURCE_LENGTH = ShaderParameterName(0x8B88)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct ShaderType(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_FRAGMENT_SHADER = ShaderType(0x8B30)
    comptime GL_FRAGMENT_SHADER_ARB = ShaderType(0x8B30)
    comptime GL_VERTEX_SHADER = ShaderType(0x8B31)
    comptime GL_VERTEX_SHADER_ARB = ShaderType(0x8B31)
    comptime GL_GEOMETRY_SHADER = ShaderType(0x8DD9)
    comptime GL_TESS_EVALUATION_SHADER = ShaderType(0x8E87)
    comptime GL_TESS_CONTROL_SHADER = ShaderType(0x8E88)
    comptime GL_COMPUTE_SHADER = ShaderType(0x91B9)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct SizedInternalFormat(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_R3_G3_B2 = SizedInternalFormat(0x2A10)
    comptime GL_ALPHA4 = SizedInternalFormat(0x803B)
    comptime GL_ALPHA4_EXT = SizedInternalFormat(0x803B)
    comptime GL_ALPHA8 = SizedInternalFormat(0x803C)
    comptime GL_ALPHA8_EXT = SizedInternalFormat(0x803C)
    comptime GL_ALPHA8_OES = SizedInternalFormat(0x803C)
    comptime GL_ALPHA12 = SizedInternalFormat(0x803D)
    comptime GL_ALPHA12_EXT = SizedInternalFormat(0x803D)
    comptime GL_ALPHA16 = SizedInternalFormat(0x803E)
    comptime GL_ALPHA16_EXT = SizedInternalFormat(0x803E)
    comptime GL_LUMINANCE4 = SizedInternalFormat(0x803F)
    comptime GL_LUMINANCE4_EXT = SizedInternalFormat(0x803F)
    comptime GL_LUMINANCE8 = SizedInternalFormat(0x8040)
    comptime GL_LUMINANCE8_EXT = SizedInternalFormat(0x8040)
    comptime GL_LUMINANCE8_OES = SizedInternalFormat(0x8040)
    comptime GL_LUMINANCE12 = SizedInternalFormat(0x8041)
    comptime GL_LUMINANCE12_EXT = SizedInternalFormat(0x8041)
    comptime GL_LUMINANCE16 = SizedInternalFormat(0x8042)
    comptime GL_LUMINANCE16_EXT = SizedInternalFormat(0x8042)
    comptime GL_LUMINANCE4_ALPHA4 = SizedInternalFormat(0x8043)
    comptime GL_LUMINANCE4_ALPHA4_EXT = SizedInternalFormat(0x8043)
    comptime GL_LUMINANCE4_ALPHA4_OES = SizedInternalFormat(0x8043)
    comptime GL_LUMINANCE6_ALPHA2 = SizedInternalFormat(0x8044)
    comptime GL_LUMINANCE6_ALPHA2_EXT = SizedInternalFormat(0x8044)
    comptime GL_LUMINANCE8_ALPHA8 = SizedInternalFormat(0x8045)
    comptime GL_LUMINANCE8_ALPHA8_EXT = SizedInternalFormat(0x8045)
    comptime GL_LUMINANCE8_ALPHA8_OES = SizedInternalFormat(0x8045)
    comptime GL_LUMINANCE12_ALPHA4 = SizedInternalFormat(0x8046)
    comptime GL_LUMINANCE12_ALPHA4_EXT = SizedInternalFormat(0x8046)
    comptime GL_LUMINANCE12_ALPHA12 = SizedInternalFormat(0x8047)
    comptime GL_LUMINANCE12_ALPHA12_EXT = SizedInternalFormat(0x8047)
    comptime GL_LUMINANCE16_ALPHA16 = SizedInternalFormat(0x8048)
    comptime GL_LUMINANCE16_ALPHA16_EXT = SizedInternalFormat(0x8048)
    comptime GL_INTENSITY4 = SizedInternalFormat(0x804A)
    comptime GL_INTENSITY4_EXT = SizedInternalFormat(0x804A)
    comptime GL_INTENSITY8 = SizedInternalFormat(0x804B)
    comptime GL_INTENSITY8_EXT = SizedInternalFormat(0x804B)
    comptime GL_INTENSITY12 = SizedInternalFormat(0x804C)
    comptime GL_INTENSITY12_EXT = SizedInternalFormat(0x804C)
    comptime GL_INTENSITY16 = SizedInternalFormat(0x804D)
    comptime GL_INTENSITY16_EXT = SizedInternalFormat(0x804D)
    comptime GL_RGB2_EXT = SizedInternalFormat(0x804E)
    comptime GL_RGB4 = SizedInternalFormat(0x804F)
    comptime GL_RGB4_EXT = SizedInternalFormat(0x804F)
    comptime GL_RGB5 = SizedInternalFormat(0x8050)
    comptime GL_RGB5_EXT = SizedInternalFormat(0x8050)
    comptime GL_RGB8 = SizedInternalFormat(0x8051)
    comptime GL_RGB8_EXT = SizedInternalFormat(0x8051)
    comptime GL_RGB8_OES = SizedInternalFormat(0x8051)
    comptime GL_RGB10 = SizedInternalFormat(0x8052)
    comptime GL_RGB10_EXT = SizedInternalFormat(0x8052)
    comptime GL_RGB12 = SizedInternalFormat(0x8053)
    comptime GL_RGB12_EXT = SizedInternalFormat(0x8053)
    comptime GL_RGB16 = SizedInternalFormat(0x8054)
    comptime GL_RGB16_EXT = SizedInternalFormat(0x8054)
    comptime GL_RGBA2 = SizedInternalFormat(0x8055)
    comptime GL_RGBA2_EXT = SizedInternalFormat(0x8055)
    comptime GL_RGBA4 = SizedInternalFormat(0x8056)
    comptime GL_RGBA4_EXT = SizedInternalFormat(0x8056)
    comptime GL_RGBA4_OES = SizedInternalFormat(0x8056)
    comptime GL_RGB5_A1 = SizedInternalFormat(0x8057)
    comptime GL_RGB5_A1_EXT = SizedInternalFormat(0x8057)
    comptime GL_RGB5_A1_OES = SizedInternalFormat(0x8057)
    comptime GL_RGBA8 = SizedInternalFormat(0x8058)
    comptime GL_RGBA8_EXT = SizedInternalFormat(0x8058)
    comptime GL_RGBA8_OES = SizedInternalFormat(0x8058)
    comptime GL_RGB10_A2 = SizedInternalFormat(0x8059)
    comptime GL_RGB10_A2_EXT = SizedInternalFormat(0x8059)
    comptime GL_RGBA12 = SizedInternalFormat(0x805A)
    comptime GL_RGBA12_EXT = SizedInternalFormat(0x805A)
    comptime GL_RGBA16 = SizedInternalFormat(0x805B)
    comptime GL_RGBA16_EXT = SizedInternalFormat(0x805B)
    comptime GL_DEPTH_COMPONENT16 = SizedInternalFormat(0x81A5)
    comptime GL_DEPTH_COMPONENT16_ARB = SizedInternalFormat(0x81A5)
    comptime GL_DEPTH_COMPONENT16_OES = SizedInternalFormat(0x81A5)
    comptime GL_DEPTH_COMPONENT16_SGIX = SizedInternalFormat(0x81A5)
    comptime GL_DEPTH_COMPONENT24 = SizedInternalFormat(0x81A6)
    comptime GL_DEPTH_COMPONENT24_ARB = SizedInternalFormat(0x81A6)
    comptime GL_DEPTH_COMPONENT24_OES = SizedInternalFormat(0x81A6)
    comptime GL_DEPTH_COMPONENT24_SGIX = SizedInternalFormat(0x81A6)
    comptime GL_DEPTH_COMPONENT32 = SizedInternalFormat(0x81A7)
    comptime GL_DEPTH_COMPONENT32_ARB = SizedInternalFormat(0x81A7)
    comptime GL_DEPTH_COMPONENT32_OES = SizedInternalFormat(0x81A7)
    comptime GL_DEPTH_COMPONENT32_SGIX = SizedInternalFormat(0x81A7)
    comptime GL_R8 = SizedInternalFormat(0x8229)
    comptime GL_R8_EXT = SizedInternalFormat(0x8229)
    comptime GL_R16 = SizedInternalFormat(0x822A)
    comptime GL_R16_EXT = SizedInternalFormat(0x822A)
    comptime GL_RG8 = SizedInternalFormat(0x822B)
    comptime GL_RG8_EXT = SizedInternalFormat(0x822B)
    comptime GL_RG16 = SizedInternalFormat(0x822C)
    comptime GL_RG16_EXT = SizedInternalFormat(0x822C)
    comptime GL_R16F = SizedInternalFormat(0x822D)
    comptime GL_R16F_EXT = SizedInternalFormat(0x822D)
    comptime GL_R32F = SizedInternalFormat(0x822E)
    comptime GL_R32F_EXT = SizedInternalFormat(0x822E)
    comptime GL_RG16F = SizedInternalFormat(0x822F)
    comptime GL_RG16F_EXT = SizedInternalFormat(0x822F)
    comptime GL_RG32F = SizedInternalFormat(0x8230)
    comptime GL_RG32F_EXT = SizedInternalFormat(0x8230)
    comptime GL_R8I = SizedInternalFormat(0x8231)
    comptime GL_R8UI = SizedInternalFormat(0x8232)
    comptime GL_R16I = SizedInternalFormat(0x8233)
    comptime GL_R16UI = SizedInternalFormat(0x8234)
    comptime GL_R32I = SizedInternalFormat(0x8235)
    comptime GL_R32UI = SizedInternalFormat(0x8236)
    comptime GL_RG8I = SizedInternalFormat(0x8237)
    comptime GL_RG8UI = SizedInternalFormat(0x8238)
    comptime GL_RG16I = SizedInternalFormat(0x8239)
    comptime GL_RG16UI = SizedInternalFormat(0x823A)
    comptime GL_RG32I = SizedInternalFormat(0x823B)
    comptime GL_RG32UI = SizedInternalFormat(0x823C)
    comptime GL_COMPRESSED_RGB_S3TC_DXT1_EXT = SizedInternalFormat(0x83F0)
    comptime GL_COMPRESSED_RGBA_S3TC_DXT1_EXT = SizedInternalFormat(0x83F1)
    comptime GL_COMPRESSED_RGBA_S3TC_DXT3_ANGLE = SizedInternalFormat(0x83F2)
    comptime GL_COMPRESSED_RGBA_S3TC_DXT3_EXT = SizedInternalFormat(0x83F2)
    comptime GL_COMPRESSED_RGBA_S3TC_DXT5_ANGLE = SizedInternalFormat(0x83F3)
    comptime GL_COMPRESSED_RGBA_S3TC_DXT5_EXT = SizedInternalFormat(0x83F3)
    comptime GL_COMPRESSED_RGB_FXT1_3DFX = SizedInternalFormat(0x86B0)
    comptime GL_COMPRESSED_RGBA_FXT1_3DFX = SizedInternalFormat(0x86B1)
    comptime GL_ATC_RGBA_INTERPOLATED_ALPHA_AMD = SizedInternalFormat(0x87EE)
    comptime GL_3DC_X_AMD = SizedInternalFormat(0x87F9)
    comptime GL_3DC_XY_AMD = SizedInternalFormat(0x87FA)
    comptime GL_RGBA32F = SizedInternalFormat(0x8814)
    comptime GL_RGBA32F_ARB = SizedInternalFormat(0x8814)
    comptime GL_RGBA32F_EXT = SizedInternalFormat(0x8814)
    comptime GL_RGB32F = SizedInternalFormat(0x8815)
    comptime GL_RGB32F_ARB = SizedInternalFormat(0x8815)
    comptime GL_RGB32F_EXT = SizedInternalFormat(0x8815)
    comptime GL_RGBA16F = SizedInternalFormat(0x881A)
    comptime GL_RGBA16F_ARB = SizedInternalFormat(0x881A)
    comptime GL_RGBA16F_EXT = SizedInternalFormat(0x881A)
    comptime GL_RGB16F = SizedInternalFormat(0x881B)
    comptime GL_RGB16F_ARB = SizedInternalFormat(0x881B)
    comptime GL_RGB16F_EXT = SizedInternalFormat(0x881B)
    comptime GL_ETC1_SRGB8_NV = SizedInternalFormat(0x88EE)
    comptime GL_DEPTH24_STENCIL8 = SizedInternalFormat(0x88F0)
    comptime GL_DEPTH24_STENCIL8_EXT = SizedInternalFormat(0x88F0)
    comptime GL_DEPTH24_STENCIL8_OES = SizedInternalFormat(0x88F0)
    comptime GL_COMPRESSED_SRGB_PVRTC_2BPPV1_EXT = SizedInternalFormat(0x8A54)
    comptime GL_COMPRESSED_SRGB_PVRTC_4BPPV1_EXT = SizedInternalFormat(0x8A55)
    comptime GL_COMPRESSED_SRGB_ALPHA_PVRTC_2BPPV1_EXT = SizedInternalFormat(0x8A56)
    comptime GL_COMPRESSED_SRGB_ALPHA_PVRTC_4BPPV1_EXT = SizedInternalFormat(0x8A57)
    comptime GL_COMPRESSED_RGB_PVRTC_4BPPV1_IMG = SizedInternalFormat(0x8C00)
    comptime GL_COMPRESSED_RGB_PVRTC_2BPPV1_IMG = SizedInternalFormat(0x8C01)
    comptime GL_COMPRESSED_RGBA_PVRTC_4BPPV1_IMG = SizedInternalFormat(0x8C02)
    comptime GL_COMPRESSED_RGBA_PVRTC_2BPPV1_IMG = SizedInternalFormat(0x8C03)
    comptime GL_R11F_G11F_B10F = SizedInternalFormat(0x8C3A)
    comptime GL_R11F_G11F_B10F_APPLE = SizedInternalFormat(0x8C3A)
    comptime GL_R11F_G11F_B10F_EXT = SizedInternalFormat(0x8C3A)
    comptime GL_RGB9_E5 = SizedInternalFormat(0x8C3D)
    comptime GL_RGB9_E5_APPLE = SizedInternalFormat(0x8C3D)
    comptime GL_RGB9_E5_EXT = SizedInternalFormat(0x8C3D)
    comptime GL_SRGB8 = SizedInternalFormat(0x8C41)
    comptime GL_SRGB8_EXT = SizedInternalFormat(0x8C41)
    comptime GL_SRGB8_NV = SizedInternalFormat(0x8C41)
    comptime GL_SRGB8_ALPHA8 = SizedInternalFormat(0x8C43)
    comptime GL_SRGB8_ALPHA8_EXT = SizedInternalFormat(0x8C43)
    comptime GL_COMPRESSED_SRGB_S3TC_DXT1_EXT = SizedInternalFormat(0x8C4C)
    comptime GL_COMPRESSED_SRGB_S3TC_DXT1_NV = SizedInternalFormat(0x8C4C)
    comptime GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT1_EXT = SizedInternalFormat(0x8C4D)
    comptime GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT1_NV = SizedInternalFormat(0x8C4D)
    comptime GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT3_EXT = SizedInternalFormat(0x8C4E)
    comptime GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT3_NV = SizedInternalFormat(0x8C4E)
    comptime GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT5_EXT = SizedInternalFormat(0x8C4F)
    comptime GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT5_NV = SizedInternalFormat(0x8C4F)
    comptime GL_COMPRESSED_LUMINANCE_LATC1_EXT = SizedInternalFormat(0x8C70)
    comptime GL_COMPRESSED_SIGNED_LUMINANCE_LATC1_EXT = SizedInternalFormat(0x8C71)
    comptime GL_COMPRESSED_LUMINANCE_ALPHA_LATC2_EXT = SizedInternalFormat(0x8C72)
    comptime GL_COMPRESSED_SIGNED_LUMINANCE_ALPHA_LATC2_EXT = SizedInternalFormat(0x8C73)
    comptime GL_ATC_RGB_AMD = SizedInternalFormat(0x8C92)
    comptime GL_ATC_RGBA_EXPLICIT_ALPHA_AMD = SizedInternalFormat(0x8C93)
    comptime GL_DEPTH_COMPONENT32F = SizedInternalFormat(0x8CAC)
    comptime GL_DEPTH32F_STENCIL8 = SizedInternalFormat(0x8CAD)
    comptime GL_STENCIL_INDEX1 = SizedInternalFormat(0x8D46)
    comptime GL_STENCIL_INDEX1_EXT = SizedInternalFormat(0x8D46)
    comptime GL_STENCIL_INDEX1_OES = SizedInternalFormat(0x8D46)
    comptime GL_STENCIL_INDEX4 = SizedInternalFormat(0x8D47)
    comptime GL_STENCIL_INDEX4_EXT = SizedInternalFormat(0x8D47)
    comptime GL_STENCIL_INDEX4_OES = SizedInternalFormat(0x8D47)
    comptime GL_STENCIL_INDEX8 = SizedInternalFormat(0x8D48)
    comptime GL_STENCIL_INDEX8_EXT = SizedInternalFormat(0x8D48)
    comptime GL_STENCIL_INDEX8_OES = SizedInternalFormat(0x8D48)
    comptime GL_STENCIL_INDEX16 = SizedInternalFormat(0x8D49)
    comptime GL_STENCIL_INDEX16_EXT = SizedInternalFormat(0x8D49)
    comptime GL_RGB565_OES = SizedInternalFormat(0x8D62)
    comptime GL_RGB565 = SizedInternalFormat(0x8D62)
    comptime GL_ETC1_RGB8_OES = SizedInternalFormat(0x8D64)
    comptime GL_RGBA32UI = SizedInternalFormat(0x8D70)
    comptime GL_RGBA32UI_EXT = SizedInternalFormat(0x8D70)
    comptime GL_RGB32UI = SizedInternalFormat(0x8D71)
    comptime GL_RGB32UI_EXT = SizedInternalFormat(0x8D71)
    comptime GL_ALPHA32UI_EXT = SizedInternalFormat(0x8D72)
    comptime GL_INTENSITY32UI_EXT = SizedInternalFormat(0x8D73)
    comptime GL_LUMINANCE32UI_EXT = SizedInternalFormat(0x8D74)
    comptime GL_LUMINANCE_ALPHA32UI_EXT = SizedInternalFormat(0x8D75)
    comptime GL_RGBA16UI = SizedInternalFormat(0x8D76)
    comptime GL_RGBA16UI_EXT = SizedInternalFormat(0x8D76)
    comptime GL_RGB16UI = SizedInternalFormat(0x8D77)
    comptime GL_RGB16UI_EXT = SizedInternalFormat(0x8D77)
    comptime GL_ALPHA16UI_EXT = SizedInternalFormat(0x8D78)
    comptime GL_INTENSITY16UI_EXT = SizedInternalFormat(0x8D79)
    comptime GL_LUMINANCE16UI_EXT = SizedInternalFormat(0x8D7A)
    comptime GL_LUMINANCE_ALPHA16UI_EXT = SizedInternalFormat(0x8D7B)
    comptime GL_RGBA8UI = SizedInternalFormat(0x8D7C)
    comptime GL_RGBA8UI_EXT = SizedInternalFormat(0x8D7C)
    comptime GL_RGB8UI = SizedInternalFormat(0x8D7D)
    comptime GL_RGB8UI_EXT = SizedInternalFormat(0x8D7D)
    comptime GL_ALPHA8UI_EXT = SizedInternalFormat(0x8D7E)
    comptime GL_INTENSITY8UI_EXT = SizedInternalFormat(0x8D7F)
    comptime GL_LUMINANCE8UI_EXT = SizedInternalFormat(0x8D80)
    comptime GL_LUMINANCE_ALPHA8UI_EXT = SizedInternalFormat(0x8D81)
    comptime GL_RGBA32I = SizedInternalFormat(0x8D82)
    comptime GL_RGBA32I_EXT = SizedInternalFormat(0x8D82)
    comptime GL_RGB32I = SizedInternalFormat(0x8D83)
    comptime GL_RGB32I_EXT = SizedInternalFormat(0x8D83)
    comptime GL_ALPHA32I_EXT = SizedInternalFormat(0x8D84)
    comptime GL_INTENSITY32I_EXT = SizedInternalFormat(0x8D85)
    comptime GL_LUMINANCE32I_EXT = SizedInternalFormat(0x8D86)
    comptime GL_LUMINANCE_ALPHA32I_EXT = SizedInternalFormat(0x8D87)
    comptime GL_RGBA16I = SizedInternalFormat(0x8D88)
    comptime GL_RGBA16I_EXT = SizedInternalFormat(0x8D88)
    comptime GL_RGB16I = SizedInternalFormat(0x8D89)
    comptime GL_RGB16I_EXT = SizedInternalFormat(0x8D89)
    comptime GL_ALPHA16I_EXT = SizedInternalFormat(0x8D8A)
    comptime GL_INTENSITY16I_EXT = SizedInternalFormat(0x8D8B)
    comptime GL_LUMINANCE16I_EXT = SizedInternalFormat(0x8D8C)
    comptime GL_LUMINANCE_ALPHA16I_EXT = SizedInternalFormat(0x8D8D)
    comptime GL_RGBA8I = SizedInternalFormat(0x8D8E)
    comptime GL_RGBA8I_EXT = SizedInternalFormat(0x8D8E)
    comptime GL_RGB8I = SizedInternalFormat(0x8D8F)
    comptime GL_RGB8I_EXT = SizedInternalFormat(0x8D8F)
    comptime GL_ALPHA8I_EXT = SizedInternalFormat(0x8D90)
    comptime GL_INTENSITY8I_EXT = SizedInternalFormat(0x8D91)
    comptime GL_LUMINANCE8I_EXT = SizedInternalFormat(0x8D92)
    comptime GL_LUMINANCE_ALPHA8I_EXT = SizedInternalFormat(0x8D93)
    comptime GL_DEPTH_COMPONENT32F_NV = SizedInternalFormat(0x8DAB)
    comptime GL_DEPTH32F_STENCIL8_NV = SizedInternalFormat(0x8DAC)
    comptime GL_COMPRESSED_RED_RGTC1 = SizedInternalFormat(0x8DBB)
    comptime GL_COMPRESSED_RED_RGTC1_EXT = SizedInternalFormat(0x8DBB)
    comptime GL_COMPRESSED_SIGNED_RED_RGTC1 = SizedInternalFormat(0x8DBC)
    comptime GL_COMPRESSED_SIGNED_RED_RGTC1_EXT = SizedInternalFormat(0x8DBC)
    comptime GL_COMPRESSED_RED_GREEN_RGTC2_EXT = SizedInternalFormat(0x8DBD)
    comptime GL_COMPRESSED_RG_RGTC2 = SizedInternalFormat(0x8DBD)
    comptime GL_COMPRESSED_SIGNED_RED_GREEN_RGTC2_EXT = SizedInternalFormat(0x8DBE)
    comptime GL_COMPRESSED_SIGNED_RG_RGTC2 = SizedInternalFormat(0x8DBE)
    comptime GL_COMPRESSED_RGBA_BPTC_UNORM = SizedInternalFormat(0x8E8C)
    comptime GL_COMPRESSED_RGBA_BPTC_UNORM_ARB = SizedInternalFormat(0x8E8C)
    comptime GL_COMPRESSED_RGBA_BPTC_UNORM_EXT = SizedInternalFormat(0x8E8C)
    comptime GL_COMPRESSED_SRGB_ALPHA_BPTC_UNORM = SizedInternalFormat(0x8E8D)
    comptime GL_COMPRESSED_SRGB_ALPHA_BPTC_UNORM_ARB = SizedInternalFormat(0x8E8D)
    comptime GL_COMPRESSED_SRGB_ALPHA_BPTC_UNORM_EXT = SizedInternalFormat(0x8E8D)
    comptime GL_COMPRESSED_RGB_BPTC_SIGNED_FLOAT = SizedInternalFormat(0x8E8E)
    comptime GL_COMPRESSED_RGB_BPTC_SIGNED_FLOAT_ARB = SizedInternalFormat(0x8E8E)
    comptime GL_COMPRESSED_RGB_BPTC_SIGNED_FLOAT_EXT = SizedInternalFormat(0x8E8E)
    comptime GL_COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT = SizedInternalFormat(0x8E8F)
    comptime GL_COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT_ARB = SizedInternalFormat(0x8E8F)
    comptime GL_COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT_EXT = SizedInternalFormat(0x8E8F)
    comptime GL_R8_SNORM = SizedInternalFormat(0x8F94)
    comptime GL_RG8_SNORM = SizedInternalFormat(0x8F95)
    comptime GL_RGB8_SNORM = SizedInternalFormat(0x8F96)
    comptime GL_RGBA8_SNORM = SizedInternalFormat(0x8F97)
    comptime GL_R16_SNORM = SizedInternalFormat(0x8F98)
    comptime GL_R16_SNORM_EXT = SizedInternalFormat(0x8F98)
    comptime GL_RG16_SNORM = SizedInternalFormat(0x8F99)
    comptime GL_RG16_SNORM_EXT = SizedInternalFormat(0x8F99)
    comptime GL_RGB16_SNORM = SizedInternalFormat(0x8F9A)
    comptime GL_RGB16_SNORM_EXT = SizedInternalFormat(0x8F9A)
    comptime GL_RGBA16_SNORM = SizedInternalFormat(0x8F9B)
    comptime GL_RGBA16_SNORM_EXT = SizedInternalFormat(0x8F9B)
    comptime GL_RGB10_A2UI = SizedInternalFormat(0x906F)
    comptime GL_COMPRESSED_RGBA_PVRTC_2BPPV2_IMG = SizedInternalFormat(0x9137)
    comptime GL_COMPRESSED_RGBA_PVRTC_4BPPV2_IMG = SizedInternalFormat(0x9138)
    comptime GL_COMPRESSED_R11_EAC = SizedInternalFormat(0x9270)
    comptime GL_COMPRESSED_R11_EAC_OES = SizedInternalFormat(0x9270)
    comptime GL_COMPRESSED_SIGNED_R11_EAC = SizedInternalFormat(0x9271)
    comptime GL_COMPRESSED_SIGNED_R11_EAC_OES = SizedInternalFormat(0x9271)
    comptime GL_COMPRESSED_RG11_EAC = SizedInternalFormat(0x9272)
    comptime GL_COMPRESSED_RG11_EAC_OES = SizedInternalFormat(0x9272)
    comptime GL_COMPRESSED_SIGNED_RG11_EAC = SizedInternalFormat(0x9273)
    comptime GL_COMPRESSED_SIGNED_RG11_EAC_OES = SizedInternalFormat(0x9273)
    comptime GL_COMPRESSED_RGB8_ETC2 = SizedInternalFormat(0x9274)
    comptime GL_COMPRESSED_RGB8_ETC2_OES = SizedInternalFormat(0x9274)
    comptime GL_COMPRESSED_SRGB8_ETC2 = SizedInternalFormat(0x9275)
    comptime GL_COMPRESSED_SRGB8_ETC2_OES = SizedInternalFormat(0x9275)
    comptime GL_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2 = SizedInternalFormat(0x9276)
    comptime GL_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2_OES = SizedInternalFormat(0x9276)
    comptime GL_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2 = SizedInternalFormat(0x9277)
    comptime GL_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2_OES = SizedInternalFormat(0x9277)
    comptime GL_COMPRESSED_RGBA8_ETC2_EAC = SizedInternalFormat(0x9278)
    comptime GL_COMPRESSED_RGBA8_ETC2_EAC_OES = SizedInternalFormat(0x9278)
    comptime GL_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC = SizedInternalFormat(0x9279)
    comptime GL_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC_OES = SizedInternalFormat(0x9279)
    comptime GL_COMPRESSED_RGBA_ASTC_4x4 = SizedInternalFormat(0x93B0)
    comptime GL_COMPRESSED_RGBA_ASTC_4x4_KHR = SizedInternalFormat(0x93B0)
    comptime GL_COMPRESSED_RGBA_ASTC_5x4 = SizedInternalFormat(0x93B1)
    comptime GL_COMPRESSED_RGBA_ASTC_5x4_KHR = SizedInternalFormat(0x93B1)
    comptime GL_COMPRESSED_RGBA_ASTC_5x5 = SizedInternalFormat(0x93B2)
    comptime GL_COMPRESSED_RGBA_ASTC_5x5_KHR = SizedInternalFormat(0x93B2)
    comptime GL_COMPRESSED_RGBA_ASTC_6x5 = SizedInternalFormat(0x93B3)
    comptime GL_COMPRESSED_RGBA_ASTC_6x5_KHR = SizedInternalFormat(0x93B3)
    comptime GL_COMPRESSED_RGBA_ASTC_6x6 = SizedInternalFormat(0x93B4)
    comptime GL_COMPRESSED_RGBA_ASTC_6x6_KHR = SizedInternalFormat(0x93B4)
    comptime GL_COMPRESSED_RGBA_ASTC_8x5 = SizedInternalFormat(0x93B5)
    comptime GL_COMPRESSED_RGBA_ASTC_8x5_KHR = SizedInternalFormat(0x93B5)
    comptime GL_COMPRESSED_RGBA_ASTC_8x6 = SizedInternalFormat(0x93B6)
    comptime GL_COMPRESSED_RGBA_ASTC_8x6_KHR = SizedInternalFormat(0x93B6)
    comptime GL_COMPRESSED_RGBA_ASTC_8x8 = SizedInternalFormat(0x93B7)
    comptime GL_COMPRESSED_RGBA_ASTC_8x8_KHR = SizedInternalFormat(0x93B7)
    comptime GL_COMPRESSED_RGBA_ASTC_10x5 = SizedInternalFormat(0x93B8)
    comptime GL_COMPRESSED_RGBA_ASTC_10x5_KHR = SizedInternalFormat(0x93B8)
    comptime GL_COMPRESSED_RGBA_ASTC_10x6 = SizedInternalFormat(0x93B9)
    comptime GL_COMPRESSED_RGBA_ASTC_10x6_KHR = SizedInternalFormat(0x93B9)
    comptime GL_COMPRESSED_RGBA_ASTC_10x8 = SizedInternalFormat(0x93BA)
    comptime GL_COMPRESSED_RGBA_ASTC_10x8_KHR = SizedInternalFormat(0x93BA)
    comptime GL_COMPRESSED_RGBA_ASTC_10x10 = SizedInternalFormat(0x93BB)
    comptime GL_COMPRESSED_RGBA_ASTC_10x10_KHR = SizedInternalFormat(0x93BB)
    comptime GL_COMPRESSED_RGBA_ASTC_12x10 = SizedInternalFormat(0x93BC)
    comptime GL_COMPRESSED_RGBA_ASTC_12x10_KHR = SizedInternalFormat(0x93BC)
    comptime GL_COMPRESSED_RGBA_ASTC_12x12 = SizedInternalFormat(0x93BD)
    comptime GL_COMPRESSED_RGBA_ASTC_12x12_KHR = SizedInternalFormat(0x93BD)
    comptime GL_COMPRESSED_RGBA_ASTC_3x3x3_OES = SizedInternalFormat(0x93C0)
    comptime GL_COMPRESSED_RGBA_ASTC_4x3x3_OES = SizedInternalFormat(0x93C1)
    comptime GL_COMPRESSED_RGBA_ASTC_4x4x3_OES = SizedInternalFormat(0x93C2)
    comptime GL_COMPRESSED_RGBA_ASTC_4x4x4_OES = SizedInternalFormat(0x93C3)
    comptime GL_COMPRESSED_RGBA_ASTC_5x4x4_OES = SizedInternalFormat(0x93C4)
    comptime GL_COMPRESSED_RGBA_ASTC_5x5x4_OES = SizedInternalFormat(0x93C5)
    comptime GL_COMPRESSED_RGBA_ASTC_5x5x5_OES = SizedInternalFormat(0x93C6)
    comptime GL_COMPRESSED_RGBA_ASTC_6x5x5_OES = SizedInternalFormat(0x93C7)
    comptime GL_COMPRESSED_RGBA_ASTC_6x6x5_OES = SizedInternalFormat(0x93C8)
    comptime GL_COMPRESSED_RGBA_ASTC_6x6x6_OES = SizedInternalFormat(0x93C9)
    comptime GL_COMPRESSED_SRGB8_ALPHA8_ASTC_4x4 = SizedInternalFormat(0x93D0)
    comptime GL_COMPRESSED_SRGB8_ALPHA8_ASTC_4x4_KHR = SizedInternalFormat(0x93D0)
    comptime GL_COMPRESSED_SRGB8_ALPHA8_ASTC_5x4 = SizedInternalFormat(0x93D1)
    comptime GL_COMPRESSED_SRGB8_ALPHA8_ASTC_5x4_KHR = SizedInternalFormat(0x93D1)
    comptime GL_COMPRESSED_SRGB8_ALPHA8_ASTC_5x5 = SizedInternalFormat(0x93D2)
    comptime GL_COMPRESSED_SRGB8_ALPHA8_ASTC_5x5_KHR = SizedInternalFormat(0x93D2)
    comptime GL_COMPRESSED_SRGB8_ALPHA8_ASTC_6x5 = SizedInternalFormat(0x93D3)
    comptime GL_COMPRESSED_SRGB8_ALPHA8_ASTC_6x5_KHR = SizedInternalFormat(0x93D3)
    comptime GL_COMPRESSED_SRGB8_ALPHA8_ASTC_6x6 = SizedInternalFormat(0x93D4)
    comptime GL_COMPRESSED_SRGB8_ALPHA8_ASTC_6x6_KHR = SizedInternalFormat(0x93D4)
    comptime GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x5 = SizedInternalFormat(0x93D5)
    comptime GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x5_KHR = SizedInternalFormat(0x93D5)
    comptime GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x6 = SizedInternalFormat(0x93D6)
    comptime GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x6_KHR = SizedInternalFormat(0x93D6)
    comptime GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x8 = SizedInternalFormat(0x93D7)
    comptime GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x8_KHR = SizedInternalFormat(0x93D7)
    comptime GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x5 = SizedInternalFormat(0x93D8)
    comptime GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x5_KHR = SizedInternalFormat(0x93D8)
    comptime GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x6 = SizedInternalFormat(0x93D9)
    comptime GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x6_KHR = SizedInternalFormat(0x93D9)
    comptime GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x8 = SizedInternalFormat(0x93DA)
    comptime GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x8_KHR = SizedInternalFormat(0x93DA)
    comptime GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x10 = SizedInternalFormat(0x93DB)
    comptime GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x10_KHR = SizedInternalFormat(0x93DB)
    comptime GL_COMPRESSED_SRGB8_ALPHA8_ASTC_12x10 = SizedInternalFormat(0x93DC)
    comptime GL_COMPRESSED_SRGB8_ALPHA8_ASTC_12x10_KHR = SizedInternalFormat(0x93DC)
    comptime GL_COMPRESSED_SRGB8_ALPHA8_ASTC_12x12 = SizedInternalFormat(0x93DD)
    comptime GL_COMPRESSED_SRGB8_ALPHA8_ASTC_12x12_KHR = SizedInternalFormat(0x93DD)
    comptime GL_COMPRESSED_SRGB8_ALPHA8_ASTC_3x3x3_OES = SizedInternalFormat(0x93E0)
    comptime GL_COMPRESSED_SRGB8_ALPHA8_ASTC_4x3x3_OES = SizedInternalFormat(0x93E1)
    comptime GL_COMPRESSED_SRGB8_ALPHA8_ASTC_4x4x3_OES = SizedInternalFormat(0x93E2)
    comptime GL_COMPRESSED_SRGB8_ALPHA8_ASTC_4x4x4_OES = SizedInternalFormat(0x93E3)
    comptime GL_COMPRESSED_SRGB8_ALPHA8_ASTC_5x4x4_OES = SizedInternalFormat(0x93E4)
    comptime GL_COMPRESSED_SRGB8_ALPHA8_ASTC_5x5x4_OES = SizedInternalFormat(0x93E5)
    comptime GL_COMPRESSED_SRGB8_ALPHA8_ASTC_5x5x5_OES = SizedInternalFormat(0x93E6)
    comptime GL_COMPRESSED_SRGB8_ALPHA8_ASTC_6x5x5_OES = SizedInternalFormat(0x93E7)
    comptime GL_COMPRESSED_SRGB8_ALPHA8_ASTC_6x6x5_OES = SizedInternalFormat(0x93E8)
    comptime GL_COMPRESSED_SRGB8_ALPHA8_ASTC_6x6x6_OES = SizedInternalFormat(0x93E9)
    comptime GL_COMPRESSED_SRGB_ALPHA_PVRTC_2BPPV2_IMG = SizedInternalFormat(0x93F0)
    comptime GL_COMPRESSED_SRGB_ALPHA_PVRTC_4BPPV2_IMG = SizedInternalFormat(0x93F1)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct SpecialNumbers(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_FALSE = SpecialNumbers(0)
    comptime GL_NO_ERROR = SpecialNumbers(0)
    comptime GL_ZERO = SpecialNumbers(0)
    comptime GL_NONE = SpecialNumbers(0)
    comptime GL_NONE_OES = SpecialNumbers(0)
    comptime GL_TRUE = SpecialNumbers(1)
    comptime GL_ONE = SpecialNumbers(1)
    comptime GL_INVALID_INDEX = SpecialNumbers(0xFFFFFFFF)
    comptime GL_ALL_PIXELS_AMD = SpecialNumbers(0xFFFFFFFF)
    comptime GL_TIMEOUT_IGNORED = SpecialNumbers(0xFFFFFFFFFFFFFFFF)
    comptime GL_TIMEOUT_IGNORED_APPLE = SpecialNumbers(0xFFFFFFFFFFFFFFFF)
    comptime GL_VERSION_ES_CL_1_0 = SpecialNumbers(1)
    comptime GL_VERSION_ES_CM_1_1 = SpecialNumbers(1)
    comptime GL_VERSION_ES_CL_1_1 = SpecialNumbers(1)
    comptime GL_UUID_SIZE_EXT = SpecialNumbers(16)
    comptime GL_LUID_SIZE_EXT = SpecialNumbers(8)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct StencilFunction(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_NEVER = StencilFunction(0x0200)
    comptime GL_LESS = StencilFunction(0x0201)
    comptime GL_EQUAL = StencilFunction(0x0202)
    comptime GL_LEQUAL = StencilFunction(0x0203)
    comptime GL_GREATER = StencilFunction(0x0204)
    comptime GL_NOTEQUAL = StencilFunction(0x0205)
    comptime GL_GEQUAL = StencilFunction(0x0206)
    comptime GL_ALWAYS = StencilFunction(0x0207)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct StencilOp(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_ZERO = StencilOp(0)
    comptime GL_INVERT = StencilOp(0x150A)
    comptime GL_KEEP = StencilOp(0x1E00)
    comptime GL_REPLACE = StencilOp(0x1E01)
    comptime GL_INCR = StencilOp(0x1E02)
    comptime GL_DECR = StencilOp(0x1E03)
    comptime GL_INCR_WRAP = StencilOp(0x8507)
    comptime GL_DECR_WRAP = StencilOp(0x8508)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct StringName(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_VENDOR = StringName(0x1F00)
    comptime GL_RENDERER = StringName(0x1F01)
    comptime GL_VERSION = StringName(0x1F02)
    comptime GL_EXTENSIONS = StringName(0x1F03)
    comptime GL_SHADING_LANGUAGE_VERSION = StringName(0x8B8C)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct SubroutineParameterName(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_UNIFORM_SIZE = SubroutineParameterName(0x8A38)
    comptime GL_UNIFORM_NAME_LENGTH = SubroutineParameterName(0x8A39)
    comptime GL_NUM_COMPATIBLE_SUBROUTINES = SubroutineParameterName(0x8E4A)
    comptime GL_COMPATIBLE_SUBROUTINES = SubroutineParameterName(0x8E4B)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct SyncBehaviorFlags(Intable, TrivialRegisterPassable):
    var value: GLbitfield

    comptime GL_NONE = SyncBehaviorFlags(0)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)

    @always_inline
    def __or__(lhs, rhs: Self) -> Self:
        return Self(lhs.value | rhs.value)


@fieldwise_init
struct SyncCondition(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_SYNC_GPU_COMMANDS_COMPLETE = SyncCondition(0x9117)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct SyncObjectMask(Intable, TrivialRegisterPassable):
    var value: GLbitfield

    comptime GL_SYNC_FLUSH_COMMANDS_BIT = SyncObjectMask(0x00000001)
    comptime GL_SYNC_FLUSH_COMMANDS_BIT_APPLE = SyncObjectMask(0x00000001)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)

    @always_inline
    def __or__(lhs, rhs: Self) -> Self:
        return Self(lhs.value | rhs.value)


@fieldwise_init
struct SyncParameterName(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_OBJECT_TYPE = SyncParameterName(0x9112)
    comptime GL_SYNC_CONDITION = SyncParameterName(0x9113)
    comptime GL_SYNC_STATUS = SyncParameterName(0x9114)
    comptime GL_SYNC_FLAGS = SyncParameterName(0x9115)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct SyncStatus(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_ALREADY_SIGNALED = SyncStatus(0x911A)
    comptime GL_TIMEOUT_EXPIRED = SyncStatus(0x911B)
    comptime GL_CONDITION_SATISFIED = SyncStatus(0x911C)
    comptime GL_WAIT_FAILED = SyncStatus(0x911D)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct TexCoordPointerType(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_SHORT = TexCoordPointerType(0x1402)
    comptime GL_INT = TexCoordPointerType(0x1404)
    comptime GL_FLOAT = TexCoordPointerType(0x1406)
    comptime GL_DOUBLE = TexCoordPointerType(0x140A)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct TextureCompareMode(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_NONE = TextureCompareMode(0)
    comptime GL_COMPARE_R_TO_TEXTURE = TextureCompareMode(0x884E)
    comptime GL_COMPARE_REF_TO_TEXTURE = TextureCompareMode(0x884E)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct TextureEnvMode(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_ADD = TextureEnvMode(0x0104)
    comptime GL_BLEND = TextureEnvMode(0x0BE2)
    comptime GL_REPLACE = TextureEnvMode(0x1E01)
    comptime GL_MODULATE = TextureEnvMode(0x2100)
    comptime GL_DECAL = TextureEnvMode(0x2101)
    comptime GL_REPLACE_EXT = TextureEnvMode(0x8062)
    comptime GL_TEXTURE_ENV_BIAS_SGIX = TextureEnvMode(0x80BE)
    comptime GL_COMBINE = TextureEnvMode(0x8570)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct TextureEnvParameter(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_ALPHA_SCALE = TextureEnvParameter(0x0D1C)
    comptime GL_TEXTURE_ENV_MODE = TextureEnvParameter(0x2200)
    comptime GL_TEXTURE_ENV_COLOR = TextureEnvParameter(0x2201)
    comptime GL_TEXTURE_LOD_BIAS = TextureEnvParameter(0x8501)
    comptime GL_COMBINE = TextureEnvParameter(0x8570)
    comptime GL_COMBINE_ARB = TextureEnvParameter(0x8570)
    comptime GL_COMBINE_EXT = TextureEnvParameter(0x8570)
    comptime GL_COMBINE_RGB = TextureEnvParameter(0x8571)
    comptime GL_COMBINE_RGB_ARB = TextureEnvParameter(0x8571)
    comptime GL_COMBINE_RGB_EXT = TextureEnvParameter(0x8571)
    comptime GL_COMBINE_ALPHA = TextureEnvParameter(0x8572)
    comptime GL_COMBINE_ALPHA_ARB = TextureEnvParameter(0x8572)
    comptime GL_COMBINE_ALPHA_EXT = TextureEnvParameter(0x8572)
    comptime GL_RGB_SCALE = TextureEnvParameter(0x8573)
    comptime GL_RGB_SCALE_ARB = TextureEnvParameter(0x8573)
    comptime GL_RGB_SCALE_EXT = TextureEnvParameter(0x8573)
    comptime GL_ADD_SIGNED = TextureEnvParameter(0x8574)
    comptime GL_ADD_SIGNED_ARB = TextureEnvParameter(0x8574)
    comptime GL_ADD_SIGNED_EXT = TextureEnvParameter(0x8574)
    comptime GL_INTERPOLATE = TextureEnvParameter(0x8575)
    comptime GL_INTERPOLATE_ARB = TextureEnvParameter(0x8575)
    comptime GL_INTERPOLATE_EXT = TextureEnvParameter(0x8575)
    comptime GL_CONSTANT = TextureEnvParameter(0x8576)
    comptime GL_CONSTANT_ARB = TextureEnvParameter(0x8576)
    comptime GL_CONSTANT_EXT = TextureEnvParameter(0x8576)
    comptime GL_CONSTANT_NV = TextureEnvParameter(0x8576)
    comptime GL_PRIMARY_COLOR = TextureEnvParameter(0x8577)
    comptime GL_PRIMARY_COLOR_ARB = TextureEnvParameter(0x8577)
    comptime GL_PRIMARY_COLOR_EXT = TextureEnvParameter(0x8577)
    comptime GL_PREVIOUS = TextureEnvParameter(0x8578)
    comptime GL_PREVIOUS_ARB = TextureEnvParameter(0x8578)
    comptime GL_PREVIOUS_EXT = TextureEnvParameter(0x8578)
    comptime GL_SOURCE0_RGB = TextureEnvParameter(0x8580)
    comptime GL_SOURCE0_RGB_ARB = TextureEnvParameter(0x8580)
    comptime GL_SOURCE0_RGB_EXT = TextureEnvParameter(0x8580)
    comptime GL_SRC0_RGB = TextureEnvParameter(0x8580)
    comptime GL_SOURCE1_RGB = TextureEnvParameter(0x8581)
    comptime GL_SOURCE1_RGB_ARB = TextureEnvParameter(0x8581)
    comptime GL_SOURCE1_RGB_EXT = TextureEnvParameter(0x8581)
    comptime GL_SRC1_RGB = TextureEnvParameter(0x8581)
    comptime GL_SOURCE2_RGB = TextureEnvParameter(0x8582)
    comptime GL_SOURCE2_RGB_ARB = TextureEnvParameter(0x8582)
    comptime GL_SOURCE2_RGB_EXT = TextureEnvParameter(0x8582)
    comptime GL_SRC2_RGB = TextureEnvParameter(0x8582)
    comptime GL_SOURCE3_RGB_NV = TextureEnvParameter(0x8583)
    comptime GL_SOURCE0_ALPHA = TextureEnvParameter(0x8588)
    comptime GL_SOURCE0_ALPHA_ARB = TextureEnvParameter(0x8588)
    comptime GL_SOURCE0_ALPHA_EXT = TextureEnvParameter(0x8588)
    comptime GL_SRC0_ALPHA = TextureEnvParameter(0x8588)
    comptime GL_SOURCE1_ALPHA = TextureEnvParameter(0x8589)
    comptime GL_SOURCE1_ALPHA_ARB = TextureEnvParameter(0x8589)
    comptime GL_SOURCE1_ALPHA_EXT = TextureEnvParameter(0x8589)
    comptime GL_SRC1_ALPHA = TextureEnvParameter(0x8589)
    comptime GL_SRC1_ALPHA_EXT = TextureEnvParameter(0x8589)
    comptime GL_SOURCE2_ALPHA = TextureEnvParameter(0x858A)
    comptime GL_SOURCE2_ALPHA_ARB = TextureEnvParameter(0x858A)
    comptime GL_SOURCE2_ALPHA_EXT = TextureEnvParameter(0x858A)
    comptime GL_SRC2_ALPHA = TextureEnvParameter(0x858A)
    comptime GL_SOURCE3_ALPHA_NV = TextureEnvParameter(0x858B)
    comptime GL_OPERAND0_RGB = TextureEnvParameter(0x8590)
    comptime GL_OPERAND0_RGB_ARB = TextureEnvParameter(0x8590)
    comptime GL_OPERAND0_RGB_EXT = TextureEnvParameter(0x8590)
    comptime GL_OPERAND1_RGB = TextureEnvParameter(0x8591)
    comptime GL_OPERAND1_RGB_ARB = TextureEnvParameter(0x8591)
    comptime GL_OPERAND1_RGB_EXT = TextureEnvParameter(0x8591)
    comptime GL_OPERAND2_RGB = TextureEnvParameter(0x8592)
    comptime GL_OPERAND2_RGB_ARB = TextureEnvParameter(0x8592)
    comptime GL_OPERAND2_RGB_EXT = TextureEnvParameter(0x8592)
    comptime GL_OPERAND3_RGB_NV = TextureEnvParameter(0x8593)
    comptime GL_OPERAND0_ALPHA = TextureEnvParameter(0x8598)
    comptime GL_OPERAND0_ALPHA_ARB = TextureEnvParameter(0x8598)
    comptime GL_OPERAND0_ALPHA_EXT = TextureEnvParameter(0x8598)
    comptime GL_OPERAND1_ALPHA = TextureEnvParameter(0x8599)
    comptime GL_OPERAND1_ALPHA_ARB = TextureEnvParameter(0x8599)
    comptime GL_OPERAND1_ALPHA_EXT = TextureEnvParameter(0x8599)
    comptime GL_OPERAND2_ALPHA = TextureEnvParameter(0x859A)
    comptime GL_OPERAND2_ALPHA_ARB = TextureEnvParameter(0x859A)
    comptime GL_OPERAND2_ALPHA_EXT = TextureEnvParameter(0x859A)
    comptime GL_OPERAND3_ALPHA_NV = TextureEnvParameter(0x859B)
    comptime GL_COORD_REPLACE = TextureEnvParameter(0x8862)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct TextureMagFilter(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_NEAREST = TextureMagFilter(0x2600)
    comptime GL_LINEAR = TextureMagFilter(0x2601)
    comptime GL_LINEAR_DETAIL_SGIS = TextureMagFilter(0x8097)
    comptime GL_LINEAR_DETAIL_ALPHA_SGIS = TextureMagFilter(0x8098)
    comptime GL_LINEAR_DETAIL_COLOR_SGIS = TextureMagFilter(0x8099)
    comptime GL_LINEAR_SHARPEN_SGIS = TextureMagFilter(0x80AD)
    comptime GL_LINEAR_SHARPEN_ALPHA_SGIS = TextureMagFilter(0x80AE)
    comptime GL_LINEAR_SHARPEN_COLOR_SGIS = TextureMagFilter(0x80AF)
    comptime GL_FILTER4_SGIS = TextureMagFilter(0x8146)
    comptime GL_PIXEL_TEX_GEN_Q_CEILING_SGIX = TextureMagFilter(0x8184)
    comptime GL_PIXEL_TEX_GEN_Q_ROUND_SGIX = TextureMagFilter(0x8185)
    comptime GL_PIXEL_TEX_GEN_Q_FLOOR_SGIX = TextureMagFilter(0x8186)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct TextureMinFilter(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_NEAREST = TextureMinFilter(0x2600)
    comptime GL_LINEAR = TextureMinFilter(0x2601)
    comptime GL_NEAREST_MIPMAP_NEAREST = TextureMinFilter(0x2700)
    comptime GL_LINEAR_MIPMAP_NEAREST = TextureMinFilter(0x2701)
    comptime GL_NEAREST_MIPMAP_LINEAR = TextureMinFilter(0x2702)
    comptime GL_LINEAR_MIPMAP_LINEAR = TextureMinFilter(0x2703)
    comptime GL_FILTER4_SGIS = TextureMinFilter(0x8146)
    comptime GL_LINEAR_CLIPMAP_LINEAR_SGIX = TextureMinFilter(0x8170)
    comptime GL_PIXEL_TEX_GEN_Q_CEILING_SGIX = TextureMinFilter(0x8184)
    comptime GL_PIXEL_TEX_GEN_Q_ROUND_SGIX = TextureMinFilter(0x8185)
    comptime GL_PIXEL_TEX_GEN_Q_FLOOR_SGIX = TextureMinFilter(0x8186)
    comptime GL_NEAREST_CLIPMAP_NEAREST_SGIX = TextureMinFilter(0x844D)
    comptime GL_NEAREST_CLIPMAP_LINEAR_SGIX = TextureMinFilter(0x844E)
    comptime GL_LINEAR_CLIPMAP_NEAREST_SGIX = TextureMinFilter(0x844F)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct TextureParameterName(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_TEXTURE_WIDTH = TextureParameterName(0x1000)
    comptime GL_TEXTURE_HEIGHT = TextureParameterName(0x1001)
    comptime GL_TEXTURE_INTERNAL_FORMAT = TextureParameterName(0x1003)
    comptime GL_TEXTURE_COMPONENTS = TextureParameterName(0x1003)
    comptime GL_TEXTURE_BORDER_COLOR = TextureParameterName(0x1004)
    comptime GL_TEXTURE_BORDER_COLOR_NV = TextureParameterName(0x1004)
    comptime GL_TEXTURE_BORDER = TextureParameterName(0x1005)
    comptime GL_TEXTURE_MAG_FILTER = TextureParameterName(0x2800)
    comptime GL_TEXTURE_MIN_FILTER = TextureParameterName(0x2801)
    comptime GL_TEXTURE_WRAP_S = TextureParameterName(0x2802)
    comptime GL_TEXTURE_WRAP_T = TextureParameterName(0x2803)
    comptime GL_TEXTURE_RED_SIZE = TextureParameterName(0x805C)
    comptime GL_TEXTURE_GREEN_SIZE = TextureParameterName(0x805D)
    comptime GL_TEXTURE_BLUE_SIZE = TextureParameterName(0x805E)
    comptime GL_TEXTURE_ALPHA_SIZE = TextureParameterName(0x805F)
    comptime GL_TEXTURE_LUMINANCE_SIZE = TextureParameterName(0x8060)
    comptime GL_TEXTURE_INTENSITY_SIZE = TextureParameterName(0x8061)
    comptime GL_TEXTURE_PRIORITY = TextureParameterName(0x8066)
    comptime GL_TEXTURE_PRIORITY_EXT = TextureParameterName(0x8066)
    comptime GL_TEXTURE_RESIDENT = TextureParameterName(0x8067)
    comptime GL_TEXTURE_DEPTH_EXT = TextureParameterName(0x8071)
    comptime GL_TEXTURE_WRAP_R = TextureParameterName(0x8072)
    comptime GL_TEXTURE_WRAP_R_EXT = TextureParameterName(0x8072)
    comptime GL_TEXTURE_WRAP_R_OES = TextureParameterName(0x8072)
    comptime GL_DETAIL_TEXTURE_LEVEL_SGIS = TextureParameterName(0x809A)
    comptime GL_DETAIL_TEXTURE_MODE_SGIS = TextureParameterName(0x809B)
    comptime GL_DETAIL_TEXTURE_FUNC_POINTS_SGIS = TextureParameterName(0x809C)
    comptime GL_SHARPEN_TEXTURE_FUNC_POINTS_SGIS = TextureParameterName(0x80B0)
    comptime GL_SHADOW_AMBIENT_SGIX = TextureParameterName(0x80BF)
    comptime GL_DUAL_TEXTURE_SELECT_SGIS = TextureParameterName(0x8124)
    comptime GL_QUAD_TEXTURE_SELECT_SGIS = TextureParameterName(0x8125)
    comptime GL_TEXTURE_4DSIZE_SGIS = TextureParameterName(0x8136)
    comptime GL_TEXTURE_WRAP_Q_SGIS = TextureParameterName(0x8137)
    comptime GL_TEXTURE_MIN_LOD = TextureParameterName(0x813A)
    comptime GL_TEXTURE_MIN_LOD_SGIS = TextureParameterName(0x813A)
    comptime GL_TEXTURE_MAX_LOD = TextureParameterName(0x813B)
    comptime GL_TEXTURE_MAX_LOD_SGIS = TextureParameterName(0x813B)
    comptime GL_TEXTURE_BASE_LEVEL = TextureParameterName(0x813C)
    comptime GL_TEXTURE_BASE_LEVEL_SGIS = TextureParameterName(0x813C)
    comptime GL_TEXTURE_MAX_LEVEL = TextureParameterName(0x813D)
    comptime GL_TEXTURE_MAX_LEVEL_SGIS = TextureParameterName(0x813D)
    comptime GL_TEXTURE_FILTER4_SIZE_SGIS = TextureParameterName(0x8147)
    comptime GL_TEXTURE_CLIPMAP_CENTER_SGIX = TextureParameterName(0x8171)
    comptime GL_TEXTURE_CLIPMAP_FRAME_SGIX = TextureParameterName(0x8172)
    comptime GL_TEXTURE_CLIPMAP_OFFSET_SGIX = TextureParameterName(0x8173)
    comptime GL_TEXTURE_CLIPMAP_VIRTUAL_DEPTH_SGIX = TextureParameterName(0x8174)
    comptime GL_TEXTURE_CLIPMAP_LOD_OFFSET_SGIX = TextureParameterName(0x8175)
    comptime GL_TEXTURE_CLIPMAP_DEPTH_SGIX = TextureParameterName(0x8176)
    comptime GL_POST_TEXTURE_FILTER_BIAS_SGIX = TextureParameterName(0x8179)
    comptime GL_POST_TEXTURE_FILTER_SCALE_SGIX = TextureParameterName(0x817A)
    comptime GL_TEXTURE_LOD_BIAS_S_SGIX = TextureParameterName(0x818E)
    comptime GL_TEXTURE_LOD_BIAS_T_SGIX = TextureParameterName(0x818F)
    comptime GL_TEXTURE_LOD_BIAS_R_SGIX = TextureParameterName(0x8190)
    comptime GL_GENERATE_MIPMAP = TextureParameterName(0x8191)
    comptime GL_GENERATE_MIPMAP_SGIS = TextureParameterName(0x8191)
    comptime GL_TEXTURE_COMPARE_SGIX = TextureParameterName(0x819A)
    comptime GL_TEXTURE_COMPARE_OPERATOR_SGIX = TextureParameterName(0x819B)
    comptime GL_TEXTURE_LEQUAL_R_SGIX = TextureParameterName(0x819C)
    comptime GL_TEXTURE_GEQUAL_R_SGIX = TextureParameterName(0x819D)
    comptime GL_TEXTURE_MAX_CLAMP_S_SGIX = TextureParameterName(0x8369)
    comptime GL_TEXTURE_MAX_CLAMP_T_SGIX = TextureParameterName(0x836A)
    comptime GL_TEXTURE_MAX_CLAMP_R_SGIX = TextureParameterName(0x836B)
    comptime GL_TEXTURE_MEMORY_LAYOUT_INTEL = TextureParameterName(0x83FF)
    comptime GL_TEXTURE_MAX_ANISOTROPY = TextureParameterName(0x84FE)
    comptime GL_TEXTURE_LOD_BIAS = TextureParameterName(0x8501)
    comptime GL_TEXTURE_COMPARE_MODE = TextureParameterName(0x884C)
    comptime GL_TEXTURE_COMPARE_FUNC = TextureParameterName(0x884D)
    comptime GL_TEXTURE_SWIZZLE_R = TextureParameterName(0x8E42)
    comptime GL_TEXTURE_SWIZZLE_G = TextureParameterName(0x8E43)
    comptime GL_TEXTURE_SWIZZLE_B = TextureParameterName(0x8E44)
    comptime GL_TEXTURE_SWIZZLE_A = TextureParameterName(0x8E45)
    comptime GL_TEXTURE_SWIZZLE_RGBA = TextureParameterName(0x8E46)
    comptime GL_TEXTURE_UNNORMALIZED_COORDINATES_ARM = TextureParameterName(0x8F6A)
    comptime GL_DEPTH_STENCIL_TEXTURE_MODE = TextureParameterName(0x90EA)
    comptime GL_TEXTURE_TILING_EXT = TextureParameterName(0x9580)
    comptime GL_TEXTURE_FOVEATED_CUTOFF_DENSITY_QCOM = TextureParameterName(0x96A0)
    comptime GL_TEXTURE_Y_DEGAMMA_QCOM = TextureParameterName(0x9710)
    comptime GL_TEXTURE_CBCR_DEGAMMA_QCOM = TextureParameterName(0x9711)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct TextureSwizzle(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_ZERO = TextureSwizzle(0)
    comptime GL_ONE = TextureSwizzle(1)
    comptime GL_RED = TextureSwizzle(0x1903)
    comptime GL_GREEN = TextureSwizzle(0x1904)
    comptime GL_BLUE = TextureSwizzle(0x1905)
    comptime GL_ALPHA = TextureSwizzle(0x1906)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct TextureTarget(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_TEXTURE_1D = TextureTarget(0x0DE0)
    comptime GL_TEXTURE_2D = TextureTarget(0x0DE1)
    comptime GL_PROXY_TEXTURE_1D = TextureTarget(0x8063)
    comptime GL_PROXY_TEXTURE_1D_EXT = TextureTarget(0x8063)
    comptime GL_PROXY_TEXTURE_2D = TextureTarget(0x8064)
    comptime GL_PROXY_TEXTURE_2D_EXT = TextureTarget(0x8064)
    comptime GL_TEXTURE_3D = TextureTarget(0x806F)
    comptime GL_TEXTURE_3D_EXT = TextureTarget(0x806F)
    comptime GL_TEXTURE_3D_OES = TextureTarget(0x806F)
    comptime GL_PROXY_TEXTURE_3D = TextureTarget(0x8070)
    comptime GL_PROXY_TEXTURE_3D_EXT = TextureTarget(0x8070)
    comptime GL_DETAIL_TEXTURE_2D_SGIS = TextureTarget(0x8095)
    comptime GL_TEXTURE_4D_SGIS = TextureTarget(0x8134)
    comptime GL_PROXY_TEXTURE_4D_SGIS = TextureTarget(0x8135)
    comptime GL_TEXTURE_RECTANGLE = TextureTarget(0x84F5)
    comptime GL_TEXTURE_RECTANGLE_ARB = TextureTarget(0x84F5)
    comptime GL_TEXTURE_RECTANGLE_NV = TextureTarget(0x84F5)
    comptime GL_PROXY_TEXTURE_RECTANGLE = TextureTarget(0x84F7)
    comptime GL_PROXY_TEXTURE_RECTANGLE_ARB = TextureTarget(0x84F7)
    comptime GL_PROXY_TEXTURE_RECTANGLE_NV = TextureTarget(0x84F7)
    comptime GL_TEXTURE_CUBE_MAP = TextureTarget(0x8513)
    comptime GL_TEXTURE_CUBE_MAP_ARB = TextureTarget(0x8513)
    comptime GL_TEXTURE_CUBE_MAP_EXT = TextureTarget(0x8513)
    comptime GL_TEXTURE_CUBE_MAP_OES = TextureTarget(0x8513)
    comptime GL_TEXTURE_CUBE_MAP_POSITIVE_X = TextureTarget(0x8515)
    comptime GL_TEXTURE_CUBE_MAP_POSITIVE_X_ARB = TextureTarget(0x8515)
    comptime GL_TEXTURE_CUBE_MAP_POSITIVE_X_EXT = TextureTarget(0x8515)
    comptime GL_TEXTURE_CUBE_MAP_POSITIVE_X_OES = TextureTarget(0x8515)
    comptime GL_TEXTURE_CUBE_MAP_NEGATIVE_X = TextureTarget(0x8516)
    comptime GL_TEXTURE_CUBE_MAP_NEGATIVE_X_ARB = TextureTarget(0x8516)
    comptime GL_TEXTURE_CUBE_MAP_NEGATIVE_X_EXT = TextureTarget(0x8516)
    comptime GL_TEXTURE_CUBE_MAP_NEGATIVE_X_OES = TextureTarget(0x8516)
    comptime GL_TEXTURE_CUBE_MAP_POSITIVE_Y = TextureTarget(0x8517)
    comptime GL_TEXTURE_CUBE_MAP_POSITIVE_Y_ARB = TextureTarget(0x8517)
    comptime GL_TEXTURE_CUBE_MAP_POSITIVE_Y_EXT = TextureTarget(0x8517)
    comptime GL_TEXTURE_CUBE_MAP_POSITIVE_Y_OES = TextureTarget(0x8517)
    comptime GL_TEXTURE_CUBE_MAP_NEGATIVE_Y = TextureTarget(0x8518)
    comptime GL_TEXTURE_CUBE_MAP_NEGATIVE_Y_ARB = TextureTarget(0x8518)
    comptime GL_TEXTURE_CUBE_MAP_NEGATIVE_Y_EXT = TextureTarget(0x8518)
    comptime GL_TEXTURE_CUBE_MAP_NEGATIVE_Y_OES = TextureTarget(0x8518)
    comptime GL_TEXTURE_CUBE_MAP_POSITIVE_Z = TextureTarget(0x8519)
    comptime GL_TEXTURE_CUBE_MAP_POSITIVE_Z_ARB = TextureTarget(0x8519)
    comptime GL_TEXTURE_CUBE_MAP_POSITIVE_Z_EXT = TextureTarget(0x8519)
    comptime GL_TEXTURE_CUBE_MAP_POSITIVE_Z_OES = TextureTarget(0x8519)
    comptime GL_TEXTURE_CUBE_MAP_NEGATIVE_Z = TextureTarget(0x851A)
    comptime GL_TEXTURE_CUBE_MAP_NEGATIVE_Z_ARB = TextureTarget(0x851A)
    comptime GL_TEXTURE_CUBE_MAP_NEGATIVE_Z_EXT = TextureTarget(0x851A)
    comptime GL_TEXTURE_CUBE_MAP_NEGATIVE_Z_OES = TextureTarget(0x851A)
    comptime GL_PROXY_TEXTURE_CUBE_MAP = TextureTarget(0x851B)
    comptime GL_PROXY_TEXTURE_CUBE_MAP_ARB = TextureTarget(0x851B)
    comptime GL_PROXY_TEXTURE_CUBE_MAP_EXT = TextureTarget(0x851B)
    comptime GL_TEXTURE_1D_ARRAY = TextureTarget(0x8C18)
    comptime GL_PROXY_TEXTURE_1D_ARRAY = TextureTarget(0x8C19)
    comptime GL_PROXY_TEXTURE_1D_ARRAY_EXT = TextureTarget(0x8C19)
    comptime GL_TEXTURE_2D_ARRAY = TextureTarget(0x8C1A)
    comptime GL_PROXY_TEXTURE_2D_ARRAY = TextureTarget(0x8C1B)
    comptime GL_PROXY_TEXTURE_2D_ARRAY_EXT = TextureTarget(0x8C1B)
    comptime GL_TEXTURE_BUFFER = TextureTarget(0x8C2A)
    comptime GL_RENDERBUFFER = TextureTarget(0x8D41)
    comptime GL_TEXTURE_CUBE_MAP_ARRAY = TextureTarget(0x9009)
    comptime GL_TEXTURE_CUBE_MAP_ARRAY_ARB = TextureTarget(0x9009)
    comptime GL_TEXTURE_CUBE_MAP_ARRAY_EXT = TextureTarget(0x9009)
    comptime GL_TEXTURE_CUBE_MAP_ARRAY_OES = TextureTarget(0x9009)
    comptime GL_PROXY_TEXTURE_CUBE_MAP_ARRAY = TextureTarget(0x900B)
    comptime GL_PROXY_TEXTURE_CUBE_MAP_ARRAY_ARB = TextureTarget(0x900B)
    comptime GL_TEXTURE_2D_MULTISAMPLE = TextureTarget(0x9100)
    comptime GL_PROXY_TEXTURE_2D_MULTISAMPLE = TextureTarget(0x9101)
    comptime GL_TEXTURE_2D_MULTISAMPLE_ARRAY = TextureTarget(0x9102)
    comptime GL_PROXY_TEXTURE_2D_MULTISAMPLE_ARRAY = TextureTarget(0x9103)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct TextureUnit(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_TEXTURE0 = TextureUnit(0x84C0)
    comptime GL_TEXTURE1 = TextureUnit(0x84C1)
    comptime GL_TEXTURE2 = TextureUnit(0x84C2)
    comptime GL_TEXTURE3 = TextureUnit(0x84C3)
    comptime GL_TEXTURE4 = TextureUnit(0x84C4)
    comptime GL_TEXTURE5 = TextureUnit(0x84C5)
    comptime GL_TEXTURE6 = TextureUnit(0x84C6)
    comptime GL_TEXTURE7 = TextureUnit(0x84C7)
    comptime GL_TEXTURE8 = TextureUnit(0x84C8)
    comptime GL_TEXTURE9 = TextureUnit(0x84C9)
    comptime GL_TEXTURE10 = TextureUnit(0x84CA)
    comptime GL_TEXTURE11 = TextureUnit(0x84CB)
    comptime GL_TEXTURE12 = TextureUnit(0x84CC)
    comptime GL_TEXTURE13 = TextureUnit(0x84CD)
    comptime GL_TEXTURE14 = TextureUnit(0x84CE)
    comptime GL_TEXTURE15 = TextureUnit(0x84CF)
    comptime GL_TEXTURE16 = TextureUnit(0x84D0)
    comptime GL_TEXTURE17 = TextureUnit(0x84D1)
    comptime GL_TEXTURE18 = TextureUnit(0x84D2)
    comptime GL_TEXTURE19 = TextureUnit(0x84D3)
    comptime GL_TEXTURE20 = TextureUnit(0x84D4)
    comptime GL_TEXTURE21 = TextureUnit(0x84D5)
    comptime GL_TEXTURE22 = TextureUnit(0x84D6)
    comptime GL_TEXTURE23 = TextureUnit(0x84D7)
    comptime GL_TEXTURE24 = TextureUnit(0x84D8)
    comptime GL_TEXTURE25 = TextureUnit(0x84D9)
    comptime GL_TEXTURE26 = TextureUnit(0x84DA)
    comptime GL_TEXTURE27 = TextureUnit(0x84DB)
    comptime GL_TEXTURE28 = TextureUnit(0x84DC)
    comptime GL_TEXTURE29 = TextureUnit(0x84DD)
    comptime GL_TEXTURE30 = TextureUnit(0x84DE)
    comptime GL_TEXTURE31 = TextureUnit(0x84DF)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct TextureWrapMode(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_CLAMP = TextureWrapMode(0x2900)
    comptime GL_REPEAT = TextureWrapMode(0x2901)
    comptime GL_CLAMP_TO_BORDER = TextureWrapMode(0x812D)
    comptime GL_CLAMP_TO_BORDER_ARB = TextureWrapMode(0x812D)
    comptime GL_CLAMP_TO_BORDER_EXT = TextureWrapMode(0x812D)
    comptime GL_CLAMP_TO_BORDER_NV = TextureWrapMode(0x812D)
    comptime GL_CLAMP_TO_BORDER_SGIS = TextureWrapMode(0x812D)
    comptime GL_CLAMP_TO_BORDER_OES = TextureWrapMode(0x812D)
    comptime GL_CLAMP_TO_EDGE = TextureWrapMode(0x812F)
    comptime GL_CLAMP_TO_EDGE_SGIS = TextureWrapMode(0x812F)
    comptime GL_MIRRORED_REPEAT = TextureWrapMode(0x8370)
    comptime GL_MIRRORED_REPEAT_ARB = TextureWrapMode(0x8370)
    comptime GL_MIRRORED_REPEAT_IBM = TextureWrapMode(0x8370)
    comptime GL_MIRRORED_REPEAT_OES = TextureWrapMode(0x8370)
    comptime GL_MIRROR_CLAMP_ATI = TextureWrapMode(0x8742)
    comptime GL_MIRROR_CLAMP_EXT = TextureWrapMode(0x8742)
    comptime GL_MIRROR_CLAMP_TO_EDGE = TextureWrapMode(0x8743)
    comptime GL_MIRROR_CLAMP_TO_EDGE_ATI = TextureWrapMode(0x8743)
    comptime GL_MIRROR_CLAMP_TO_EDGE_EXT = TextureWrapMode(0x8743)
    comptime GL_MIRROR_CLAMP_TO_BORDER_EXT = TextureWrapMode(0x8912)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct TransformFeedbackBufferMode(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_INTERLEAVED_ATTRIBS = TransformFeedbackBufferMode(0x8C8C)
    comptime GL_SEPARATE_ATTRIBS = TransformFeedbackBufferMode(0x8C8D)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct TransformFeedbackPName(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_TRANSFORM_FEEDBACK_BUFFER_START = TransformFeedbackPName(0x8C84)
    comptime GL_TRANSFORM_FEEDBACK_BUFFER_SIZE = TransformFeedbackPName(0x8C85)
    comptime GL_TRANSFORM_FEEDBACK_BUFFER_BINDING = TransformFeedbackPName(0x8C8F)
    comptime GL_TRANSFORM_FEEDBACK_PAUSED = TransformFeedbackPName(0x8E23)
    comptime GL_TRANSFORM_FEEDBACK_ACTIVE = TransformFeedbackPName(0x8E24)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct TriangleFace(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_FRONT = TriangleFace(0x0404)
    comptime GL_BACK = TriangleFace(0x0405)
    comptime GL_FRONT_AND_BACK = TriangleFace(0x0408)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct UniformBlockPName(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_UNIFORM_BLOCK_REFERENCED_BY_TESS_CONTROL_SHADER = UniformBlockPName(0x84F0)
    comptime GL_UNIFORM_BLOCK_REFERENCED_BY_TESS_EVALUATION_SHADER = UniformBlockPName(0x84F1)
    comptime GL_UNIFORM_BLOCK_BINDING = UniformBlockPName(0x8A3F)
    comptime GL_UNIFORM_BLOCK_DATA_SIZE = UniformBlockPName(0x8A40)
    comptime GL_UNIFORM_BLOCK_NAME_LENGTH = UniformBlockPName(0x8A41)
    comptime GL_UNIFORM_BLOCK_ACTIVE_UNIFORMS = UniformBlockPName(0x8A42)
    comptime GL_UNIFORM_BLOCK_ACTIVE_UNIFORM_INDICES = UniformBlockPName(0x8A43)
    comptime GL_UNIFORM_BLOCK_REFERENCED_BY_VERTEX_SHADER = UniformBlockPName(0x8A44)
    comptime GL_UNIFORM_BLOCK_REFERENCED_BY_GEOMETRY_SHADER = UniformBlockPName(0x8A45)
    comptime GL_UNIFORM_BLOCK_REFERENCED_BY_FRAGMENT_SHADER = UniformBlockPName(0x8A46)
    comptime GL_UNIFORM_BLOCK_REFERENCED_BY_COMPUTE_SHADER = UniformBlockPName(0x90EC)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct UniformPName(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_UNIFORM_TYPE = UniformPName(0x8A37)
    comptime GL_UNIFORM_SIZE = UniformPName(0x8A38)
    comptime GL_UNIFORM_NAME_LENGTH = UniformPName(0x8A39)
    comptime GL_UNIFORM_BLOCK_INDEX = UniformPName(0x8A3A)
    comptime GL_UNIFORM_OFFSET = UniformPName(0x8A3B)
    comptime GL_UNIFORM_ARRAY_STRIDE = UniformPName(0x8A3C)
    comptime GL_UNIFORM_MATRIX_STRIDE = UniformPName(0x8A3D)
    comptime GL_UNIFORM_IS_ROW_MAJOR = UniformPName(0x8A3E)
    comptime GL_UNIFORM_ATOMIC_COUNTER_BUFFER_INDEX = UniformPName(0x92DA)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct UniformType(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_INT = UniformType(0x1404)
    comptime GL_UNSIGNED_INT = UniformType(0x1405)
    comptime GL_FLOAT = UniformType(0x1406)
    comptime GL_DOUBLE = UniformType(0x140A)
    comptime GL_FLOAT_VEC2 = UniformType(0x8B50)
    comptime GL_FLOAT_VEC3 = UniformType(0x8B51)
    comptime GL_FLOAT_VEC4 = UniformType(0x8B52)
    comptime GL_INT_VEC2 = UniformType(0x8B53)
    comptime GL_INT_VEC3 = UniformType(0x8B54)
    comptime GL_INT_VEC4 = UniformType(0x8B55)
    comptime GL_BOOL = UniformType(0x8B56)
    comptime GL_BOOL_VEC2 = UniformType(0x8B57)
    comptime GL_BOOL_VEC3 = UniformType(0x8B58)
    comptime GL_BOOL_VEC4 = UniformType(0x8B59)
    comptime GL_FLOAT_MAT2 = UniformType(0x8B5A)
    comptime GL_FLOAT_MAT3 = UniformType(0x8B5B)
    comptime GL_FLOAT_MAT4 = UniformType(0x8B5C)
    comptime GL_SAMPLER_1D = UniformType(0x8B5D)
    comptime GL_SAMPLER_2D = UniformType(0x8B5E)
    comptime GL_SAMPLER_3D = UniformType(0x8B5F)
    comptime GL_SAMPLER_CUBE = UniformType(0x8B60)
    comptime GL_SAMPLER_1D_SHADOW = UniformType(0x8B61)
    comptime GL_SAMPLER_2D_SHADOW = UniformType(0x8B62)
    comptime GL_SAMPLER_2D_RECT = UniformType(0x8B63)
    comptime GL_SAMPLER_2D_RECT_SHADOW = UniformType(0x8B64)
    comptime GL_FLOAT_MAT2x3 = UniformType(0x8B65)
    comptime GL_FLOAT_MAT2x4 = UniformType(0x8B66)
    comptime GL_FLOAT_MAT3x2 = UniformType(0x8B67)
    comptime GL_FLOAT_MAT3x4 = UniformType(0x8B68)
    comptime GL_FLOAT_MAT4x2 = UniformType(0x8B69)
    comptime GL_FLOAT_MAT4x3 = UniformType(0x8B6A)
    comptime GL_SAMPLER_1D_ARRAY = UniformType(0x8DC0)
    comptime GL_SAMPLER_2D_ARRAY = UniformType(0x8DC1)
    comptime GL_SAMPLER_BUFFER = UniformType(0x8DC2)
    comptime GL_SAMPLER_1D_ARRAY_SHADOW = UniformType(0x8DC3)
    comptime GL_SAMPLER_2D_ARRAY_SHADOW = UniformType(0x8DC4)
    comptime GL_SAMPLER_CUBE_SHADOW = UniformType(0x8DC5)
    comptime GL_UNSIGNED_INT_VEC2 = UniformType(0x8DC6)
    comptime GL_UNSIGNED_INT_VEC3 = UniformType(0x8DC7)
    comptime GL_UNSIGNED_INT_VEC4 = UniformType(0x8DC8)
    comptime GL_INT_SAMPLER_1D = UniformType(0x8DC9)
    comptime GL_INT_SAMPLER_2D = UniformType(0x8DCA)
    comptime GL_INT_SAMPLER_3D = UniformType(0x8DCB)
    comptime GL_INT_SAMPLER_CUBE = UniformType(0x8DCC)
    comptime GL_INT_SAMPLER_2D_RECT = UniformType(0x8DCD)
    comptime GL_INT_SAMPLER_1D_ARRAY = UniformType(0x8DCE)
    comptime GL_INT_SAMPLER_2D_ARRAY = UniformType(0x8DCF)
    comptime GL_INT_SAMPLER_BUFFER = UniformType(0x8DD0)
    comptime GL_UNSIGNED_INT_SAMPLER_1D = UniformType(0x8DD1)
    comptime GL_UNSIGNED_INT_SAMPLER_2D = UniformType(0x8DD2)
    comptime GL_UNSIGNED_INT_SAMPLER_3D = UniformType(0x8DD3)
    comptime GL_UNSIGNED_INT_SAMPLER_CUBE = UniformType(0x8DD4)
    comptime GL_UNSIGNED_INT_SAMPLER_2D_RECT = UniformType(0x8DD5)
    comptime GL_UNSIGNED_INT_SAMPLER_1D_ARRAY = UniformType(0x8DD6)
    comptime GL_UNSIGNED_INT_SAMPLER_2D_ARRAY = UniformType(0x8DD7)
    comptime GL_UNSIGNED_INT_SAMPLER_BUFFER = UniformType(0x8DD8)
    comptime GL_DOUBLE_MAT2 = UniformType(0x8F46)
    comptime GL_DOUBLE_MAT3 = UniformType(0x8F47)
    comptime GL_DOUBLE_MAT4 = UniformType(0x8F48)
    comptime GL_DOUBLE_MAT2x3 = UniformType(0x8F49)
    comptime GL_DOUBLE_MAT2x4 = UniformType(0x8F4A)
    comptime GL_DOUBLE_MAT3x2 = UniformType(0x8F4B)
    comptime GL_DOUBLE_MAT3x4 = UniformType(0x8F4C)
    comptime GL_DOUBLE_MAT4x2 = UniformType(0x8F4D)
    comptime GL_DOUBLE_MAT4x3 = UniformType(0x8F4E)
    comptime GL_DOUBLE_VEC2 = UniformType(0x8FFC)
    comptime GL_DOUBLE_VEC3 = UniformType(0x8FFD)
    comptime GL_DOUBLE_VEC4 = UniformType(0x8FFE)
    comptime GL_SAMPLER_CUBE_MAP_ARRAY = UniformType(0x900C)
    comptime GL_SAMPLER_CUBE_MAP_ARRAY_SHADOW = UniformType(0x900D)
    comptime GL_INT_SAMPLER_CUBE_MAP_ARRAY = UniformType(0x900E)
    comptime GL_UNSIGNED_INT_SAMPLER_CUBE_MAP_ARRAY = UniformType(0x900F)
    comptime GL_SAMPLER_2D_MULTISAMPLE = UniformType(0x9108)
    comptime GL_INT_SAMPLER_2D_MULTISAMPLE = UniformType(0x9109)
    comptime GL_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE = UniformType(0x910A)
    comptime GL_SAMPLER_2D_MULTISAMPLE_ARRAY = UniformType(0x910B)
    comptime GL_INT_SAMPLER_2D_MULTISAMPLE_ARRAY = UniformType(0x910C)
    comptime GL_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE_ARRAY = UniformType(0x910D)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct UseProgramStageMask(Intable, TrivialRegisterPassable):
    var value: GLbitfield

    comptime GL_VERTEX_SHADER_BIT = UseProgramStageMask(0x00000001)
    comptime GL_VERTEX_SHADER_BIT_EXT = UseProgramStageMask(0x00000001)
    comptime GL_FRAGMENT_SHADER_BIT = UseProgramStageMask(0x00000002)
    comptime GL_FRAGMENT_SHADER_BIT_EXT = UseProgramStageMask(0x00000002)
    comptime GL_GEOMETRY_SHADER_BIT = UseProgramStageMask(0x00000004)
    comptime GL_GEOMETRY_SHADER_BIT_EXT = UseProgramStageMask(0x00000004)
    comptime GL_GEOMETRY_SHADER_BIT_OES = UseProgramStageMask(0x00000004)
    comptime GL_TESS_CONTROL_SHADER_BIT = UseProgramStageMask(0x00000008)
    comptime GL_TESS_CONTROL_SHADER_BIT_EXT = UseProgramStageMask(0x00000008)
    comptime GL_TESS_CONTROL_SHADER_BIT_OES = UseProgramStageMask(0x00000008)
    comptime GL_TESS_EVALUATION_SHADER_BIT = UseProgramStageMask(0x00000010)
    comptime GL_TESS_EVALUATION_SHADER_BIT_EXT = UseProgramStageMask(0x00000010)
    comptime GL_TESS_EVALUATION_SHADER_BIT_OES = UseProgramStageMask(0x00000010)
    comptime GL_COMPUTE_SHADER_BIT = UseProgramStageMask(0x00000020)
    comptime GL_MESH_SHADER_BIT_NV = UseProgramStageMask(0x00000040)
    comptime GL_MESH_SHADER_BIT_EXT = UseProgramStageMask(0x00000040)
    comptime GL_TASK_SHADER_BIT_NV = UseProgramStageMask(0x00000080)
    comptime GL_TASK_SHADER_BIT_EXT = UseProgramStageMask(0x00000080)
    comptime GL_ALL_SHADER_BITS = UseProgramStageMask(0xFFFFFFFF)
    comptime GL_ALL_SHADER_BITS_EXT = UseProgramStageMask(0xFFFFFFFF)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)

    @always_inline
    def __or__(lhs, rhs: Self) -> Self:
        return Self(lhs.value | rhs.value)


@fieldwise_init
struct VertexArrayPName(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_VERTEX_ATTRIB_RELATIVE_OFFSET = VertexArrayPName(0x82D5)
    comptime GL_VERTEX_ATTRIB_ARRAY_ENABLED = VertexArrayPName(0x8622)
    comptime GL_VERTEX_ATTRIB_ARRAY_SIZE = VertexArrayPName(0x8623)
    comptime GL_VERTEX_ATTRIB_ARRAY_STRIDE = VertexArrayPName(0x8624)
    comptime GL_VERTEX_ATTRIB_ARRAY_TYPE = VertexArrayPName(0x8625)
    comptime GL_VERTEX_ATTRIB_ARRAY_LONG = VertexArrayPName(0x874E)
    comptime GL_VERTEX_ATTRIB_ARRAY_NORMALIZED = VertexArrayPName(0x886A)
    comptime GL_VERTEX_ATTRIB_ARRAY_INTEGER = VertexArrayPName(0x88FD)
    comptime GL_VERTEX_ATTRIB_ARRAY_DIVISOR = VertexArrayPName(0x88FE)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct VertexAttribEnum(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_VERTEX_ATTRIB_ARRAY_ENABLED = VertexAttribEnum(0x8622)
    comptime GL_VERTEX_ATTRIB_ARRAY_SIZE = VertexAttribEnum(0x8623)
    comptime GL_VERTEX_ATTRIB_ARRAY_STRIDE = VertexAttribEnum(0x8624)
    comptime GL_VERTEX_ATTRIB_ARRAY_TYPE = VertexAttribEnum(0x8625)
    comptime GL_CURRENT_VERTEX_ATTRIB = VertexAttribEnum(0x8626)
    comptime GL_VERTEX_ATTRIB_ARRAY_NORMALIZED = VertexAttribEnum(0x886A)
    comptime GL_VERTEX_ATTRIB_ARRAY_BUFFER_BINDING = VertexAttribEnum(0x889F)
    comptime GL_VERTEX_ATTRIB_ARRAY_INTEGER = VertexAttribEnum(0x88FD)
    comptime GL_VERTEX_ATTRIB_ARRAY_DIVISOR = VertexAttribEnum(0x88FE)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct VertexAttribIType(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_BYTE = VertexAttribIType(0x1400)
    comptime GL_UNSIGNED_BYTE = VertexAttribIType(0x1401)
    comptime GL_SHORT = VertexAttribIType(0x1402)
    comptime GL_UNSIGNED_SHORT = VertexAttribIType(0x1403)
    comptime GL_INT = VertexAttribIType(0x1404)
    comptime GL_UNSIGNED_INT = VertexAttribIType(0x1405)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct VertexAttribLType(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_DOUBLE = VertexAttribLType(0x140A)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct VertexAttribPointerPropertyARB(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_VERTEX_ATTRIB_ARRAY_POINTER = VertexAttribPointerPropertyARB(0x8645)
    comptime GL_VERTEX_ATTRIB_ARRAY_POINTER_ARB = VertexAttribPointerPropertyARB(0x8645)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct VertexAttribPointerType(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_BYTE = VertexAttribPointerType(0x1400)
    comptime GL_UNSIGNED_BYTE = VertexAttribPointerType(0x1401)
    comptime GL_SHORT = VertexAttribPointerType(0x1402)
    comptime GL_UNSIGNED_SHORT = VertexAttribPointerType(0x1403)
    comptime GL_INT = VertexAttribPointerType(0x1404)
    comptime GL_UNSIGNED_INT = VertexAttribPointerType(0x1405)
    comptime GL_FLOAT = VertexAttribPointerType(0x1406)
    comptime GL_DOUBLE = VertexAttribPointerType(0x140A)
    comptime GL_HALF_FLOAT = VertexAttribPointerType(0x140B)
    comptime GL_FIXED = VertexAttribPointerType(0x140C)
    comptime GL_INT64_ARB = VertexAttribPointerType(0x140E)
    comptime GL_INT64_NV = VertexAttribPointerType(0x140E)
    comptime GL_UNSIGNED_INT64_ARB = VertexAttribPointerType(0x140F)
    comptime GL_UNSIGNED_INT64_NV = VertexAttribPointerType(0x140F)
    comptime GL_UNSIGNED_INT_2_10_10_10_REV = VertexAttribPointerType(0x8368)
    comptime GL_UNSIGNED_INT_2_10_10_10_REV_EXT = VertexAttribPointerType(0x8368)
    comptime GL_UNSIGNED_INT_10F_11F_11F_REV = VertexAttribPointerType(0x8C3B)
    comptime GL_INT_2_10_10_10_REV = VertexAttribPointerType(0x8D9F)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct VertexAttribPropertyARB(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_VERTEX_ATTRIB_BINDING = VertexAttribPropertyARB(0x82D4)
    comptime GL_VERTEX_ATTRIB_RELATIVE_OFFSET = VertexAttribPropertyARB(0x82D5)
    comptime GL_VERTEX_ATTRIB_ARRAY_ENABLED = VertexAttribPropertyARB(0x8622)
    comptime GL_VERTEX_ATTRIB_ARRAY_SIZE = VertexAttribPropertyARB(0x8623)
    comptime GL_VERTEX_ATTRIB_ARRAY_STRIDE = VertexAttribPropertyARB(0x8624)
    comptime GL_VERTEX_ATTRIB_ARRAY_TYPE = VertexAttribPropertyARB(0x8625)
    comptime GL_CURRENT_VERTEX_ATTRIB = VertexAttribPropertyARB(0x8626)
    comptime GL_VERTEX_ATTRIB_ARRAY_LONG = VertexAttribPropertyARB(0x874E)
    comptime GL_VERTEX_ATTRIB_ARRAY_NORMALIZED = VertexAttribPropertyARB(0x886A)
    comptime GL_VERTEX_ATTRIB_ARRAY_BUFFER_BINDING = VertexAttribPropertyARB(0x889F)
    comptime GL_VERTEX_ATTRIB_ARRAY_INTEGER = VertexAttribPropertyARB(0x88FD)
    comptime GL_VERTEX_ATTRIB_ARRAY_INTEGER_EXT = VertexAttribPropertyARB(0x88FD)
    comptime GL_VERTEX_ATTRIB_ARRAY_DIVISOR = VertexAttribPropertyARB(0x88FE)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct VertexAttribType(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_BYTE = VertexAttribType(0x1400)
    comptime GL_UNSIGNED_BYTE = VertexAttribType(0x1401)
    comptime GL_SHORT = VertexAttribType(0x1402)
    comptime GL_UNSIGNED_SHORT = VertexAttribType(0x1403)
    comptime GL_INT = VertexAttribType(0x1404)
    comptime GL_UNSIGNED_INT = VertexAttribType(0x1405)
    comptime GL_FLOAT = VertexAttribType(0x1406)
    comptime GL_DOUBLE = VertexAttribType(0x140A)
    comptime GL_HALF_FLOAT = VertexAttribType(0x140B)
    comptime GL_FIXED = VertexAttribType(0x140C)
    comptime GL_UNSIGNED_INT_2_10_10_10_REV = VertexAttribType(0x8368)
    comptime GL_UNSIGNED_INT_2_10_10_10_REV_EXT = VertexAttribType(0x8368)
    comptime GL_UNSIGNED_INT_10F_11F_11F_REV = VertexAttribType(0x8C3B)
    comptime GL_INT_2_10_10_10_REV = VertexAttribType(0x8D9F)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct VertexPointerType(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_SHORT = VertexPointerType(0x1402)
    comptime GL_INT = VertexPointerType(0x1404)
    comptime GL_FLOAT = VertexPointerType(0x1406)
    comptime GL_DOUBLE = VertexPointerType(0x140A)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
struct VertexProvokingMode(Intable, TrivialRegisterPassable):
    var value: GLenum

    comptime GL_FIRST_VERTEX_CONVENTION = VertexProvokingMode(0x8E4D)
    comptime GL_LAST_VERTEX_CONVENTION = VertexProvokingMode(0x8E4E)

    @always_inline
    def __int__(self) -> Int:
        return Int(self.value)


# ========= COMMANDS =========

comptime LoadProc = def(var proc: String) raises -> def() -> None
comptime FuncPtr = ImmutOpaquePointer[ImmutExternalOrigin]


def _init_empty_table() -> Dict[String, FuncPtr]:
    return {}


comptime func_table = _Global["table", _init_empty_table]()


@always_inline
def load_fn_ptr(name: String, load: LoadProc) raises -> FuncPtr:
    var func = load(name)
    var addr = UnsafePointer(to=func).bitcast[FuncPtr]()[]
    if not addr:
        raise Error("Failed to load function " + name)
    return addr


@always_inline
def get_fn[fn_type: AnyTrivialRegType, name: StaticString]() raises -> fn_type:
    var ptr = func_table.get_or_create_ptr()[][name]
    return UnsafePointer(to=ptr).bitcast[fn_type]()[]


comptime glActiveShaderProgram = def(pipeline: GLuint, program: GLuint) thin
comptime glActiveTexture = def(texture: TextureUnit) thin
comptime glAttachShader = def(program: GLuint, shader: GLuint) thin
comptime glBeginConditionalRender = def(id: GLuint, mode: ConditionalRenderMode) thin
comptime glBeginQuery = def(target: QueryTarget, id: GLuint) thin
comptime glBeginQueryIndexed = def(target: QueryTarget, index: GLuint, id: GLuint) thin
comptime glBeginTransformFeedback = def(primitive_mode: PrimitiveType) thin
comptime glBindAttribLocation = def(program: GLuint, index: GLuint, name: Ptr[GLchar, ImmutAnyOrigin]) thin
comptime glBindBuffer = def(target: BufferTargetARB, buffer: GLuint) thin
comptime glBindBufferBase = def(target: BufferTargetARB, index: GLuint, buffer: GLuint) thin
comptime glBindBufferRange = def(target: BufferTargetARB, index: GLuint, buffer: GLuint, offset: GLintptr, size: GLsizeiptr) thin
comptime glBindBuffersBase = def(target: BufferTargetARB, first: GLuint, count: GLsizei, buffers: Ptr[GLuint, ImmutAnyOrigin]) thin
comptime glBindBuffersRange = def(target: BufferTargetARB, first: GLuint, count: GLsizei, buffers: Ptr[GLuint, ImmutAnyOrigin], offsets: Ptr[GLintptr, ImmutAnyOrigin], sizes: Ptr[GLsizeiptr, ImmutAnyOrigin]) thin
comptime glBindFragDataLocation = def(program: GLuint, color: GLuint, name: Ptr[GLchar, ImmutAnyOrigin]) thin
comptime glBindFragDataLocationIndexed = def(program: GLuint, color_number: GLuint, index: GLuint, name: Ptr[GLchar, ImmutAnyOrigin]) thin
comptime glBindFramebuffer = def(target: FramebufferTarget, framebuffer: GLuint) thin
comptime glBindImageTexture = def(unit: GLuint, texture: GLuint, level: GLint, layered: GLboolean, layer: GLint, access: BufferAccessARB, format: InternalFormat) thin
comptime glBindImageTextures = def(first: GLuint, count: GLsizei, textures: Ptr[GLuint, ImmutAnyOrigin]) thin
comptime glBindProgramPipeline = def(pipeline: GLuint) thin
comptime glBindRenderbuffer = def(target: RenderbufferTarget, renderbuffer: GLuint) thin
comptime glBindSampler = def(unit: GLuint, sampler: GLuint) thin
comptime glBindSamplers = def(first: GLuint, count: GLsizei, samplers: Ptr[GLuint, ImmutAnyOrigin]) thin
comptime glBindTexture = def(target: TextureTarget, texture: GLuint) thin
comptime glBindTextureUnit = def(unit: GLuint, texture: GLuint) thin
comptime glBindTextures = def(first: GLuint, count: GLsizei, textures: Ptr[GLuint, ImmutAnyOrigin]) thin
comptime glBindTransformFeedback = def(target: BindTransformFeedbackTarget, id: GLuint) thin
comptime glBindVertexArray = def(array: GLuint) thin
comptime glBindVertexBuffer = def(bindingindex: GLuint, buffer: GLuint, offset: GLintptr, stride: GLsizei) thin
comptime glBindVertexBuffers = def(first: GLuint, count: GLsizei, buffers: Ptr[GLuint, ImmutAnyOrigin], offsets: Ptr[GLintptr, ImmutAnyOrigin], strides: Ptr[GLsizei, ImmutAnyOrigin]) thin
comptime glBlendColor = def(red: GLfloat, green: GLfloat, blue: GLfloat, alpha: GLfloat) thin
comptime glBlendEquation = def(mode: BlendEquationModeEXT) thin
comptime glBlendEquationSeparate = def(mode_rgb: BlendEquationModeEXT, mode_alpha: BlendEquationModeEXT) thin
comptime glBlendEquationSeparatei = def(buf: GLuint, mode_rgb: BlendEquationModeEXT, mode_alpha: BlendEquationModeEXT) thin
comptime glBlendEquationi = def(buf: GLuint, mode: BlendEquationModeEXT) thin
comptime glBlendFunc = def(sfactor: BlendingFactor, dfactor: BlendingFactor) thin
comptime glBlendFuncSeparate = def(sfactor_rgb: BlendingFactor, dfactor_rgb: BlendingFactor, sfactor_alpha: BlendingFactor, dfactor_alpha: BlendingFactor) thin
comptime glBlendFuncSeparatei = def(buf: GLuint, src_rgb: BlendingFactor, dst_rgb: BlendingFactor, src_alpha: BlendingFactor, dst_alpha: BlendingFactor) thin
comptime glBlendFunci = def(buf: GLuint, src: BlendingFactor, dst: BlendingFactor) thin
comptime glBlitFramebuffer = def(src_x0: GLint, src_y0: GLint, src_x1: GLint, src_y1: GLint, dst_x0: GLint, dst_y0: GLint, dst_x1: GLint, dst_y1: GLint, mask: ClearBufferMask, filter: BlitFramebufferFilter) thin
comptime glBlitNamedFramebuffer = def(read_framebuffer: GLuint, draw_framebuffer: GLuint, src_x0: GLint, src_y0: GLint, src_x1: GLint, src_y1: GLint, dst_x0: GLint, dst_y0: GLint, dst_x1: GLint, dst_y1: GLint, mask: ClearBufferMask, filter: BlitFramebufferFilter) thin
comptime glBufferData = def(target: BufferTargetARB, size: GLsizeiptr, data: Ptr[NoneType, ImmutAnyOrigin], usage: BufferUsageARB) thin
comptime glBufferStorage = def(target: BufferStorageTarget, size: GLsizeiptr, data: Ptr[NoneType, ImmutAnyOrigin], flags: BufferStorageMask) thin
comptime glBufferSubData = def(target: BufferTargetARB, offset: GLintptr, size: GLsizeiptr, data: Ptr[NoneType, ImmutAnyOrigin]) thin
comptime glCheckFramebufferStatus = def(target: FramebufferTarget) thin -> FramebufferStatus
comptime glCheckNamedFramebufferStatus = def(framebuffer: GLuint, target: FramebufferTarget) thin -> FramebufferStatus
comptime glClampColor = def(target: ClampColorTargetARB, clamp: ClampColorModeARB) thin
comptime glClear = def(mask: ClearBufferMask) thin
comptime glClearBufferData = def(target: BufferStorageTarget, internalformat: SizedInternalFormat, format: PixelFormat, type: PixelType, data: Ptr[NoneType, ImmutAnyOrigin]) thin
comptime glClearBufferSubData = def(target: BufferTargetARB, internalformat: SizedInternalFormat, offset: GLintptr, size: GLsizeiptr, format: PixelFormat, type: PixelType, data: Ptr[NoneType, ImmutAnyOrigin]) thin
comptime glClearBufferfi = def(buffer: Buffer, drawbuffer: GLint, depth: GLfloat, stencil: GLint) thin
comptime glClearBufferfv = def(buffer: Buffer, drawbuffer: GLint, value: Ptr[GLfloat, ImmutAnyOrigin]) thin
comptime glClearBufferiv = def(buffer: Buffer, drawbuffer: GLint, value: Ptr[GLint, ImmutAnyOrigin]) thin
comptime glClearBufferuiv = def(buffer: Buffer, drawbuffer: GLint, value: Ptr[GLuint, ImmutAnyOrigin]) thin
comptime glClearColor = def(red: GLfloat, green: GLfloat, blue: GLfloat, alpha: GLfloat) thin
comptime glClearDepth = def(depth: GLdouble) thin
comptime glClearDepthf = def(d: GLfloat) thin
comptime glClearNamedBufferData = def(buffer: GLuint, internalformat: SizedInternalFormat, format: PixelFormat, type: PixelType, data: Ptr[NoneType, ImmutAnyOrigin]) thin
comptime glClearNamedBufferSubData = def(buffer: GLuint, internalformat: SizedInternalFormat, offset: GLintptr, size: GLsizeiptr, format: PixelFormat, type: PixelType, data: Ptr[NoneType, ImmutAnyOrigin]) thin
comptime glClearNamedFramebufferfi = def(framebuffer: GLuint, buffer: Buffer, drawbuffer: GLint, depth: GLfloat, stencil: GLint) thin
comptime glClearNamedFramebufferfv = def(framebuffer: GLuint, buffer: Buffer, drawbuffer: GLint, value: Ptr[GLfloat, ImmutAnyOrigin]) thin
comptime glClearNamedFramebufferiv = def(framebuffer: GLuint, buffer: Buffer, drawbuffer: GLint, value: Ptr[GLint, ImmutAnyOrigin]) thin
comptime glClearNamedFramebufferuiv = def(framebuffer: GLuint, buffer: Buffer, drawbuffer: GLint, value: Ptr[GLuint, ImmutAnyOrigin]) thin
comptime glClearStencil = def(s: GLint) thin
comptime glClearTexImage = def(texture: GLuint, level: GLint, format: PixelFormat, type: PixelType, data: Ptr[NoneType, ImmutAnyOrigin]) thin
comptime glClearTexSubImage = def(texture: GLuint, level: GLint, xoffset: GLint, yoffset: GLint, zoffset: GLint, width: GLsizei, height: GLsizei, depth: GLsizei, format: PixelFormat, type: PixelType, data: Ptr[NoneType, ImmutAnyOrigin]) thin
comptime glClientWaitSync = def(sync: GLsync, flags: SyncObjectMask, timeout: GLuint64) thin -> SyncStatus
comptime glClipControl = def(origin: ClipControlOrigin, depth: ClipControlDepth) thin
comptime glColorMask = def(red: GLboolean, green: GLboolean, blue: GLboolean, alpha: GLboolean) thin
comptime glColorMaski = def(index: GLuint, r: GLboolean, g: GLboolean, b: GLboolean, a: GLboolean) thin
comptime glColorP3ui = def(type: ColorPointerType, color: GLuint) thin
comptime glColorP3uiv = def(type: ColorPointerType, color: Ptr[GLuint, ImmutAnyOrigin]) thin
comptime glColorP4ui = def(type: ColorPointerType, color: GLuint) thin
comptime glColorP4uiv = def(type: ColorPointerType, color: Ptr[GLuint, ImmutAnyOrigin]) thin
comptime glCompileShader = def(shader: GLuint) thin
comptime glCompressedTexImage1D = def(target: TextureTarget, level: GLint, internalformat: InternalFormat, width: GLsizei, border: GLint, image_size: GLsizei, data: Ptr[NoneType, ImmutAnyOrigin]) thin
comptime glCompressedTexImage2D = def(target: TextureTarget, level: GLint, internalformat: InternalFormat, width: GLsizei, height: GLsizei, border: GLint, image_size: GLsizei, data: Ptr[NoneType, ImmutAnyOrigin]) thin
comptime glCompressedTexImage3D = def(target: TextureTarget, level: GLint, internalformat: InternalFormat, width: GLsizei, height: GLsizei, depth: GLsizei, border: GLint, image_size: GLsizei, data: Ptr[NoneType, ImmutAnyOrigin]) thin
comptime glCompressedTexSubImage1D = def(target: TextureTarget, level: GLint, xoffset: GLint, width: GLsizei, format: InternalFormat, image_size: GLsizei, data: Ptr[NoneType, ImmutAnyOrigin]) thin
comptime glCompressedTexSubImage2D = def(target: TextureTarget, level: GLint, xoffset: GLint, yoffset: GLint, width: GLsizei, height: GLsizei, format: InternalFormat, image_size: GLsizei, data: Ptr[NoneType, ImmutAnyOrigin]) thin
comptime glCompressedTexSubImage3D = def(target: TextureTarget, level: GLint, xoffset: GLint, yoffset: GLint, zoffset: GLint, width: GLsizei, height: GLsizei, depth: GLsizei, format: InternalFormat, image_size: GLsizei, data: Ptr[NoneType, ImmutAnyOrigin]) thin
comptime glCompressedTextureSubImage1D = def(texture: GLuint, level: GLint, xoffset: GLint, width: GLsizei, format: InternalFormat, image_size: GLsizei, data: Ptr[NoneType, ImmutAnyOrigin]) thin
comptime glCompressedTextureSubImage2D = def(texture: GLuint, level: GLint, xoffset: GLint, yoffset: GLint, width: GLsizei, height: GLsizei, format: InternalFormat, image_size: GLsizei, data: Ptr[NoneType, ImmutAnyOrigin]) thin
comptime glCompressedTextureSubImage3D = def(texture: GLuint, level: GLint, xoffset: GLint, yoffset: GLint, zoffset: GLint, width: GLsizei, height: GLsizei, depth: GLsizei, format: InternalFormat, image_size: GLsizei, data: Ptr[NoneType, ImmutAnyOrigin]) thin
comptime glCopyBufferSubData = def(read_target: CopyBufferSubDataTarget, write_target: CopyBufferSubDataTarget, read_offset: GLintptr, write_offset: GLintptr, size: GLsizeiptr) thin
comptime glCopyImageSubData = def(src_name: GLuint, src_target: CopyImageSubDataTarget, src_level: GLint, src_x: GLint, src_y: GLint, src_z: GLint, dst_name: GLuint, dst_target: CopyImageSubDataTarget, dst_level: GLint, dst_x: GLint, dst_y: GLint, dst_z: GLint, src_width: GLsizei, src_height: GLsizei, src_depth: GLsizei) thin
comptime glCopyNamedBufferSubData = def(read_buffer: GLuint, write_buffer: GLuint, read_offset: GLintptr, write_offset: GLintptr, size: GLsizeiptr) thin
comptime glCopyTexImage1D = def(target: TextureTarget, level: GLint, internalformat: InternalFormat, x: GLint, y: GLint, width: GLsizei, border: GLint) thin
comptime glCopyTexImage2D = def(target: TextureTarget, level: GLint, internalformat: InternalFormat, x: GLint, y: GLint, width: GLsizei, height: GLsizei, border: GLint) thin
comptime glCopyTexSubImage1D = def(target: TextureTarget, level: GLint, xoffset: GLint, x: GLint, y: GLint, width: GLsizei) thin
comptime glCopyTexSubImage2D = def(target: TextureTarget, level: GLint, xoffset: GLint, yoffset: GLint, x: GLint, y: GLint, width: GLsizei, height: GLsizei) thin
comptime glCopyTexSubImage3D = def(target: TextureTarget, level: GLint, xoffset: GLint, yoffset: GLint, zoffset: GLint, x: GLint, y: GLint, width: GLsizei, height: GLsizei) thin
comptime glCopyTextureSubImage1D = def(texture: GLuint, level: GLint, xoffset: GLint, x: GLint, y: GLint, width: GLsizei) thin
comptime glCopyTextureSubImage2D = def(texture: GLuint, level: GLint, xoffset: GLint, yoffset: GLint, x: GLint, y: GLint, width: GLsizei, height: GLsizei) thin
comptime glCopyTextureSubImage3D = def(texture: GLuint, level: GLint, xoffset: GLint, yoffset: GLint, zoffset: GLint, x: GLint, y: GLint, width: GLsizei, height: GLsizei) thin
comptime glCreateBuffers = def(n: GLsizei, buffers: Ptr[GLuint, MutAnyOrigin]) thin
comptime glCreateFramebuffers = def(n: GLsizei, framebuffers: Ptr[GLuint, MutAnyOrigin]) thin
comptime glCreateProgram = def() thin -> GLuint
comptime glCreateProgramPipelines = def(n: GLsizei, pipelines: Ptr[GLuint, MutAnyOrigin]) thin
comptime glCreateQueries = def(target: QueryTarget, n: GLsizei, ids: Ptr[GLuint, MutAnyOrigin]) thin
comptime glCreateRenderbuffers = def(n: GLsizei, renderbuffers: Ptr[GLuint, MutAnyOrigin]) thin
comptime glCreateSamplers = def(n: GLsizei, samplers: Ptr[GLuint, MutAnyOrigin]) thin
comptime glCreateShader = def(type: ShaderType) thin -> GLuint
comptime glCreateShaderProgramv = def(type: ShaderType, count: GLsizei, strings: Ptr[Ptr[GLchar, ImmutAnyOrigin], ImmutAnyOrigin]) thin -> GLuint
comptime glCreateTextures = def(target: TextureTarget, n: GLsizei, textures: Ptr[GLuint, MutAnyOrigin]) thin
comptime glCreateTransformFeedbacks = def(n: GLsizei, ids: Ptr[GLuint, MutAnyOrigin]) thin
comptime glCreateVertexArrays = def(n: GLsizei, arrays: Ptr[GLuint, MutAnyOrigin]) thin
comptime glCullFace = def(mode: TriangleFace) thin
comptime glDebugMessageCallback = def(callback: GLDEBUGPROC, user_param: Ptr[NoneType, ImmutAnyOrigin]) thin
comptime glDebugMessageControl = def(source: DebugSource, type: DebugType, severity: DebugSeverity, count: GLsizei, ids: Ptr[GLuint, ImmutAnyOrigin], enabled: GLboolean) thin
comptime glDebugMessageInsert = def(source: DebugSource, type: DebugType, id: GLuint, severity: DebugSeverity, length: GLsizei, buf: Ptr[GLchar, ImmutAnyOrigin]) thin
comptime glDeleteBuffers = def(n: GLsizei, buffers: Ptr[GLuint, ImmutAnyOrigin]) thin
comptime glDeleteFramebuffers = def(n: GLsizei, framebuffers: Ptr[GLuint, ImmutAnyOrigin]) thin
comptime glDeleteProgram = def(program: GLuint) thin
comptime glDeleteProgramPipelines = def(n: GLsizei, pipelines: Ptr[GLuint, ImmutAnyOrigin]) thin
comptime glDeleteQueries = def(n: GLsizei, ids: Ptr[GLuint, ImmutAnyOrigin]) thin
comptime glDeleteRenderbuffers = def(n: GLsizei, renderbuffers: Ptr[GLuint, ImmutAnyOrigin]) thin
comptime glDeleteSamplers = def(count: GLsizei, samplers: Ptr[GLuint, ImmutAnyOrigin]) thin
comptime glDeleteShader = def(shader: GLuint) thin
comptime glDeleteSync = def(sync: GLsync) thin
comptime glDeleteTextures = def(n: GLsizei, textures: Ptr[GLuint, ImmutAnyOrigin]) thin
comptime glDeleteTransformFeedbacks = def(n: GLsizei, ids: Ptr[GLuint, ImmutAnyOrigin]) thin
comptime glDeleteVertexArrays = def(n: GLsizei, arrays: Ptr[GLuint, ImmutAnyOrigin]) thin
comptime glDepthFunc = def(func: DepthFunction) thin
comptime glDepthMask = def(flag: GLboolean) thin
comptime glDepthRange = def(n: GLdouble, f: GLdouble) thin
comptime glDepthRangeArrayv = def(first: GLuint, count: GLsizei, v: Ptr[GLdouble, ImmutAnyOrigin]) thin
comptime glDepthRangeIndexed = def(index: GLuint, n: GLdouble, f: GLdouble) thin
comptime glDepthRangef = def(n: GLfloat, f: GLfloat) thin
comptime glDetachShader = def(program: GLuint, shader: GLuint) thin
comptime glDisable = def(cap: EnableCap) thin
comptime glDisableVertexArrayAttrib = def(vaobj: GLuint, index: GLuint) thin
comptime glDisableVertexAttribArray = def(index: GLuint) thin
comptime glDisablei = def(target: EnableCap, index: GLuint) thin
comptime glDispatchCompute = def(num_groups_x: GLuint, num_groups_y: GLuint, num_groups_z: GLuint) thin
comptime glDispatchComputeIndirect = def(indirect: GLintptr) thin
comptime glDrawArrays = def(mode: PrimitiveType, first: GLint, count: GLsizei) thin
comptime glDrawArraysIndirect = def(mode: PrimitiveType, indirect: Ptr[NoneType, ImmutAnyOrigin]) thin
comptime glDrawArraysInstanced = def(mode: PrimitiveType, first: GLint, count: GLsizei, instancecount: GLsizei) thin
comptime glDrawArraysInstancedBaseInstance = def(mode: PrimitiveType, first: GLint, count: GLsizei, instancecount: GLsizei, baseinstance: GLuint) thin
comptime glDrawBuffer = def(buf: DrawBufferMode) thin
comptime glDrawBuffers = def(n: GLsizei, bufs: Ptr[DrawBufferMode, ImmutAnyOrigin]) thin
comptime glDrawElements = def(mode: PrimitiveType, count: GLsizei, type: DrawElementsType, indices: Ptr[NoneType, ImmutAnyOrigin]) thin
comptime glDrawElementsBaseVertex = def(mode: PrimitiveType, count: GLsizei, type: DrawElementsType, indices: Ptr[NoneType, ImmutAnyOrigin], basevertex: GLint) thin
comptime glDrawElementsIndirect = def(mode: PrimitiveType, type: DrawElementsType, indirect: Ptr[NoneType, ImmutAnyOrigin]) thin
comptime glDrawElementsInstanced = def(mode: PrimitiveType, count: GLsizei, type: DrawElementsType, indices: Ptr[NoneType, ImmutAnyOrigin], instancecount: GLsizei) thin
comptime glDrawElementsInstancedBaseInstance = def(mode: PrimitiveType, count: GLsizei, type: DrawElementsType, indices: Ptr[NoneType, ImmutAnyOrigin], instancecount: GLsizei, baseinstance: GLuint) thin
comptime glDrawElementsInstancedBaseVertex = def(mode: PrimitiveType, count: GLsizei, type: DrawElementsType, indices: Ptr[NoneType, ImmutAnyOrigin], instancecount: GLsizei, basevertex: GLint) thin
comptime glDrawElementsInstancedBaseVertexBaseInstance = def(mode: PrimitiveType, count: GLsizei, type: DrawElementsType, indices: Ptr[NoneType, ImmutAnyOrigin], instancecount: GLsizei, basevertex: GLint, baseinstance: GLuint) thin
comptime glDrawRangeElements = def(mode: PrimitiveType, start: GLuint, end: GLuint, count: GLsizei, type: DrawElementsType, indices: Ptr[NoneType, ImmutAnyOrigin]) thin
comptime glDrawRangeElementsBaseVertex = def(mode: PrimitiveType, start: GLuint, end: GLuint, count: GLsizei, type: DrawElementsType, indices: Ptr[NoneType, ImmutAnyOrigin], basevertex: GLint) thin
comptime glDrawTransformFeedback = def(mode: PrimitiveType, id: GLuint) thin
comptime glDrawTransformFeedbackInstanced = def(mode: PrimitiveType, id: GLuint, instancecount: GLsizei) thin
comptime glDrawTransformFeedbackStream = def(mode: PrimitiveType, id: GLuint, stream: GLuint) thin
comptime glDrawTransformFeedbackStreamInstanced = def(mode: PrimitiveType, id: GLuint, stream: GLuint, instancecount: GLsizei) thin
comptime glEnable = def(cap: EnableCap) thin
comptime glEnableVertexArrayAttrib = def(vaobj: GLuint, index: GLuint) thin
comptime glEnableVertexAttribArray = def(index: GLuint) thin
comptime glEnablei = def(target: EnableCap, index: GLuint) thin
comptime glEndConditionalRender = def() thin
comptime glEndQuery = def(target: QueryTarget) thin
comptime glEndQueryIndexed = def(target: QueryTarget, index: GLuint) thin
comptime glEndTransformFeedback = def() thin
comptime glFenceSync = def(condition: SyncCondition, flags: SyncBehaviorFlags) thin -> GLsync
comptime glFinish = def() thin
comptime glFlush = def() thin
comptime glFlushMappedBufferRange = def(target: BufferTargetARB, offset: GLintptr, length: GLsizeiptr) thin
comptime glFlushMappedNamedBufferRange = def(buffer: GLuint, offset: GLintptr, length: GLsizeiptr) thin
comptime glFramebufferParameteri = def(target: FramebufferTarget, pname: FramebufferParameterName, param: GLint) thin
comptime glFramebufferRenderbuffer = def(target: FramebufferTarget, attachment: FramebufferAttachment, renderbuffertarget: RenderbufferTarget, renderbuffer: GLuint) thin
comptime glFramebufferTexture = def(target: FramebufferTarget, attachment: FramebufferAttachment, texture: GLuint, level: GLint) thin
comptime glFramebufferTexture1D = def(target: FramebufferTarget, attachment: FramebufferAttachment, textarget: TextureTarget, texture: GLuint, level: GLint) thin
comptime glFramebufferTexture2D = def(target: FramebufferTarget, attachment: FramebufferAttachment, textarget: TextureTarget, texture: GLuint, level: GLint) thin
comptime glFramebufferTexture3D = def(target: FramebufferTarget, attachment: FramebufferAttachment, textarget: TextureTarget, texture: GLuint, level: GLint, zoffset: GLint) thin
comptime glFramebufferTextureLayer = def(target: FramebufferTarget, attachment: FramebufferAttachment, texture: GLuint, level: GLint, layer: GLint) thin
comptime glFrontFace = def(mode: FrontFaceDirection) thin
comptime glGenBuffers = def(n: GLsizei, buffers: Ptr[GLuint, MutAnyOrigin]) thin
comptime glGenFramebuffers = def(n: GLsizei, framebuffers: Ptr[GLuint, MutAnyOrigin]) thin
comptime glGenProgramPipelines = def(n: GLsizei, pipelines: Ptr[GLuint, MutAnyOrigin]) thin
comptime glGenQueries = def(n: GLsizei, ids: Ptr[GLuint, MutAnyOrigin]) thin
comptime glGenRenderbuffers = def(n: GLsizei, renderbuffers: Ptr[GLuint, MutAnyOrigin]) thin
comptime glGenSamplers = def(count: GLsizei, samplers: Ptr[GLuint, MutAnyOrigin]) thin
comptime glGenTextures = def(n: GLsizei, textures: Ptr[GLuint, MutAnyOrigin]) thin
comptime glGenTransformFeedbacks = def(n: GLsizei, ids: Ptr[GLuint, MutAnyOrigin]) thin
comptime glGenVertexArrays = def(n: GLsizei, arrays: Ptr[GLuint, MutAnyOrigin]) thin
comptime glGenerateMipmap = def(target: TextureTarget) thin
comptime glGenerateTextureMipmap = def(texture: GLuint) thin
comptime glGetActiveAtomicCounterBufferiv = def(program: GLuint, buffer_index: GLuint, pname: AtomicCounterBufferPName, params: Ptr[GLint, MutAnyOrigin]) thin
comptime glGetActiveAttrib = def(program: GLuint, index: GLuint, buf_size: GLsizei, length: Ptr[GLsizei, MutAnyOrigin], size: Ptr[GLint, MutAnyOrigin], type: Ptr[AttributeType, MutAnyOrigin], name: Ptr[GLchar, ImmutAnyOrigin]) thin
comptime glGetActiveSubroutineName = def(program: GLuint, shadertype: ShaderType, index: GLuint, buf_size: GLsizei, length: Ptr[GLsizei, MutAnyOrigin], name: Ptr[GLchar, ImmutAnyOrigin]) thin
comptime glGetActiveSubroutineUniformName = def(program: GLuint, shadertype: ShaderType, index: GLuint, buf_size: GLsizei, length: Ptr[GLsizei, MutAnyOrigin], name: Ptr[GLchar, ImmutAnyOrigin]) thin
comptime glGetActiveSubroutineUniformiv = def(program: GLuint, shadertype: ShaderType, index: GLuint, pname: SubroutineParameterName, values: Ptr[GLint, MutAnyOrigin]) thin
comptime glGetActiveUniform = def(program: GLuint, index: GLuint, buf_size: GLsizei, length: Ptr[GLsizei, MutAnyOrigin], size: Ptr[GLint, MutAnyOrigin], type: Ptr[UniformType, MutAnyOrigin], name: Ptr[GLchar, ImmutAnyOrigin]) thin
comptime glGetActiveUniformBlockName = def(program: GLuint, uniform_block_index: GLuint, buf_size: GLsizei, length: Ptr[GLsizei, MutAnyOrigin], uniform_block_name: Ptr[GLchar, ImmutAnyOrigin]) thin
comptime glGetActiveUniformBlockiv = def(program: GLuint, uniform_block_index: GLuint, pname: UniformBlockPName, params: Ptr[GLint, MutAnyOrigin]) thin
comptime glGetActiveUniformName = def(program: GLuint, uniform_index: GLuint, buf_size: GLsizei, length: Ptr[GLsizei, MutAnyOrigin], uniform_name: Ptr[GLchar, ImmutAnyOrigin]) thin
comptime glGetActiveUniformsiv = def(program: GLuint, uniform_count: GLsizei, uniform_indices: Ptr[GLuint, ImmutAnyOrigin], pname: UniformPName, params: Ptr[GLint, MutAnyOrigin]) thin
comptime glGetAttachedShaders = def(program: GLuint, max_count: GLsizei, count: Ptr[GLsizei, MutAnyOrigin], shaders: Ptr[GLuint, MutAnyOrigin]) thin
comptime glGetAttribLocation = def(program: GLuint, name: Ptr[GLchar, ImmutAnyOrigin]) thin -> GLint
comptime glGetBooleani_v = def(target: BufferTargetARB, index: GLuint, data: Ptr[GLboolean, MutAnyOrigin]) thin
comptime glGetBooleanv = def(pname: GetPName, data: Ptr[GLboolean, MutAnyOrigin]) thin
comptime glGetBufferParameteri64v = def(target: BufferTargetARB, pname: BufferPNameARB, params: Ptr[GLint64, MutAnyOrigin]) thin
comptime glGetBufferParameteriv = def(target: BufferTargetARB, pname: BufferPNameARB, params: Ptr[GLint, MutAnyOrigin]) thin
comptime glGetBufferPointerv = def(target: BufferTargetARB, pname: BufferPointerNameARB, params: Ptr[Ptr[NoneType, MutAnyOrigin], MutAnyOrigin]) thin
comptime glGetBufferSubData = def(target: BufferTargetARB, offset: GLintptr, size: GLsizeiptr, data: Ptr[NoneType, MutAnyOrigin]) thin
comptime glGetCompressedTexImage = def(target: TextureTarget, level: GLint, img: Ptr[NoneType, MutAnyOrigin]) thin
comptime glGetCompressedTextureImage = def(texture: GLuint, level: GLint, buf_size: GLsizei, pixels: Ptr[NoneType, MutAnyOrigin]) thin
comptime glGetCompressedTextureSubImage = def(texture: GLuint, level: GLint, xoffset: GLint, yoffset: GLint, zoffset: GLint, width: GLsizei, height: GLsizei, depth: GLsizei, buf_size: GLsizei, pixels: Ptr[NoneType, MutAnyOrigin]) thin
comptime glGetDebugMessageLog = def(count: GLuint, buf_size: GLsizei, sources: Ptr[DebugSource, MutAnyOrigin], types: Ptr[DebugType, MutAnyOrigin], ids: Ptr[GLuint, MutAnyOrigin], severities: Ptr[DebugSeverity, MutAnyOrigin], lengths: Ptr[GLsizei, MutAnyOrigin], message_log: Ptr[GLchar, ImmutAnyOrigin]) thin -> GLuint
comptime glGetDoublei_v = def(target: GetPName, index: GLuint, data: Ptr[GLdouble, MutAnyOrigin]) thin
comptime glGetDoublev = def(pname: GetPName, data: Ptr[GLdouble, MutAnyOrigin]) thin
comptime glGetError = def() thin -> ErrorCode
comptime glGetFloati_v = def(target: GetPName, index: GLuint, data: Ptr[GLfloat, MutAnyOrigin]) thin
comptime glGetFloatv = def(pname: GetPName, data: Ptr[GLfloat, MutAnyOrigin]) thin
comptime glGetFragDataIndex = def(program: GLuint, name: Ptr[GLchar, ImmutAnyOrigin]) thin -> GLint
comptime glGetFragDataLocation = def(program: GLuint, name: Ptr[GLchar, ImmutAnyOrigin]) thin -> GLint
comptime glGetFramebufferAttachmentParameteriv = def(target: FramebufferTarget, attachment: FramebufferAttachment, pname: FramebufferAttachmentParameterName, params: Ptr[GLint, MutAnyOrigin]) thin
comptime glGetFramebufferParameteriv = def(target: FramebufferTarget, pname: FramebufferAttachmentParameterName, params: Ptr[GLint, MutAnyOrigin]) thin
comptime glGetGraphicsResetStatus = def() thin -> GraphicsResetStatus
comptime glGetInteger64i_v = def(target: GetPName, index: GLuint, data: Ptr[GLint64, MutAnyOrigin]) thin
comptime glGetInteger64v = def(pname: GetPName, data: Ptr[GLint64, MutAnyOrigin]) thin
comptime glGetIntegeri_v = def(target: GetPName, index: GLuint, data: Ptr[GLint, MutAnyOrigin]) thin
comptime glGetIntegerv = def(pname: GetPName, data: Ptr[GLint, MutAnyOrigin]) thin
comptime glGetInternalformati64v = def(target: TextureTarget, internalformat: InternalFormat, pname: InternalFormatPName, count: GLsizei, params: Ptr[GLint64, MutAnyOrigin]) thin
comptime glGetInternalformativ = def(target: TextureTarget, internalformat: InternalFormat, pname: InternalFormatPName, count: GLsizei, params: Ptr[GLint, MutAnyOrigin]) thin
comptime glGetMultisamplefv = def(pname: GetMultisamplePNameNV, index: GLuint, val: Ptr[GLfloat, MutAnyOrigin]) thin
comptime glGetNamedBufferParameteri64v = def(buffer: GLuint, pname: BufferPNameARB, params: Ptr[GLint64, MutAnyOrigin]) thin
comptime glGetNamedBufferParameteriv = def(buffer: GLuint, pname: BufferPNameARB, params: Ptr[GLint, MutAnyOrigin]) thin
comptime glGetNamedBufferPointerv = def(buffer: GLuint, pname: BufferPointerNameARB, params: Ptr[Ptr[NoneType, MutAnyOrigin], MutAnyOrigin]) thin
comptime glGetNamedBufferSubData = def(buffer: GLuint, offset: GLintptr, size: GLsizeiptr, data: Ptr[NoneType, MutAnyOrigin]) thin
comptime glGetNamedFramebufferAttachmentParameteriv = def(framebuffer: GLuint, attachment: FramebufferAttachment, pname: FramebufferAttachmentParameterName, params: Ptr[GLint, MutAnyOrigin]) thin
comptime glGetNamedFramebufferParameteriv = def(framebuffer: GLuint, pname: GetFramebufferParameter, param: Ptr[GLint, MutAnyOrigin]) thin
comptime glGetNamedRenderbufferParameteriv = def(renderbuffer: GLuint, pname: RenderbufferParameterName, params: Ptr[GLint, MutAnyOrigin]) thin
comptime glGetObjectLabel = def(identifier: ObjectIdentifier, name: GLuint, buf_size: GLsizei, length: Ptr[GLsizei, MutAnyOrigin], label: Ptr[GLchar, ImmutAnyOrigin]) thin
comptime glGetObjectPtrLabel = def(ptr: Ptr[NoneType, ImmutAnyOrigin], buf_size: GLsizei, length: Ptr[GLsizei, MutAnyOrigin], label: Ptr[GLchar, ImmutAnyOrigin]) thin
comptime glGetProgramBinary = def(program: GLuint, buf_size: GLsizei, length: Ptr[GLsizei, MutAnyOrigin], binary_format: Ptr[GLenum, MutAnyOrigin], binary: Ptr[NoneType, MutAnyOrigin]) thin
comptime glGetProgramInfoLog = def(program: GLuint, buf_size: GLsizei, length: Ptr[GLsizei, MutAnyOrigin], info_log: Ptr[GLchar, ImmutAnyOrigin]) thin
comptime glGetProgramInterfaceiv = def(program: GLuint, program_interface: ProgramInterface, pname: ProgramInterfacePName, params: Ptr[GLint, MutAnyOrigin]) thin
comptime glGetProgramPipelineInfoLog = def(pipeline: GLuint, buf_size: GLsizei, length: Ptr[GLsizei, MutAnyOrigin], info_log: Ptr[GLchar, ImmutAnyOrigin]) thin
comptime glGetProgramPipelineiv = def(pipeline: GLuint, pname: PipelineParameterName, params: Ptr[GLint, MutAnyOrigin]) thin
comptime glGetProgramResourceIndex = def(program: GLuint, program_interface: ProgramInterface, name: Ptr[GLchar, ImmutAnyOrigin]) thin -> GLuint
comptime glGetProgramResourceLocation = def(program: GLuint, program_interface: ProgramInterface, name: Ptr[GLchar, ImmutAnyOrigin]) thin -> GLint
comptime glGetProgramResourceLocationIndex = def(program: GLuint, program_interface: ProgramInterface, name: Ptr[GLchar, ImmutAnyOrigin]) thin -> GLint
comptime glGetProgramResourceName = def(program: GLuint, program_interface: ProgramInterface, index: GLuint, buf_size: GLsizei, length: Ptr[GLsizei, MutAnyOrigin], name: Ptr[GLchar, ImmutAnyOrigin]) thin
comptime glGetProgramResourceiv = def(program: GLuint, program_interface: ProgramInterface, index: GLuint, prop_count: GLsizei, props: Ptr[ProgramResourceProperty, ImmutAnyOrigin], count: GLsizei, length: Ptr[GLsizei, MutAnyOrigin], params: Ptr[GLint, MutAnyOrigin]) thin
comptime glGetProgramStageiv = def(program: GLuint, shadertype: ShaderType, pname: ProgramStagePName, values: Ptr[GLint, MutAnyOrigin]) thin
comptime glGetProgramiv = def(program: GLuint, pname: ProgramPropertyARB, params: Ptr[GLint, MutAnyOrigin]) thin
comptime glGetQueryBufferObjecti64v = def(id: GLuint, buffer: GLuint, pname: QueryObjectParameterName, offset: GLintptr) thin
comptime glGetQueryBufferObjectiv = def(id: GLuint, buffer: GLuint, pname: QueryObjectParameterName, offset: GLintptr) thin
comptime glGetQueryBufferObjectui64v = def(id: GLuint, buffer: GLuint, pname: QueryObjectParameterName, offset: GLintptr) thin
comptime glGetQueryBufferObjectuiv = def(id: GLuint, buffer: GLuint, pname: QueryObjectParameterName, offset: GLintptr) thin
comptime glGetQueryIndexediv = def(target: QueryTarget, index: GLuint, pname: QueryParameterName, params: Ptr[GLint, MutAnyOrigin]) thin
comptime glGetQueryObjecti64v = def(id: GLuint, pname: QueryObjectParameterName, params: Ptr[GLint64, MutAnyOrigin]) thin
comptime glGetQueryObjectiv = def(id: GLuint, pname: QueryObjectParameterName, params: Ptr[GLint, MutAnyOrigin]) thin
comptime glGetQueryObjectui64v = def(id: GLuint, pname: QueryObjectParameterName, params: Ptr[GLuint64, MutAnyOrigin]) thin
comptime glGetQueryObjectuiv = def(id: GLuint, pname: QueryObjectParameterName, params: Ptr[GLuint, MutAnyOrigin]) thin
comptime glGetQueryiv = def(target: QueryTarget, pname: QueryParameterName, params: Ptr[GLint, MutAnyOrigin]) thin
comptime glGetRenderbufferParameteriv = def(target: RenderbufferTarget, pname: RenderbufferParameterName, params: Ptr[GLint, MutAnyOrigin]) thin
comptime glGetSamplerParameterIiv = def(sampler: GLuint, pname: SamplerParameterI, params: Ptr[GLint, MutAnyOrigin]) thin
comptime glGetSamplerParameterIuiv = def(sampler: GLuint, pname: SamplerParameterI, params: Ptr[GLuint, MutAnyOrigin]) thin
comptime glGetSamplerParameterfv = def(sampler: GLuint, pname: SamplerParameterF, params: Ptr[GLfloat, MutAnyOrigin]) thin
comptime glGetSamplerParameteriv = def(sampler: GLuint, pname: SamplerParameterI, params: Ptr[GLint, MutAnyOrigin]) thin
comptime glGetShaderInfoLog = def(shader: GLuint, buf_size: GLsizei, length: Ptr[GLsizei, MutAnyOrigin], info_log: Ptr[GLchar, ImmutAnyOrigin]) thin
comptime glGetShaderPrecisionFormat = def(shadertype: ShaderType, precisiontype: PrecisionType, range: Ptr[GLint, MutAnyOrigin], precision: Ptr[GLint, MutAnyOrigin]) thin
comptime glGetShaderSource = def(shader: GLuint, buf_size: GLsizei, length: Ptr[GLsizei, MutAnyOrigin], source: Ptr[GLchar, ImmutAnyOrigin]) thin
comptime glGetShaderiv = def(shader: GLuint, pname: ShaderParameterName, params: Ptr[GLint, MutAnyOrigin]) thin
comptime glGetString = def(name: StringName) thin -> GLubyte
comptime glGetStringi = def(name: StringName, index: GLuint) thin -> GLubyte
comptime glGetSubroutineIndex = def(program: GLuint, shadertype: ShaderType, name: Ptr[GLchar, ImmutAnyOrigin]) thin -> GLuint
comptime glGetSubroutineUniformLocation = def(program: GLuint, shadertype: ShaderType, name: Ptr[GLchar, ImmutAnyOrigin]) thin -> GLint
comptime glGetSynciv = def(sync: GLsync, pname: SyncParameterName, count: GLsizei, length: Ptr[GLsizei, MutAnyOrigin], values: Ptr[GLint, MutAnyOrigin]) thin
comptime glGetTexImage = def(target: TextureTarget, level: GLint, format: PixelFormat, type: PixelType, pixels: Ptr[NoneType, MutAnyOrigin]) thin
comptime glGetTexLevelParameterfv = def(target: TextureTarget, level: GLint, pname: GetTextureParameter, params: Ptr[GLfloat, MutAnyOrigin]) thin
comptime glGetTexLevelParameteriv = def(target: TextureTarget, level: GLint, pname: GetTextureParameter, params: Ptr[GLint, MutAnyOrigin]) thin
comptime glGetTexParameterIiv = def(target: TextureTarget, pname: GetTextureParameter, params: Ptr[GLint, MutAnyOrigin]) thin
comptime glGetTexParameterIuiv = def(target: TextureTarget, pname: GetTextureParameter, params: Ptr[GLuint, MutAnyOrigin]) thin
comptime glGetTexParameterfv = def(target: TextureTarget, pname: GetTextureParameter, params: Ptr[GLfloat, MutAnyOrigin]) thin
comptime glGetTexParameteriv = def(target: TextureTarget, pname: GetTextureParameter, params: Ptr[GLint, MutAnyOrigin]) thin
comptime glGetTextureImage = def(texture: GLuint, level: GLint, format: PixelFormat, type: PixelType, buf_size: GLsizei, pixels: Ptr[NoneType, MutAnyOrigin]) thin
comptime glGetTextureLevelParameterfv = def(texture: GLuint, level: GLint, pname: GetTextureParameter, params: Ptr[GLfloat, MutAnyOrigin]) thin
comptime glGetTextureLevelParameteriv = def(texture: GLuint, level: GLint, pname: GetTextureParameter, params: Ptr[GLint, MutAnyOrigin]) thin
comptime glGetTextureParameterIiv = def(texture: GLuint, pname: GetTextureParameter, params: Ptr[GLint, MutAnyOrigin]) thin
comptime glGetTextureParameterIuiv = def(texture: GLuint, pname: GetTextureParameter, params: Ptr[GLuint, MutAnyOrigin]) thin
comptime glGetTextureParameterfv = def(texture: GLuint, pname: GetTextureParameter, params: Ptr[GLfloat, MutAnyOrigin]) thin
comptime glGetTextureParameteriv = def(texture: GLuint, pname: GetTextureParameter, params: Ptr[GLint, MutAnyOrigin]) thin
comptime glGetTextureSubImage = def(texture: GLuint, level: GLint, xoffset: GLint, yoffset: GLint, zoffset: GLint, width: GLsizei, height: GLsizei, depth: GLsizei, format: PixelFormat, type: PixelType, buf_size: GLsizei, pixels: Ptr[NoneType, MutAnyOrigin]) thin
comptime glGetTransformFeedbackVarying = def(program: GLuint, index: GLuint, buf_size: GLsizei, length: Ptr[GLsizei, MutAnyOrigin], size: Ptr[GLsizei, MutAnyOrigin], type: Ptr[AttributeType, MutAnyOrigin], name: Ptr[GLchar, ImmutAnyOrigin]) thin
comptime glGetTransformFeedbacki64_v = def(xfb: GLuint, pname: TransformFeedbackPName, index: GLuint, param: Ptr[GLint64, MutAnyOrigin]) thin
comptime glGetTransformFeedbacki_v = def(xfb: GLuint, pname: TransformFeedbackPName, index: GLuint, param: Ptr[GLint, MutAnyOrigin]) thin
comptime glGetTransformFeedbackiv = def(xfb: GLuint, pname: TransformFeedbackPName, param: Ptr[GLint, MutAnyOrigin]) thin
comptime glGetUniformBlockIndex = def(program: GLuint, uniform_block_name: Ptr[GLchar, ImmutAnyOrigin]) thin -> GLuint
comptime glGetUniformIndices = def(program: GLuint, uniform_count: GLsizei, uniform_names: Ptr[Ptr[GLchar, ImmutAnyOrigin], ImmutAnyOrigin], uniform_indices: Ptr[GLuint, MutAnyOrigin]) thin
comptime glGetUniformLocation = def(program: GLuint, name: Ptr[GLchar, ImmutAnyOrigin]) thin -> GLint
comptime glGetUniformSubroutineuiv = def(shadertype: ShaderType, location: GLint, params: Ptr[GLuint, MutAnyOrigin]) thin
comptime glGetUniformdv = def(program: GLuint, location: GLint, params: Ptr[GLdouble, MutAnyOrigin]) thin
comptime glGetUniformfv = def(program: GLuint, location: GLint, params: Ptr[GLfloat, MutAnyOrigin]) thin
comptime glGetUniformiv = def(program: GLuint, location: GLint, params: Ptr[GLint, MutAnyOrigin]) thin
comptime glGetUniformuiv = def(program: GLuint, location: GLint, params: Ptr[GLuint, MutAnyOrigin]) thin
comptime glGetVertexArrayIndexed64iv = def(vaobj: GLuint, index: GLuint, pname: VertexArrayPName, param: Ptr[GLint64, MutAnyOrigin]) thin
comptime glGetVertexArrayIndexediv = def(vaobj: GLuint, index: GLuint, pname: VertexArrayPName, param: Ptr[GLint, MutAnyOrigin]) thin
comptime glGetVertexArrayiv = def(vaobj: GLuint, pname: VertexArrayPName, param: Ptr[GLint, MutAnyOrigin]) thin
comptime glGetVertexAttribIiv = def(index: GLuint, pname: VertexAttribEnum, params: Ptr[GLint, MutAnyOrigin]) thin
comptime glGetVertexAttribIuiv = def(index: GLuint, pname: VertexAttribEnum, params: Ptr[GLuint, MutAnyOrigin]) thin
comptime glGetVertexAttribLdv = def(index: GLuint, pname: VertexAttribEnum, params: Ptr[GLdouble, MutAnyOrigin]) thin
comptime glGetVertexAttribPointerv = def(index: GLuint, pname: VertexAttribPointerPropertyARB, pointer: Ptr[Ptr[NoneType, MutAnyOrigin], MutAnyOrigin]) thin
comptime glGetVertexAttribdv = def(index: GLuint, pname: VertexAttribPropertyARB, params: Ptr[GLdouble, MutAnyOrigin]) thin
comptime glGetVertexAttribfv = def(index: GLuint, pname: VertexAttribPropertyARB, params: Ptr[GLfloat, MutAnyOrigin]) thin
comptime glGetVertexAttribiv = def(index: GLuint, pname: VertexAttribPropertyARB, params: Ptr[GLint, MutAnyOrigin]) thin
comptime glGetnColorTable = def(target: ColorTableTarget, format: PixelFormat, type: PixelType, buf_size: GLsizei, table: Ptr[NoneType, MutAnyOrigin]) thin
comptime glGetnCompressedTexImage = def(target: TextureTarget, lod: GLint, buf_size: GLsizei, pixels: Ptr[NoneType, MutAnyOrigin]) thin
comptime glGetnConvolutionFilter = def(target: ConvolutionTarget, format: PixelFormat, type: PixelType, buf_size: GLsizei, image: Ptr[NoneType, MutAnyOrigin]) thin
comptime glGetnHistogram = def(target: HistogramTarget, reset: GLboolean, format: PixelFormat, type: PixelType, buf_size: GLsizei, values: Ptr[NoneType, MutAnyOrigin]) thin
comptime glGetnMapdv = def(target: MapTarget, query: MapQuery, buf_size: GLsizei, v: Ptr[GLdouble, MutAnyOrigin]) thin
comptime glGetnMapfv = def(target: MapTarget, query: MapQuery, buf_size: GLsizei, v: Ptr[GLfloat, MutAnyOrigin]) thin
comptime glGetnMapiv = def(target: MapTarget, query: MapQuery, buf_size: GLsizei, v: Ptr[GLint, MutAnyOrigin]) thin
comptime glGetnMinmax = def(target: MinmaxTarget, reset: GLboolean, format: PixelFormat, type: PixelType, buf_size: GLsizei, values: Ptr[NoneType, MutAnyOrigin]) thin
comptime glGetnPixelMapfv = def(map: PixelMap, buf_size: GLsizei, values: Ptr[GLfloat, MutAnyOrigin]) thin
comptime glGetnPixelMapuiv = def(map: PixelMap, buf_size: GLsizei, values: Ptr[GLuint, MutAnyOrigin]) thin
comptime glGetnPixelMapusv = def(map: PixelMap, buf_size: GLsizei, values: Ptr[GLushort, MutAnyOrigin]) thin
comptime glGetnPolygonStipple = def(buf_size: GLsizei, pattern: Ptr[GLubyte, MutAnyOrigin]) thin
comptime glGetnSeparableFilter = def(target: SeparableTarget, format: PixelFormat, type: PixelType, row_buf_size: GLsizei, row: Ptr[NoneType, MutAnyOrigin], column_buf_size: GLsizei, column: Ptr[NoneType, MutAnyOrigin], span: Ptr[NoneType, MutAnyOrigin]) thin
comptime glGetnTexImage = def(target: TextureTarget, level: GLint, format: PixelFormat, type: PixelType, buf_size: GLsizei, pixels: Ptr[NoneType, MutAnyOrigin]) thin
comptime glGetnUniformdv = def(program: GLuint, location: GLint, buf_size: GLsizei, params: Ptr[GLdouble, MutAnyOrigin]) thin
comptime glGetnUniformfv = def(program: GLuint, location: GLint, buf_size: GLsizei, params: Ptr[GLfloat, MutAnyOrigin]) thin
comptime glGetnUniformiv = def(program: GLuint, location: GLint, buf_size: GLsizei, params: Ptr[GLint, MutAnyOrigin]) thin
comptime glGetnUniformuiv = def(program: GLuint, location: GLint, buf_size: GLsizei, params: Ptr[GLuint, MutAnyOrigin]) thin
comptime glHint = def(target: HintTarget, mode: HintMode) thin
comptime glInvalidateBufferData = def(buffer: GLuint) thin
comptime glInvalidateBufferSubData = def(buffer: GLuint, offset: GLintptr, length: GLsizeiptr) thin
comptime glInvalidateFramebuffer = def(target: FramebufferTarget, num_attachments: GLsizei, attachments: Ptr[InvalidateFramebufferAttachment, ImmutAnyOrigin]) thin
comptime glInvalidateNamedFramebufferData = def(framebuffer: GLuint, num_attachments: GLsizei, attachments: Ptr[FramebufferAttachment, ImmutAnyOrigin]) thin
comptime glInvalidateNamedFramebufferSubData = def(framebuffer: GLuint, num_attachments: GLsizei, attachments: Ptr[FramebufferAttachment, ImmutAnyOrigin], x: GLint, y: GLint, width: GLsizei, height: GLsizei) thin
comptime glInvalidateSubFramebuffer = def(target: FramebufferTarget, num_attachments: GLsizei, attachments: Ptr[InvalidateFramebufferAttachment, ImmutAnyOrigin], x: GLint, y: GLint, width: GLsizei, height: GLsizei) thin
comptime glInvalidateTexImage = def(texture: GLuint, level: GLint) thin
comptime glInvalidateTexSubImage = def(texture: GLuint, level: GLint, xoffset: GLint, yoffset: GLint, zoffset: GLint, width: GLsizei, height: GLsizei, depth: GLsizei) thin
comptime glIsBuffer = def(buffer: GLuint) thin -> GLboolean
comptime glIsEnabled = def(cap: EnableCap) thin -> GLboolean
comptime glIsEnabledi = def(target: EnableCap, index: GLuint) thin -> GLboolean
comptime glIsFramebuffer = def(framebuffer: GLuint) thin -> GLboolean
comptime glIsProgram = def(program: GLuint) thin -> GLboolean
comptime glIsProgramPipeline = def(pipeline: GLuint) thin -> GLboolean
comptime glIsQuery = def(id: GLuint) thin -> GLboolean
comptime glIsRenderbuffer = def(renderbuffer: GLuint) thin -> GLboolean
comptime glIsSampler = def(sampler: GLuint) thin -> GLboolean
comptime glIsShader = def(shader: GLuint) thin -> GLboolean
comptime glIsSync = def(sync: GLsync) thin -> GLboolean
comptime glIsTexture = def(texture: GLuint) thin -> GLboolean
comptime glIsTransformFeedback = def(id: GLuint) thin -> GLboolean
comptime glIsVertexArray = def(array: GLuint) thin -> GLboolean
comptime glLineWidth = def(width: GLfloat) thin
comptime glLinkProgram = def(program: GLuint) thin
comptime glLogicOp = def(opcode: LogicOp) thin
comptime glMapBuffer = def(target: BufferTargetARB, access: BufferAccessARB) thin
comptime glMapBufferRange = def(target: BufferTargetARB, offset: GLintptr, length: GLsizeiptr, access: MapBufferAccessMask) thin
comptime glMapNamedBuffer = def(buffer: GLuint, access: BufferAccessARB) thin
comptime glMapNamedBufferRange = def(buffer: GLuint, offset: GLintptr, length: GLsizeiptr, access: MapBufferAccessMask) thin
comptime glMemoryBarrier = def(barriers: MemoryBarrierMask) thin
comptime glMemoryBarrierByRegion = def(barriers: MemoryBarrierMask) thin
comptime glMinSampleShading = def(value: GLfloat) thin
comptime glMultiDrawArrays = def(mode: PrimitiveType, first: Ptr[GLint, ImmutAnyOrigin], count: Ptr[GLsizei, ImmutAnyOrigin], drawcount: GLsizei) thin
comptime glMultiDrawArraysIndirect = def(mode: PrimitiveType, indirect: Ptr[NoneType, ImmutAnyOrigin], drawcount: GLsizei, stride: GLsizei) thin
comptime glMultiDrawArraysIndirectCount = def(mode: PrimitiveType, indirect: Ptr[NoneType, ImmutAnyOrigin], drawcount: GLintptr, maxdrawcount: GLsizei, stride: GLsizei) thin
comptime glMultiDrawElements = def(mode: PrimitiveType, count: Ptr[GLsizei, ImmutAnyOrigin], type: DrawElementsType, indices: Ptr[Ptr[NoneType, ImmutAnyOrigin], ImmutAnyOrigin], drawcount: GLsizei) thin
comptime glMultiDrawElementsBaseVertex = def(mode: PrimitiveType, count: Ptr[GLsizei, ImmutAnyOrigin], type: DrawElementsType, indices: Ptr[Ptr[NoneType, ImmutAnyOrigin], ImmutAnyOrigin], drawcount: GLsizei, basevertex: Ptr[GLint, ImmutAnyOrigin]) thin
comptime glMultiDrawElementsIndirect = def(mode: PrimitiveType, type: DrawElementsType, indirect: Ptr[NoneType, ImmutAnyOrigin], drawcount: GLsizei, stride: GLsizei) thin
comptime glMultiDrawElementsIndirectCount = def(mode: PrimitiveType, type: DrawElementsType, indirect: Ptr[NoneType, ImmutAnyOrigin], drawcount: GLintptr, maxdrawcount: GLsizei, stride: GLsizei) thin
comptime glMultiTexCoordP1ui = def(texture: TextureUnit, type: TexCoordPointerType, coords: GLuint) thin
comptime glMultiTexCoordP1uiv = def(texture: TextureUnit, type: TexCoordPointerType, coords: Ptr[GLuint, ImmutAnyOrigin]) thin
comptime glMultiTexCoordP2ui = def(texture: TextureUnit, type: TexCoordPointerType, coords: GLuint) thin
comptime glMultiTexCoordP2uiv = def(texture: TextureUnit, type: TexCoordPointerType, coords: Ptr[GLuint, ImmutAnyOrigin]) thin
comptime glMultiTexCoordP3ui = def(texture: TextureUnit, type: TexCoordPointerType, coords: GLuint) thin
comptime glMultiTexCoordP3uiv = def(texture: TextureUnit, type: TexCoordPointerType, coords: Ptr[GLuint, ImmutAnyOrigin]) thin
comptime glMultiTexCoordP4ui = def(texture: TextureUnit, type: TexCoordPointerType, coords: GLuint) thin
comptime glMultiTexCoordP4uiv = def(texture: TextureUnit, type: TexCoordPointerType, coords: Ptr[GLuint, ImmutAnyOrigin]) thin
comptime glNamedBufferData = def(buffer: GLuint, size: GLsizeiptr, data: Ptr[NoneType, ImmutAnyOrigin], usage: BufferUsageARB) thin
comptime glNamedBufferStorage = def(buffer: GLuint, size: GLsizeiptr, data: Ptr[NoneType, ImmutAnyOrigin], flags: BufferStorageMask) thin
comptime glNamedBufferSubData = def(buffer: GLuint, offset: GLintptr, size: GLsizeiptr, data: Ptr[NoneType, ImmutAnyOrigin]) thin
comptime glNamedFramebufferDrawBuffer = def(framebuffer: GLuint, buf: ColorBuffer) thin
comptime glNamedFramebufferDrawBuffers = def(framebuffer: GLuint, n: GLsizei, bufs: Ptr[ColorBuffer, ImmutAnyOrigin]) thin
comptime glNamedFramebufferParameteri = def(framebuffer: GLuint, pname: FramebufferParameterName, param: GLint) thin
comptime glNamedFramebufferReadBuffer = def(framebuffer: GLuint, src: ColorBuffer) thin
comptime glNamedFramebufferRenderbuffer = def(framebuffer: GLuint, attachment: FramebufferAttachment, renderbuffertarget: RenderbufferTarget, renderbuffer: GLuint) thin
comptime glNamedFramebufferTexture = def(framebuffer: GLuint, attachment: FramebufferAttachment, texture: GLuint, level: GLint) thin
comptime glNamedFramebufferTextureLayer = def(framebuffer: GLuint, attachment: FramebufferAttachment, texture: GLuint, level: GLint, layer: GLint) thin
comptime glNamedRenderbufferStorage = def(renderbuffer: GLuint, internalformat: InternalFormat, width: GLsizei, height: GLsizei) thin
comptime glNamedRenderbufferStorageMultisample = def(renderbuffer: GLuint, samples: GLsizei, internalformat: InternalFormat, width: GLsizei, height: GLsizei) thin
comptime glNormalP3ui = def(type: NormalPointerType, coords: GLuint) thin
comptime glNormalP3uiv = def(type: NormalPointerType, coords: Ptr[GLuint, ImmutAnyOrigin]) thin
comptime glObjectLabel = def(identifier: ObjectIdentifier, name: GLuint, length: GLsizei, label: Ptr[GLchar, ImmutAnyOrigin]) thin
comptime glObjectPtrLabel = def(ptr: Ptr[NoneType, ImmutAnyOrigin], length: GLsizei, label: Ptr[GLchar, ImmutAnyOrigin]) thin
comptime glPatchParameterfv = def(pname: PatchParameterName, values: Ptr[GLfloat, ImmutAnyOrigin]) thin
comptime glPatchParameteri = def(pname: PatchParameterName, value: GLint) thin
comptime glPauseTransformFeedback = def() thin
comptime glPixelStoref = def(pname: PixelStoreParameter, param: GLfloat) thin
comptime glPixelStorei = def(pname: PixelStoreParameter, param: GLint) thin
comptime glPointParameterf = def(pname: PointParameterNameARB, param: GLfloat) thin
comptime glPointParameterfv = def(pname: PointParameterNameARB, params: Ptr[GLfloat, ImmutAnyOrigin]) thin
comptime glPointParameteri = def(pname: PointParameterNameARB, param: GLint) thin
comptime glPointParameteriv = def(pname: PointParameterNameARB, params: Ptr[GLint, ImmutAnyOrigin]) thin
comptime glPointSize = def(size: GLfloat) thin
comptime glPolygonMode = def(face: TriangleFace, mode: PolygonMode) thin
comptime glPolygonOffset = def(factor: GLfloat, units: GLfloat) thin
comptime glPolygonOffsetClamp = def(factor: GLfloat, units: GLfloat, clamp: GLfloat) thin
comptime glPopDebugGroup = def() thin
comptime glPrimitiveRestartIndex = def(index: GLuint) thin
comptime glProgramBinary = def(program: GLuint, binary_format: GLenum, binary: Ptr[NoneType, ImmutAnyOrigin], length: GLsizei) thin
comptime glProgramParameteri = def(program: GLuint, pname: ProgramParameterPName, value: GLint) thin
comptime glProgramUniform1d = def(program: GLuint, location: GLint, v0: GLdouble) thin
comptime glProgramUniform1dv = def(program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLdouble, ImmutAnyOrigin]) thin
comptime glProgramUniform1f = def(program: GLuint, location: GLint, v0: GLfloat) thin
comptime glProgramUniform1fv = def(program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLfloat, ImmutAnyOrigin]) thin
comptime glProgramUniform1i = def(program: GLuint, location: GLint, v0: GLint) thin
comptime glProgramUniform1iv = def(program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLint, ImmutAnyOrigin]) thin
comptime glProgramUniform1ui = def(program: GLuint, location: GLint, v0: GLuint) thin
comptime glProgramUniform1uiv = def(program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLuint, ImmutAnyOrigin]) thin
comptime glProgramUniform2d = def(program: GLuint, location: GLint, v0: GLdouble, v1: GLdouble) thin
comptime glProgramUniform2dv = def(program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLdouble, ImmutAnyOrigin]) thin
comptime glProgramUniform2f = def(program: GLuint, location: GLint, v0: GLfloat, v1: GLfloat) thin
comptime glProgramUniform2fv = def(program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLfloat, ImmutAnyOrigin]) thin
comptime glProgramUniform2i = def(program: GLuint, location: GLint, v0: GLint, v1: GLint) thin
comptime glProgramUniform2iv = def(program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLint, ImmutAnyOrigin]) thin
comptime glProgramUniform2ui = def(program: GLuint, location: GLint, v0: GLuint, v1: GLuint) thin
comptime glProgramUniform2uiv = def(program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLuint, ImmutAnyOrigin]) thin
comptime glProgramUniform3d = def(program: GLuint, location: GLint, v0: GLdouble, v1: GLdouble, v2: GLdouble) thin
comptime glProgramUniform3dv = def(program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLdouble, ImmutAnyOrigin]) thin
comptime glProgramUniform3f = def(program: GLuint, location: GLint, v0: GLfloat, v1: GLfloat, v2: GLfloat) thin
comptime glProgramUniform3fv = def(program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLfloat, ImmutAnyOrigin]) thin
comptime glProgramUniform3i = def(program: GLuint, location: GLint, v0: GLint, v1: GLint, v2: GLint) thin
comptime glProgramUniform3iv = def(program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLint, ImmutAnyOrigin]) thin
comptime glProgramUniform3ui = def(program: GLuint, location: GLint, v0: GLuint, v1: GLuint, v2: GLuint) thin
comptime glProgramUniform3uiv = def(program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLuint, ImmutAnyOrigin]) thin
comptime glProgramUniform4d = def(program: GLuint, location: GLint, v0: GLdouble, v1: GLdouble, v2: GLdouble, v3: GLdouble) thin
comptime glProgramUniform4dv = def(program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLdouble, ImmutAnyOrigin]) thin
comptime glProgramUniform4f = def(program: GLuint, location: GLint, v0: GLfloat, v1: GLfloat, v2: GLfloat, v3: GLfloat) thin
comptime glProgramUniform4fv = def(program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLfloat, ImmutAnyOrigin]) thin
comptime glProgramUniform4i = def(program: GLuint, location: GLint, v0: GLint, v1: GLint, v2: GLint, v3: GLint) thin
comptime glProgramUniform4iv = def(program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLint, ImmutAnyOrigin]) thin
comptime glProgramUniform4ui = def(program: GLuint, location: GLint, v0: GLuint, v1: GLuint, v2: GLuint, v3: GLuint) thin
comptime glProgramUniform4uiv = def(program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLuint, ImmutAnyOrigin]) thin
comptime glProgramUniformMatrix2dv = def(program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLdouble, ImmutAnyOrigin]) thin
comptime glProgramUniformMatrix2fv = def(program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLfloat, ImmutAnyOrigin]) thin
comptime glProgramUniformMatrix2x3dv = def(program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLdouble, ImmutAnyOrigin]) thin
comptime glProgramUniformMatrix2x3fv = def(program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLfloat, ImmutAnyOrigin]) thin
comptime glProgramUniformMatrix2x4dv = def(program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLdouble, ImmutAnyOrigin]) thin
comptime glProgramUniformMatrix2x4fv = def(program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLfloat, ImmutAnyOrigin]) thin
comptime glProgramUniformMatrix3dv = def(program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLdouble, ImmutAnyOrigin]) thin
comptime glProgramUniformMatrix3fv = def(program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLfloat, ImmutAnyOrigin]) thin
comptime glProgramUniformMatrix3x2dv = def(program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLdouble, ImmutAnyOrigin]) thin
comptime glProgramUniformMatrix3x2fv = def(program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLfloat, ImmutAnyOrigin]) thin
comptime glProgramUniformMatrix3x4dv = def(program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLdouble, ImmutAnyOrigin]) thin
comptime glProgramUniformMatrix3x4fv = def(program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLfloat, ImmutAnyOrigin]) thin
comptime glProgramUniformMatrix4dv = def(program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLdouble, ImmutAnyOrigin]) thin
comptime glProgramUniformMatrix4fv = def(program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLfloat, ImmutAnyOrigin]) thin
comptime glProgramUniformMatrix4x2dv = def(program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLdouble, ImmutAnyOrigin]) thin
comptime glProgramUniformMatrix4x2fv = def(program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLfloat, ImmutAnyOrigin]) thin
comptime glProgramUniformMatrix4x3dv = def(program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLdouble, ImmutAnyOrigin]) thin
comptime glProgramUniformMatrix4x3fv = def(program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLfloat, ImmutAnyOrigin]) thin
comptime glProvokingVertex = def(mode: VertexProvokingMode) thin
comptime glPushDebugGroup = def(source: DebugSource, id: GLuint, length: GLsizei, message: Ptr[GLchar, ImmutAnyOrigin]) thin
comptime glQueryCounter = def(id: GLuint, target: QueryCounterTarget) thin
comptime glReadBuffer = def(src: ReadBufferMode) thin
comptime glReadPixels = def(x: GLint, y: GLint, width: GLsizei, height: GLsizei, format: PixelFormat, type: PixelType, pixels: Ptr[NoneType, MutAnyOrigin]) thin
comptime glReadnPixels = def(x: GLint, y: GLint, width: GLsizei, height: GLsizei, format: PixelFormat, type: PixelType, buf_size: GLsizei, data: Ptr[NoneType, MutAnyOrigin]) thin
comptime glReleaseShaderCompiler = def() thin
comptime glRenderbufferStorage = def(target: RenderbufferTarget, internalformat: InternalFormat, width: GLsizei, height: GLsizei) thin
comptime glRenderbufferStorageMultisample = def(target: RenderbufferTarget, samples: GLsizei, internalformat: InternalFormat, width: GLsizei, height: GLsizei) thin
comptime glResumeTransformFeedback = def() thin
comptime glSampleCoverage = def(value: GLfloat, invert: GLboolean) thin
comptime glSampleMaski = def(mask_number: GLuint, mask: GLbitfield) thin
comptime glSamplerParameterIiv = def(sampler: GLuint, pname: SamplerParameterI, param: Ptr[GLint, ImmutAnyOrigin]) thin
comptime glSamplerParameterIuiv = def(sampler: GLuint, pname: SamplerParameterI, param: Ptr[GLuint, ImmutAnyOrigin]) thin
comptime glSamplerParameterf = def(sampler: GLuint, pname: SamplerParameterF, param: GLfloat) thin
comptime glSamplerParameterfv = def(sampler: GLuint, pname: SamplerParameterF, param: Ptr[GLfloat, ImmutAnyOrigin]) thin
comptime glSamplerParameteri = def(sampler: GLuint, pname: SamplerParameterI, param: GLint) thin
comptime glSamplerParameteriv = def(sampler: GLuint, pname: SamplerParameterI, param: Ptr[GLint, ImmutAnyOrigin]) thin
comptime glScissor = def(x: GLint, y: GLint, width: GLsizei, height: GLsizei) thin
comptime glScissorArrayv = def(first: GLuint, count: GLsizei, v: Ptr[GLint, ImmutAnyOrigin]) thin
comptime glScissorIndexed = def(index: GLuint, left: GLint, bottom: GLint, width: GLsizei, height: GLsizei) thin
comptime glScissorIndexedv = def(index: GLuint, v: Ptr[GLint, ImmutAnyOrigin]) thin
comptime glSecondaryColorP3ui = def(type: ColorPointerType, color: GLuint) thin
comptime glSecondaryColorP3uiv = def(type: ColorPointerType, color: Ptr[GLuint, ImmutAnyOrigin]) thin
comptime glShaderBinary = def(count: GLsizei, shaders: Ptr[GLuint, ImmutAnyOrigin], binary_format: ShaderBinaryFormat, binary: Ptr[NoneType, ImmutAnyOrigin], length: GLsizei) thin
comptime glShaderSource = def(shader: GLuint, count: GLsizei, string: Ptr[Ptr[GLchar, ImmutAnyOrigin], ImmutAnyOrigin], length: Ptr[GLint, ImmutAnyOrigin]) thin
comptime glShaderStorageBlockBinding = def(program: GLuint, storage_block_index: GLuint, storage_block_binding: GLuint) thin
comptime glSpecializeShader = def(shader: GLuint, p_entry_point: Ptr[GLchar, ImmutAnyOrigin], num_specialization_constants: GLuint, p_constant_index: Ptr[GLuint, ImmutAnyOrigin], p_constant_value: Ptr[GLuint, ImmutAnyOrigin]) thin
comptime glStencilFunc = def(func: StencilFunction, ref_: GLint, mask: GLuint) thin
comptime glStencilFuncSeparate = def(face: TriangleFace, func: StencilFunction, ref_: GLint, mask: GLuint) thin
comptime glStencilMask = def(mask: GLuint) thin
comptime glStencilMaskSeparate = def(face: TriangleFace, mask: GLuint) thin
comptime glStencilOp = def(fail: StencilOp, zfail: StencilOp, zpass: StencilOp) thin
comptime glStencilOpSeparate = def(face: TriangleFace, sfail: StencilOp, dpfail: StencilOp, dppass: StencilOp) thin
comptime glTexBuffer = def(target: TextureTarget, internalformat: SizedInternalFormat, buffer: GLuint) thin
comptime glTexBufferRange = def(target: TextureTarget, internalformat: SizedInternalFormat, buffer: GLuint, offset: GLintptr, size: GLsizeiptr) thin
comptime glTexCoordP1ui = def(type: TexCoordPointerType, coords: GLuint) thin
comptime glTexCoordP1uiv = def(type: TexCoordPointerType, coords: Ptr[GLuint, ImmutAnyOrigin]) thin
comptime glTexCoordP2ui = def(type: TexCoordPointerType, coords: GLuint) thin
comptime glTexCoordP2uiv = def(type: TexCoordPointerType, coords: Ptr[GLuint, ImmutAnyOrigin]) thin
comptime glTexCoordP3ui = def(type: TexCoordPointerType, coords: GLuint) thin
comptime glTexCoordP3uiv = def(type: TexCoordPointerType, coords: Ptr[GLuint, ImmutAnyOrigin]) thin
comptime glTexCoordP4ui = def(type: TexCoordPointerType, coords: GLuint) thin
comptime glTexCoordP4uiv = def(type: TexCoordPointerType, coords: Ptr[GLuint, ImmutAnyOrigin]) thin
comptime glTexImage1D = def(target: TextureTarget, level: GLint, internalformat: InternalFormat, width: GLsizei, border: GLint, format: PixelFormat, type: PixelType, pixels: Ptr[NoneType, ImmutAnyOrigin]) thin
comptime glTexImage2D = def(target: TextureTarget, level: GLint, internalformat: InternalFormat, width: GLsizei, height: GLsizei, border: GLint, format: PixelFormat, type: PixelType, pixels: Ptr[NoneType, ImmutAnyOrigin]) thin
comptime glTexImage2DMultisample = def(target: TextureTarget, samples: GLsizei, internalformat: InternalFormat, width: GLsizei, height: GLsizei, fixedsamplelocations: GLboolean) thin
comptime glTexImage3D = def(target: TextureTarget, level: GLint, internalformat: InternalFormat, width: GLsizei, height: GLsizei, depth: GLsizei, border: GLint, format: PixelFormat, type: PixelType, pixels: Ptr[NoneType, ImmutAnyOrigin]) thin
comptime glTexImage3DMultisample = def(target: TextureTarget, samples: GLsizei, internalformat: InternalFormat, width: GLsizei, height: GLsizei, depth: GLsizei, fixedsamplelocations: GLboolean) thin
comptime glTexParameterIiv = def(target: TextureTarget, pname: TextureParameterName, params: Ptr[GLint, ImmutAnyOrigin]) thin
comptime glTexParameterIuiv = def(target: TextureTarget, pname: TextureParameterName, params: Ptr[GLuint, ImmutAnyOrigin]) thin
comptime glTexParameterf = def(target: TextureTarget, pname: TextureParameterName, param: GLfloat) thin
comptime glTexParameterfv = def(target: TextureTarget, pname: TextureParameterName, params: Ptr[GLfloat, ImmutAnyOrigin]) thin
comptime glTexParameteri = def(target: TextureTarget, pname: TextureParameterName, param: GLint) thin
comptime glTexParameteriv = def(target: TextureTarget, pname: TextureParameterName, params: Ptr[GLint, ImmutAnyOrigin]) thin
comptime glTexStorage1D = def(target: TextureTarget, levels: GLsizei, internalformat: SizedInternalFormat, width: GLsizei) thin
comptime glTexStorage2D = def(target: TextureTarget, levels: GLsizei, internalformat: SizedInternalFormat, width: GLsizei, height: GLsizei) thin
comptime glTexStorage2DMultisample = def(target: TextureTarget, samples: GLsizei, internalformat: SizedInternalFormat, width: GLsizei, height: GLsizei, fixedsamplelocations: GLboolean) thin
comptime glTexStorage3D = def(target: TextureTarget, levels: GLsizei, internalformat: SizedInternalFormat, width: GLsizei, height: GLsizei, depth: GLsizei) thin
comptime glTexStorage3DMultisample = def(target: TextureTarget, samples: GLsizei, internalformat: SizedInternalFormat, width: GLsizei, height: GLsizei, depth: GLsizei, fixedsamplelocations: GLboolean) thin
comptime glTexSubImage1D = def(target: TextureTarget, level: GLint, xoffset: GLint, width: GLsizei, format: PixelFormat, type: PixelType, pixels: Ptr[NoneType, ImmutAnyOrigin]) thin
comptime glTexSubImage2D = def(target: TextureTarget, level: GLint, xoffset: GLint, yoffset: GLint, width: GLsizei, height: GLsizei, format: PixelFormat, type: PixelType, pixels: Ptr[NoneType, ImmutAnyOrigin]) thin
comptime glTexSubImage3D = def(target: TextureTarget, level: GLint, xoffset: GLint, yoffset: GLint, zoffset: GLint, width: GLsizei, height: GLsizei, depth: GLsizei, format: PixelFormat, type: PixelType, pixels: Ptr[NoneType, ImmutAnyOrigin]) thin
comptime glTextureBarrier = def() thin
comptime glTextureBuffer = def(texture: GLuint, internalformat: SizedInternalFormat, buffer: GLuint) thin
comptime glTextureBufferRange = def(texture: GLuint, internalformat: SizedInternalFormat, buffer: GLuint, offset: GLintptr, size: GLsizeiptr) thin
comptime glTextureParameterIiv = def(texture: GLuint, pname: TextureParameterName, params: Ptr[GLint, ImmutAnyOrigin]) thin
comptime glTextureParameterIuiv = def(texture: GLuint, pname: TextureParameterName, params: Ptr[GLuint, ImmutAnyOrigin]) thin
comptime glTextureParameterf = def(texture: GLuint, pname: TextureParameterName, param: GLfloat) thin
comptime glTextureParameterfv = def(texture: GLuint, pname: TextureParameterName, param: Ptr[GLfloat, ImmutAnyOrigin]) thin
comptime glTextureParameteri = def(texture: GLuint, pname: TextureParameterName, param: GLint) thin
comptime glTextureParameteriv = def(texture: GLuint, pname: TextureParameterName, param: Ptr[GLint, ImmutAnyOrigin]) thin
comptime glTextureStorage1D = def(texture: GLuint, levels: GLsizei, internalformat: SizedInternalFormat, width: GLsizei) thin
comptime glTextureStorage2D = def(texture: GLuint, levels: GLsizei, internalformat: SizedInternalFormat, width: GLsizei, height: GLsizei) thin
comptime glTextureStorage2DMultisample = def(texture: GLuint, samples: GLsizei, internalformat: SizedInternalFormat, width: GLsizei, height: GLsizei, fixedsamplelocations: GLboolean) thin
comptime glTextureStorage3D = def(texture: GLuint, levels: GLsizei, internalformat: SizedInternalFormat, width: GLsizei, height: GLsizei, depth: GLsizei) thin
comptime glTextureStorage3DMultisample = def(texture: GLuint, samples: GLsizei, internalformat: SizedInternalFormat, width: GLsizei, height: GLsizei, depth: GLsizei, fixedsamplelocations: GLboolean) thin
comptime glTextureSubImage1D = def(texture: GLuint, level: GLint, xoffset: GLint, width: GLsizei, format: PixelFormat, type: PixelType, pixels: Ptr[NoneType, ImmutAnyOrigin]) thin
comptime glTextureSubImage2D = def(texture: GLuint, level: GLint, xoffset: GLint, yoffset: GLint, width: GLsizei, height: GLsizei, format: PixelFormat, type: PixelType, pixels: Ptr[NoneType, ImmutAnyOrigin]) thin
comptime glTextureSubImage3D = def(texture: GLuint, level: GLint, xoffset: GLint, yoffset: GLint, zoffset: GLint, width: GLsizei, height: GLsizei, depth: GLsizei, format: PixelFormat, type: PixelType, pixels: Ptr[NoneType, ImmutAnyOrigin]) thin
comptime glTextureView = def(texture: GLuint, target: TextureTarget, origtexture: GLuint, internalformat: SizedInternalFormat, minlevel: GLuint, numlevels: GLuint, minlayer: GLuint, numlayers: GLuint) thin
comptime glTransformFeedbackBufferBase = def(xfb: GLuint, index: GLuint, buffer: GLuint) thin
comptime glTransformFeedbackBufferRange = def(xfb: GLuint, index: GLuint, buffer: GLuint, offset: GLintptr, size: GLsizeiptr) thin
comptime glTransformFeedbackVaryings = def(program: GLuint, count: GLsizei, varyings: Ptr[Ptr[GLchar, ImmutAnyOrigin], ImmutAnyOrigin], buffer_mode: TransformFeedbackBufferMode) thin
comptime glUniform1d = def(location: GLint, x: GLdouble) thin
comptime glUniform1dv = def(location: GLint, count: GLsizei, value: Ptr[GLdouble, ImmutAnyOrigin]) thin
comptime glUniform1f = def(location: GLint, v0: GLfloat) thin
comptime glUniform1fv = def(location: GLint, count: GLsizei, value: Ptr[GLfloat, ImmutAnyOrigin]) thin
comptime glUniform1i = def(location: GLint, v0: GLint) thin
comptime glUniform1iv = def(location: GLint, count: GLsizei, value: Ptr[GLint, ImmutAnyOrigin]) thin
comptime glUniform1ui = def(location: GLint, v0: GLuint) thin
comptime glUniform1uiv = def(location: GLint, count: GLsizei, value: Ptr[GLuint, ImmutAnyOrigin]) thin
comptime glUniform2d = def(location: GLint, x: GLdouble, y: GLdouble) thin
comptime glUniform2dv = def(location: GLint, count: GLsizei, value: Ptr[GLdouble, ImmutAnyOrigin]) thin
comptime glUniform2f = def(location: GLint, v0: GLfloat, v1: GLfloat) thin
comptime glUniform2fv = def(location: GLint, count: GLsizei, value: Ptr[GLfloat, ImmutAnyOrigin]) thin
comptime glUniform2i = def(location: GLint, v0: GLint, v1: GLint) thin
comptime glUniform2iv = def(location: GLint, count: GLsizei, value: Ptr[GLint, ImmutAnyOrigin]) thin
comptime glUniform2ui = def(location: GLint, v0: GLuint, v1: GLuint) thin
comptime glUniform2uiv = def(location: GLint, count: GLsizei, value: Ptr[GLuint, ImmutAnyOrigin]) thin
comptime glUniform3d = def(location: GLint, x: GLdouble, y: GLdouble, z: GLdouble) thin
comptime glUniform3dv = def(location: GLint, count: GLsizei, value: Ptr[GLdouble, ImmutAnyOrigin]) thin
comptime glUniform3f = def(location: GLint, v0: GLfloat, v1: GLfloat, v2: GLfloat) thin
comptime glUniform3fv = def(location: GLint, count: GLsizei, value: Ptr[GLfloat, ImmutAnyOrigin]) thin
comptime glUniform3i = def(location: GLint, v0: GLint, v1: GLint, v2: GLint) thin
comptime glUniform3iv = def(location: GLint, count: GLsizei, value: Ptr[GLint, ImmutAnyOrigin]) thin
comptime glUniform3ui = def(location: GLint, v0: GLuint, v1: GLuint, v2: GLuint) thin
comptime glUniform3uiv = def(location: GLint, count: GLsizei, value: Ptr[GLuint, ImmutAnyOrigin]) thin
comptime glUniform4d = def(location: GLint, x: GLdouble, y: GLdouble, z: GLdouble, w: GLdouble) thin
comptime glUniform4dv = def(location: GLint, count: GLsizei, value: Ptr[GLdouble, ImmutAnyOrigin]) thin
comptime glUniform4f = def(location: GLint, v0: GLfloat, v1: GLfloat, v2: GLfloat, v3: GLfloat) thin
comptime glUniform4fv = def(location: GLint, count: GLsizei, value: Ptr[GLfloat, ImmutAnyOrigin]) thin
comptime glUniform4i = def(location: GLint, v0: GLint, v1: GLint, v2: GLint, v3: GLint) thin
comptime glUniform4iv = def(location: GLint, count: GLsizei, value: Ptr[GLint, ImmutAnyOrigin]) thin
comptime glUniform4ui = def(location: GLint, v0: GLuint, v1: GLuint, v2: GLuint, v3: GLuint) thin
comptime glUniform4uiv = def(location: GLint, count: GLsizei, value: Ptr[GLuint, ImmutAnyOrigin]) thin
comptime glUniformBlockBinding = def(program: GLuint, uniform_block_index: GLuint, uniform_block_binding: GLuint) thin
comptime glUniformMatrix2dv = def(location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLdouble, ImmutAnyOrigin]) thin
comptime glUniformMatrix2fv = def(location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLfloat, ImmutAnyOrigin]) thin
comptime glUniformMatrix2x3dv = def(location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLdouble, ImmutAnyOrigin]) thin
comptime glUniformMatrix2x3fv = def(location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLfloat, ImmutAnyOrigin]) thin
comptime glUniformMatrix2x4dv = def(location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLdouble, ImmutAnyOrigin]) thin
comptime glUniformMatrix2x4fv = def(location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLfloat, ImmutAnyOrigin]) thin
comptime glUniformMatrix3dv = def(location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLdouble, ImmutAnyOrigin]) thin
comptime glUniformMatrix3fv = def(location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLfloat, ImmutAnyOrigin]) thin
comptime glUniformMatrix3x2dv = def(location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLdouble, ImmutAnyOrigin]) thin
comptime glUniformMatrix3x2fv = def(location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLfloat, ImmutAnyOrigin]) thin
comptime glUniformMatrix3x4dv = def(location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLdouble, ImmutAnyOrigin]) thin
comptime glUniformMatrix3x4fv = def(location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLfloat, ImmutAnyOrigin]) thin
comptime glUniformMatrix4dv = def(location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLdouble, ImmutAnyOrigin]) thin
comptime glUniformMatrix4fv = def(location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLfloat, ImmutAnyOrigin]) thin
comptime glUniformMatrix4x2dv = def(location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLdouble, ImmutAnyOrigin]) thin
comptime glUniformMatrix4x2fv = def(location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLfloat, ImmutAnyOrigin]) thin
comptime glUniformMatrix4x3dv = def(location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLdouble, ImmutAnyOrigin]) thin
comptime glUniformMatrix4x3fv = def(location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLfloat, ImmutAnyOrigin]) thin
comptime glUniformSubroutinesuiv = def(shadertype: ShaderType, count: GLsizei, indices: Ptr[GLuint, ImmutAnyOrigin]) thin
comptime glUnmapBuffer = def(target: BufferTargetARB) thin -> GLboolean
comptime glUnmapNamedBuffer = def(buffer: GLuint) thin -> GLboolean
comptime glUseProgram = def(program: GLuint) thin
comptime glUseProgramStages = def(pipeline: GLuint, stages: UseProgramStageMask, program: GLuint) thin
comptime glValidateProgram = def(program: GLuint) thin
comptime glValidateProgramPipeline = def(pipeline: GLuint) thin
comptime glVertexArrayAttribBinding = def(vaobj: GLuint, attribindex: GLuint, bindingindex: GLuint) thin
comptime glVertexArrayAttribFormat = def(vaobj: GLuint, attribindex: GLuint, size: GLint, type: VertexAttribType, normalized: GLboolean, relativeoffset: GLuint) thin
comptime glVertexArrayAttribIFormat = def(vaobj: GLuint, attribindex: GLuint, size: GLint, type: VertexAttribIType, relativeoffset: GLuint) thin
comptime glVertexArrayAttribLFormat = def(vaobj: GLuint, attribindex: GLuint, size: GLint, type: VertexAttribLType, relativeoffset: GLuint) thin
comptime glVertexArrayBindingDivisor = def(vaobj: GLuint, bindingindex: GLuint, divisor: GLuint) thin
comptime glVertexArrayElementBuffer = def(vaobj: GLuint, buffer: GLuint) thin
comptime glVertexArrayVertexBuffer = def(vaobj: GLuint, bindingindex: GLuint, buffer: GLuint, offset: GLintptr, stride: GLsizei) thin
comptime glVertexArrayVertexBuffers = def(vaobj: GLuint, first: GLuint, count: GLsizei, buffers: Ptr[GLuint, ImmutAnyOrigin], offsets: Ptr[GLintptr, ImmutAnyOrigin], strides: Ptr[GLsizei, ImmutAnyOrigin]) thin
comptime glVertexAttrib1d = def(index: GLuint, x: GLdouble) thin
comptime glVertexAttrib1dv = def(index: GLuint, v: Ptr[GLdouble, ImmutAnyOrigin]) thin
comptime glVertexAttrib1f = def(index: GLuint, x: GLfloat) thin
comptime glVertexAttrib1fv = def(index: GLuint, v: Ptr[GLfloat, ImmutAnyOrigin]) thin
comptime glVertexAttrib1s = def(index: GLuint, x: GLshort) thin
comptime glVertexAttrib1sv = def(index: GLuint, v: Ptr[GLshort, ImmutAnyOrigin]) thin
comptime glVertexAttrib2d = def(index: GLuint, x: GLdouble, y: GLdouble) thin
comptime glVertexAttrib2dv = def(index: GLuint, v: Ptr[GLdouble, ImmutAnyOrigin]) thin
comptime glVertexAttrib2f = def(index: GLuint, x: GLfloat, y: GLfloat) thin
comptime glVertexAttrib2fv = def(index: GLuint, v: Ptr[GLfloat, ImmutAnyOrigin]) thin
comptime glVertexAttrib2s = def(index: GLuint, x: GLshort, y: GLshort) thin
comptime glVertexAttrib2sv = def(index: GLuint, v: Ptr[GLshort, ImmutAnyOrigin]) thin
comptime glVertexAttrib3d = def(index: GLuint, x: GLdouble, y: GLdouble, z: GLdouble) thin
comptime glVertexAttrib3dv = def(index: GLuint, v: Ptr[GLdouble, ImmutAnyOrigin]) thin
comptime glVertexAttrib3f = def(index: GLuint, x: GLfloat, y: GLfloat, z: GLfloat) thin
comptime glVertexAttrib3fv = def(index: GLuint, v: Ptr[GLfloat, ImmutAnyOrigin]) thin
comptime glVertexAttrib3s = def(index: GLuint, x: GLshort, y: GLshort, z: GLshort) thin
comptime glVertexAttrib3sv = def(index: GLuint, v: Ptr[GLshort, ImmutAnyOrigin]) thin
comptime glVertexAttrib4Nbv = def(index: GLuint, v: Ptr[GLbyte, ImmutAnyOrigin]) thin
comptime glVertexAttrib4Niv = def(index: GLuint, v: Ptr[GLint, ImmutAnyOrigin]) thin
comptime glVertexAttrib4Nsv = def(index: GLuint, v: Ptr[GLshort, ImmutAnyOrigin]) thin
comptime glVertexAttrib4Nub = def(index: GLuint, x: GLubyte, y: GLubyte, z: GLubyte, w: GLubyte) thin
comptime glVertexAttrib4Nubv = def(index: GLuint, v: Ptr[GLubyte, ImmutAnyOrigin]) thin
comptime glVertexAttrib4Nuiv = def(index: GLuint, v: Ptr[GLuint, ImmutAnyOrigin]) thin
comptime glVertexAttrib4Nusv = def(index: GLuint, v: Ptr[GLushort, ImmutAnyOrigin]) thin
comptime glVertexAttrib4bv = def(index: GLuint, v: Ptr[GLbyte, ImmutAnyOrigin]) thin
comptime glVertexAttrib4d = def(index: GLuint, x: GLdouble, y: GLdouble, z: GLdouble, w: GLdouble) thin
comptime glVertexAttrib4dv = def(index: GLuint, v: Ptr[GLdouble, ImmutAnyOrigin]) thin
comptime glVertexAttrib4f = def(index: GLuint, x: GLfloat, y: GLfloat, z: GLfloat, w: GLfloat) thin
comptime glVertexAttrib4fv = def(index: GLuint, v: Ptr[GLfloat, ImmutAnyOrigin]) thin
comptime glVertexAttrib4iv = def(index: GLuint, v: Ptr[GLint, ImmutAnyOrigin]) thin
comptime glVertexAttrib4s = def(index: GLuint, x: GLshort, y: GLshort, z: GLshort, w: GLshort) thin
comptime glVertexAttrib4sv = def(index: GLuint, v: Ptr[GLshort, ImmutAnyOrigin]) thin
comptime glVertexAttrib4ubv = def(index: GLuint, v: Ptr[GLubyte, ImmutAnyOrigin]) thin
comptime glVertexAttrib4uiv = def(index: GLuint, v: Ptr[GLuint, ImmutAnyOrigin]) thin
comptime glVertexAttrib4usv = def(index: GLuint, v: Ptr[GLushort, ImmutAnyOrigin]) thin
comptime glVertexAttribBinding = def(attribindex: GLuint, bindingindex: GLuint) thin
comptime glVertexAttribDivisor = def(index: GLuint, divisor: GLuint) thin
comptime glVertexAttribFormat = def(attribindex: GLuint, size: GLint, type: VertexAttribType, normalized: GLboolean, relativeoffset: GLuint) thin
comptime glVertexAttribI1i = def(index: GLuint, x: GLint) thin
comptime glVertexAttribI1iv = def(index: GLuint, v: Ptr[GLint, ImmutAnyOrigin]) thin
comptime glVertexAttribI1ui = def(index: GLuint, x: GLuint) thin
comptime glVertexAttribI1uiv = def(index: GLuint, v: Ptr[GLuint, ImmutAnyOrigin]) thin
comptime glVertexAttribI2i = def(index: GLuint, x: GLint, y: GLint) thin
comptime glVertexAttribI2iv = def(index: GLuint, v: Ptr[GLint, ImmutAnyOrigin]) thin
comptime glVertexAttribI2ui = def(index: GLuint, x: GLuint, y: GLuint) thin
comptime glVertexAttribI2uiv = def(index: GLuint, v: Ptr[GLuint, ImmutAnyOrigin]) thin
comptime glVertexAttribI3i = def(index: GLuint, x: GLint, y: GLint, z: GLint) thin
comptime glVertexAttribI3iv = def(index: GLuint, v: Ptr[GLint, ImmutAnyOrigin]) thin
comptime glVertexAttribI3ui = def(index: GLuint, x: GLuint, y: GLuint, z: GLuint) thin
comptime glVertexAttribI3uiv = def(index: GLuint, v: Ptr[GLuint, ImmutAnyOrigin]) thin
comptime glVertexAttribI4bv = def(index: GLuint, v: Ptr[GLbyte, ImmutAnyOrigin]) thin
comptime glVertexAttribI4i = def(index: GLuint, x: GLint, y: GLint, z: GLint, w: GLint) thin
comptime glVertexAttribI4iv = def(index: GLuint, v: Ptr[GLint, ImmutAnyOrigin]) thin
comptime glVertexAttribI4sv = def(index: GLuint, v: Ptr[GLshort, ImmutAnyOrigin]) thin
comptime glVertexAttribI4ubv = def(index: GLuint, v: Ptr[GLubyte, ImmutAnyOrigin]) thin
comptime glVertexAttribI4ui = def(index: GLuint, x: GLuint, y: GLuint, z: GLuint, w: GLuint) thin
comptime glVertexAttribI4uiv = def(index: GLuint, v: Ptr[GLuint, ImmutAnyOrigin]) thin
comptime glVertexAttribI4usv = def(index: GLuint, v: Ptr[GLushort, ImmutAnyOrigin]) thin
comptime glVertexAttribIFormat = def(attribindex: GLuint, size: GLint, type: VertexAttribIType, relativeoffset: GLuint) thin
comptime glVertexAttribIPointer = def(index: GLuint, size: GLint, type: VertexAttribIType, stride: GLsizei, pointer: Ptr[NoneType, ImmutAnyOrigin]) thin
comptime glVertexAttribL1d = def(index: GLuint, x: GLdouble) thin
comptime glVertexAttribL1dv = def(index: GLuint, v: Ptr[GLdouble, ImmutAnyOrigin]) thin
comptime glVertexAttribL2d = def(index: GLuint, x: GLdouble, y: GLdouble) thin
comptime glVertexAttribL2dv = def(index: GLuint, v: Ptr[GLdouble, ImmutAnyOrigin]) thin
comptime glVertexAttribL3d = def(index: GLuint, x: GLdouble, y: GLdouble, z: GLdouble) thin
comptime glVertexAttribL3dv = def(index: GLuint, v: Ptr[GLdouble, ImmutAnyOrigin]) thin
comptime glVertexAttribL4d = def(index: GLuint, x: GLdouble, y: GLdouble, z: GLdouble, w: GLdouble) thin
comptime glVertexAttribL4dv = def(index: GLuint, v: Ptr[GLdouble, ImmutAnyOrigin]) thin
comptime glVertexAttribLFormat = def(attribindex: GLuint, size: GLint, type: VertexAttribLType, relativeoffset: GLuint) thin
comptime glVertexAttribLPointer = def(index: GLuint, size: GLint, type: VertexAttribLType, stride: GLsizei, pointer: Ptr[NoneType, ImmutAnyOrigin]) thin
comptime glVertexAttribP1ui = def(index: GLuint, type: VertexAttribPointerType, normalized: GLboolean, value: GLuint) thin
comptime glVertexAttribP1uiv = def(index: GLuint, type: VertexAttribPointerType, normalized: GLboolean, value: Ptr[GLuint, ImmutAnyOrigin]) thin
comptime glVertexAttribP2ui = def(index: GLuint, type: VertexAttribPointerType, normalized: GLboolean, value: GLuint) thin
comptime glVertexAttribP2uiv = def(index: GLuint, type: VertexAttribPointerType, normalized: GLboolean, value: Ptr[GLuint, ImmutAnyOrigin]) thin
comptime glVertexAttribP3ui = def(index: GLuint, type: VertexAttribPointerType, normalized: GLboolean, value: GLuint) thin
comptime glVertexAttribP3uiv = def(index: GLuint, type: VertexAttribPointerType, normalized: GLboolean, value: Ptr[GLuint, ImmutAnyOrigin]) thin
comptime glVertexAttribP4ui = def(index: GLuint, type: VertexAttribPointerType, normalized: GLboolean, value: GLuint) thin
comptime glVertexAttribP4uiv = def(index: GLuint, type: VertexAttribPointerType, normalized: GLboolean, value: Ptr[GLuint, ImmutAnyOrigin]) thin
comptime glVertexAttribPointer = def(index: GLuint, size: GLint, type: VertexAttribPointerType, normalized: GLboolean, stride: GLsizei, pointer: Ptr[NoneType, ImmutAnyOrigin]) thin
comptime glVertexBindingDivisor = def(bindingindex: GLuint, divisor: GLuint) thin
comptime glVertexP2ui = def(type: VertexPointerType, value: GLuint) thin
comptime glVertexP2uiv = def(type: VertexPointerType, value: Ptr[GLuint, ImmutAnyOrigin]) thin
comptime glVertexP3ui = def(type: VertexPointerType, value: GLuint) thin
comptime glVertexP3uiv = def(type: VertexPointerType, value: Ptr[GLuint, ImmutAnyOrigin]) thin
comptime glVertexP4ui = def(type: VertexPointerType, value: GLuint) thin
comptime glVertexP4uiv = def(type: VertexPointerType, value: Ptr[GLuint, ImmutAnyOrigin]) thin
comptime glViewport = def(x: GLint, y: GLint, width: GLsizei, height: GLsizei) thin
comptime glViewportArrayv = def(first: GLuint, count: GLsizei, v: Ptr[GLfloat, ImmutAnyOrigin]) thin
comptime glViewportIndexedf = def(index: GLuint, x: GLfloat, y: GLfloat, w: GLfloat, h: GLfloat) thin
comptime glViewportIndexedfv = def(index: GLuint, v: Ptr[GLfloat, ImmutAnyOrigin]) thin
comptime glWaitSync = def(sync: GLsync, flags: SyncBehaviorFlags, timeout: GLuint64) thin


def active_shader_program(pipeline: GLuint, program: GLuint) raises:
    return get_fn[glActiveShaderProgram, "glActiveShaderProgram"]()(pipeline, program)


def active_texture(texture: TextureUnit) raises:
    return get_fn[glActiveTexture, "glActiveTexture"]()(texture)


def attach_shader(program: GLuint, shader: GLuint) raises:
    return get_fn[glAttachShader, "glAttachShader"]()(program, shader)


def begin_conditional_render(id: GLuint, mode: ConditionalRenderMode) raises:
    return get_fn[glBeginConditionalRender, "glBeginConditionalRender"]()(id, mode)


def begin_query(target: QueryTarget, id: GLuint) raises:
    return get_fn[glBeginQuery, "glBeginQuery"]()(target, id)


def begin_query_indexed(target: QueryTarget, index: GLuint, id: GLuint) raises:
    return get_fn[glBeginQueryIndexed, "glBeginQueryIndexed"]()(target, index, id)


def begin_transform_feedback(primitive_mode: PrimitiveType) raises:
    return get_fn[glBeginTransformFeedback, "glBeginTransformFeedback"]()(primitive_mode)


def bind_attrib_location(program: GLuint, index: GLuint, var name: String) raises:
    return get_fn[glBindAttribLocation, "glBindAttribLocation"]()(program, index, name.as_c_string_slice().unsafe_ptr().as_any_origin())


def bind_buffer(target: BufferTargetARB, buffer: GLuint) raises:
    return get_fn[glBindBuffer, "glBindBuffer"]()(target, buffer)


def bind_buffer_base(target: BufferTargetARB, index: GLuint, buffer: GLuint) raises:
    return get_fn[glBindBufferBase, "glBindBufferBase"]()(target, index, buffer)


def bind_buffer_range(target: BufferTargetARB, index: GLuint, buffer: GLuint, offset: GLintptr, size: GLsizeiptr) raises:
    return get_fn[glBindBufferRange, "glBindBufferRange"]()(target, index, buffer, offset, size)


def bind_buffers_base(target: BufferTargetARB, first: GLuint, count: GLsizei, buffers: Ptr[GLuint, ImmutAnyOrigin]) raises:
    return get_fn[glBindBuffersBase, "glBindBuffersBase"]()(target, first, count, buffers)


def bind_buffers_range(target: BufferTargetARB, first: GLuint, count: GLsizei, buffers: Ptr[GLuint, ImmutAnyOrigin], offsets: Ptr[GLintptr, ImmutAnyOrigin], sizes: Ptr[GLsizeiptr, ImmutAnyOrigin]) raises:
    return get_fn[glBindBuffersRange, "glBindBuffersRange"]()(target, first, count, buffers, offsets, sizes)


def bind_frag_data_location(program: GLuint, color: GLuint, var name: String) raises:
    return get_fn[glBindFragDataLocation, "glBindFragDataLocation"]()(program, color, name.as_c_string_slice().unsafe_ptr().as_any_origin())


def bind_frag_data_location_indexed(program: GLuint, color_number: GLuint, index: GLuint, var name: String) raises:
    return get_fn[glBindFragDataLocationIndexed, "glBindFragDataLocationIndexed"]()(program, color_number, index, name.as_c_string_slice().unsafe_ptr().as_any_origin())


def bind_framebuffer(target: FramebufferTarget, framebuffer: GLuint) raises:
    return get_fn[glBindFramebuffer, "glBindFramebuffer"]()(target, framebuffer)


def bind_image_texture(unit: GLuint, texture: GLuint, level: GLint, layered: Bool, layer: GLint, access: BufferAccessARB, format: InternalFormat) raises:
    return get_fn[glBindImageTexture, "glBindImageTexture"]()(unit, texture, level, GLboolean(Int(layered)), layer, access, format)


def bind_image_textures(first: GLuint, count: GLsizei, textures: Ptr[GLuint, ImmutAnyOrigin]) raises:
    return get_fn[glBindImageTextures, "glBindImageTextures"]()(first, count, textures)


def bind_program_pipeline(pipeline: GLuint) raises:
    return get_fn[glBindProgramPipeline, "glBindProgramPipeline"]()(pipeline)


def bind_renderbuffer(target: RenderbufferTarget, renderbuffer: GLuint) raises:
    return get_fn[glBindRenderbuffer, "glBindRenderbuffer"]()(target, renderbuffer)


def bind_sampler(unit: GLuint, sampler: GLuint) raises:
    return get_fn[glBindSampler, "glBindSampler"]()(unit, sampler)


def bind_samplers(first: GLuint, count: GLsizei, samplers: Ptr[GLuint, ImmutAnyOrigin]) raises:
    return get_fn[glBindSamplers, "glBindSamplers"]()(first, count, samplers)


def bind_texture(target: TextureTarget, texture: GLuint) raises:
    return get_fn[glBindTexture, "glBindTexture"]()(target, texture)


def bind_texture_unit(unit: GLuint, texture: GLuint) raises:
    return get_fn[glBindTextureUnit, "glBindTextureUnit"]()(unit, texture)


def bind_textures(first: GLuint, count: GLsizei, textures: Ptr[GLuint, ImmutAnyOrigin]) raises:
    return get_fn[glBindTextures, "glBindTextures"]()(first, count, textures)


def bind_transform_feedback(target: BindTransformFeedbackTarget, id: GLuint) raises:
    return get_fn[glBindTransformFeedback, "glBindTransformFeedback"]()(target, id)


def bind_vertex_array(array: GLuint) raises:
    return get_fn[glBindVertexArray, "glBindVertexArray"]()(array)


def bind_vertex_buffer(bindingindex: GLuint, buffer: GLuint, offset: GLintptr, stride: GLsizei) raises:
    return get_fn[glBindVertexBuffer, "glBindVertexBuffer"]()(bindingindex, buffer, offset, stride)


def bind_vertex_buffers(first: GLuint, count: GLsizei, buffers: Ptr[GLuint, ImmutAnyOrigin], offsets: Ptr[GLintptr, ImmutAnyOrigin], strides: Ptr[GLsizei, ImmutAnyOrigin]) raises:
    return get_fn[glBindVertexBuffers, "glBindVertexBuffers"]()(first, count, buffers, offsets, strides)


def blend_color(red: GLfloat, green: GLfloat, blue: GLfloat, alpha: GLfloat) raises:
    return get_fn[glBlendColor, "glBlendColor"]()(red, green, blue, alpha)


def blend_equation(mode: BlendEquationModeEXT) raises:
    return get_fn[glBlendEquation, "glBlendEquation"]()(mode)


def blend_equation_separate(mode_rgb: BlendEquationModeEXT, mode_alpha: BlendEquationModeEXT) raises:
    return get_fn[glBlendEquationSeparate, "glBlendEquationSeparate"]()(mode_rgb, mode_alpha)


def blend_equation_separatei(buf: GLuint, mode_rgb: BlendEquationModeEXT, mode_alpha: BlendEquationModeEXT) raises:
    return get_fn[glBlendEquationSeparatei, "glBlendEquationSeparatei"]()(buf, mode_rgb, mode_alpha)


def blend_equationi(buf: GLuint, mode: BlendEquationModeEXT) raises:
    return get_fn[glBlendEquationi, "glBlendEquationi"]()(buf, mode)


def blend_func(sfactor: BlendingFactor, dfactor: BlendingFactor) raises:
    return get_fn[glBlendFunc, "glBlendFunc"]()(sfactor, dfactor)


def blend_func_separate(sfactor_rgb: BlendingFactor, dfactor_rgb: BlendingFactor, sfactor_alpha: BlendingFactor, dfactor_alpha: BlendingFactor) raises:
    return get_fn[glBlendFuncSeparate, "glBlendFuncSeparate"]()(sfactor_rgb, dfactor_rgb, sfactor_alpha, dfactor_alpha)


def blend_func_separatei(buf: GLuint, src_rgb: BlendingFactor, dst_rgb: BlendingFactor, src_alpha: BlendingFactor, dst_alpha: BlendingFactor) raises:
    return get_fn[glBlendFuncSeparatei, "glBlendFuncSeparatei"]()(buf, src_rgb, dst_rgb, src_alpha, dst_alpha)


def blend_funci(buf: GLuint, src: BlendingFactor, dst: BlendingFactor) raises:
    return get_fn[glBlendFunci, "glBlendFunci"]()(buf, src, dst)


def blit_framebuffer(src_x0: GLint, src_y0: GLint, src_x1: GLint, src_y1: GLint, dst_x0: GLint, dst_y0: GLint, dst_x1: GLint, dst_y1: GLint, mask: ClearBufferMask, filter: BlitFramebufferFilter) raises:
    return get_fn[glBlitFramebuffer, "glBlitFramebuffer"]()(src_x0, src_y0, src_x1, src_y1, dst_x0, dst_y0, dst_x1, dst_y1, mask, filter)


def blit_named_framebuffer(read_framebuffer: GLuint, draw_framebuffer: GLuint, src_x0: GLint, src_y0: GLint, src_x1: GLint, src_y1: GLint, dst_x0: GLint, dst_y0: GLint, dst_x1: GLint, dst_y1: GLint, mask: ClearBufferMask, filter: BlitFramebufferFilter) raises:
    return get_fn[glBlitNamedFramebuffer, "glBlitNamedFramebuffer"]()(read_framebuffer, draw_framebuffer, src_x0, src_y0, src_x1, src_y1, dst_x0, dst_y0, dst_x1, dst_y1, mask, filter)


def buffer_data(target: BufferTargetARB, size: GLsizeiptr, data: Ptr[NoneType, ImmutAnyOrigin], usage: BufferUsageARB) raises:
    return get_fn[glBufferData, "glBufferData"]()(target, size, data, usage)


def buffer_storage(target: BufferStorageTarget, size: GLsizeiptr, data: Ptr[NoneType, ImmutAnyOrigin], flags: BufferStorageMask) raises:
    return get_fn[glBufferStorage, "glBufferStorage"]()(target, size, data, flags)


def buffer_sub_data(target: BufferTargetARB, offset: GLintptr, size: GLsizeiptr, data: Ptr[NoneType, ImmutAnyOrigin]) raises:
    return get_fn[glBufferSubData, "glBufferSubData"]()(target, offset, size, data)


def check_framebuffer_status(target: FramebufferTarget) raises -> FramebufferStatus:
    return get_fn[glCheckFramebufferStatus, "glCheckFramebufferStatus"]()(target)


def check_named_framebuffer_status(framebuffer: GLuint, target: FramebufferTarget) raises -> FramebufferStatus:
    return get_fn[glCheckNamedFramebufferStatus, "glCheckNamedFramebufferStatus"]()(framebuffer, target)


def clamp_color(target: ClampColorTargetARB, clamp: ClampColorModeARB) raises:
    return get_fn[glClampColor, "glClampColor"]()(target, clamp)


def clear(mask: ClearBufferMask) raises:
    return get_fn[glClear, "glClear"]()(mask)


def clear_buffer_data(target: BufferStorageTarget, internalformat: SizedInternalFormat, format: PixelFormat, type: PixelType, data: Ptr[NoneType, ImmutAnyOrigin]) raises:
    return get_fn[glClearBufferData, "glClearBufferData"]()(target, internalformat, format, type, data)


def clear_buffer_sub_data(target: BufferTargetARB, internalformat: SizedInternalFormat, offset: GLintptr, size: GLsizeiptr, format: PixelFormat, type: PixelType, data: Ptr[NoneType, ImmutAnyOrigin]) raises:
    return get_fn[glClearBufferSubData, "glClearBufferSubData"]()(target, internalformat, offset, size, format, type, data)


def clear_bufferfi(buffer: Buffer, drawbuffer: GLint, depth: GLfloat, stencil: GLint) raises:
    return get_fn[glClearBufferfi, "glClearBufferfi"]()(buffer, drawbuffer, depth, stencil)


def clear_bufferfv(buffer: Buffer, drawbuffer: GLint, value: Ptr[GLfloat, ImmutAnyOrigin]) raises:
    return get_fn[glClearBufferfv, "glClearBufferfv"]()(buffer, drawbuffer, value)


def clear_bufferiv(buffer: Buffer, drawbuffer: GLint, value: Ptr[GLint, ImmutAnyOrigin]) raises:
    return get_fn[glClearBufferiv, "glClearBufferiv"]()(buffer, drawbuffer, value)


def clear_bufferuiv(buffer: Buffer, drawbuffer: GLint, value: Ptr[GLuint, ImmutAnyOrigin]) raises:
    return get_fn[glClearBufferuiv, "glClearBufferuiv"]()(buffer, drawbuffer, value)


def clear_color(red: GLfloat, green: GLfloat, blue: GLfloat, alpha: GLfloat) raises:
    return get_fn[glClearColor, "glClearColor"]()(red, green, blue, alpha)


def clear_depth(depth: GLdouble) raises:
    return get_fn[glClearDepth, "glClearDepth"]()(depth)


def clear_depthf(d: GLfloat) raises:
    return get_fn[glClearDepthf, "glClearDepthf"]()(d)


def clear_named_buffer_data(buffer: GLuint, internalformat: SizedInternalFormat, format: PixelFormat, type: PixelType, data: Ptr[NoneType, ImmutAnyOrigin]) raises:
    return get_fn[glClearNamedBufferData, "glClearNamedBufferData"]()(buffer, internalformat, format, type, data)


def clear_named_buffer_sub_data(buffer: GLuint, internalformat: SizedInternalFormat, offset: GLintptr, size: GLsizeiptr, format: PixelFormat, type: PixelType, data: Ptr[NoneType, ImmutAnyOrigin]) raises:
    return get_fn[glClearNamedBufferSubData, "glClearNamedBufferSubData"]()(buffer, internalformat, offset, size, format, type, data)


def clear_named_framebufferfi(framebuffer: GLuint, buffer: Buffer, drawbuffer: GLint, depth: GLfloat, stencil: GLint) raises:
    return get_fn[glClearNamedFramebufferfi, "glClearNamedFramebufferfi"]()(framebuffer, buffer, drawbuffer, depth, stencil)


def clear_named_framebufferfv(framebuffer: GLuint, buffer: Buffer, drawbuffer: GLint, value: Ptr[GLfloat, ImmutAnyOrigin]) raises:
    return get_fn[glClearNamedFramebufferfv, "glClearNamedFramebufferfv"]()(framebuffer, buffer, drawbuffer, value)


def clear_named_framebufferiv(framebuffer: GLuint, buffer: Buffer, drawbuffer: GLint, value: Ptr[GLint, ImmutAnyOrigin]) raises:
    return get_fn[glClearNamedFramebufferiv, "glClearNamedFramebufferiv"]()(framebuffer, buffer, drawbuffer, value)


def clear_named_framebufferuiv(framebuffer: GLuint, buffer: Buffer, drawbuffer: GLint, value: Ptr[GLuint, ImmutAnyOrigin]) raises:
    return get_fn[glClearNamedFramebufferuiv, "glClearNamedFramebufferuiv"]()(framebuffer, buffer, drawbuffer, value)


def clear_stencil(s: GLint) raises:
    return get_fn[glClearStencil, "glClearStencil"]()(s)


def clear_tex_image(texture: GLuint, level: GLint, format: PixelFormat, type: PixelType, data: Ptr[NoneType, ImmutAnyOrigin]) raises:
    return get_fn[glClearTexImage, "glClearTexImage"]()(texture, level, format, type, data)


def clear_tex_sub_image(texture: GLuint, level: GLint, xoffset: GLint, yoffset: GLint, zoffset: GLint, width: GLsizei, height: GLsizei, depth: GLsizei, format: PixelFormat, type: PixelType, data: Ptr[NoneType, ImmutAnyOrigin]) raises:
    return get_fn[glClearTexSubImage, "glClearTexSubImage"]()(texture, level, xoffset, yoffset, zoffset, width, height, depth, format, type, data)


def client_wait_sync(sync: GLsync, flags: SyncObjectMask, timeout: GLuint64) raises -> SyncStatus:
    return get_fn[glClientWaitSync, "glClientWaitSync"]()(sync, flags, timeout)


def clip_control(origin: ClipControlOrigin, depth: ClipControlDepth) raises:
    return get_fn[glClipControl, "glClipControl"]()(origin, depth)


def color_mask(red: Bool, green: Bool, blue: Bool, alpha: Bool) raises:
    return get_fn[glColorMask, "glColorMask"]()(GLboolean(Int(red)), GLboolean(Int(green)), GLboolean(Int(blue)), GLboolean(Int(alpha)))


def color_maski(index: GLuint, r: Bool, g: Bool, b: Bool, a: Bool) raises:
    return get_fn[glColorMaski, "glColorMaski"]()(index, GLboolean(Int(r)), GLboolean(Int(g)), GLboolean(Int(b)), GLboolean(Int(a)))


def color_p3ui(type: ColorPointerType, color: GLuint) raises:
    return get_fn[glColorP3ui, "glColorP3ui"]()(type, color)


def color_p3uiv(type: ColorPointerType, color: Ptr[GLuint, ImmutAnyOrigin]) raises:
    return get_fn[glColorP3uiv, "glColorP3uiv"]()(type, color)


def color_p4ui(type: ColorPointerType, color: GLuint) raises:
    return get_fn[glColorP4ui, "glColorP4ui"]()(type, color)


def color_p4uiv(type: ColorPointerType, color: Ptr[GLuint, ImmutAnyOrigin]) raises:
    return get_fn[glColorP4uiv, "glColorP4uiv"]()(type, color)


def compile_shader(shader: GLuint) raises:
    return get_fn[glCompileShader, "glCompileShader"]()(shader)


def compressed_tex_image_1d(target: TextureTarget, level: GLint, internalformat: InternalFormat, width: GLsizei, border: GLint, image_size: GLsizei, data: Ptr[NoneType, ImmutAnyOrigin]) raises:
    return get_fn[glCompressedTexImage1D, "glCompressedTexImage1D"]()(target, level, internalformat, width, border, image_size, data)


def compressed_tex_image_2d(target: TextureTarget, level: GLint, internalformat: InternalFormat, width: GLsizei, height: GLsizei, border: GLint, image_size: GLsizei, data: Ptr[NoneType, ImmutAnyOrigin]) raises:
    return get_fn[glCompressedTexImage2D, "glCompressedTexImage2D"]()(target, level, internalformat, width, height, border, image_size, data)


def compressed_tex_image_3d(target: TextureTarget, level: GLint, internalformat: InternalFormat, width: GLsizei, height: GLsizei, depth: GLsizei, border: GLint, image_size: GLsizei, data: Ptr[NoneType, ImmutAnyOrigin]) raises:
    return get_fn[glCompressedTexImage3D, "glCompressedTexImage3D"]()(target, level, internalformat, width, height, depth, border, image_size, data)


def compressed_tex_sub_image_1d(target: TextureTarget, level: GLint, xoffset: GLint, width: GLsizei, format: InternalFormat, image_size: GLsizei, data: Ptr[NoneType, ImmutAnyOrigin]) raises:
    return get_fn[glCompressedTexSubImage1D, "glCompressedTexSubImage1D"]()(target, level, xoffset, width, format, image_size, data)


def compressed_tex_sub_image_2d(target: TextureTarget, level: GLint, xoffset: GLint, yoffset: GLint, width: GLsizei, height: GLsizei, format: InternalFormat, image_size: GLsizei, data: Ptr[NoneType, ImmutAnyOrigin]) raises:
    return get_fn[glCompressedTexSubImage2D, "glCompressedTexSubImage2D"]()(target, level, xoffset, yoffset, width, height, format, image_size, data)


def compressed_tex_sub_image_3d(target: TextureTarget, level: GLint, xoffset: GLint, yoffset: GLint, zoffset: GLint, width: GLsizei, height: GLsizei, depth: GLsizei, format: InternalFormat, image_size: GLsizei, data: Ptr[NoneType, ImmutAnyOrigin]) raises:
    return get_fn[glCompressedTexSubImage3D, "glCompressedTexSubImage3D"]()(target, level, xoffset, yoffset, zoffset, width, height, depth, format, image_size, data)


def compressed_texture_sub_image_1d(texture: GLuint, level: GLint, xoffset: GLint, width: GLsizei, format: InternalFormat, image_size: GLsizei, data: Ptr[NoneType, ImmutAnyOrigin]) raises:
    return get_fn[glCompressedTextureSubImage1D, "glCompressedTextureSubImage1D"]()(texture, level, xoffset, width, format, image_size, data)


def compressed_texture_sub_image_2d(texture: GLuint, level: GLint, xoffset: GLint, yoffset: GLint, width: GLsizei, height: GLsizei, format: InternalFormat, image_size: GLsizei, data: Ptr[NoneType, ImmutAnyOrigin]) raises:
    return get_fn[glCompressedTextureSubImage2D, "glCompressedTextureSubImage2D"]()(texture, level, xoffset, yoffset, width, height, format, image_size, data)


def compressed_texture_sub_image_3d(texture: GLuint, level: GLint, xoffset: GLint, yoffset: GLint, zoffset: GLint, width: GLsizei, height: GLsizei, depth: GLsizei, format: InternalFormat, image_size: GLsizei, data: Ptr[NoneType, ImmutAnyOrigin]) raises:
    return get_fn[glCompressedTextureSubImage3D, "glCompressedTextureSubImage3D"]()(texture, level, xoffset, yoffset, zoffset, width, height, depth, format, image_size, data)


def copy_buffer_sub_data(read_target: CopyBufferSubDataTarget, write_target: CopyBufferSubDataTarget, read_offset: GLintptr, write_offset: GLintptr, size: GLsizeiptr) raises:
    return get_fn[glCopyBufferSubData, "glCopyBufferSubData"]()(read_target, write_target, read_offset, write_offset, size)


def copy_image_sub_data(src_name: GLuint, src_target: CopyImageSubDataTarget, src_level: GLint, src_x: GLint, src_y: GLint, src_z: GLint, dst_name: GLuint, dst_target: CopyImageSubDataTarget, dst_level: GLint, dst_x: GLint, dst_y: GLint, dst_z: GLint, src_width: GLsizei, src_height: GLsizei, src_depth: GLsizei) raises:
    return get_fn[glCopyImageSubData, "glCopyImageSubData"]()(src_name, src_target, src_level, src_x, src_y, src_z, dst_name, dst_target, dst_level, dst_x, dst_y, dst_z, src_width, src_height, src_depth)


def copy_named_buffer_sub_data(read_buffer: GLuint, write_buffer: GLuint, read_offset: GLintptr, write_offset: GLintptr, size: GLsizeiptr) raises:
    return get_fn[glCopyNamedBufferSubData, "glCopyNamedBufferSubData"]()(read_buffer, write_buffer, read_offset, write_offset, size)


def copy_tex_image_1d(target: TextureTarget, level: GLint, internalformat: InternalFormat, x: GLint, y: GLint, width: GLsizei, border: GLint) raises:
    return get_fn[glCopyTexImage1D, "glCopyTexImage1D"]()(target, level, internalformat, x, y, width, border)


def copy_tex_image_2d(target: TextureTarget, level: GLint, internalformat: InternalFormat, x: GLint, y: GLint, width: GLsizei, height: GLsizei, border: GLint) raises:
    return get_fn[glCopyTexImage2D, "glCopyTexImage2D"]()(target, level, internalformat, x, y, width, height, border)


def copy_tex_sub_image_1d(target: TextureTarget, level: GLint, xoffset: GLint, x: GLint, y: GLint, width: GLsizei) raises:
    return get_fn[glCopyTexSubImage1D, "glCopyTexSubImage1D"]()(target, level, xoffset, x, y, width)


def copy_tex_sub_image_2d(target: TextureTarget, level: GLint, xoffset: GLint, yoffset: GLint, x: GLint, y: GLint, width: GLsizei, height: GLsizei) raises:
    return get_fn[glCopyTexSubImage2D, "glCopyTexSubImage2D"]()(target, level, xoffset, yoffset, x, y, width, height)


def copy_tex_sub_image_3d(target: TextureTarget, level: GLint, xoffset: GLint, yoffset: GLint, zoffset: GLint, x: GLint, y: GLint, width: GLsizei, height: GLsizei) raises:
    return get_fn[glCopyTexSubImage3D, "glCopyTexSubImage3D"]()(target, level, xoffset, yoffset, zoffset, x, y, width, height)


def copy_texture_sub_image_1d(texture: GLuint, level: GLint, xoffset: GLint, x: GLint, y: GLint, width: GLsizei) raises:
    return get_fn[glCopyTextureSubImage1D, "glCopyTextureSubImage1D"]()(texture, level, xoffset, x, y, width)


def copy_texture_sub_image_2d(texture: GLuint, level: GLint, xoffset: GLint, yoffset: GLint, x: GLint, y: GLint, width: GLsizei, height: GLsizei) raises:
    return get_fn[glCopyTextureSubImage2D, "glCopyTextureSubImage2D"]()(texture, level, xoffset, yoffset, x, y, width, height)


def copy_texture_sub_image_3d(texture: GLuint, level: GLint, xoffset: GLint, yoffset: GLint, zoffset: GLint, x: GLint, y: GLint, width: GLsizei, height: GLsizei) raises:
    return get_fn[glCopyTextureSubImage3D, "glCopyTextureSubImage3D"]()(texture, level, xoffset, yoffset, zoffset, x, y, width, height)


def create_buffers(n: GLsizei, buffers: Ptr[GLuint, MutAnyOrigin]) raises:
    return get_fn[glCreateBuffers, "glCreateBuffers"]()(n, buffers)


def create_framebuffers(n: GLsizei, framebuffers: Ptr[GLuint, MutAnyOrigin]) raises:
    return get_fn[glCreateFramebuffers, "glCreateFramebuffers"]()(n, framebuffers)


def create_program() raises -> GLuint:
    return get_fn[glCreateProgram, "glCreateProgram"]()()


def create_program_pipelines(n: GLsizei, pipelines: Ptr[GLuint, MutAnyOrigin]) raises:
    return get_fn[glCreateProgramPipelines, "glCreateProgramPipelines"]()(n, pipelines)


def create_queries(target: QueryTarget, n: GLsizei, ids: Ptr[GLuint, MutAnyOrigin]) raises:
    return get_fn[glCreateQueries, "glCreateQueries"]()(target, n, ids)


def create_renderbuffers(n: GLsizei, renderbuffers: Ptr[GLuint, MutAnyOrigin]) raises:
    return get_fn[glCreateRenderbuffers, "glCreateRenderbuffers"]()(n, renderbuffers)


def create_samplers(n: GLsizei, samplers: Ptr[GLuint, MutAnyOrigin]) raises:
    return get_fn[glCreateSamplers, "glCreateSamplers"]()(n, samplers)


def create_shader(type: ShaderType) raises -> GLuint:
    return get_fn[glCreateShader, "glCreateShader"]()(type)


def create_shader_programv(type: ShaderType, count: GLsizei, var strings: List[String]) raises -> GLuint:
    var c_list = [str.as_c_string_slice().unsafe_ptr().as_any_origin() for ref str in strings]
    return get_fn[glCreateShaderProgramv, "glCreateShaderProgramv"]()(type, count, c_list.steal_data())


def create_textures(target: TextureTarget, n: GLsizei, textures: Ptr[GLuint, MutAnyOrigin]) raises:
    return get_fn[glCreateTextures, "glCreateTextures"]()(target, n, textures)


def create_transform_feedbacks(n: GLsizei, ids: Ptr[GLuint, MutAnyOrigin]) raises:
    return get_fn[glCreateTransformFeedbacks, "glCreateTransformFeedbacks"]()(n, ids)


def create_vertex_arrays(n: GLsizei, arrays: Ptr[GLuint, MutAnyOrigin]) raises:
    return get_fn[glCreateVertexArrays, "glCreateVertexArrays"]()(n, arrays)


def cull_face(mode: TriangleFace) raises:
    return get_fn[glCullFace, "glCullFace"]()(mode)


def debug_message_callback(callback: GLDEBUGPROC, user_param: Ptr[NoneType, ImmutAnyOrigin]) raises:
    return get_fn[glDebugMessageCallback, "glDebugMessageCallback"]()(callback, user_param)


def debug_message_control(source: DebugSource, type: DebugType, severity: DebugSeverity, count: GLsizei, ids: Ptr[GLuint, ImmutAnyOrigin], enabled: Bool) raises:
    return get_fn[glDebugMessageControl, "glDebugMessageControl"]()(source, type, severity, count, ids, GLboolean(Int(enabled)))


def debug_message_insert(source: DebugSource, type: DebugType, id: GLuint, severity: DebugSeverity, length: GLsizei, var buf: String) raises:
    return get_fn[glDebugMessageInsert, "glDebugMessageInsert"]()(source, type, id, severity, length, buf.as_c_string_slice().unsafe_ptr().as_any_origin())


def delete_buffers(n: GLsizei, buffers: Ptr[GLuint, ImmutAnyOrigin]) raises:
    return get_fn[glDeleteBuffers, "glDeleteBuffers"]()(n, buffers)


def delete_framebuffers(n: GLsizei, framebuffers: Ptr[GLuint, ImmutAnyOrigin]) raises:
    return get_fn[glDeleteFramebuffers, "glDeleteFramebuffers"]()(n, framebuffers)


def delete_program(program: GLuint) raises:
    return get_fn[glDeleteProgram, "glDeleteProgram"]()(program)


def delete_program_pipelines(n: GLsizei, pipelines: Ptr[GLuint, ImmutAnyOrigin]) raises:
    return get_fn[glDeleteProgramPipelines, "glDeleteProgramPipelines"]()(n, pipelines)


def delete_queries(n: GLsizei, ids: Ptr[GLuint, ImmutAnyOrigin]) raises:
    return get_fn[glDeleteQueries, "glDeleteQueries"]()(n, ids)


def delete_renderbuffers(n: GLsizei, renderbuffers: Ptr[GLuint, ImmutAnyOrigin]) raises:
    return get_fn[glDeleteRenderbuffers, "glDeleteRenderbuffers"]()(n, renderbuffers)


def delete_samplers(count: GLsizei, samplers: Ptr[GLuint, ImmutAnyOrigin]) raises:
    return get_fn[glDeleteSamplers, "glDeleteSamplers"]()(count, samplers)


def delete_shader(shader: GLuint) raises:
    return get_fn[glDeleteShader, "glDeleteShader"]()(shader)


def delete_sync(sync: GLsync) raises:
    return get_fn[glDeleteSync, "glDeleteSync"]()(sync)


def delete_textures(n: GLsizei, textures: Ptr[GLuint, ImmutAnyOrigin]) raises:
    return get_fn[glDeleteTextures, "glDeleteTextures"]()(n, textures)


def delete_transform_feedbacks(n: GLsizei, ids: Ptr[GLuint, ImmutAnyOrigin]) raises:
    return get_fn[glDeleteTransformFeedbacks, "glDeleteTransformFeedbacks"]()(n, ids)


def delete_vertex_arrays(n: GLsizei, arrays: Ptr[GLuint, ImmutAnyOrigin]) raises:
    return get_fn[glDeleteVertexArrays, "glDeleteVertexArrays"]()(n, arrays)


def depth_func(func: DepthFunction) raises:
    return get_fn[glDepthFunc, "glDepthFunc"]()(func)


def depth_mask(flag: Bool) raises:
    return get_fn[glDepthMask, "glDepthMask"]()(GLboolean(Int(flag)))


def depth_range(n: GLdouble, f: GLdouble) raises:
    return get_fn[glDepthRange, "glDepthRange"]()(n, f)


def depth_range_arrayv(first: GLuint, count: GLsizei, v: Ptr[GLdouble, ImmutAnyOrigin]) raises:
    return get_fn[glDepthRangeArrayv, "glDepthRangeArrayv"]()(first, count, v)


def depth_range_indexed(index: GLuint, n: GLdouble, f: GLdouble) raises:
    return get_fn[glDepthRangeIndexed, "glDepthRangeIndexed"]()(index, n, f)


def depth_rangef(n: GLfloat, f: GLfloat) raises:
    return get_fn[glDepthRangef, "glDepthRangef"]()(n, f)


def detach_shader(program: GLuint, shader: GLuint) raises:
    return get_fn[glDetachShader, "glDetachShader"]()(program, shader)


def disable(cap: EnableCap) raises:
    return get_fn[glDisable, "glDisable"]()(cap)


def disable_vertex_array_attrib(vaobj: GLuint, index: GLuint) raises:
    return get_fn[glDisableVertexArrayAttrib, "glDisableVertexArrayAttrib"]()(vaobj, index)


def disable_vertex_attrib_array(index: GLuint) raises:
    return get_fn[glDisableVertexAttribArray, "glDisableVertexAttribArray"]()(index)


def disablei(target: EnableCap, index: GLuint) raises:
    return get_fn[glDisablei, "glDisablei"]()(target, index)


def dispatch_compute(num_groups_x: GLuint, num_groups_y: GLuint, num_groups_z: GLuint) raises:
    return get_fn[glDispatchCompute, "glDispatchCompute"]()(num_groups_x, num_groups_y, num_groups_z)


def dispatch_compute_indirect(indirect: GLintptr) raises:
    return get_fn[glDispatchComputeIndirect, "glDispatchComputeIndirect"]()(indirect)


def draw_arrays(mode: PrimitiveType, first: GLint, count: GLsizei) raises:
    return get_fn[glDrawArrays, "glDrawArrays"]()(mode, first, count)


def draw_arrays_indirect(mode: PrimitiveType, indirect: Ptr[NoneType, ImmutAnyOrigin]) raises:
    return get_fn[glDrawArraysIndirect, "glDrawArraysIndirect"]()(mode, indirect)


def draw_arrays_instanced(mode: PrimitiveType, first: GLint, count: GLsizei, instancecount: GLsizei) raises:
    return get_fn[glDrawArraysInstanced, "glDrawArraysInstanced"]()(mode, first, count, instancecount)


def draw_arrays_instanced_base_instance(mode: PrimitiveType, first: GLint, count: GLsizei, instancecount: GLsizei, baseinstance: GLuint) raises:
    return get_fn[glDrawArraysInstancedBaseInstance, "glDrawArraysInstancedBaseInstance"]()(mode, first, count, instancecount, baseinstance)


def draw_buffer(buf: DrawBufferMode) raises:
    return get_fn[glDrawBuffer, "glDrawBuffer"]()(buf)


def draw_buffers(n: GLsizei, bufs: Ptr[DrawBufferMode, ImmutAnyOrigin]) raises:
    return get_fn[glDrawBuffers, "glDrawBuffers"]()(n, bufs)


def draw_elements(mode: PrimitiveType, count: GLsizei, type: DrawElementsType, indices: Ptr[NoneType, ImmutAnyOrigin]) raises:
    return get_fn[glDrawElements, "glDrawElements"]()(mode, count, type, indices)


def draw_elements_base_vertex(mode: PrimitiveType, count: GLsizei, type: DrawElementsType, indices: Ptr[NoneType, ImmutAnyOrigin], basevertex: GLint) raises:
    return get_fn[glDrawElementsBaseVertex, "glDrawElementsBaseVertex"]()(mode, count, type, indices, basevertex)


def draw_elements_indirect(mode: PrimitiveType, type: DrawElementsType, indirect: Ptr[NoneType, ImmutAnyOrigin]) raises:
    return get_fn[glDrawElementsIndirect, "glDrawElementsIndirect"]()(mode, type, indirect)


def draw_elements_instanced(mode: PrimitiveType, count: GLsizei, type: DrawElementsType, indices: Ptr[NoneType, ImmutAnyOrigin], instancecount: GLsizei) raises:
    return get_fn[glDrawElementsInstanced, "glDrawElementsInstanced"]()(mode, count, type, indices, instancecount)


def draw_elements_instanced_base_instance(mode: PrimitiveType, count: GLsizei, type: DrawElementsType, indices: Ptr[NoneType, ImmutAnyOrigin], instancecount: GLsizei, baseinstance: GLuint) raises:
    return get_fn[glDrawElementsInstancedBaseInstance, "glDrawElementsInstancedBaseInstance"]()(mode, count, type, indices, instancecount, baseinstance)


def draw_elements_instanced_base_vertex(mode: PrimitiveType, count: GLsizei, type: DrawElementsType, indices: Ptr[NoneType, ImmutAnyOrigin], instancecount: GLsizei, basevertex: GLint) raises:
    return get_fn[glDrawElementsInstancedBaseVertex, "glDrawElementsInstancedBaseVertex"]()(mode, count, type, indices, instancecount, basevertex)


def draw_elements_instanced_base_vertex_base_instance(mode: PrimitiveType, count: GLsizei, type: DrawElementsType, indices: Ptr[NoneType, ImmutAnyOrigin], instancecount: GLsizei, basevertex: GLint, baseinstance: GLuint) raises:
    return get_fn[glDrawElementsInstancedBaseVertexBaseInstance, "glDrawElementsInstancedBaseVertexBaseInstance"]()(mode, count, type, indices, instancecount, basevertex, baseinstance)


def draw_range_elements(mode: PrimitiveType, start: GLuint, end: GLuint, count: GLsizei, type: DrawElementsType, indices: Ptr[NoneType, ImmutAnyOrigin]) raises:
    return get_fn[glDrawRangeElements, "glDrawRangeElements"]()(mode, start, end, count, type, indices)


def draw_range_elements_base_vertex(mode: PrimitiveType, start: GLuint, end: GLuint, count: GLsizei, type: DrawElementsType, indices: Ptr[NoneType, ImmutAnyOrigin], basevertex: GLint) raises:
    return get_fn[glDrawRangeElementsBaseVertex, "glDrawRangeElementsBaseVertex"]()(mode, start, end, count, type, indices, basevertex)


def draw_transform_feedback(mode: PrimitiveType, id: GLuint) raises:
    return get_fn[glDrawTransformFeedback, "glDrawTransformFeedback"]()(mode, id)


def draw_transform_feedback_instanced(mode: PrimitiveType, id: GLuint, instancecount: GLsizei) raises:
    return get_fn[glDrawTransformFeedbackInstanced, "glDrawTransformFeedbackInstanced"]()(mode, id, instancecount)


def draw_transform_feedback_stream(mode: PrimitiveType, id: GLuint, stream: GLuint) raises:
    return get_fn[glDrawTransformFeedbackStream, "glDrawTransformFeedbackStream"]()(mode, id, stream)


def draw_transform_feedback_stream_instanced(mode: PrimitiveType, id: GLuint, stream: GLuint, instancecount: GLsizei) raises:
    return get_fn[glDrawTransformFeedbackStreamInstanced, "glDrawTransformFeedbackStreamInstanced"]()(mode, id, stream, instancecount)


def enable(cap: EnableCap) raises:
    return get_fn[glEnable, "glEnable"]()(cap)


def enable_vertex_array_attrib(vaobj: GLuint, index: GLuint) raises:
    return get_fn[glEnableVertexArrayAttrib, "glEnableVertexArrayAttrib"]()(vaobj, index)


def enable_vertex_attrib_array(index: GLuint) raises:
    return get_fn[glEnableVertexAttribArray, "glEnableVertexAttribArray"]()(index)


def enablei(target: EnableCap, index: GLuint) raises:
    return get_fn[glEnablei, "glEnablei"]()(target, index)


def end_conditional_render() raises:
    return get_fn[glEndConditionalRender, "glEndConditionalRender"]()()


def end_query(target: QueryTarget) raises:
    return get_fn[glEndQuery, "glEndQuery"]()(target)


def end_query_indexed(target: QueryTarget, index: GLuint) raises:
    return get_fn[glEndQueryIndexed, "glEndQueryIndexed"]()(target, index)


def end_transform_feedback() raises:
    return get_fn[glEndTransformFeedback, "glEndTransformFeedback"]()()


def fence_sync(condition: SyncCondition, flags: SyncBehaviorFlags) raises -> GLsync:
    return get_fn[glFenceSync, "glFenceSync"]()(condition, flags)


def finish() raises:
    return get_fn[glFinish, "glFinish"]()()


def flush() raises:
    return get_fn[glFlush, "glFlush"]()()


def flush_mapped_buffer_range(target: BufferTargetARB, offset: GLintptr, length: GLsizeiptr) raises:
    return get_fn[glFlushMappedBufferRange, "glFlushMappedBufferRange"]()(target, offset, length)


def flush_mapped_named_buffer_range(buffer: GLuint, offset: GLintptr, length: GLsizeiptr) raises:
    return get_fn[glFlushMappedNamedBufferRange, "glFlushMappedNamedBufferRange"]()(buffer, offset, length)


def framebuffer_parameteri(target: FramebufferTarget, pname: FramebufferParameterName, param: GLint) raises:
    return get_fn[glFramebufferParameteri, "glFramebufferParameteri"]()(target, pname, param)


def framebuffer_renderbuffer(target: FramebufferTarget, attachment: FramebufferAttachment, renderbuffertarget: RenderbufferTarget, renderbuffer: GLuint) raises:
    return get_fn[glFramebufferRenderbuffer, "glFramebufferRenderbuffer"]()(target, attachment, renderbuffertarget, renderbuffer)


def framebuffer_texture(target: FramebufferTarget, attachment: FramebufferAttachment, texture: GLuint, level: GLint) raises:
    return get_fn[glFramebufferTexture, "glFramebufferTexture"]()(target, attachment, texture, level)


def framebuffer_texture_1d(target: FramebufferTarget, attachment: FramebufferAttachment, textarget: TextureTarget, texture: GLuint, level: GLint) raises:
    return get_fn[glFramebufferTexture1D, "glFramebufferTexture1D"]()(target, attachment, textarget, texture, level)


def framebuffer_texture_2d(target: FramebufferTarget, attachment: FramebufferAttachment, textarget: TextureTarget, texture: GLuint, level: GLint) raises:
    return get_fn[glFramebufferTexture2D, "glFramebufferTexture2D"]()(target, attachment, textarget, texture, level)


def framebuffer_texture_3d(target: FramebufferTarget, attachment: FramebufferAttachment, textarget: TextureTarget, texture: GLuint, level: GLint, zoffset: GLint) raises:
    return get_fn[glFramebufferTexture3D, "glFramebufferTexture3D"]()(target, attachment, textarget, texture, level, zoffset)


def framebuffer_texture_layer(target: FramebufferTarget, attachment: FramebufferAttachment, texture: GLuint, level: GLint, layer: GLint) raises:
    return get_fn[glFramebufferTextureLayer, "glFramebufferTextureLayer"]()(target, attachment, texture, level, layer)


def front_face(mode: FrontFaceDirection) raises:
    return get_fn[glFrontFace, "glFrontFace"]()(mode)


def gen_buffers(n: GLsizei, buffers: Ptr[GLuint, MutAnyOrigin]) raises:
    return get_fn[glGenBuffers, "glGenBuffers"]()(n, buffers)


def gen_framebuffers(n: GLsizei, framebuffers: Ptr[GLuint, MutAnyOrigin]) raises:
    return get_fn[glGenFramebuffers, "glGenFramebuffers"]()(n, framebuffers)


def gen_program_pipelines(n: GLsizei, pipelines: Ptr[GLuint, MutAnyOrigin]) raises:
    return get_fn[glGenProgramPipelines, "glGenProgramPipelines"]()(n, pipelines)


def gen_queries(n: GLsizei, ids: Ptr[GLuint, MutAnyOrigin]) raises:
    return get_fn[glGenQueries, "glGenQueries"]()(n, ids)


def gen_renderbuffers(n: GLsizei, renderbuffers: Ptr[GLuint, MutAnyOrigin]) raises:
    return get_fn[glGenRenderbuffers, "glGenRenderbuffers"]()(n, renderbuffers)


def gen_samplers(count: GLsizei, samplers: Ptr[GLuint, MutAnyOrigin]) raises:
    return get_fn[glGenSamplers, "glGenSamplers"]()(count, samplers)


def gen_textures(n: GLsizei, textures: Ptr[GLuint, MutAnyOrigin]) raises:
    return get_fn[glGenTextures, "glGenTextures"]()(n, textures)


def gen_transform_feedbacks(n: GLsizei, ids: Ptr[GLuint, MutAnyOrigin]) raises:
    return get_fn[glGenTransformFeedbacks, "glGenTransformFeedbacks"]()(n, ids)


def gen_vertex_arrays(n: GLsizei, arrays: Ptr[GLuint, MutAnyOrigin]) raises:
    return get_fn[glGenVertexArrays, "glGenVertexArrays"]()(n, arrays)


def generate_mipmap(target: TextureTarget) raises:
    return get_fn[glGenerateMipmap, "glGenerateMipmap"]()(target)


def generate_texture_mipmap(texture: GLuint) raises:
    return get_fn[glGenerateTextureMipmap, "glGenerateTextureMipmap"]()(texture)


def get_active_atomic_counter_bufferiv(program: GLuint, buffer_index: GLuint, pname: AtomicCounterBufferPName, params: Ptr[GLint, MutAnyOrigin]) raises:
    return get_fn[glGetActiveAtomicCounterBufferiv, "glGetActiveAtomicCounterBufferiv"]()(program, buffer_index, pname, params)


def get_active_attrib(program: GLuint, index: GLuint, buf_size: GLsizei, length: Ptr[GLsizei, MutAnyOrigin], size: Ptr[GLint, MutAnyOrigin], type: Ptr[AttributeType, MutAnyOrigin], var name: String) raises:
    return get_fn[glGetActiveAttrib, "glGetActiveAttrib"]()(program, index, buf_size, length, size, type, name.as_c_string_slice().unsafe_ptr().as_any_origin())


def get_active_subroutine_name(program: GLuint, shadertype: ShaderType, index: GLuint, buf_size: GLsizei, length: Ptr[GLsizei, MutAnyOrigin], var name: String) raises:
    return get_fn[glGetActiveSubroutineName, "glGetActiveSubroutineName"]()(program, shadertype, index, buf_size, length, name.as_c_string_slice().unsafe_ptr().as_any_origin())


def get_active_subroutine_uniform_name(program: GLuint, shadertype: ShaderType, index: GLuint, buf_size: GLsizei, length: Ptr[GLsizei, MutAnyOrigin], var name: String) raises:
    return get_fn[glGetActiveSubroutineUniformName, "glGetActiveSubroutineUniformName"]()(program, shadertype, index, buf_size, length, name.as_c_string_slice().unsafe_ptr().as_any_origin())


def get_active_subroutine_uniformiv(program: GLuint, shadertype: ShaderType, index: GLuint, pname: SubroutineParameterName, values: Ptr[GLint, MutAnyOrigin]) raises:
    return get_fn[glGetActiveSubroutineUniformiv, "glGetActiveSubroutineUniformiv"]()(program, shadertype, index, pname, values)


def get_active_uniform(program: GLuint, index: GLuint, buf_size: GLsizei, length: Ptr[GLsizei, MutAnyOrigin], size: Ptr[GLint, MutAnyOrigin], type: Ptr[UniformType, MutAnyOrigin], var name: String) raises:
    return get_fn[glGetActiveUniform, "glGetActiveUniform"]()(program, index, buf_size, length, size, type, name.as_c_string_slice().unsafe_ptr().as_any_origin())


def get_active_uniform_block_name(program: GLuint, uniform_block_index: GLuint, buf_size: GLsizei, length: Ptr[GLsizei, MutAnyOrigin], var uniform_block_name: String) raises:
    return get_fn[glGetActiveUniformBlockName, "glGetActiveUniformBlockName"]()(program, uniform_block_index, buf_size, length, uniform_block_name.as_c_string_slice().unsafe_ptr().as_any_origin())


def get_active_uniform_blockiv(program: GLuint, uniform_block_index: GLuint, pname: UniformBlockPName, params: Ptr[GLint, MutAnyOrigin]) raises:
    return get_fn[glGetActiveUniformBlockiv, "glGetActiveUniformBlockiv"]()(program, uniform_block_index, pname, params)


def get_active_uniform_name(program: GLuint, uniform_index: GLuint, buf_size: GLsizei, length: Ptr[GLsizei, MutAnyOrigin], var uniform_name: String) raises:
    return get_fn[glGetActiveUniformName, "glGetActiveUniformName"]()(program, uniform_index, buf_size, length, uniform_name.as_c_string_slice().unsafe_ptr().as_any_origin())


def get_active_uniformsiv(program: GLuint, uniform_count: GLsizei, uniform_indices: Ptr[GLuint, ImmutAnyOrigin], pname: UniformPName, params: Ptr[GLint, MutAnyOrigin]) raises:
    return get_fn[glGetActiveUniformsiv, "glGetActiveUniformsiv"]()(program, uniform_count, uniform_indices, pname, params)


def get_attached_shaders(program: GLuint, max_count: GLsizei, count: Ptr[GLsizei, MutAnyOrigin], shaders: Ptr[GLuint, MutAnyOrigin]) raises:
    return get_fn[glGetAttachedShaders, "glGetAttachedShaders"]()(program, max_count, count, shaders)


def get_attrib_location(program: GLuint, var name: String) raises -> GLint:
    return get_fn[glGetAttribLocation, "glGetAttribLocation"]()(program, name.as_c_string_slice().unsafe_ptr().as_any_origin())


def get_booleani_v(target: BufferTargetARB, index: GLuint, data: Ptr[GLboolean, MutAnyOrigin]) raises:
    return get_fn[glGetBooleani_v, "glGetBooleani_v"]()(target, index, data)


def get_booleanv(pname: GetPName, data: Ptr[GLboolean, MutAnyOrigin]) raises:
    return get_fn[glGetBooleanv, "glGetBooleanv"]()(pname, data)


def get_buffer_parameteri64v(target: BufferTargetARB, pname: BufferPNameARB, params: Ptr[GLint64, MutAnyOrigin]) raises:
    return get_fn[glGetBufferParameteri64v, "glGetBufferParameteri64v"]()(target, pname, params)


def get_buffer_parameteriv(target: BufferTargetARB, pname: BufferPNameARB, params: Ptr[GLint, MutAnyOrigin]) raises:
    return get_fn[glGetBufferParameteriv, "glGetBufferParameteriv"]()(target, pname, params)


def get_buffer_pointerv(target: BufferTargetARB, pname: BufferPointerNameARB, params: Ptr[Ptr[NoneType, MutAnyOrigin], MutAnyOrigin]) raises:
    return get_fn[glGetBufferPointerv, "glGetBufferPointerv"]()(target, pname, params)


def get_buffer_sub_data(target: BufferTargetARB, offset: GLintptr, size: GLsizeiptr, data: Ptr[NoneType, MutAnyOrigin]) raises:
    return get_fn[glGetBufferSubData, "glGetBufferSubData"]()(target, offset, size, data)


def get_compressed_tex_image(target: TextureTarget, level: GLint, img: Ptr[NoneType, MutAnyOrigin]) raises:
    return get_fn[glGetCompressedTexImage, "glGetCompressedTexImage"]()(target, level, img)


def get_compressed_texture_image(texture: GLuint, level: GLint, buf_size: GLsizei, pixels: Ptr[NoneType, MutAnyOrigin]) raises:
    return get_fn[glGetCompressedTextureImage, "glGetCompressedTextureImage"]()(texture, level, buf_size, pixels)


def get_compressed_texture_sub_image(texture: GLuint, level: GLint, xoffset: GLint, yoffset: GLint, zoffset: GLint, width: GLsizei, height: GLsizei, depth: GLsizei, buf_size: GLsizei, pixels: Ptr[NoneType, MutAnyOrigin]) raises:
    return get_fn[glGetCompressedTextureSubImage, "glGetCompressedTextureSubImage"]()(texture, level, xoffset, yoffset, zoffset, width, height, depth, buf_size, pixels)


def get_debug_message_log(count: GLuint, buf_size: GLsizei, sources: Ptr[DebugSource, MutAnyOrigin], types: Ptr[DebugType, MutAnyOrigin], ids: Ptr[GLuint, MutAnyOrigin], severities: Ptr[DebugSeverity, MutAnyOrigin], lengths: Ptr[GLsizei, MutAnyOrigin], var message_log: String) raises -> GLuint:
    return get_fn[glGetDebugMessageLog, "glGetDebugMessageLog"]()(count, buf_size, sources, types, ids, severities, lengths, message_log.as_c_string_slice().unsafe_ptr().as_any_origin())


def get_doublei_v(target: GetPName, index: GLuint, data: Ptr[GLdouble, MutAnyOrigin]) raises:
    return get_fn[glGetDoublei_v, "glGetDoublei_v"]()(target, index, data)


def get_doublev(pname: GetPName, data: Ptr[GLdouble, MutAnyOrigin]) raises:
    return get_fn[glGetDoublev, "glGetDoublev"]()(pname, data)


def get_error() raises -> ErrorCode:
    return get_fn[glGetError, "glGetError"]()()


def get_floati_v(target: GetPName, index: GLuint, data: Ptr[GLfloat, MutAnyOrigin]) raises:
    return get_fn[glGetFloati_v, "glGetFloati_v"]()(target, index, data)


def get_floatv(pname: GetPName, data: Ptr[GLfloat, MutAnyOrigin]) raises:
    return get_fn[glGetFloatv, "glGetFloatv"]()(pname, data)


def get_frag_data_index(program: GLuint, var name: String) raises -> GLint:
    return get_fn[glGetFragDataIndex, "glGetFragDataIndex"]()(program, name.as_c_string_slice().unsafe_ptr().as_any_origin())


def get_frag_data_location(program: GLuint, var name: String) raises -> GLint:
    return get_fn[glGetFragDataLocation, "glGetFragDataLocation"]()(program, name.as_c_string_slice().unsafe_ptr().as_any_origin())


def get_framebuffer_attachment_parameteriv(target: FramebufferTarget, attachment: FramebufferAttachment, pname: FramebufferAttachmentParameterName, params: Ptr[GLint, MutAnyOrigin]) raises:
    return get_fn[glGetFramebufferAttachmentParameteriv, "glGetFramebufferAttachmentParameteriv"]()(target, attachment, pname, params)


def get_framebuffer_parameteriv(target: FramebufferTarget, pname: FramebufferAttachmentParameterName, params: Ptr[GLint, MutAnyOrigin]) raises:
    return get_fn[glGetFramebufferParameteriv, "glGetFramebufferParameteriv"]()(target, pname, params)


def get_graphics_reset_status() raises -> GraphicsResetStatus:
    return get_fn[glGetGraphicsResetStatus, "glGetGraphicsResetStatus"]()()


def get_integer64i_v(target: GetPName, index: GLuint, data: Ptr[GLint64, MutAnyOrigin]) raises:
    return get_fn[glGetInteger64i_v, "glGetInteger64i_v"]()(target, index, data)


def get_integer64v(pname: GetPName, data: Ptr[GLint64, MutAnyOrigin]) raises:
    return get_fn[glGetInteger64v, "glGetInteger64v"]()(pname, data)


def get_integeri_v(target: GetPName, index: GLuint, data: Ptr[GLint, MutAnyOrigin]) raises:
    return get_fn[glGetIntegeri_v, "glGetIntegeri_v"]()(target, index, data)


def get_integerv(pname: GetPName, data: Ptr[GLint, MutAnyOrigin]) raises:
    return get_fn[glGetIntegerv, "glGetIntegerv"]()(pname, data)


def get_internalformati64v(target: TextureTarget, internalformat: InternalFormat, pname: InternalFormatPName, count: GLsizei, params: Ptr[GLint64, MutAnyOrigin]) raises:
    return get_fn[glGetInternalformati64v, "glGetInternalformati64v"]()(target, internalformat, pname, count, params)


def get_internalformativ(target: TextureTarget, internalformat: InternalFormat, pname: InternalFormatPName, count: GLsizei, params: Ptr[GLint, MutAnyOrigin]) raises:
    return get_fn[glGetInternalformativ, "glGetInternalformativ"]()(target, internalformat, pname, count, params)


def get_multisamplefv(pname: GetMultisamplePNameNV, index: GLuint, val: Ptr[GLfloat, MutAnyOrigin]) raises:
    return get_fn[glGetMultisamplefv, "glGetMultisamplefv"]()(pname, index, val)


def get_named_buffer_parameteri64v(buffer: GLuint, pname: BufferPNameARB, params: Ptr[GLint64, MutAnyOrigin]) raises:
    return get_fn[glGetNamedBufferParameteri64v, "glGetNamedBufferParameteri64v"]()(buffer, pname, params)


def get_named_buffer_parameteriv(buffer: GLuint, pname: BufferPNameARB, params: Ptr[GLint, MutAnyOrigin]) raises:
    return get_fn[glGetNamedBufferParameteriv, "glGetNamedBufferParameteriv"]()(buffer, pname, params)


def get_named_buffer_pointerv(buffer: GLuint, pname: BufferPointerNameARB, params: Ptr[Ptr[NoneType, MutAnyOrigin], MutAnyOrigin]) raises:
    return get_fn[glGetNamedBufferPointerv, "glGetNamedBufferPointerv"]()(buffer, pname, params)


def get_named_buffer_sub_data(buffer: GLuint, offset: GLintptr, size: GLsizeiptr, data: Ptr[NoneType, MutAnyOrigin]) raises:
    return get_fn[glGetNamedBufferSubData, "glGetNamedBufferSubData"]()(buffer, offset, size, data)


def get_named_framebuffer_attachment_parameteriv(framebuffer: GLuint, attachment: FramebufferAttachment, pname: FramebufferAttachmentParameterName, params: Ptr[GLint, MutAnyOrigin]) raises:
    return get_fn[glGetNamedFramebufferAttachmentParameteriv, "glGetNamedFramebufferAttachmentParameteriv"]()(framebuffer, attachment, pname, params)


def get_named_framebuffer_parameteriv(framebuffer: GLuint, pname: GetFramebufferParameter, param: Ptr[GLint, MutAnyOrigin]) raises:
    return get_fn[glGetNamedFramebufferParameteriv, "glGetNamedFramebufferParameteriv"]()(framebuffer, pname, param)


def get_named_renderbuffer_parameteriv(renderbuffer: GLuint, pname: RenderbufferParameterName, params: Ptr[GLint, MutAnyOrigin]) raises:
    return get_fn[glGetNamedRenderbufferParameteriv, "glGetNamedRenderbufferParameteriv"]()(renderbuffer, pname, params)


def get_object_label(identifier: ObjectIdentifier, name: GLuint, buf_size: GLsizei, length: Ptr[GLsizei, MutAnyOrigin], var label: String) raises:
    return get_fn[glGetObjectLabel, "glGetObjectLabel"]()(identifier, name, buf_size, length, label.as_c_string_slice().unsafe_ptr().as_any_origin())


def get_object_ptr_label(ptr: Ptr[NoneType, ImmutAnyOrigin], buf_size: GLsizei, length: Ptr[GLsizei, MutAnyOrigin], var label: String) raises:
    return get_fn[glGetObjectPtrLabel, "glGetObjectPtrLabel"]()(ptr, buf_size, length, label.as_c_string_slice().unsafe_ptr().as_any_origin())


def get_program_binary(program: GLuint, buf_size: GLsizei, length: Ptr[GLsizei, MutAnyOrigin], binary_format: Ptr[GLenum, MutAnyOrigin], binary: Ptr[NoneType, MutAnyOrigin]) raises:
    return get_fn[glGetProgramBinary, "glGetProgramBinary"]()(program, buf_size, length, binary_format, binary)


def get_program_info_log(program: GLuint, buf_size: GLsizei, length: Ptr[GLsizei, MutAnyOrigin], var info_log: String) raises:
    return get_fn[glGetProgramInfoLog, "glGetProgramInfoLog"]()(program, buf_size, length, info_log.as_c_string_slice().unsafe_ptr().as_any_origin())


def get_program_interfaceiv(program: GLuint, program_interface: ProgramInterface, pname: ProgramInterfacePName, params: Ptr[GLint, MutAnyOrigin]) raises:
    return get_fn[glGetProgramInterfaceiv, "glGetProgramInterfaceiv"]()(program, program_interface, pname, params)


def get_program_pipeline_info_log(pipeline: GLuint, buf_size: GLsizei, length: Ptr[GLsizei, MutAnyOrigin], var info_log: String) raises:
    return get_fn[glGetProgramPipelineInfoLog, "glGetProgramPipelineInfoLog"]()(pipeline, buf_size, length, info_log.as_c_string_slice().unsafe_ptr().as_any_origin())


def get_program_pipelineiv(pipeline: GLuint, pname: PipelineParameterName, params: Ptr[GLint, MutAnyOrigin]) raises:
    return get_fn[glGetProgramPipelineiv, "glGetProgramPipelineiv"]()(pipeline, pname, params)


def get_program_resource_index(program: GLuint, program_interface: ProgramInterface, var name: String) raises -> GLuint:
    return get_fn[glGetProgramResourceIndex, "glGetProgramResourceIndex"]()(program, program_interface, name.as_c_string_slice().unsafe_ptr().as_any_origin())


def get_program_resource_location(program: GLuint, program_interface: ProgramInterface, var name: String) raises -> GLint:
    return get_fn[glGetProgramResourceLocation, "glGetProgramResourceLocation"]()(program, program_interface, name.as_c_string_slice().unsafe_ptr().as_any_origin())


def get_program_resource_location_index(program: GLuint, program_interface: ProgramInterface, var name: String) raises -> GLint:
    return get_fn[glGetProgramResourceLocationIndex, "glGetProgramResourceLocationIndex"]()(program, program_interface, name.as_c_string_slice().unsafe_ptr().as_any_origin())


def get_program_resource_name(program: GLuint, program_interface: ProgramInterface, index: GLuint, buf_size: GLsizei, length: Ptr[GLsizei, MutAnyOrigin], var name: String) raises:
    return get_fn[glGetProgramResourceName, "glGetProgramResourceName"]()(program, program_interface, index, buf_size, length, name.as_c_string_slice().unsafe_ptr().as_any_origin())


def get_program_resourceiv(program: GLuint, program_interface: ProgramInterface, index: GLuint, prop_count: GLsizei, props: Ptr[ProgramResourceProperty, ImmutAnyOrigin], count: GLsizei, length: Ptr[GLsizei, MutAnyOrigin], params: Ptr[GLint, MutAnyOrigin]) raises:
    return get_fn[glGetProgramResourceiv, "glGetProgramResourceiv"]()(program, program_interface, index, prop_count, props, count, length, params)


def get_program_stageiv(program: GLuint, shadertype: ShaderType, pname: ProgramStagePName, values: Ptr[GLint, MutAnyOrigin]) raises:
    return get_fn[glGetProgramStageiv, "glGetProgramStageiv"]()(program, shadertype, pname, values)


def get_programiv(program: GLuint, pname: ProgramPropertyARB, params: Ptr[GLint, MutAnyOrigin]) raises:
    return get_fn[glGetProgramiv, "glGetProgramiv"]()(program, pname, params)


def get_query_buffer_objecti64v(id: GLuint, buffer: GLuint, pname: QueryObjectParameterName, offset: GLintptr) raises:
    return get_fn[glGetQueryBufferObjecti64v, "glGetQueryBufferObjecti64v"]()(id, buffer, pname, offset)


def get_query_buffer_objectiv(id: GLuint, buffer: GLuint, pname: QueryObjectParameterName, offset: GLintptr) raises:
    return get_fn[glGetQueryBufferObjectiv, "glGetQueryBufferObjectiv"]()(id, buffer, pname, offset)


def get_query_buffer_objectui64v(id: GLuint, buffer: GLuint, pname: QueryObjectParameterName, offset: GLintptr) raises:
    return get_fn[glGetQueryBufferObjectui64v, "glGetQueryBufferObjectui64v"]()(id, buffer, pname, offset)


def get_query_buffer_objectuiv(id: GLuint, buffer: GLuint, pname: QueryObjectParameterName, offset: GLintptr) raises:
    return get_fn[glGetQueryBufferObjectuiv, "glGetQueryBufferObjectuiv"]()(id, buffer, pname, offset)


def get_query_indexediv(target: QueryTarget, index: GLuint, pname: QueryParameterName, params: Ptr[GLint, MutAnyOrigin]) raises:
    return get_fn[glGetQueryIndexediv, "glGetQueryIndexediv"]()(target, index, pname, params)


def get_query_objecti64v(id: GLuint, pname: QueryObjectParameterName, params: Ptr[GLint64, MutAnyOrigin]) raises:
    return get_fn[glGetQueryObjecti64v, "glGetQueryObjecti64v"]()(id, pname, params)


def get_query_objectiv(id: GLuint, pname: QueryObjectParameterName, params: Ptr[GLint, MutAnyOrigin]) raises:
    return get_fn[glGetQueryObjectiv, "glGetQueryObjectiv"]()(id, pname, params)


def get_query_objectui64v(id: GLuint, pname: QueryObjectParameterName, params: Ptr[GLuint64, MutAnyOrigin]) raises:
    return get_fn[glGetQueryObjectui64v, "glGetQueryObjectui64v"]()(id, pname, params)


def get_query_objectuiv(id: GLuint, pname: QueryObjectParameterName, params: Ptr[GLuint, MutAnyOrigin]) raises:
    return get_fn[glGetQueryObjectuiv, "glGetQueryObjectuiv"]()(id, pname, params)


def get_queryiv(target: QueryTarget, pname: QueryParameterName, params: Ptr[GLint, MutAnyOrigin]) raises:
    return get_fn[glGetQueryiv, "glGetQueryiv"]()(target, pname, params)


def get_renderbuffer_parameteriv(target: RenderbufferTarget, pname: RenderbufferParameterName, params: Ptr[GLint, MutAnyOrigin]) raises:
    return get_fn[glGetRenderbufferParameteriv, "glGetRenderbufferParameteriv"]()(target, pname, params)


def get_sampler_parameter_iiv(sampler: GLuint, pname: SamplerParameterI, params: Ptr[GLint, MutAnyOrigin]) raises:
    return get_fn[glGetSamplerParameterIiv, "glGetSamplerParameterIiv"]()(sampler, pname, params)


def get_sampler_parameter_iuiv(sampler: GLuint, pname: SamplerParameterI, params: Ptr[GLuint, MutAnyOrigin]) raises:
    return get_fn[glGetSamplerParameterIuiv, "glGetSamplerParameterIuiv"]()(sampler, pname, params)


def get_sampler_parameterfv(sampler: GLuint, pname: SamplerParameterF, params: Ptr[GLfloat, MutAnyOrigin]) raises:
    return get_fn[glGetSamplerParameterfv, "glGetSamplerParameterfv"]()(sampler, pname, params)


def get_sampler_parameteriv(sampler: GLuint, pname: SamplerParameterI, params: Ptr[GLint, MutAnyOrigin]) raises:
    return get_fn[glGetSamplerParameteriv, "glGetSamplerParameteriv"]()(sampler, pname, params)


def get_shader_info_log(shader: GLuint, buf_size: GLsizei, length: Ptr[GLsizei, MutAnyOrigin], var info_log: String) raises:
    return get_fn[glGetShaderInfoLog, "glGetShaderInfoLog"]()(shader, buf_size, length, info_log.as_c_string_slice().unsafe_ptr().as_any_origin())


def get_shader_precision_format(shadertype: ShaderType, precisiontype: PrecisionType, range: Ptr[GLint, MutAnyOrigin], precision: Ptr[GLint, MutAnyOrigin]) raises:
    return get_fn[glGetShaderPrecisionFormat, "glGetShaderPrecisionFormat"]()(shadertype, precisiontype, range, precision)


def get_shader_source(shader: GLuint, buf_size: GLsizei, length: Ptr[GLsizei, MutAnyOrigin], var source: String) raises:
    return get_fn[glGetShaderSource, "glGetShaderSource"]()(shader, buf_size, length, source.as_c_string_slice().unsafe_ptr().as_any_origin())


def get_shaderiv(shader: GLuint, pname: ShaderParameterName, params: Ptr[GLint, MutAnyOrigin]) raises:
    return get_fn[glGetShaderiv, "glGetShaderiv"]()(shader, pname, params)


def get_string(name: StringName) raises -> GLubyte:
    return get_fn[glGetString, "glGetString"]()(name)


def get_stringi(name: StringName, index: GLuint) raises -> GLubyte:
    return get_fn[glGetStringi, "glGetStringi"]()(name, index)


def get_subroutine_index(program: GLuint, shadertype: ShaderType, var name: String) raises -> GLuint:
    return get_fn[glGetSubroutineIndex, "glGetSubroutineIndex"]()(program, shadertype, name.as_c_string_slice().unsafe_ptr().as_any_origin())


def get_subroutine_uniform_location(program: GLuint, shadertype: ShaderType, var name: String) raises -> GLint:
    return get_fn[glGetSubroutineUniformLocation, "glGetSubroutineUniformLocation"]()(program, shadertype, name.as_c_string_slice().unsafe_ptr().as_any_origin())


def get_synciv(sync: GLsync, pname: SyncParameterName, count: GLsizei, length: Ptr[GLsizei, MutAnyOrigin], values: Ptr[GLint, MutAnyOrigin]) raises:
    return get_fn[glGetSynciv, "glGetSynciv"]()(sync, pname, count, length, values)


def get_tex_image(target: TextureTarget, level: GLint, format: PixelFormat, type: PixelType, pixels: Ptr[NoneType, MutAnyOrigin]) raises:
    return get_fn[glGetTexImage, "glGetTexImage"]()(target, level, format, type, pixels)


def get_tex_level_parameterfv(target: TextureTarget, level: GLint, pname: GetTextureParameter, params: Ptr[GLfloat, MutAnyOrigin]) raises:
    return get_fn[glGetTexLevelParameterfv, "glGetTexLevelParameterfv"]()(target, level, pname, params)


def get_tex_level_parameteriv(target: TextureTarget, level: GLint, pname: GetTextureParameter, params: Ptr[GLint, MutAnyOrigin]) raises:
    return get_fn[glGetTexLevelParameteriv, "glGetTexLevelParameteriv"]()(target, level, pname, params)


def get_tex_parameter_iiv(target: TextureTarget, pname: GetTextureParameter, params: Ptr[GLint, MutAnyOrigin]) raises:
    return get_fn[glGetTexParameterIiv, "glGetTexParameterIiv"]()(target, pname, params)


def get_tex_parameter_iuiv(target: TextureTarget, pname: GetTextureParameter, params: Ptr[GLuint, MutAnyOrigin]) raises:
    return get_fn[glGetTexParameterIuiv, "glGetTexParameterIuiv"]()(target, pname, params)


def get_tex_parameterfv(target: TextureTarget, pname: GetTextureParameter, params: Ptr[GLfloat, MutAnyOrigin]) raises:
    return get_fn[glGetTexParameterfv, "glGetTexParameterfv"]()(target, pname, params)


def get_tex_parameteriv(target: TextureTarget, pname: GetTextureParameter, params: Ptr[GLint, MutAnyOrigin]) raises:
    return get_fn[glGetTexParameteriv, "glGetTexParameteriv"]()(target, pname, params)


def get_texture_image(texture: GLuint, level: GLint, format: PixelFormat, type: PixelType, buf_size: GLsizei, pixels: Ptr[NoneType, MutAnyOrigin]) raises:
    return get_fn[glGetTextureImage, "glGetTextureImage"]()(texture, level, format, type, buf_size, pixels)


def get_texture_level_parameterfv(texture: GLuint, level: GLint, pname: GetTextureParameter, params: Ptr[GLfloat, MutAnyOrigin]) raises:
    return get_fn[glGetTextureLevelParameterfv, "glGetTextureLevelParameterfv"]()(texture, level, pname, params)


def get_texture_level_parameteriv(texture: GLuint, level: GLint, pname: GetTextureParameter, params: Ptr[GLint, MutAnyOrigin]) raises:
    return get_fn[glGetTextureLevelParameteriv, "glGetTextureLevelParameteriv"]()(texture, level, pname, params)


def get_texture_parameter_iiv(texture: GLuint, pname: GetTextureParameter, params: Ptr[GLint, MutAnyOrigin]) raises:
    return get_fn[glGetTextureParameterIiv, "glGetTextureParameterIiv"]()(texture, pname, params)


def get_texture_parameter_iuiv(texture: GLuint, pname: GetTextureParameter, params: Ptr[GLuint, MutAnyOrigin]) raises:
    return get_fn[glGetTextureParameterIuiv, "glGetTextureParameterIuiv"]()(texture, pname, params)


def get_texture_parameterfv(texture: GLuint, pname: GetTextureParameter, params: Ptr[GLfloat, MutAnyOrigin]) raises:
    return get_fn[glGetTextureParameterfv, "glGetTextureParameterfv"]()(texture, pname, params)


def get_texture_parameteriv(texture: GLuint, pname: GetTextureParameter, params: Ptr[GLint, MutAnyOrigin]) raises:
    return get_fn[glGetTextureParameteriv, "glGetTextureParameteriv"]()(texture, pname, params)


def get_texture_sub_image(texture: GLuint, level: GLint, xoffset: GLint, yoffset: GLint, zoffset: GLint, width: GLsizei, height: GLsizei, depth: GLsizei, format: PixelFormat, type: PixelType, buf_size: GLsizei, pixels: Ptr[NoneType, MutAnyOrigin]) raises:
    return get_fn[glGetTextureSubImage, "glGetTextureSubImage"]()(texture, level, xoffset, yoffset, zoffset, width, height, depth, format, type, buf_size, pixels)


def get_transform_feedback_varying(program: GLuint, index: GLuint, buf_size: GLsizei, length: Ptr[GLsizei, MutAnyOrigin], size: Ptr[GLsizei, MutAnyOrigin], type: Ptr[AttributeType, MutAnyOrigin], var name: String) raises:
    return get_fn[glGetTransformFeedbackVarying, "glGetTransformFeedbackVarying"]()(program, index, buf_size, length, size, type, name.as_c_string_slice().unsafe_ptr().as_any_origin())


def get_transform_feedbacki64_v(xfb: GLuint, pname: TransformFeedbackPName, index: GLuint, param: Ptr[GLint64, MutAnyOrigin]) raises:
    return get_fn[glGetTransformFeedbacki64_v, "glGetTransformFeedbacki64_v"]()(xfb, pname, index, param)


def get_transform_feedbacki_v(xfb: GLuint, pname: TransformFeedbackPName, index: GLuint, param: Ptr[GLint, MutAnyOrigin]) raises:
    return get_fn[glGetTransformFeedbacki_v, "glGetTransformFeedbacki_v"]()(xfb, pname, index, param)


def get_transform_feedbackiv(xfb: GLuint, pname: TransformFeedbackPName, param: Ptr[GLint, MutAnyOrigin]) raises:
    return get_fn[glGetTransformFeedbackiv, "glGetTransformFeedbackiv"]()(xfb, pname, param)


def get_uniform_block_index(program: GLuint, var uniform_block_name: String) raises -> GLuint:
    return get_fn[glGetUniformBlockIndex, "glGetUniformBlockIndex"]()(program, uniform_block_name.as_c_string_slice().unsafe_ptr().as_any_origin())


def get_uniform_indices(program: GLuint, uniform_count: GLsizei, var uniform_names: List[String], uniform_indices: Ptr[GLuint, MutAnyOrigin]) raises:
    var c_list = [str.as_c_string_slice().unsafe_ptr().as_any_origin() for ref str in uniform_names]
    return get_fn[glGetUniformIndices, "glGetUniformIndices"]()(program, uniform_count, c_list.steal_data(), uniform_indices)


def get_uniform_location(program: GLuint, var name: String) raises -> GLint:
    return get_fn[glGetUniformLocation, "glGetUniformLocation"]()(program, name.as_c_string_slice().unsafe_ptr().as_any_origin())


def get_uniform_subroutineuiv(shadertype: ShaderType, location: GLint, params: Ptr[GLuint, MutAnyOrigin]) raises:
    return get_fn[glGetUniformSubroutineuiv, "glGetUniformSubroutineuiv"]()(shadertype, location, params)


def get_uniformdv(program: GLuint, location: GLint, params: Ptr[GLdouble, MutAnyOrigin]) raises:
    return get_fn[glGetUniformdv, "glGetUniformdv"]()(program, location, params)


def get_uniformfv(program: GLuint, location: GLint, params: Ptr[GLfloat, MutAnyOrigin]) raises:
    return get_fn[glGetUniformfv, "glGetUniformfv"]()(program, location, params)


def get_uniformiv(program: GLuint, location: GLint, params: Ptr[GLint, MutAnyOrigin]) raises:
    return get_fn[glGetUniformiv, "glGetUniformiv"]()(program, location, params)


def get_uniformuiv(program: GLuint, location: GLint, params: Ptr[GLuint, MutAnyOrigin]) raises:
    return get_fn[glGetUniformuiv, "glGetUniformuiv"]()(program, location, params)


def get_vertex_array_indexed64iv(vaobj: GLuint, index: GLuint, pname: VertexArrayPName, param: Ptr[GLint64, MutAnyOrigin]) raises:
    return get_fn[glGetVertexArrayIndexed64iv, "glGetVertexArrayIndexed64iv"]()(vaobj, index, pname, param)


def get_vertex_array_indexediv(vaobj: GLuint, index: GLuint, pname: VertexArrayPName, param: Ptr[GLint, MutAnyOrigin]) raises:
    return get_fn[glGetVertexArrayIndexediv, "glGetVertexArrayIndexediv"]()(vaobj, index, pname, param)


def get_vertex_arrayiv(vaobj: GLuint, pname: VertexArrayPName, param: Ptr[GLint, MutAnyOrigin]) raises:
    return get_fn[glGetVertexArrayiv, "glGetVertexArrayiv"]()(vaobj, pname, param)


def get_vertex_attrib_iiv(index: GLuint, pname: VertexAttribEnum, params: Ptr[GLint, MutAnyOrigin]) raises:
    return get_fn[glGetVertexAttribIiv, "glGetVertexAttribIiv"]()(index, pname, params)


def get_vertex_attrib_iuiv(index: GLuint, pname: VertexAttribEnum, params: Ptr[GLuint, MutAnyOrigin]) raises:
    return get_fn[glGetVertexAttribIuiv, "glGetVertexAttribIuiv"]()(index, pname, params)


def get_vertex_attrib_ldv(index: GLuint, pname: VertexAttribEnum, params: Ptr[GLdouble, MutAnyOrigin]) raises:
    return get_fn[glGetVertexAttribLdv, "glGetVertexAttribLdv"]()(index, pname, params)


def get_vertex_attrib_pointerv(index: GLuint, pname: VertexAttribPointerPropertyARB, pointer: Ptr[Ptr[NoneType, MutAnyOrigin], MutAnyOrigin]) raises:
    return get_fn[glGetVertexAttribPointerv, "glGetVertexAttribPointerv"]()(index, pname, pointer)


def get_vertex_attribdv(index: GLuint, pname: VertexAttribPropertyARB, params: Ptr[GLdouble, MutAnyOrigin]) raises:
    return get_fn[glGetVertexAttribdv, "glGetVertexAttribdv"]()(index, pname, params)


def get_vertex_attribfv(index: GLuint, pname: VertexAttribPropertyARB, params: Ptr[GLfloat, MutAnyOrigin]) raises:
    return get_fn[glGetVertexAttribfv, "glGetVertexAttribfv"]()(index, pname, params)


def get_vertex_attribiv(index: GLuint, pname: VertexAttribPropertyARB, params: Ptr[GLint, MutAnyOrigin]) raises:
    return get_fn[glGetVertexAttribiv, "glGetVertexAttribiv"]()(index, pname, params)


def getn_color_table(target: ColorTableTarget, format: PixelFormat, type: PixelType, buf_size: GLsizei, table: Ptr[NoneType, MutAnyOrigin]) raises:
    return get_fn[glGetnColorTable, "glGetnColorTable"]()(target, format, type, buf_size, table)


def getn_compressed_tex_image(target: TextureTarget, lod: GLint, buf_size: GLsizei, pixels: Ptr[NoneType, MutAnyOrigin]) raises:
    return get_fn[glGetnCompressedTexImage, "glGetnCompressedTexImage"]()(target, lod, buf_size, pixels)


def getn_convolution_filter(target: ConvolutionTarget, format: PixelFormat, type: PixelType, buf_size: GLsizei, image: Ptr[NoneType, MutAnyOrigin]) raises:
    return get_fn[glGetnConvolutionFilter, "glGetnConvolutionFilter"]()(target, format, type, buf_size, image)


def getn_histogram(target: HistogramTarget, reset: Bool, format: PixelFormat, type: PixelType, buf_size: GLsizei, values: Ptr[NoneType, MutAnyOrigin]) raises:
    return get_fn[glGetnHistogram, "glGetnHistogram"]()(target, GLboolean(Int(reset)), format, type, buf_size, values)


def getn_mapdv(target: MapTarget, query: MapQuery, buf_size: GLsizei, v: Ptr[GLdouble, MutAnyOrigin]) raises:
    return get_fn[glGetnMapdv, "glGetnMapdv"]()(target, query, buf_size, v)


def getn_mapfv(target: MapTarget, query: MapQuery, buf_size: GLsizei, v: Ptr[GLfloat, MutAnyOrigin]) raises:
    return get_fn[glGetnMapfv, "glGetnMapfv"]()(target, query, buf_size, v)


def getn_mapiv(target: MapTarget, query: MapQuery, buf_size: GLsizei, v: Ptr[GLint, MutAnyOrigin]) raises:
    return get_fn[glGetnMapiv, "glGetnMapiv"]()(target, query, buf_size, v)


def getn_minmax(target: MinmaxTarget, reset: Bool, format: PixelFormat, type: PixelType, buf_size: GLsizei, values: Ptr[NoneType, MutAnyOrigin]) raises:
    return get_fn[glGetnMinmax, "glGetnMinmax"]()(target, GLboolean(Int(reset)), format, type, buf_size, values)


def getn_pixel_mapfv(map: PixelMap, buf_size: GLsizei, values: Ptr[GLfloat, MutAnyOrigin]) raises:
    return get_fn[glGetnPixelMapfv, "glGetnPixelMapfv"]()(map, buf_size, values)


def getn_pixel_mapuiv(map: PixelMap, buf_size: GLsizei, values: Ptr[GLuint, MutAnyOrigin]) raises:
    return get_fn[glGetnPixelMapuiv, "glGetnPixelMapuiv"]()(map, buf_size, values)


def getn_pixel_mapusv(map: PixelMap, buf_size: GLsizei, values: Ptr[GLushort, MutAnyOrigin]) raises:
    return get_fn[glGetnPixelMapusv, "glGetnPixelMapusv"]()(map, buf_size, values)


def getn_polygon_stipple(buf_size: GLsizei, pattern: Ptr[GLubyte, MutAnyOrigin]) raises:
    return get_fn[glGetnPolygonStipple, "glGetnPolygonStipple"]()(buf_size, pattern)


def getn_separable_filter(target: SeparableTarget, format: PixelFormat, type: PixelType, row_buf_size: GLsizei, row: Ptr[NoneType, MutAnyOrigin], column_buf_size: GLsizei, column: Ptr[NoneType, MutAnyOrigin], span: Ptr[NoneType, MutAnyOrigin]) raises:
    return get_fn[glGetnSeparableFilter, "glGetnSeparableFilter"]()(target, format, type, row_buf_size, row, column_buf_size, column, span)


def getn_tex_image(target: TextureTarget, level: GLint, format: PixelFormat, type: PixelType, buf_size: GLsizei, pixels: Ptr[NoneType, MutAnyOrigin]) raises:
    return get_fn[glGetnTexImage, "glGetnTexImage"]()(target, level, format, type, buf_size, pixels)


def getn_uniformdv(program: GLuint, location: GLint, buf_size: GLsizei, params: Ptr[GLdouble, MutAnyOrigin]) raises:
    return get_fn[glGetnUniformdv, "glGetnUniformdv"]()(program, location, buf_size, params)


def getn_uniformfv(program: GLuint, location: GLint, buf_size: GLsizei, params: Ptr[GLfloat, MutAnyOrigin]) raises:
    return get_fn[glGetnUniformfv, "glGetnUniformfv"]()(program, location, buf_size, params)


def getn_uniformiv(program: GLuint, location: GLint, buf_size: GLsizei, params: Ptr[GLint, MutAnyOrigin]) raises:
    return get_fn[glGetnUniformiv, "glGetnUniformiv"]()(program, location, buf_size, params)


def getn_uniformuiv(program: GLuint, location: GLint, buf_size: GLsizei, params: Ptr[GLuint, MutAnyOrigin]) raises:
    return get_fn[glGetnUniformuiv, "glGetnUniformuiv"]()(program, location, buf_size, params)


def hint(target: HintTarget, mode: HintMode) raises:
    return get_fn[glHint, "glHint"]()(target, mode)


def invalidate_buffer_data(buffer: GLuint) raises:
    return get_fn[glInvalidateBufferData, "glInvalidateBufferData"]()(buffer)


def invalidate_buffer_sub_data(buffer: GLuint, offset: GLintptr, length: GLsizeiptr) raises:
    return get_fn[glInvalidateBufferSubData, "glInvalidateBufferSubData"]()(buffer, offset, length)


def invalidate_framebuffer(target: FramebufferTarget, num_attachments: GLsizei, attachments: Ptr[InvalidateFramebufferAttachment, ImmutAnyOrigin]) raises:
    return get_fn[glInvalidateFramebuffer, "glInvalidateFramebuffer"]()(target, num_attachments, attachments)


def invalidate_named_framebuffer_data(framebuffer: GLuint, num_attachments: GLsizei, attachments: Ptr[FramebufferAttachment, ImmutAnyOrigin]) raises:
    return get_fn[glInvalidateNamedFramebufferData, "glInvalidateNamedFramebufferData"]()(framebuffer, num_attachments, attachments)


def invalidate_named_framebuffer_sub_data(framebuffer: GLuint, num_attachments: GLsizei, attachments: Ptr[FramebufferAttachment, ImmutAnyOrigin], x: GLint, y: GLint, width: GLsizei, height: GLsizei) raises:
    return get_fn[glInvalidateNamedFramebufferSubData, "glInvalidateNamedFramebufferSubData"]()(framebuffer, num_attachments, attachments, x, y, width, height)


def invalidate_sub_framebuffer(target: FramebufferTarget, num_attachments: GLsizei, attachments: Ptr[InvalidateFramebufferAttachment, ImmutAnyOrigin], x: GLint, y: GLint, width: GLsizei, height: GLsizei) raises:
    return get_fn[glInvalidateSubFramebuffer, "glInvalidateSubFramebuffer"]()(target, num_attachments, attachments, x, y, width, height)


def invalidate_tex_image(texture: GLuint, level: GLint) raises:
    return get_fn[glInvalidateTexImage, "glInvalidateTexImage"]()(texture, level)


def invalidate_tex_sub_image(texture: GLuint, level: GLint, xoffset: GLint, yoffset: GLint, zoffset: GLint, width: GLsizei, height: GLsizei, depth: GLsizei) raises:
    return get_fn[glInvalidateTexSubImage, "glInvalidateTexSubImage"]()(texture, level, xoffset, yoffset, zoffset, width, height, depth)


def is_buffer(buffer: GLuint) raises -> GLboolean:
    return get_fn[glIsBuffer, "glIsBuffer"]()(buffer)


def is_enabled(cap: EnableCap) raises -> GLboolean:
    return get_fn[glIsEnabled, "glIsEnabled"]()(cap)


def is_enabledi(target: EnableCap, index: GLuint) raises -> GLboolean:
    return get_fn[glIsEnabledi, "glIsEnabledi"]()(target, index)


def is_framebuffer(framebuffer: GLuint) raises -> GLboolean:
    return get_fn[glIsFramebuffer, "glIsFramebuffer"]()(framebuffer)


def is_program(program: GLuint) raises -> GLboolean:
    return get_fn[glIsProgram, "glIsProgram"]()(program)


def is_program_pipeline(pipeline: GLuint) raises -> GLboolean:
    return get_fn[glIsProgramPipeline, "glIsProgramPipeline"]()(pipeline)


def is_query(id: GLuint) raises -> GLboolean:
    return get_fn[glIsQuery, "glIsQuery"]()(id)


def is_renderbuffer(renderbuffer: GLuint) raises -> GLboolean:
    return get_fn[glIsRenderbuffer, "glIsRenderbuffer"]()(renderbuffer)


def is_sampler(sampler: GLuint) raises -> GLboolean:
    return get_fn[glIsSampler, "glIsSampler"]()(sampler)


def is_shader(shader: GLuint) raises -> GLboolean:
    return get_fn[glIsShader, "glIsShader"]()(shader)


def is_sync(sync: GLsync) raises -> GLboolean:
    return get_fn[glIsSync, "glIsSync"]()(sync)


def is_texture(texture: GLuint) raises -> GLboolean:
    return get_fn[glIsTexture, "glIsTexture"]()(texture)


def is_transform_feedback(id: GLuint) raises -> GLboolean:
    return get_fn[glIsTransformFeedback, "glIsTransformFeedback"]()(id)


def is_vertex_array(array: GLuint) raises -> GLboolean:
    return get_fn[glIsVertexArray, "glIsVertexArray"]()(array)


def line_width(width: GLfloat) raises:
    return get_fn[glLineWidth, "glLineWidth"]()(width)


def link_program(program: GLuint) raises:
    return get_fn[glLinkProgram, "glLinkProgram"]()(program)


def logic_op(opcode: LogicOp) raises:
    return get_fn[glLogicOp, "glLogicOp"]()(opcode)


def map_buffer(target: BufferTargetARB, access: BufferAccessARB) raises:
    return get_fn[glMapBuffer, "glMapBuffer"]()(target, access)


def map_buffer_range(target: BufferTargetARB, offset: GLintptr, length: GLsizeiptr, access: MapBufferAccessMask) raises:
    return get_fn[glMapBufferRange, "glMapBufferRange"]()(target, offset, length, access)


def map_named_buffer(buffer: GLuint, access: BufferAccessARB) raises:
    return get_fn[glMapNamedBuffer, "glMapNamedBuffer"]()(buffer, access)


def map_named_buffer_range(buffer: GLuint, offset: GLintptr, length: GLsizeiptr, access: MapBufferAccessMask) raises:
    return get_fn[glMapNamedBufferRange, "glMapNamedBufferRange"]()(buffer, offset, length, access)


def memory_barrier(barriers: MemoryBarrierMask) raises:
    return get_fn[glMemoryBarrier, "glMemoryBarrier"]()(barriers)


def memory_barrier_by_region(barriers: MemoryBarrierMask) raises:
    return get_fn[glMemoryBarrierByRegion, "glMemoryBarrierByRegion"]()(barriers)


def min_sample_shading(value: GLfloat) raises:
    return get_fn[glMinSampleShading, "glMinSampleShading"]()(value)


def multi_draw_arrays(mode: PrimitiveType, first: Ptr[GLint, ImmutAnyOrigin], count: Ptr[GLsizei, ImmutAnyOrigin], drawcount: GLsizei) raises:
    return get_fn[glMultiDrawArrays, "glMultiDrawArrays"]()(mode, first, count, drawcount)


def multi_draw_arrays_indirect(mode: PrimitiveType, indirect: Ptr[NoneType, ImmutAnyOrigin], drawcount: GLsizei, stride: GLsizei) raises:
    return get_fn[glMultiDrawArraysIndirect, "glMultiDrawArraysIndirect"]()(mode, indirect, drawcount, stride)


def multi_draw_arrays_indirect_count(mode: PrimitiveType, indirect: Ptr[NoneType, ImmutAnyOrigin], drawcount: GLintptr, maxdrawcount: GLsizei, stride: GLsizei) raises:
    return get_fn[glMultiDrawArraysIndirectCount, "glMultiDrawArraysIndirectCount"]()(mode, indirect, drawcount, maxdrawcount, stride)


def multi_draw_elements(mode: PrimitiveType, count: Ptr[GLsizei, ImmutAnyOrigin], type: DrawElementsType, indices: Ptr[Ptr[NoneType, ImmutAnyOrigin], ImmutAnyOrigin], drawcount: GLsizei) raises:
    return get_fn[glMultiDrawElements, "glMultiDrawElements"]()(mode, count, type, indices, drawcount)


def multi_draw_elements_base_vertex(mode: PrimitiveType, count: Ptr[GLsizei, ImmutAnyOrigin], type: DrawElementsType, indices: Ptr[Ptr[NoneType, ImmutAnyOrigin], ImmutAnyOrigin], drawcount: GLsizei, basevertex: Ptr[GLint, ImmutAnyOrigin]) raises:
    return get_fn[glMultiDrawElementsBaseVertex, "glMultiDrawElementsBaseVertex"]()(mode, count, type, indices, drawcount, basevertex)


def multi_draw_elements_indirect(mode: PrimitiveType, type: DrawElementsType, indirect: Ptr[NoneType, ImmutAnyOrigin], drawcount: GLsizei, stride: GLsizei) raises:
    return get_fn[glMultiDrawElementsIndirect, "glMultiDrawElementsIndirect"]()(mode, type, indirect, drawcount, stride)


def multi_draw_elements_indirect_count(mode: PrimitiveType, type: DrawElementsType, indirect: Ptr[NoneType, ImmutAnyOrigin], drawcount: GLintptr, maxdrawcount: GLsizei, stride: GLsizei) raises:
    return get_fn[glMultiDrawElementsIndirectCount, "glMultiDrawElementsIndirectCount"]()(mode, type, indirect, drawcount, maxdrawcount, stride)


def multi_tex_coord_p1ui(texture: TextureUnit, type: TexCoordPointerType, coords: GLuint) raises:
    return get_fn[glMultiTexCoordP1ui, "glMultiTexCoordP1ui"]()(texture, type, coords)


def multi_tex_coord_p1uiv(texture: TextureUnit, type: TexCoordPointerType, coords: Ptr[GLuint, ImmutAnyOrigin]) raises:
    return get_fn[glMultiTexCoordP1uiv, "glMultiTexCoordP1uiv"]()(texture, type, coords)


def multi_tex_coord_p2ui(texture: TextureUnit, type: TexCoordPointerType, coords: GLuint) raises:
    return get_fn[glMultiTexCoordP2ui, "glMultiTexCoordP2ui"]()(texture, type, coords)


def multi_tex_coord_p2uiv(texture: TextureUnit, type: TexCoordPointerType, coords: Ptr[GLuint, ImmutAnyOrigin]) raises:
    return get_fn[glMultiTexCoordP2uiv, "glMultiTexCoordP2uiv"]()(texture, type, coords)


def multi_tex_coord_p3ui(texture: TextureUnit, type: TexCoordPointerType, coords: GLuint) raises:
    return get_fn[glMultiTexCoordP3ui, "glMultiTexCoordP3ui"]()(texture, type, coords)


def multi_tex_coord_p3uiv(texture: TextureUnit, type: TexCoordPointerType, coords: Ptr[GLuint, ImmutAnyOrigin]) raises:
    return get_fn[glMultiTexCoordP3uiv, "glMultiTexCoordP3uiv"]()(texture, type, coords)


def multi_tex_coord_p4ui(texture: TextureUnit, type: TexCoordPointerType, coords: GLuint) raises:
    return get_fn[glMultiTexCoordP4ui, "glMultiTexCoordP4ui"]()(texture, type, coords)


def multi_tex_coord_p4uiv(texture: TextureUnit, type: TexCoordPointerType, coords: Ptr[GLuint, ImmutAnyOrigin]) raises:
    return get_fn[glMultiTexCoordP4uiv, "glMultiTexCoordP4uiv"]()(texture, type, coords)


def named_buffer_data(buffer: GLuint, size: GLsizeiptr, data: Ptr[NoneType, ImmutAnyOrigin], usage: BufferUsageARB) raises:
    return get_fn[glNamedBufferData, "glNamedBufferData"]()(buffer, size, data, usage)


def named_buffer_storage(buffer: GLuint, size: GLsizeiptr, data: Ptr[NoneType, ImmutAnyOrigin], flags: BufferStorageMask) raises:
    return get_fn[glNamedBufferStorage, "glNamedBufferStorage"]()(buffer, size, data, flags)


def named_buffer_sub_data(buffer: GLuint, offset: GLintptr, size: GLsizeiptr, data: Ptr[NoneType, ImmutAnyOrigin]) raises:
    return get_fn[glNamedBufferSubData, "glNamedBufferSubData"]()(buffer, offset, size, data)


def named_framebuffer_draw_buffer(framebuffer: GLuint, buf: ColorBuffer) raises:
    return get_fn[glNamedFramebufferDrawBuffer, "glNamedFramebufferDrawBuffer"]()(framebuffer, buf)


def named_framebuffer_draw_buffers(framebuffer: GLuint, n: GLsizei, bufs: Ptr[ColorBuffer, ImmutAnyOrigin]) raises:
    return get_fn[glNamedFramebufferDrawBuffers, "glNamedFramebufferDrawBuffers"]()(framebuffer, n, bufs)


def named_framebuffer_parameteri(framebuffer: GLuint, pname: FramebufferParameterName, param: GLint) raises:
    return get_fn[glNamedFramebufferParameteri, "glNamedFramebufferParameteri"]()(framebuffer, pname, param)


def named_framebuffer_read_buffer(framebuffer: GLuint, src: ColorBuffer) raises:
    return get_fn[glNamedFramebufferReadBuffer, "glNamedFramebufferReadBuffer"]()(framebuffer, src)


def named_framebuffer_renderbuffer(framebuffer: GLuint, attachment: FramebufferAttachment, renderbuffertarget: RenderbufferTarget, renderbuffer: GLuint) raises:
    return get_fn[glNamedFramebufferRenderbuffer, "glNamedFramebufferRenderbuffer"]()(framebuffer, attachment, renderbuffertarget, renderbuffer)


def named_framebuffer_texture(framebuffer: GLuint, attachment: FramebufferAttachment, texture: GLuint, level: GLint) raises:
    return get_fn[glNamedFramebufferTexture, "glNamedFramebufferTexture"]()(framebuffer, attachment, texture, level)


def named_framebuffer_texture_layer(framebuffer: GLuint, attachment: FramebufferAttachment, texture: GLuint, level: GLint, layer: GLint) raises:
    return get_fn[glNamedFramebufferTextureLayer, "glNamedFramebufferTextureLayer"]()(framebuffer, attachment, texture, level, layer)


def named_renderbuffer_storage(renderbuffer: GLuint, internalformat: InternalFormat, width: GLsizei, height: GLsizei) raises:
    return get_fn[glNamedRenderbufferStorage, "glNamedRenderbufferStorage"]()(renderbuffer, internalformat, width, height)


def named_renderbuffer_storage_multisample(renderbuffer: GLuint, samples: GLsizei, internalformat: InternalFormat, width: GLsizei, height: GLsizei) raises:
    return get_fn[glNamedRenderbufferStorageMultisample, "glNamedRenderbufferStorageMultisample"]()(renderbuffer, samples, internalformat, width, height)


def normal_p3ui(type: NormalPointerType, coords: GLuint) raises:
    return get_fn[glNormalP3ui, "glNormalP3ui"]()(type, coords)


def normal_p3uiv(type: NormalPointerType, coords: Ptr[GLuint, ImmutAnyOrigin]) raises:
    return get_fn[glNormalP3uiv, "glNormalP3uiv"]()(type, coords)


def object_label(identifier: ObjectIdentifier, name: GLuint, length: GLsizei, var label: String) raises:
    return get_fn[glObjectLabel, "glObjectLabel"]()(identifier, name, length, label.as_c_string_slice().unsafe_ptr().as_any_origin())


def object_ptr_label(ptr: Ptr[NoneType, ImmutAnyOrigin], length: GLsizei, var label: String) raises:
    return get_fn[glObjectPtrLabel, "glObjectPtrLabel"]()(ptr, length, label.as_c_string_slice().unsafe_ptr().as_any_origin())


def patch_parameterfv(pname: PatchParameterName, values: Ptr[GLfloat, ImmutAnyOrigin]) raises:
    return get_fn[glPatchParameterfv, "glPatchParameterfv"]()(pname, values)


def patch_parameteri(pname: PatchParameterName, value: GLint) raises:
    return get_fn[glPatchParameteri, "glPatchParameteri"]()(pname, value)


def pause_transform_feedback() raises:
    return get_fn[glPauseTransformFeedback, "glPauseTransformFeedback"]()()


def pixel_storef(pname: PixelStoreParameter, param: GLfloat) raises:
    return get_fn[glPixelStoref, "glPixelStoref"]()(pname, param)


def pixel_storei(pname: PixelStoreParameter, param: GLint) raises:
    return get_fn[glPixelStorei, "glPixelStorei"]()(pname, param)


def point_parameterf(pname: PointParameterNameARB, param: GLfloat) raises:
    return get_fn[glPointParameterf, "glPointParameterf"]()(pname, param)


def point_parameterfv(pname: PointParameterNameARB, params: Ptr[GLfloat, ImmutAnyOrigin]) raises:
    return get_fn[glPointParameterfv, "glPointParameterfv"]()(pname, params)


def point_parameteri(pname: PointParameterNameARB, param: GLint) raises:
    return get_fn[glPointParameteri, "glPointParameteri"]()(pname, param)


def point_parameteriv(pname: PointParameterNameARB, params: Ptr[GLint, ImmutAnyOrigin]) raises:
    return get_fn[glPointParameteriv, "glPointParameteriv"]()(pname, params)


def point_size(size: GLfloat) raises:
    return get_fn[glPointSize, "glPointSize"]()(size)


def polygon_mode(face: TriangleFace, mode: PolygonMode) raises:
    return get_fn[glPolygonMode, "glPolygonMode"]()(face, mode)


def polygon_offset(factor: GLfloat, units: GLfloat) raises:
    return get_fn[glPolygonOffset, "glPolygonOffset"]()(factor, units)


def polygon_offset_clamp(factor: GLfloat, units: GLfloat, clamp: GLfloat) raises:
    return get_fn[glPolygonOffsetClamp, "glPolygonOffsetClamp"]()(factor, units, clamp)


def pop_debug_group() raises:
    return get_fn[glPopDebugGroup, "glPopDebugGroup"]()()


def primitive_restart_index(index: GLuint) raises:
    return get_fn[glPrimitiveRestartIndex, "glPrimitiveRestartIndex"]()(index)


def program_binary(program: GLuint, binary_format: GLenum, binary: Ptr[NoneType, ImmutAnyOrigin], length: GLsizei) raises:
    return get_fn[glProgramBinary, "glProgramBinary"]()(program, binary_format, binary, length)


def program_parameteri(program: GLuint, pname: ProgramParameterPName, value: GLint) raises:
    return get_fn[glProgramParameteri, "glProgramParameteri"]()(program, pname, value)


def program_uniform1d(program: GLuint, location: GLint, v0: GLdouble) raises:
    return get_fn[glProgramUniform1d, "glProgramUniform1d"]()(program, location, v0)


def program_uniform1dv(program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLdouble, ImmutAnyOrigin]) raises:
    return get_fn[glProgramUniform1dv, "glProgramUniform1dv"]()(program, location, count, value)


def program_uniform1f(program: GLuint, location: GLint, v0: GLfloat) raises:
    return get_fn[glProgramUniform1f, "glProgramUniform1f"]()(program, location, v0)


def program_uniform1fv(program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLfloat, ImmutAnyOrigin]) raises:
    return get_fn[glProgramUniform1fv, "glProgramUniform1fv"]()(program, location, count, value)


def program_uniform1i(program: GLuint, location: GLint, v0: GLint) raises:
    return get_fn[glProgramUniform1i, "glProgramUniform1i"]()(program, location, v0)


def program_uniform1iv(program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLint, ImmutAnyOrigin]) raises:
    return get_fn[glProgramUniform1iv, "glProgramUniform1iv"]()(program, location, count, value)


def program_uniform1ui(program: GLuint, location: GLint, v0: GLuint) raises:
    return get_fn[glProgramUniform1ui, "glProgramUniform1ui"]()(program, location, v0)


def program_uniform1uiv(program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLuint, ImmutAnyOrigin]) raises:
    return get_fn[glProgramUniform1uiv, "glProgramUniform1uiv"]()(program, location, count, value)


def program_uniform2d(program: GLuint, location: GLint, v0: GLdouble, v1: GLdouble) raises:
    return get_fn[glProgramUniform2d, "glProgramUniform2d"]()(program, location, v0, v1)


def program_uniform2dv(program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLdouble, ImmutAnyOrigin]) raises:
    return get_fn[glProgramUniform2dv, "glProgramUniform2dv"]()(program, location, count, value)


def program_uniform2f(program: GLuint, location: GLint, v0: GLfloat, v1: GLfloat) raises:
    return get_fn[glProgramUniform2f, "glProgramUniform2f"]()(program, location, v0, v1)


def program_uniform2fv(program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLfloat, ImmutAnyOrigin]) raises:
    return get_fn[glProgramUniform2fv, "glProgramUniform2fv"]()(program, location, count, value)


def program_uniform2i(program: GLuint, location: GLint, v0: GLint, v1: GLint) raises:
    return get_fn[glProgramUniform2i, "glProgramUniform2i"]()(program, location, v0, v1)


def program_uniform2iv(program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLint, ImmutAnyOrigin]) raises:
    return get_fn[glProgramUniform2iv, "glProgramUniform2iv"]()(program, location, count, value)


def program_uniform2ui(program: GLuint, location: GLint, v0: GLuint, v1: GLuint) raises:
    return get_fn[glProgramUniform2ui, "glProgramUniform2ui"]()(program, location, v0, v1)


def program_uniform2uiv(program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLuint, ImmutAnyOrigin]) raises:
    return get_fn[glProgramUniform2uiv, "glProgramUniform2uiv"]()(program, location, count, value)


def program_uniform3d(program: GLuint, location: GLint, v0: GLdouble, v1: GLdouble, v2: GLdouble) raises:
    return get_fn[glProgramUniform3d, "glProgramUniform3d"]()(program, location, v0, v1, v2)


def program_uniform3dv(program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLdouble, ImmutAnyOrigin]) raises:
    return get_fn[glProgramUniform3dv, "glProgramUniform3dv"]()(program, location, count, value)


def program_uniform3f(program: GLuint, location: GLint, v0: GLfloat, v1: GLfloat, v2: GLfloat) raises:
    return get_fn[glProgramUniform3f, "glProgramUniform3f"]()(program, location, v0, v1, v2)


def program_uniform3fv(program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLfloat, ImmutAnyOrigin]) raises:
    return get_fn[glProgramUniform3fv, "glProgramUniform3fv"]()(program, location, count, value)


def program_uniform3i(program: GLuint, location: GLint, v0: GLint, v1: GLint, v2: GLint) raises:
    return get_fn[glProgramUniform3i, "glProgramUniform3i"]()(program, location, v0, v1, v2)


def program_uniform3iv(program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLint, ImmutAnyOrigin]) raises:
    return get_fn[glProgramUniform3iv, "glProgramUniform3iv"]()(program, location, count, value)


def program_uniform3ui(program: GLuint, location: GLint, v0: GLuint, v1: GLuint, v2: GLuint) raises:
    return get_fn[glProgramUniform3ui, "glProgramUniform3ui"]()(program, location, v0, v1, v2)


def program_uniform3uiv(program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLuint, ImmutAnyOrigin]) raises:
    return get_fn[glProgramUniform3uiv, "glProgramUniform3uiv"]()(program, location, count, value)


def program_uniform4d(program: GLuint, location: GLint, v0: GLdouble, v1: GLdouble, v2: GLdouble, v3: GLdouble) raises:
    return get_fn[glProgramUniform4d, "glProgramUniform4d"]()(program, location, v0, v1, v2, v3)


def program_uniform4dv(program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLdouble, ImmutAnyOrigin]) raises:
    return get_fn[glProgramUniform4dv, "glProgramUniform4dv"]()(program, location, count, value)


def program_uniform4f(program: GLuint, location: GLint, v0: GLfloat, v1: GLfloat, v2: GLfloat, v3: GLfloat) raises:
    return get_fn[glProgramUniform4f, "glProgramUniform4f"]()(program, location, v0, v1, v2, v3)


def program_uniform4fv(program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLfloat, ImmutAnyOrigin]) raises:
    return get_fn[glProgramUniform4fv, "glProgramUniform4fv"]()(program, location, count, value)


def program_uniform4i(program: GLuint, location: GLint, v0: GLint, v1: GLint, v2: GLint, v3: GLint) raises:
    return get_fn[glProgramUniform4i, "glProgramUniform4i"]()(program, location, v0, v1, v2, v3)


def program_uniform4iv(program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLint, ImmutAnyOrigin]) raises:
    return get_fn[glProgramUniform4iv, "glProgramUniform4iv"]()(program, location, count, value)


def program_uniform4ui(program: GLuint, location: GLint, v0: GLuint, v1: GLuint, v2: GLuint, v3: GLuint) raises:
    return get_fn[glProgramUniform4ui, "glProgramUniform4ui"]()(program, location, v0, v1, v2, v3)


def program_uniform4uiv(program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLuint, ImmutAnyOrigin]) raises:
    return get_fn[glProgramUniform4uiv, "glProgramUniform4uiv"]()(program, location, count, value)


def program_uniform_matrix2dv(program: GLuint, location: GLint, count: GLsizei, transpose: Bool, value: Ptr[GLdouble, ImmutAnyOrigin]) raises:
    return get_fn[glProgramUniformMatrix2dv, "glProgramUniformMatrix2dv"]()(program, location, count, GLboolean(Int(transpose)), value)


def program_uniform_matrix2fv(program: GLuint, location: GLint, count: GLsizei, transpose: Bool, value: Ptr[GLfloat, ImmutAnyOrigin]) raises:
    return get_fn[glProgramUniformMatrix2fv, "glProgramUniformMatrix2fv"]()(program, location, count, GLboolean(Int(transpose)), value)


def program_uniform_matrix2x3dv(program: GLuint, location: GLint, count: GLsizei, transpose: Bool, value: Ptr[GLdouble, ImmutAnyOrigin]) raises:
    return get_fn[glProgramUniformMatrix2x3dv, "glProgramUniformMatrix2x3dv"]()(program, location, count, GLboolean(Int(transpose)), value)


def program_uniform_matrix2x3fv(program: GLuint, location: GLint, count: GLsizei, transpose: Bool, value: Ptr[GLfloat, ImmutAnyOrigin]) raises:
    return get_fn[glProgramUniformMatrix2x3fv, "glProgramUniformMatrix2x3fv"]()(program, location, count, GLboolean(Int(transpose)), value)


def program_uniform_matrix2x4dv(program: GLuint, location: GLint, count: GLsizei, transpose: Bool, value: Ptr[GLdouble, ImmutAnyOrigin]) raises:
    return get_fn[glProgramUniformMatrix2x4dv, "glProgramUniformMatrix2x4dv"]()(program, location, count, GLboolean(Int(transpose)), value)


def program_uniform_matrix2x4fv(program: GLuint, location: GLint, count: GLsizei, transpose: Bool, value: Ptr[GLfloat, ImmutAnyOrigin]) raises:
    return get_fn[glProgramUniformMatrix2x4fv, "glProgramUniformMatrix2x4fv"]()(program, location, count, GLboolean(Int(transpose)), value)


def program_uniform_matrix3dv(program: GLuint, location: GLint, count: GLsizei, transpose: Bool, value: Ptr[GLdouble, ImmutAnyOrigin]) raises:
    return get_fn[glProgramUniformMatrix3dv, "glProgramUniformMatrix3dv"]()(program, location, count, GLboolean(Int(transpose)), value)


def program_uniform_matrix3fv(program: GLuint, location: GLint, count: GLsizei, transpose: Bool, value: Ptr[GLfloat, ImmutAnyOrigin]) raises:
    return get_fn[glProgramUniformMatrix3fv, "glProgramUniformMatrix3fv"]()(program, location, count, GLboolean(Int(transpose)), value)


def program_uniform_matrix3x2dv(program: GLuint, location: GLint, count: GLsizei, transpose: Bool, value: Ptr[GLdouble, ImmutAnyOrigin]) raises:
    return get_fn[glProgramUniformMatrix3x2dv, "glProgramUniformMatrix3x2dv"]()(program, location, count, GLboolean(Int(transpose)), value)


def program_uniform_matrix3x2fv(program: GLuint, location: GLint, count: GLsizei, transpose: Bool, value: Ptr[GLfloat, ImmutAnyOrigin]) raises:
    return get_fn[glProgramUniformMatrix3x2fv, "glProgramUniformMatrix3x2fv"]()(program, location, count, GLboolean(Int(transpose)), value)


def program_uniform_matrix3x4dv(program: GLuint, location: GLint, count: GLsizei, transpose: Bool, value: Ptr[GLdouble, ImmutAnyOrigin]) raises:
    return get_fn[glProgramUniformMatrix3x4dv, "glProgramUniformMatrix3x4dv"]()(program, location, count, GLboolean(Int(transpose)), value)


def program_uniform_matrix3x4fv(program: GLuint, location: GLint, count: GLsizei, transpose: Bool, value: Ptr[GLfloat, ImmutAnyOrigin]) raises:
    return get_fn[glProgramUniformMatrix3x4fv, "glProgramUniformMatrix3x4fv"]()(program, location, count, GLboolean(Int(transpose)), value)


def program_uniform_matrix4dv(program: GLuint, location: GLint, count: GLsizei, transpose: Bool, value: Ptr[GLdouble, ImmutAnyOrigin]) raises:
    return get_fn[glProgramUniformMatrix4dv, "glProgramUniformMatrix4dv"]()(program, location, count, GLboolean(Int(transpose)), value)


def program_uniform_matrix4fv(program: GLuint, location: GLint, count: GLsizei, transpose: Bool, value: Ptr[GLfloat, ImmutAnyOrigin]) raises:
    return get_fn[glProgramUniformMatrix4fv, "glProgramUniformMatrix4fv"]()(program, location, count, GLboolean(Int(transpose)), value)


def program_uniform_matrix4x2dv(program: GLuint, location: GLint, count: GLsizei, transpose: Bool, value: Ptr[GLdouble, ImmutAnyOrigin]) raises:
    return get_fn[glProgramUniformMatrix4x2dv, "glProgramUniformMatrix4x2dv"]()(program, location, count, GLboolean(Int(transpose)), value)


def program_uniform_matrix4x2fv(program: GLuint, location: GLint, count: GLsizei, transpose: Bool, value: Ptr[GLfloat, ImmutAnyOrigin]) raises:
    return get_fn[glProgramUniformMatrix4x2fv, "glProgramUniformMatrix4x2fv"]()(program, location, count, GLboolean(Int(transpose)), value)


def program_uniform_matrix4x3dv(program: GLuint, location: GLint, count: GLsizei, transpose: Bool, value: Ptr[GLdouble, ImmutAnyOrigin]) raises:
    return get_fn[glProgramUniformMatrix4x3dv, "glProgramUniformMatrix4x3dv"]()(program, location, count, GLboolean(Int(transpose)), value)


def program_uniform_matrix4x3fv(program: GLuint, location: GLint, count: GLsizei, transpose: Bool, value: Ptr[GLfloat, ImmutAnyOrigin]) raises:
    return get_fn[glProgramUniformMatrix4x3fv, "glProgramUniformMatrix4x3fv"]()(program, location, count, GLboolean(Int(transpose)), value)


def provoking_vertex(mode: VertexProvokingMode) raises:
    return get_fn[glProvokingVertex, "glProvokingVertex"]()(mode)


def push_debug_group(source: DebugSource, id: GLuint, length: GLsizei, var message: String) raises:
    return get_fn[glPushDebugGroup, "glPushDebugGroup"]()(source, id, length, message.as_c_string_slice().unsafe_ptr().as_any_origin())


def query_counter(id: GLuint, target: QueryCounterTarget) raises:
    return get_fn[glQueryCounter, "glQueryCounter"]()(id, target)


def read_buffer(src: ReadBufferMode) raises:
    return get_fn[glReadBuffer, "glReadBuffer"]()(src)


def read_pixels(x: GLint, y: GLint, width: GLsizei, height: GLsizei, format: PixelFormat, type: PixelType, pixels: Ptr[NoneType, MutAnyOrigin]) raises:
    return get_fn[glReadPixels, "glReadPixels"]()(x, y, width, height, format, type, pixels)


def readn_pixels(x: GLint, y: GLint, width: GLsizei, height: GLsizei, format: PixelFormat, type: PixelType, buf_size: GLsizei, data: Ptr[NoneType, MutAnyOrigin]) raises:
    return get_fn[glReadnPixels, "glReadnPixels"]()(x, y, width, height, format, type, buf_size, data)


def release_shader_compiler() raises:
    return get_fn[glReleaseShaderCompiler, "glReleaseShaderCompiler"]()()


def renderbuffer_storage(target: RenderbufferTarget, internalformat: InternalFormat, width: GLsizei, height: GLsizei) raises:
    return get_fn[glRenderbufferStorage, "glRenderbufferStorage"]()(target, internalformat, width, height)


def renderbuffer_storage_multisample(target: RenderbufferTarget, samples: GLsizei, internalformat: InternalFormat, width: GLsizei, height: GLsizei) raises:
    return get_fn[glRenderbufferStorageMultisample, "glRenderbufferStorageMultisample"]()(target, samples, internalformat, width, height)


def resume_transform_feedback() raises:
    return get_fn[glResumeTransformFeedback, "glResumeTransformFeedback"]()()


def sample_coverage(value: GLfloat, invert: Bool) raises:
    return get_fn[glSampleCoverage, "glSampleCoverage"]()(value, GLboolean(Int(invert)))


def sample_maski(mask_number: GLuint, mask: GLbitfield) raises:
    return get_fn[glSampleMaski, "glSampleMaski"]()(mask_number, mask)


def sampler_parameter_iiv(sampler: GLuint, pname: SamplerParameterI, param: Ptr[GLint, ImmutAnyOrigin]) raises:
    return get_fn[glSamplerParameterIiv, "glSamplerParameterIiv"]()(sampler, pname, param)


def sampler_parameter_iuiv(sampler: GLuint, pname: SamplerParameterI, param: Ptr[GLuint, ImmutAnyOrigin]) raises:
    return get_fn[glSamplerParameterIuiv, "glSamplerParameterIuiv"]()(sampler, pname, param)


def sampler_parameterf(sampler: GLuint, pname: SamplerParameterF, param: GLfloat) raises:
    return get_fn[glSamplerParameterf, "glSamplerParameterf"]()(sampler, pname, param)


def sampler_parameterfv(sampler: GLuint, pname: SamplerParameterF, param: Ptr[GLfloat, ImmutAnyOrigin]) raises:
    return get_fn[glSamplerParameterfv, "glSamplerParameterfv"]()(sampler, pname, param)


def sampler_parameteri(sampler: GLuint, pname: SamplerParameterI, param: GLint) raises:
    return get_fn[glSamplerParameteri, "glSamplerParameteri"]()(sampler, pname, param)


def sampler_parameteriv(sampler: GLuint, pname: SamplerParameterI, param: Ptr[GLint, ImmutAnyOrigin]) raises:
    return get_fn[glSamplerParameteriv, "glSamplerParameteriv"]()(sampler, pname, param)


def scissor(x: GLint, y: GLint, width: GLsizei, height: GLsizei) raises:
    return get_fn[glScissor, "glScissor"]()(x, y, width, height)


def scissor_arrayv(first: GLuint, count: GLsizei, v: Ptr[GLint, ImmutAnyOrigin]) raises:
    return get_fn[glScissorArrayv, "glScissorArrayv"]()(first, count, v)


def scissor_indexed(index: GLuint, left: GLint, bottom: GLint, width: GLsizei, height: GLsizei) raises:
    return get_fn[glScissorIndexed, "glScissorIndexed"]()(index, left, bottom, width, height)


def scissor_indexedv(index: GLuint, v: Ptr[GLint, ImmutAnyOrigin]) raises:
    return get_fn[glScissorIndexedv, "glScissorIndexedv"]()(index, v)


def secondary_color_p3ui(type: ColorPointerType, color: GLuint) raises:
    return get_fn[glSecondaryColorP3ui, "glSecondaryColorP3ui"]()(type, color)


def secondary_color_p3uiv(type: ColorPointerType, color: Ptr[GLuint, ImmutAnyOrigin]) raises:
    return get_fn[glSecondaryColorP3uiv, "glSecondaryColorP3uiv"]()(type, color)


def shader_binary(count: GLsizei, shaders: Ptr[GLuint, ImmutAnyOrigin], binary_format: ShaderBinaryFormat, binary: Ptr[NoneType, ImmutAnyOrigin], length: GLsizei) raises:
    return get_fn[glShaderBinary, "glShaderBinary"]()(count, shaders, binary_format, binary, length)


def shader_source(shader: GLuint, count: GLsizei, var string: List[String], length: Ptr[GLint, ImmutAnyOrigin]) raises:
    var c_list = [str.as_c_string_slice().unsafe_ptr().as_any_origin() for ref str in string]
    return get_fn[glShaderSource, "glShaderSource"]()(shader, count, c_list.steal_data(), length)


def shader_storage_block_binding(program: GLuint, storage_block_index: GLuint, storage_block_binding: GLuint) raises:
    return get_fn[glShaderStorageBlockBinding, "glShaderStorageBlockBinding"]()(program, storage_block_index, storage_block_binding)


def specialize_shader(shader: GLuint, var p_entry_point: String, num_specialization_constants: GLuint, p_constant_index: Ptr[GLuint, ImmutAnyOrigin], p_constant_value: Ptr[GLuint, ImmutAnyOrigin]) raises:
    return get_fn[glSpecializeShader, "glSpecializeShader"]()(shader, p_entry_point.as_c_string_slice().unsafe_ptr().as_any_origin(), num_specialization_constants, p_constant_index, p_constant_value)


def stencil_func(func: StencilFunction, ref_: GLint, mask: GLuint) raises:
    return get_fn[glStencilFunc, "glStencilFunc"]()(func, ref_, mask)


def stencil_func_separate(face: TriangleFace, func: StencilFunction, ref_: GLint, mask: GLuint) raises:
    return get_fn[glStencilFuncSeparate, "glStencilFuncSeparate"]()(face, func, ref_, mask)


def stencil_mask(mask: GLuint) raises:
    return get_fn[glStencilMask, "glStencilMask"]()(mask)


def stencil_mask_separate(face: TriangleFace, mask: GLuint) raises:
    return get_fn[glStencilMaskSeparate, "glStencilMaskSeparate"]()(face, mask)


def stencil_op(fail: StencilOp, zfail: StencilOp, zpass: StencilOp) raises:
    return get_fn[glStencilOp, "glStencilOp"]()(fail, zfail, zpass)


def stencil_op_separate(face: TriangleFace, sfail: StencilOp, dpfail: StencilOp, dppass: StencilOp) raises:
    return get_fn[glStencilOpSeparate, "glStencilOpSeparate"]()(face, sfail, dpfail, dppass)


def tex_buffer(target: TextureTarget, internalformat: SizedInternalFormat, buffer: GLuint) raises:
    return get_fn[glTexBuffer, "glTexBuffer"]()(target, internalformat, buffer)


def tex_buffer_range(target: TextureTarget, internalformat: SizedInternalFormat, buffer: GLuint, offset: GLintptr, size: GLsizeiptr) raises:
    return get_fn[glTexBufferRange, "glTexBufferRange"]()(target, internalformat, buffer, offset, size)


def tex_coord_p1ui(type: TexCoordPointerType, coords: GLuint) raises:
    return get_fn[glTexCoordP1ui, "glTexCoordP1ui"]()(type, coords)


def tex_coord_p1uiv(type: TexCoordPointerType, coords: Ptr[GLuint, ImmutAnyOrigin]) raises:
    return get_fn[glTexCoordP1uiv, "glTexCoordP1uiv"]()(type, coords)


def tex_coord_p2ui(type: TexCoordPointerType, coords: GLuint) raises:
    return get_fn[glTexCoordP2ui, "glTexCoordP2ui"]()(type, coords)


def tex_coord_p2uiv(type: TexCoordPointerType, coords: Ptr[GLuint, ImmutAnyOrigin]) raises:
    return get_fn[glTexCoordP2uiv, "glTexCoordP2uiv"]()(type, coords)


def tex_coord_p3ui(type: TexCoordPointerType, coords: GLuint) raises:
    return get_fn[glTexCoordP3ui, "glTexCoordP3ui"]()(type, coords)


def tex_coord_p3uiv(type: TexCoordPointerType, coords: Ptr[GLuint, ImmutAnyOrigin]) raises:
    return get_fn[glTexCoordP3uiv, "glTexCoordP3uiv"]()(type, coords)


def tex_coord_p4ui(type: TexCoordPointerType, coords: GLuint) raises:
    return get_fn[glTexCoordP4ui, "glTexCoordP4ui"]()(type, coords)


def tex_coord_p4uiv(type: TexCoordPointerType, coords: Ptr[GLuint, ImmutAnyOrigin]) raises:
    return get_fn[glTexCoordP4uiv, "glTexCoordP4uiv"]()(type, coords)


def tex_image_1d(target: TextureTarget, level: GLint, internalformat: InternalFormat, width: GLsizei, border: GLint, format: PixelFormat, type: PixelType, pixels: Ptr[NoneType, ImmutAnyOrigin]) raises:
    return get_fn[glTexImage1D, "glTexImage1D"]()(target, level, internalformat, width, border, format, type, pixels)


def tex_image_2d(target: TextureTarget, level: GLint, internalformat: InternalFormat, width: GLsizei, height: GLsizei, border: GLint, format: PixelFormat, type: PixelType, pixels: Ptr[NoneType, ImmutAnyOrigin]) raises:
    return get_fn[glTexImage2D, "glTexImage2D"]()(target, level, internalformat, width, height, border, format, type, pixels)


def tex_image2_d_multisample(target: TextureTarget, samples: GLsizei, internalformat: InternalFormat, width: GLsizei, height: GLsizei, fixedsamplelocations: Bool) raises:
    return get_fn[glTexImage2DMultisample, "glTexImage2DMultisample"]()(target, samples, internalformat, width, height, GLboolean(Int(fixedsamplelocations)))


def tex_image_3d(target: TextureTarget, level: GLint, internalformat: InternalFormat, width: GLsizei, height: GLsizei, depth: GLsizei, border: GLint, format: PixelFormat, type: PixelType, pixels: Ptr[NoneType, ImmutAnyOrigin]) raises:
    return get_fn[glTexImage3D, "glTexImage3D"]()(target, level, internalformat, width, height, depth, border, format, type, pixels)


def tex_image3_d_multisample(target: TextureTarget, samples: GLsizei, internalformat: InternalFormat, width: GLsizei, height: GLsizei, depth: GLsizei, fixedsamplelocations: Bool) raises:
    return get_fn[glTexImage3DMultisample, "glTexImage3DMultisample"]()(target, samples, internalformat, width, height, depth, GLboolean(Int(fixedsamplelocations)))


def tex_parameter_iiv(target: TextureTarget, pname: TextureParameterName, params: Ptr[GLint, ImmutAnyOrigin]) raises:
    return get_fn[glTexParameterIiv, "glTexParameterIiv"]()(target, pname, params)


def tex_parameter_iuiv(target: TextureTarget, pname: TextureParameterName, params: Ptr[GLuint, ImmutAnyOrigin]) raises:
    return get_fn[glTexParameterIuiv, "glTexParameterIuiv"]()(target, pname, params)


def tex_parameterf(target: TextureTarget, pname: TextureParameterName, param: GLfloat) raises:
    return get_fn[glTexParameterf, "glTexParameterf"]()(target, pname, param)


def tex_parameterfv(target: TextureTarget, pname: TextureParameterName, params: Ptr[GLfloat, ImmutAnyOrigin]) raises:
    return get_fn[glTexParameterfv, "glTexParameterfv"]()(target, pname, params)


def tex_parameteri(target: TextureTarget, pname: TextureParameterName, param: GLint) raises:
    return get_fn[glTexParameteri, "glTexParameteri"]()(target, pname, param)


def tex_parameteriv(target: TextureTarget, pname: TextureParameterName, params: Ptr[GLint, ImmutAnyOrigin]) raises:
    return get_fn[glTexParameteriv, "glTexParameteriv"]()(target, pname, params)


def tex_storage_1d(target: TextureTarget, levels: GLsizei, internalformat: SizedInternalFormat, width: GLsizei) raises:
    return get_fn[glTexStorage1D, "glTexStorage1D"]()(target, levels, internalformat, width)


def tex_storage_2d(target: TextureTarget, levels: GLsizei, internalformat: SizedInternalFormat, width: GLsizei, height: GLsizei) raises:
    return get_fn[glTexStorage2D, "glTexStorage2D"]()(target, levels, internalformat, width, height)


def tex_storage2_d_multisample(target: TextureTarget, samples: GLsizei, internalformat: SizedInternalFormat, width: GLsizei, height: GLsizei, fixedsamplelocations: Bool) raises:
    return get_fn[glTexStorage2DMultisample, "glTexStorage2DMultisample"]()(target, samples, internalformat, width, height, GLboolean(Int(fixedsamplelocations)))


def tex_storage_3d(target: TextureTarget, levels: GLsizei, internalformat: SizedInternalFormat, width: GLsizei, height: GLsizei, depth: GLsizei) raises:
    return get_fn[glTexStorage3D, "glTexStorage3D"]()(target, levels, internalformat, width, height, depth)


def tex_storage3_d_multisample(target: TextureTarget, samples: GLsizei, internalformat: SizedInternalFormat, width: GLsizei, height: GLsizei, depth: GLsizei, fixedsamplelocations: Bool) raises:
    return get_fn[glTexStorage3DMultisample, "glTexStorage3DMultisample"]()(target, samples, internalformat, width, height, depth, GLboolean(Int(fixedsamplelocations)))


def tex_sub_image_1d(target: TextureTarget, level: GLint, xoffset: GLint, width: GLsizei, format: PixelFormat, type: PixelType, pixels: Ptr[NoneType, ImmutAnyOrigin]) raises:
    return get_fn[glTexSubImage1D, "glTexSubImage1D"]()(target, level, xoffset, width, format, type, pixels)


def tex_sub_image_2d(target: TextureTarget, level: GLint, xoffset: GLint, yoffset: GLint, width: GLsizei, height: GLsizei, format: PixelFormat, type: PixelType, pixels: Ptr[NoneType, ImmutAnyOrigin]) raises:
    return get_fn[glTexSubImage2D, "glTexSubImage2D"]()(target, level, xoffset, yoffset, width, height, format, type, pixels)


def tex_sub_image_3d(target: TextureTarget, level: GLint, xoffset: GLint, yoffset: GLint, zoffset: GLint, width: GLsizei, height: GLsizei, depth: GLsizei, format: PixelFormat, type: PixelType, pixels: Ptr[NoneType, ImmutAnyOrigin]) raises:
    return get_fn[glTexSubImage3D, "glTexSubImage3D"]()(target, level, xoffset, yoffset, zoffset, width, height, depth, format, type, pixels)


def texture_barrier() raises:
    return get_fn[glTextureBarrier, "glTextureBarrier"]()()


def texture_buffer(texture: GLuint, internalformat: SizedInternalFormat, buffer: GLuint) raises:
    return get_fn[glTextureBuffer, "glTextureBuffer"]()(texture, internalformat, buffer)


def texture_buffer_range(texture: GLuint, internalformat: SizedInternalFormat, buffer: GLuint, offset: GLintptr, size: GLsizeiptr) raises:
    return get_fn[glTextureBufferRange, "glTextureBufferRange"]()(texture, internalformat, buffer, offset, size)


def texture_parameter_iiv(texture: GLuint, pname: TextureParameterName, params: Ptr[GLint, ImmutAnyOrigin]) raises:
    return get_fn[glTextureParameterIiv, "glTextureParameterIiv"]()(texture, pname, params)


def texture_parameter_iuiv(texture: GLuint, pname: TextureParameterName, params: Ptr[GLuint, ImmutAnyOrigin]) raises:
    return get_fn[glTextureParameterIuiv, "glTextureParameterIuiv"]()(texture, pname, params)


def texture_parameterf(texture: GLuint, pname: TextureParameterName, param: GLfloat) raises:
    return get_fn[glTextureParameterf, "glTextureParameterf"]()(texture, pname, param)


def texture_parameterfv(texture: GLuint, pname: TextureParameterName, param: Ptr[GLfloat, ImmutAnyOrigin]) raises:
    return get_fn[glTextureParameterfv, "glTextureParameterfv"]()(texture, pname, param)


def texture_parameteri(texture: GLuint, pname: TextureParameterName, param: GLint) raises:
    return get_fn[glTextureParameteri, "glTextureParameteri"]()(texture, pname, param)


def texture_parameteriv(texture: GLuint, pname: TextureParameterName, param: Ptr[GLint, ImmutAnyOrigin]) raises:
    return get_fn[glTextureParameteriv, "glTextureParameteriv"]()(texture, pname, param)


def texture_storage_1d(texture: GLuint, levels: GLsizei, internalformat: SizedInternalFormat, width: GLsizei) raises:
    return get_fn[glTextureStorage1D, "glTextureStorage1D"]()(texture, levels, internalformat, width)


def texture_storage_2d(texture: GLuint, levels: GLsizei, internalformat: SizedInternalFormat, width: GLsizei, height: GLsizei) raises:
    return get_fn[glTextureStorage2D, "glTextureStorage2D"]()(texture, levels, internalformat, width, height)


def texture_storage2_d_multisample(texture: GLuint, samples: GLsizei, internalformat: SizedInternalFormat, width: GLsizei, height: GLsizei, fixedsamplelocations: Bool) raises:
    return get_fn[glTextureStorage2DMultisample, "glTextureStorage2DMultisample"]()(texture, samples, internalformat, width, height, GLboolean(Int(fixedsamplelocations)))


def texture_storage_3d(texture: GLuint, levels: GLsizei, internalformat: SizedInternalFormat, width: GLsizei, height: GLsizei, depth: GLsizei) raises:
    return get_fn[glTextureStorage3D, "glTextureStorage3D"]()(texture, levels, internalformat, width, height, depth)


def texture_storage3_d_multisample(texture: GLuint, samples: GLsizei, internalformat: SizedInternalFormat, width: GLsizei, height: GLsizei, depth: GLsizei, fixedsamplelocations: Bool) raises:
    return get_fn[glTextureStorage3DMultisample, "glTextureStorage3DMultisample"]()(texture, samples, internalformat, width, height, depth, GLboolean(Int(fixedsamplelocations)))


def texture_sub_image_1d(texture: GLuint, level: GLint, xoffset: GLint, width: GLsizei, format: PixelFormat, type: PixelType, pixels: Ptr[NoneType, ImmutAnyOrigin]) raises:
    return get_fn[glTextureSubImage1D, "glTextureSubImage1D"]()(texture, level, xoffset, width, format, type, pixels)


def texture_sub_image_2d(texture: GLuint, level: GLint, xoffset: GLint, yoffset: GLint, width: GLsizei, height: GLsizei, format: PixelFormat, type: PixelType, pixels: Ptr[NoneType, ImmutAnyOrigin]) raises:
    return get_fn[glTextureSubImage2D, "glTextureSubImage2D"]()(texture, level, xoffset, yoffset, width, height, format, type, pixels)


def texture_sub_image_3d(texture: GLuint, level: GLint, xoffset: GLint, yoffset: GLint, zoffset: GLint, width: GLsizei, height: GLsizei, depth: GLsizei, format: PixelFormat, type: PixelType, pixels: Ptr[NoneType, ImmutAnyOrigin]) raises:
    return get_fn[glTextureSubImage3D, "glTextureSubImage3D"]()(texture, level, xoffset, yoffset, zoffset, width, height, depth, format, type, pixels)


def texture_view(texture: GLuint, target: TextureTarget, origtexture: GLuint, internalformat: SizedInternalFormat, minlevel: GLuint, numlevels: GLuint, minlayer: GLuint, numlayers: GLuint) raises:
    return get_fn[glTextureView, "glTextureView"]()(texture, target, origtexture, internalformat, minlevel, numlevels, minlayer, numlayers)


def transform_feedback_buffer_base(xfb: GLuint, index: GLuint, buffer: GLuint) raises:
    return get_fn[glTransformFeedbackBufferBase, "glTransformFeedbackBufferBase"]()(xfb, index, buffer)


def transform_feedback_buffer_range(xfb: GLuint, index: GLuint, buffer: GLuint, offset: GLintptr, size: GLsizeiptr) raises:
    return get_fn[glTransformFeedbackBufferRange, "glTransformFeedbackBufferRange"]()(xfb, index, buffer, offset, size)


def transform_feedback_varyings(program: GLuint, count: GLsizei, var varyings: List[String], buffer_mode: TransformFeedbackBufferMode) raises:
    var c_list = [str.as_c_string_slice().unsafe_ptr().as_any_origin() for ref str in varyings]
    return get_fn[glTransformFeedbackVaryings, "glTransformFeedbackVaryings"]()(program, count, c_list.steal_data(), buffer_mode)


def uniform1d(location: GLint, x: GLdouble) raises:
    return get_fn[glUniform1d, "glUniform1d"]()(location, x)


def uniform1dv(location: GLint, count: GLsizei, value: Ptr[GLdouble, ImmutAnyOrigin]) raises:
    return get_fn[glUniform1dv, "glUniform1dv"]()(location, count, value)


def uniform1f(location: GLint, v0: GLfloat) raises:
    return get_fn[glUniform1f, "glUniform1f"]()(location, v0)


def uniform1fv(location: GLint, count: GLsizei, value: Ptr[GLfloat, ImmutAnyOrigin]) raises:
    return get_fn[glUniform1fv, "glUniform1fv"]()(location, count, value)


def uniform1i(location: GLint, v0: GLint) raises:
    return get_fn[glUniform1i, "glUniform1i"]()(location, v0)


def uniform1iv(location: GLint, count: GLsizei, value: Ptr[GLint, ImmutAnyOrigin]) raises:
    return get_fn[glUniform1iv, "glUniform1iv"]()(location, count, value)


def uniform1ui(location: GLint, v0: GLuint) raises:
    return get_fn[glUniform1ui, "glUniform1ui"]()(location, v0)


def uniform1uiv(location: GLint, count: GLsizei, value: Ptr[GLuint, ImmutAnyOrigin]) raises:
    return get_fn[glUniform1uiv, "glUniform1uiv"]()(location, count, value)


def uniform2d(location: GLint, x: GLdouble, y: GLdouble) raises:
    return get_fn[glUniform2d, "glUniform2d"]()(location, x, y)


def uniform2dv(location: GLint, count: GLsizei, value: Ptr[GLdouble, ImmutAnyOrigin]) raises:
    return get_fn[glUniform2dv, "glUniform2dv"]()(location, count, value)


def uniform2f(location: GLint, v0: GLfloat, v1: GLfloat) raises:
    return get_fn[glUniform2f, "glUniform2f"]()(location, v0, v1)


def uniform2fv(location: GLint, count: GLsizei, value: Ptr[GLfloat, ImmutAnyOrigin]) raises:
    return get_fn[glUniform2fv, "glUniform2fv"]()(location, count, value)


def uniform2i(location: GLint, v0: GLint, v1: GLint) raises:
    return get_fn[glUniform2i, "glUniform2i"]()(location, v0, v1)


def uniform2iv(location: GLint, count: GLsizei, value: Ptr[GLint, ImmutAnyOrigin]) raises:
    return get_fn[glUniform2iv, "glUniform2iv"]()(location, count, value)


def uniform2ui(location: GLint, v0: GLuint, v1: GLuint) raises:
    return get_fn[glUniform2ui, "glUniform2ui"]()(location, v0, v1)


def uniform2uiv(location: GLint, count: GLsizei, value: Ptr[GLuint, ImmutAnyOrigin]) raises:
    return get_fn[glUniform2uiv, "glUniform2uiv"]()(location, count, value)


def uniform3d(location: GLint, x: GLdouble, y: GLdouble, z: GLdouble) raises:
    return get_fn[glUniform3d, "glUniform3d"]()(location, x, y, z)


def uniform3dv(location: GLint, count: GLsizei, value: Ptr[GLdouble, ImmutAnyOrigin]) raises:
    return get_fn[glUniform3dv, "glUniform3dv"]()(location, count, value)


def uniform3f(location: GLint, v0: GLfloat, v1: GLfloat, v2: GLfloat) raises:
    return get_fn[glUniform3f, "glUniform3f"]()(location, v0, v1, v2)


def uniform3fv(location: GLint, count: GLsizei, value: Ptr[GLfloat, ImmutAnyOrigin]) raises:
    return get_fn[glUniform3fv, "glUniform3fv"]()(location, count, value)


def uniform3i(location: GLint, v0: GLint, v1: GLint, v2: GLint) raises:
    return get_fn[glUniform3i, "glUniform3i"]()(location, v0, v1, v2)


def uniform3iv(location: GLint, count: GLsizei, value: Ptr[GLint, ImmutAnyOrigin]) raises:
    return get_fn[glUniform3iv, "glUniform3iv"]()(location, count, value)


def uniform3ui(location: GLint, v0: GLuint, v1: GLuint, v2: GLuint) raises:
    return get_fn[glUniform3ui, "glUniform3ui"]()(location, v0, v1, v2)


def uniform3uiv(location: GLint, count: GLsizei, value: Ptr[GLuint, ImmutAnyOrigin]) raises:
    return get_fn[glUniform3uiv, "glUniform3uiv"]()(location, count, value)


def uniform4d(location: GLint, x: GLdouble, y: GLdouble, z: GLdouble, w: GLdouble) raises:
    return get_fn[glUniform4d, "glUniform4d"]()(location, x, y, z, w)


def uniform4dv(location: GLint, count: GLsizei, value: Ptr[GLdouble, ImmutAnyOrigin]) raises:
    return get_fn[glUniform4dv, "glUniform4dv"]()(location, count, value)


def uniform4f(location: GLint, v0: GLfloat, v1: GLfloat, v2: GLfloat, v3: GLfloat) raises:
    return get_fn[glUniform4f, "glUniform4f"]()(location, v0, v1, v2, v3)


def uniform4fv(location: GLint, count: GLsizei, value: Ptr[GLfloat, ImmutAnyOrigin]) raises:
    return get_fn[glUniform4fv, "glUniform4fv"]()(location, count, value)


def uniform4i(location: GLint, v0: GLint, v1: GLint, v2: GLint, v3: GLint) raises:
    return get_fn[glUniform4i, "glUniform4i"]()(location, v0, v1, v2, v3)


def uniform4iv(location: GLint, count: GLsizei, value: Ptr[GLint, ImmutAnyOrigin]) raises:
    return get_fn[glUniform4iv, "glUniform4iv"]()(location, count, value)


def uniform4ui(location: GLint, v0: GLuint, v1: GLuint, v2: GLuint, v3: GLuint) raises:
    return get_fn[glUniform4ui, "glUniform4ui"]()(location, v0, v1, v2, v3)


def uniform4uiv(location: GLint, count: GLsizei, value: Ptr[GLuint, ImmutAnyOrigin]) raises:
    return get_fn[glUniform4uiv, "glUniform4uiv"]()(location, count, value)


def uniform_block_binding(program: GLuint, uniform_block_index: GLuint, uniform_block_binding: GLuint) raises:
    return get_fn[glUniformBlockBinding, "glUniformBlockBinding"]()(program, uniform_block_index, uniform_block_binding)


def uniform_matrix2dv(location: GLint, count: GLsizei, transpose: Bool, value: Ptr[GLdouble, ImmutAnyOrigin]) raises:
    return get_fn[glUniformMatrix2dv, "glUniformMatrix2dv"]()(location, count, GLboolean(Int(transpose)), value)


def uniform_matrix2fv(location: GLint, count: GLsizei, transpose: Bool, value: Ptr[GLfloat, ImmutAnyOrigin]) raises:
    return get_fn[glUniformMatrix2fv, "glUniformMatrix2fv"]()(location, count, GLboolean(Int(transpose)), value)


def uniform_matrix2x3dv(location: GLint, count: GLsizei, transpose: Bool, value: Ptr[GLdouble, ImmutAnyOrigin]) raises:
    return get_fn[glUniformMatrix2x3dv, "glUniformMatrix2x3dv"]()(location, count, GLboolean(Int(transpose)), value)


def uniform_matrix2x3fv(location: GLint, count: GLsizei, transpose: Bool, value: Ptr[GLfloat, ImmutAnyOrigin]) raises:
    return get_fn[glUniformMatrix2x3fv, "glUniformMatrix2x3fv"]()(location, count, GLboolean(Int(transpose)), value)


def uniform_matrix2x4dv(location: GLint, count: GLsizei, transpose: Bool, value: Ptr[GLdouble, ImmutAnyOrigin]) raises:
    return get_fn[glUniformMatrix2x4dv, "glUniformMatrix2x4dv"]()(location, count, GLboolean(Int(transpose)), value)


def uniform_matrix2x4fv(location: GLint, count: GLsizei, transpose: Bool, value: Ptr[GLfloat, ImmutAnyOrigin]) raises:
    return get_fn[glUniformMatrix2x4fv, "glUniformMatrix2x4fv"]()(location, count, GLboolean(Int(transpose)), value)


def uniform_matrix3dv(location: GLint, count: GLsizei, transpose: Bool, value: Ptr[GLdouble, ImmutAnyOrigin]) raises:
    return get_fn[glUniformMatrix3dv, "glUniformMatrix3dv"]()(location, count, GLboolean(Int(transpose)), value)


def uniform_matrix3fv(location: GLint, count: GLsizei, transpose: Bool, value: Ptr[GLfloat, ImmutAnyOrigin]) raises:
    return get_fn[glUniformMatrix3fv, "glUniformMatrix3fv"]()(location, count, GLboolean(Int(transpose)), value)


def uniform_matrix3x2dv(location: GLint, count: GLsizei, transpose: Bool, value: Ptr[GLdouble, ImmutAnyOrigin]) raises:
    return get_fn[glUniformMatrix3x2dv, "glUniformMatrix3x2dv"]()(location, count, GLboolean(Int(transpose)), value)


def uniform_matrix3x2fv(location: GLint, count: GLsizei, transpose: Bool, value: Ptr[GLfloat, ImmutAnyOrigin]) raises:
    return get_fn[glUniformMatrix3x2fv, "glUniformMatrix3x2fv"]()(location, count, GLboolean(Int(transpose)), value)


def uniform_matrix3x4dv(location: GLint, count: GLsizei, transpose: Bool, value: Ptr[GLdouble, ImmutAnyOrigin]) raises:
    return get_fn[glUniformMatrix3x4dv, "glUniformMatrix3x4dv"]()(location, count, GLboolean(Int(transpose)), value)


def uniform_matrix3x4fv(location: GLint, count: GLsizei, transpose: Bool, value: Ptr[GLfloat, ImmutAnyOrigin]) raises:
    return get_fn[glUniformMatrix3x4fv, "glUniformMatrix3x4fv"]()(location, count, GLboolean(Int(transpose)), value)


def uniform_matrix4dv(location: GLint, count: GLsizei, transpose: Bool, value: Ptr[GLdouble, ImmutAnyOrigin]) raises:
    return get_fn[glUniformMatrix4dv, "glUniformMatrix4dv"]()(location, count, GLboolean(Int(transpose)), value)


def uniform_matrix4fv(location: GLint, count: GLsizei, transpose: Bool, value: Ptr[GLfloat, ImmutAnyOrigin]) raises:
    return get_fn[glUniformMatrix4fv, "glUniformMatrix4fv"]()(location, count, GLboolean(Int(transpose)), value)


def uniform_matrix4x2dv(location: GLint, count: GLsizei, transpose: Bool, value: Ptr[GLdouble, ImmutAnyOrigin]) raises:
    return get_fn[glUniformMatrix4x2dv, "glUniformMatrix4x2dv"]()(location, count, GLboolean(Int(transpose)), value)


def uniform_matrix4x2fv(location: GLint, count: GLsizei, transpose: Bool, value: Ptr[GLfloat, ImmutAnyOrigin]) raises:
    return get_fn[glUniformMatrix4x2fv, "glUniformMatrix4x2fv"]()(location, count, GLboolean(Int(transpose)), value)


def uniform_matrix4x3dv(location: GLint, count: GLsizei, transpose: Bool, value: Ptr[GLdouble, ImmutAnyOrigin]) raises:
    return get_fn[glUniformMatrix4x3dv, "glUniformMatrix4x3dv"]()(location, count, GLboolean(Int(transpose)), value)


def uniform_matrix4x3fv(location: GLint, count: GLsizei, transpose: Bool, value: Ptr[GLfloat, ImmutAnyOrigin]) raises:
    return get_fn[glUniformMatrix4x3fv, "glUniformMatrix4x3fv"]()(location, count, GLboolean(Int(transpose)), value)


def uniform_subroutinesuiv(shadertype: ShaderType, count: GLsizei, indices: Ptr[GLuint, ImmutAnyOrigin]) raises:
    return get_fn[glUniformSubroutinesuiv, "glUniformSubroutinesuiv"]()(shadertype, count, indices)


def unmap_buffer(target: BufferTargetARB) raises -> GLboolean:
    return get_fn[glUnmapBuffer, "glUnmapBuffer"]()(target)


def unmap_named_buffer(buffer: GLuint) raises -> GLboolean:
    return get_fn[glUnmapNamedBuffer, "glUnmapNamedBuffer"]()(buffer)


def use_program(program: GLuint) raises:
    return get_fn[glUseProgram, "glUseProgram"]()(program)


def use_program_stages(pipeline: GLuint, stages: UseProgramStageMask, program: GLuint) raises:
    return get_fn[glUseProgramStages, "glUseProgramStages"]()(pipeline, stages, program)


def validate_program(program: GLuint) raises:
    return get_fn[glValidateProgram, "glValidateProgram"]()(program)


def validate_program_pipeline(pipeline: GLuint) raises:
    return get_fn[glValidateProgramPipeline, "glValidateProgramPipeline"]()(pipeline)


def vertex_array_attrib_binding(vaobj: GLuint, attribindex: GLuint, bindingindex: GLuint) raises:
    return get_fn[glVertexArrayAttribBinding, "glVertexArrayAttribBinding"]()(vaobj, attribindex, bindingindex)


def vertex_array_attrib_format(vaobj: GLuint, attribindex: GLuint, size: GLint, type: VertexAttribType, normalized: Bool, relativeoffset: GLuint) raises:
    return get_fn[glVertexArrayAttribFormat, "glVertexArrayAttribFormat"]()(vaobj, attribindex, size, type, GLboolean(Int(normalized)), relativeoffset)


def vertex_array_attrib_i_format(vaobj: GLuint, attribindex: GLuint, size: GLint, type: VertexAttribIType, relativeoffset: GLuint) raises:
    return get_fn[glVertexArrayAttribIFormat, "glVertexArrayAttribIFormat"]()(vaobj, attribindex, size, type, relativeoffset)


def vertex_array_attrib_l_format(vaobj: GLuint, attribindex: GLuint, size: GLint, type: VertexAttribLType, relativeoffset: GLuint) raises:
    return get_fn[glVertexArrayAttribLFormat, "glVertexArrayAttribLFormat"]()(vaobj, attribindex, size, type, relativeoffset)


def vertex_array_binding_divisor(vaobj: GLuint, bindingindex: GLuint, divisor: GLuint) raises:
    return get_fn[glVertexArrayBindingDivisor, "glVertexArrayBindingDivisor"]()(vaobj, bindingindex, divisor)


def vertex_array_element_buffer(vaobj: GLuint, buffer: GLuint) raises:
    return get_fn[glVertexArrayElementBuffer, "glVertexArrayElementBuffer"]()(vaobj, buffer)


def vertex_array_vertex_buffer(vaobj: GLuint, bindingindex: GLuint, buffer: GLuint, offset: GLintptr, stride: GLsizei) raises:
    return get_fn[glVertexArrayVertexBuffer, "glVertexArrayVertexBuffer"]()(vaobj, bindingindex, buffer, offset, stride)


def vertex_array_vertex_buffers(vaobj: GLuint, first: GLuint, count: GLsizei, buffers: Ptr[GLuint, ImmutAnyOrigin], offsets: Ptr[GLintptr, ImmutAnyOrigin], strides: Ptr[GLsizei, ImmutAnyOrigin]) raises:
    return get_fn[glVertexArrayVertexBuffers, "glVertexArrayVertexBuffers"]()(vaobj, first, count, buffers, offsets, strides)


def vertex_attrib1d(index: GLuint, x: GLdouble) raises:
    return get_fn[glVertexAttrib1d, "glVertexAttrib1d"]()(index, x)


def vertex_attrib1dv(index: GLuint, v: Ptr[GLdouble, ImmutAnyOrigin]) raises:
    return get_fn[glVertexAttrib1dv, "glVertexAttrib1dv"]()(index, v)


def vertex_attrib1f(index: GLuint, x: GLfloat) raises:
    return get_fn[glVertexAttrib1f, "glVertexAttrib1f"]()(index, x)


def vertex_attrib1fv(index: GLuint, v: Ptr[GLfloat, ImmutAnyOrigin]) raises:
    return get_fn[glVertexAttrib1fv, "glVertexAttrib1fv"]()(index, v)


def vertex_attrib1s(index: GLuint, x: GLshort) raises:
    return get_fn[glVertexAttrib1s, "glVertexAttrib1s"]()(index, x)


def vertex_attrib1sv(index: GLuint, v: Ptr[GLshort, ImmutAnyOrigin]) raises:
    return get_fn[glVertexAttrib1sv, "glVertexAttrib1sv"]()(index, v)


def vertex_attrib2d(index: GLuint, x: GLdouble, y: GLdouble) raises:
    return get_fn[glVertexAttrib2d, "glVertexAttrib2d"]()(index, x, y)


def vertex_attrib2dv(index: GLuint, v: Ptr[GLdouble, ImmutAnyOrigin]) raises:
    return get_fn[glVertexAttrib2dv, "glVertexAttrib2dv"]()(index, v)


def vertex_attrib2f(index: GLuint, x: GLfloat, y: GLfloat) raises:
    return get_fn[glVertexAttrib2f, "glVertexAttrib2f"]()(index, x, y)


def vertex_attrib2fv(index: GLuint, v: Ptr[GLfloat, ImmutAnyOrigin]) raises:
    return get_fn[glVertexAttrib2fv, "glVertexAttrib2fv"]()(index, v)


def vertex_attrib2s(index: GLuint, x: GLshort, y: GLshort) raises:
    return get_fn[glVertexAttrib2s, "glVertexAttrib2s"]()(index, x, y)


def vertex_attrib2sv(index: GLuint, v: Ptr[GLshort, ImmutAnyOrigin]) raises:
    return get_fn[glVertexAttrib2sv, "glVertexAttrib2sv"]()(index, v)


def vertex_attrib3d(index: GLuint, x: GLdouble, y: GLdouble, z: GLdouble) raises:
    return get_fn[glVertexAttrib3d, "glVertexAttrib3d"]()(index, x, y, z)


def vertex_attrib3dv(index: GLuint, v: Ptr[GLdouble, ImmutAnyOrigin]) raises:
    return get_fn[glVertexAttrib3dv, "glVertexAttrib3dv"]()(index, v)


def vertex_attrib3f(index: GLuint, x: GLfloat, y: GLfloat, z: GLfloat) raises:
    return get_fn[glVertexAttrib3f, "glVertexAttrib3f"]()(index, x, y, z)


def vertex_attrib3fv(index: GLuint, v: Ptr[GLfloat, ImmutAnyOrigin]) raises:
    return get_fn[glVertexAttrib3fv, "glVertexAttrib3fv"]()(index, v)


def vertex_attrib3s(index: GLuint, x: GLshort, y: GLshort, z: GLshort) raises:
    return get_fn[glVertexAttrib3s, "glVertexAttrib3s"]()(index, x, y, z)


def vertex_attrib3sv(index: GLuint, v: Ptr[GLshort, ImmutAnyOrigin]) raises:
    return get_fn[glVertexAttrib3sv, "glVertexAttrib3sv"]()(index, v)


def vertex_attrib4_nbv(index: GLuint, v: Ptr[GLbyte, ImmutAnyOrigin]) raises:
    return get_fn[glVertexAttrib4Nbv, "glVertexAttrib4Nbv"]()(index, v)


def vertex_attrib4_niv(index: GLuint, v: Ptr[GLint, ImmutAnyOrigin]) raises:
    return get_fn[glVertexAttrib4Niv, "glVertexAttrib4Niv"]()(index, v)


def vertex_attrib4_nsv(index: GLuint, v: Ptr[GLshort, ImmutAnyOrigin]) raises:
    return get_fn[glVertexAttrib4Nsv, "glVertexAttrib4Nsv"]()(index, v)


def vertex_attrib4_nub(index: GLuint, x: GLubyte, y: GLubyte, z: GLubyte, w: GLubyte) raises:
    return get_fn[glVertexAttrib4Nub, "glVertexAttrib4Nub"]()(index, x, y, z, w)


def vertex_attrib4_nubv(index: GLuint, v: Ptr[GLubyte, ImmutAnyOrigin]) raises:
    return get_fn[glVertexAttrib4Nubv, "glVertexAttrib4Nubv"]()(index, v)


def vertex_attrib4_nuiv(index: GLuint, v: Ptr[GLuint, ImmutAnyOrigin]) raises:
    return get_fn[glVertexAttrib4Nuiv, "glVertexAttrib4Nuiv"]()(index, v)


def vertex_attrib4_nusv(index: GLuint, v: Ptr[GLushort, ImmutAnyOrigin]) raises:
    return get_fn[glVertexAttrib4Nusv, "glVertexAttrib4Nusv"]()(index, v)


def vertex_attrib4bv(index: GLuint, v: Ptr[GLbyte, ImmutAnyOrigin]) raises:
    return get_fn[glVertexAttrib4bv, "glVertexAttrib4bv"]()(index, v)


def vertex_attrib4d(index: GLuint, x: GLdouble, y: GLdouble, z: GLdouble, w: GLdouble) raises:
    return get_fn[glVertexAttrib4d, "glVertexAttrib4d"]()(index, x, y, z, w)


def vertex_attrib4dv(index: GLuint, v: Ptr[GLdouble, ImmutAnyOrigin]) raises:
    return get_fn[glVertexAttrib4dv, "glVertexAttrib4dv"]()(index, v)


def vertex_attrib4f(index: GLuint, x: GLfloat, y: GLfloat, z: GLfloat, w: GLfloat) raises:
    return get_fn[glVertexAttrib4f, "glVertexAttrib4f"]()(index, x, y, z, w)


def vertex_attrib4fv(index: GLuint, v: Ptr[GLfloat, ImmutAnyOrigin]) raises:
    return get_fn[glVertexAttrib4fv, "glVertexAttrib4fv"]()(index, v)


def vertex_attrib4iv(index: GLuint, v: Ptr[GLint, ImmutAnyOrigin]) raises:
    return get_fn[glVertexAttrib4iv, "glVertexAttrib4iv"]()(index, v)


def vertex_attrib4s(index: GLuint, x: GLshort, y: GLshort, z: GLshort, w: GLshort) raises:
    return get_fn[glVertexAttrib4s, "glVertexAttrib4s"]()(index, x, y, z, w)


def vertex_attrib4sv(index: GLuint, v: Ptr[GLshort, ImmutAnyOrigin]) raises:
    return get_fn[glVertexAttrib4sv, "glVertexAttrib4sv"]()(index, v)


def vertex_attrib4ubv(index: GLuint, v: Ptr[GLubyte, ImmutAnyOrigin]) raises:
    return get_fn[glVertexAttrib4ubv, "glVertexAttrib4ubv"]()(index, v)


def vertex_attrib4uiv(index: GLuint, v: Ptr[GLuint, ImmutAnyOrigin]) raises:
    return get_fn[glVertexAttrib4uiv, "glVertexAttrib4uiv"]()(index, v)


def vertex_attrib4usv(index: GLuint, v: Ptr[GLushort, ImmutAnyOrigin]) raises:
    return get_fn[glVertexAttrib4usv, "glVertexAttrib4usv"]()(index, v)


def vertex_attrib_binding(attribindex: GLuint, bindingindex: GLuint) raises:
    return get_fn[glVertexAttribBinding, "glVertexAttribBinding"]()(attribindex, bindingindex)


def vertex_attrib_divisor(index: GLuint, divisor: GLuint) raises:
    return get_fn[glVertexAttribDivisor, "glVertexAttribDivisor"]()(index, divisor)


def vertex_attrib_format(attribindex: GLuint, size: GLint, type: VertexAttribType, normalized: Bool, relativeoffset: GLuint) raises:
    return get_fn[glVertexAttribFormat, "glVertexAttribFormat"]()(attribindex, size, type, GLboolean(Int(normalized)), relativeoffset)


def vertex_attrib_i1i(index: GLuint, x: GLint) raises:
    return get_fn[glVertexAttribI1i, "glVertexAttribI1i"]()(index, x)


def vertex_attrib_i1iv(index: GLuint, v: Ptr[GLint, ImmutAnyOrigin]) raises:
    return get_fn[glVertexAttribI1iv, "glVertexAttribI1iv"]()(index, v)


def vertex_attrib_i1ui(index: GLuint, x: GLuint) raises:
    return get_fn[glVertexAttribI1ui, "glVertexAttribI1ui"]()(index, x)


def vertex_attrib_i1uiv(index: GLuint, v: Ptr[GLuint, ImmutAnyOrigin]) raises:
    return get_fn[glVertexAttribI1uiv, "glVertexAttribI1uiv"]()(index, v)


def vertex_attrib_i2i(index: GLuint, x: GLint, y: GLint) raises:
    return get_fn[glVertexAttribI2i, "glVertexAttribI2i"]()(index, x, y)


def vertex_attrib_i2iv(index: GLuint, v: Ptr[GLint, ImmutAnyOrigin]) raises:
    return get_fn[glVertexAttribI2iv, "glVertexAttribI2iv"]()(index, v)


def vertex_attrib_i2ui(index: GLuint, x: GLuint, y: GLuint) raises:
    return get_fn[glVertexAttribI2ui, "glVertexAttribI2ui"]()(index, x, y)


def vertex_attrib_i2uiv(index: GLuint, v: Ptr[GLuint, ImmutAnyOrigin]) raises:
    return get_fn[glVertexAttribI2uiv, "glVertexAttribI2uiv"]()(index, v)


def vertex_attrib_i3i(index: GLuint, x: GLint, y: GLint, z: GLint) raises:
    return get_fn[glVertexAttribI3i, "glVertexAttribI3i"]()(index, x, y, z)


def vertex_attrib_i3iv(index: GLuint, v: Ptr[GLint, ImmutAnyOrigin]) raises:
    return get_fn[glVertexAttribI3iv, "glVertexAttribI3iv"]()(index, v)


def vertex_attrib_i3ui(index: GLuint, x: GLuint, y: GLuint, z: GLuint) raises:
    return get_fn[glVertexAttribI3ui, "glVertexAttribI3ui"]()(index, x, y, z)


def vertex_attrib_i3uiv(index: GLuint, v: Ptr[GLuint, ImmutAnyOrigin]) raises:
    return get_fn[glVertexAttribI3uiv, "glVertexAttribI3uiv"]()(index, v)


def vertex_attrib_i4bv(index: GLuint, v: Ptr[GLbyte, ImmutAnyOrigin]) raises:
    return get_fn[glVertexAttribI4bv, "glVertexAttribI4bv"]()(index, v)


def vertex_attrib_i4i(index: GLuint, x: GLint, y: GLint, z: GLint, w: GLint) raises:
    return get_fn[glVertexAttribI4i, "glVertexAttribI4i"]()(index, x, y, z, w)


def vertex_attrib_i4iv(index: GLuint, v: Ptr[GLint, ImmutAnyOrigin]) raises:
    return get_fn[glVertexAttribI4iv, "glVertexAttribI4iv"]()(index, v)


def vertex_attrib_i4sv(index: GLuint, v: Ptr[GLshort, ImmutAnyOrigin]) raises:
    return get_fn[glVertexAttribI4sv, "glVertexAttribI4sv"]()(index, v)


def vertex_attrib_i4ubv(index: GLuint, v: Ptr[GLubyte, ImmutAnyOrigin]) raises:
    return get_fn[glVertexAttribI4ubv, "glVertexAttribI4ubv"]()(index, v)


def vertex_attrib_i4ui(index: GLuint, x: GLuint, y: GLuint, z: GLuint, w: GLuint) raises:
    return get_fn[glVertexAttribI4ui, "glVertexAttribI4ui"]()(index, x, y, z, w)


def vertex_attrib_i4uiv(index: GLuint, v: Ptr[GLuint, ImmutAnyOrigin]) raises:
    return get_fn[glVertexAttribI4uiv, "glVertexAttribI4uiv"]()(index, v)


def vertex_attrib_i4usv(index: GLuint, v: Ptr[GLushort, ImmutAnyOrigin]) raises:
    return get_fn[glVertexAttribI4usv, "glVertexAttribI4usv"]()(index, v)


def vertex_attrib_i_format(attribindex: GLuint, size: GLint, type: VertexAttribIType, relativeoffset: GLuint) raises:
    return get_fn[glVertexAttribIFormat, "glVertexAttribIFormat"]()(attribindex, size, type, relativeoffset)


def vertex_attrib_i_pointer(index: GLuint, size: GLint, type: VertexAttribIType, stride: GLsizei, pointer: Ptr[NoneType, ImmutAnyOrigin]) raises:
    return get_fn[glVertexAttribIPointer, "glVertexAttribIPointer"]()(index, size, type, stride, pointer)


def vertex_attrib_l1d(index: GLuint, x: GLdouble) raises:
    return get_fn[glVertexAttribL1d, "glVertexAttribL1d"]()(index, x)


def vertex_attrib_l1dv(index: GLuint, v: Ptr[GLdouble, ImmutAnyOrigin]) raises:
    return get_fn[glVertexAttribL1dv, "glVertexAttribL1dv"]()(index, v)


def vertex_attrib_l2d(index: GLuint, x: GLdouble, y: GLdouble) raises:
    return get_fn[glVertexAttribL2d, "glVertexAttribL2d"]()(index, x, y)


def vertex_attrib_l2dv(index: GLuint, v: Ptr[GLdouble, ImmutAnyOrigin]) raises:
    return get_fn[glVertexAttribL2dv, "glVertexAttribL2dv"]()(index, v)


def vertex_attrib_l3d(index: GLuint, x: GLdouble, y: GLdouble, z: GLdouble) raises:
    return get_fn[glVertexAttribL3d, "glVertexAttribL3d"]()(index, x, y, z)


def vertex_attrib_l3dv(index: GLuint, v: Ptr[GLdouble, ImmutAnyOrigin]) raises:
    return get_fn[glVertexAttribL3dv, "glVertexAttribL3dv"]()(index, v)


def vertex_attrib_l4d(index: GLuint, x: GLdouble, y: GLdouble, z: GLdouble, w: GLdouble) raises:
    return get_fn[glVertexAttribL4d, "glVertexAttribL4d"]()(index, x, y, z, w)


def vertex_attrib_l4dv(index: GLuint, v: Ptr[GLdouble, ImmutAnyOrigin]) raises:
    return get_fn[glVertexAttribL4dv, "glVertexAttribL4dv"]()(index, v)


def vertex_attrib_l_format(attribindex: GLuint, size: GLint, type: VertexAttribLType, relativeoffset: GLuint) raises:
    return get_fn[glVertexAttribLFormat, "glVertexAttribLFormat"]()(attribindex, size, type, relativeoffset)


def vertex_attrib_l_pointer(index: GLuint, size: GLint, type: VertexAttribLType, stride: GLsizei, pointer: Ptr[NoneType, ImmutAnyOrigin]) raises:
    return get_fn[glVertexAttribLPointer, "glVertexAttribLPointer"]()(index, size, type, stride, pointer)


def vertex_attrib_p1ui(index: GLuint, type: VertexAttribPointerType, normalized: Bool, value: GLuint) raises:
    return get_fn[glVertexAttribP1ui, "glVertexAttribP1ui"]()(index, type, GLboolean(Int(normalized)), value)


def vertex_attrib_p1uiv(index: GLuint, type: VertexAttribPointerType, normalized: Bool, value: Ptr[GLuint, ImmutAnyOrigin]) raises:
    return get_fn[glVertexAttribP1uiv, "glVertexAttribP1uiv"]()(index, type, GLboolean(Int(normalized)), value)


def vertex_attrib_p2ui(index: GLuint, type: VertexAttribPointerType, normalized: Bool, value: GLuint) raises:
    return get_fn[glVertexAttribP2ui, "glVertexAttribP2ui"]()(index, type, GLboolean(Int(normalized)), value)


def vertex_attrib_p2uiv(index: GLuint, type: VertexAttribPointerType, normalized: Bool, value: Ptr[GLuint, ImmutAnyOrigin]) raises:
    return get_fn[glVertexAttribP2uiv, "glVertexAttribP2uiv"]()(index, type, GLboolean(Int(normalized)), value)


def vertex_attrib_p3ui(index: GLuint, type: VertexAttribPointerType, normalized: Bool, value: GLuint) raises:
    return get_fn[glVertexAttribP3ui, "glVertexAttribP3ui"]()(index, type, GLboolean(Int(normalized)), value)


def vertex_attrib_p3uiv(index: GLuint, type: VertexAttribPointerType, normalized: Bool, value: Ptr[GLuint, ImmutAnyOrigin]) raises:
    return get_fn[glVertexAttribP3uiv, "glVertexAttribP3uiv"]()(index, type, GLboolean(Int(normalized)), value)


def vertex_attrib_p4ui(index: GLuint, type: VertexAttribPointerType, normalized: Bool, value: GLuint) raises:
    return get_fn[glVertexAttribP4ui, "glVertexAttribP4ui"]()(index, type, GLboolean(Int(normalized)), value)


def vertex_attrib_p4uiv(index: GLuint, type: VertexAttribPointerType, normalized: Bool, value: Ptr[GLuint, ImmutAnyOrigin]) raises:
    return get_fn[glVertexAttribP4uiv, "glVertexAttribP4uiv"]()(index, type, GLboolean(Int(normalized)), value)


def vertex_attrib_pointer(index: GLuint, size: GLint, type: VertexAttribPointerType, normalized: Bool, stride: GLsizei, pointer: Ptr[NoneType, ImmutAnyOrigin]) raises:
    return get_fn[glVertexAttribPointer, "glVertexAttribPointer"]()(index, size, type, GLboolean(Int(normalized)), stride, pointer)


def vertex_binding_divisor(bindingindex: GLuint, divisor: GLuint) raises:
    return get_fn[glVertexBindingDivisor, "glVertexBindingDivisor"]()(bindingindex, divisor)


def vertex_p2ui(type: VertexPointerType, value: GLuint) raises:
    return get_fn[glVertexP2ui, "glVertexP2ui"]()(type, value)


def vertex_p2uiv(type: VertexPointerType, value: Ptr[GLuint, ImmutAnyOrigin]) raises:
    return get_fn[glVertexP2uiv, "glVertexP2uiv"]()(type, value)


def vertex_p3ui(type: VertexPointerType, value: GLuint) raises:
    return get_fn[glVertexP3ui, "glVertexP3ui"]()(type, value)


def vertex_p3uiv(type: VertexPointerType, value: Ptr[GLuint, ImmutAnyOrigin]) raises:
    return get_fn[glVertexP3uiv, "glVertexP3uiv"]()(type, value)


def vertex_p4ui(type: VertexPointerType, value: GLuint) raises:
    return get_fn[glVertexP4ui, "glVertexP4ui"]()(type, value)


def vertex_p4uiv(type: VertexPointerType, value: Ptr[GLuint, ImmutAnyOrigin]) raises:
    return get_fn[glVertexP4uiv, "glVertexP4uiv"]()(type, value)


def viewport(x: GLint, y: GLint, width: GLsizei, height: GLsizei) raises:
    return get_fn[glViewport, "glViewport"]()(x, y, width, height)


def viewport_arrayv(first: GLuint, count: GLsizei, v: Ptr[GLfloat, ImmutAnyOrigin]) raises:
    return get_fn[glViewportArrayv, "glViewportArrayv"]()(first, count, v)


def viewport_indexedf(index: GLuint, x: GLfloat, y: GLfloat, w: GLfloat, h: GLfloat) raises:
    return get_fn[glViewportIndexedf, "glViewportIndexedf"]()(index, x, y, w, h)


def viewport_indexedfv(index: GLuint, v: Ptr[GLfloat, ImmutAnyOrigin]) raises:
    return get_fn[glViewportIndexedfv, "glViewportIndexedfv"]()(index, v)


def wait_sync(sync: GLsync, flags: SyncBehaviorFlags, timeout: GLuint64) raises:
    return get_fn[glWaitSync, "glWaitSync"]()(sync, flags, timeout)


def init_gl_version_1_0(load: LoadProc) raises:
    table = func_table.get_or_create_ptr()
    table[]["glBlendFunc"] = load_fn_ptr("glBlendFunc", load)
    table[]["glClear"] = load_fn_ptr("glClear", load)
    table[]["glClearColor"] = load_fn_ptr("glClearColor", load)
    table[]["glClearDepth"] = load_fn_ptr("glClearDepth", load)
    table[]["glClearStencil"] = load_fn_ptr("glClearStencil", load)
    table[]["glColorMask"] = load_fn_ptr("glColorMask", load)
    table[]["glCullFace"] = load_fn_ptr("glCullFace", load)
    table[]["glDepthFunc"] = load_fn_ptr("glDepthFunc", load)
    table[]["glDepthMask"] = load_fn_ptr("glDepthMask", load)
    table[]["glDepthRange"] = load_fn_ptr("glDepthRange", load)
    table[]["glDisable"] = load_fn_ptr("glDisable", load)
    table[]["glDrawBuffer"] = load_fn_ptr("glDrawBuffer", load)
    table[]["glEnable"] = load_fn_ptr("glEnable", load)
    table[]["glFinish"] = load_fn_ptr("glFinish", load)
    table[]["glFlush"] = load_fn_ptr("glFlush", load)
    table[]["glFrontFace"] = load_fn_ptr("glFrontFace", load)
    table[]["glGetBooleanv"] = load_fn_ptr("glGetBooleanv", load)
    table[]["glGetDoublev"] = load_fn_ptr("glGetDoublev", load)
    table[]["glGetError"] = load_fn_ptr("glGetError", load)
    table[]["glGetFloatv"] = load_fn_ptr("glGetFloatv", load)
    table[]["glGetIntegerv"] = load_fn_ptr("glGetIntegerv", load)
    table[]["glGetString"] = load_fn_ptr("glGetString", load)
    table[]["glGetTexImage"] = load_fn_ptr("glGetTexImage", load)
    table[]["glGetTexLevelParameterfv"] = load_fn_ptr("glGetTexLevelParameterfv", load)
    table[]["glGetTexLevelParameteriv"] = load_fn_ptr("glGetTexLevelParameteriv", load)
    table[]["glGetTexParameterfv"] = load_fn_ptr("glGetTexParameterfv", load)
    table[]["glGetTexParameteriv"] = load_fn_ptr("glGetTexParameteriv", load)
    table[]["glHint"] = load_fn_ptr("glHint", load)
    table[]["glIsEnabled"] = load_fn_ptr("glIsEnabled", load)
    table[]["glLineWidth"] = load_fn_ptr("glLineWidth", load)
    table[]["glLogicOp"] = load_fn_ptr("glLogicOp", load)
    table[]["glPixelStoref"] = load_fn_ptr("glPixelStoref", load)
    table[]["glPixelStorei"] = load_fn_ptr("glPixelStorei", load)
    table[]["glPointSize"] = load_fn_ptr("glPointSize", load)
    table[]["glPolygonMode"] = load_fn_ptr("glPolygonMode", load)
    table[]["glReadBuffer"] = load_fn_ptr("glReadBuffer", load)
    table[]["glReadPixels"] = load_fn_ptr("glReadPixels", load)
    table[]["glScissor"] = load_fn_ptr("glScissor", load)
    table[]["glStencilFunc"] = load_fn_ptr("glStencilFunc", load)
    table[]["glStencilMask"] = load_fn_ptr("glStencilMask", load)
    table[]["glStencilOp"] = load_fn_ptr("glStencilOp", load)
    table[]["glTexImage1D"] = load_fn_ptr("glTexImage1D", load)
    table[]["glTexImage2D"] = load_fn_ptr("glTexImage2D", load)
    table[]["glTexParameterf"] = load_fn_ptr("glTexParameterf", load)
    table[]["glTexParameterfv"] = load_fn_ptr("glTexParameterfv", load)
    table[]["glTexParameteri"] = load_fn_ptr("glTexParameteri", load)
    table[]["glTexParameteriv"] = load_fn_ptr("glTexParameteriv", load)
    table[]["glViewport"] = load_fn_ptr("glViewport", load)


def init_gl_version_1_1(load: LoadProc) raises:
    table = func_table.get_or_create_ptr()
    table[]["glBindTexture"] = load_fn_ptr("glBindTexture", load)
    table[]["glCopyTexImage1D"] = load_fn_ptr("glCopyTexImage1D", load)
    table[]["glCopyTexImage2D"] = load_fn_ptr("glCopyTexImage2D", load)
    table[]["glCopyTexSubImage1D"] = load_fn_ptr("glCopyTexSubImage1D", load)
    table[]["glCopyTexSubImage2D"] = load_fn_ptr("glCopyTexSubImage2D", load)
    table[]["glDeleteTextures"] = load_fn_ptr("glDeleteTextures", load)
    table[]["glDrawArrays"] = load_fn_ptr("glDrawArrays", load)
    table[]["glDrawElements"] = load_fn_ptr("glDrawElements", load)
    table[]["glGenTextures"] = load_fn_ptr("glGenTextures", load)
    table[]["glIsTexture"] = load_fn_ptr("glIsTexture", load)
    table[]["glPolygonOffset"] = load_fn_ptr("glPolygonOffset", load)
    table[]["glTexSubImage1D"] = load_fn_ptr("glTexSubImage1D", load)
    table[]["glTexSubImage2D"] = load_fn_ptr("glTexSubImage2D", load)


def init_gl_version_1_2(load: LoadProc) raises:
    table = func_table.get_or_create_ptr()
    table[]["glCopyTexSubImage3D"] = load_fn_ptr("glCopyTexSubImage3D", load)
    table[]["glDrawRangeElements"] = load_fn_ptr("glDrawRangeElements", load)
    table[]["glTexImage3D"] = load_fn_ptr("glTexImage3D", load)
    table[]["glTexSubImage3D"] = load_fn_ptr("glTexSubImage3D", load)


def init_gl_version_1_3(load: LoadProc) raises:
    table = func_table.get_or_create_ptr()
    table[]["glActiveTexture"] = load_fn_ptr("glActiveTexture", load)
    table[]["glCompressedTexImage1D"] = load_fn_ptr("glCompressedTexImage1D", load)
    table[]["glCompressedTexImage2D"] = load_fn_ptr("glCompressedTexImage2D", load)
    table[]["glCompressedTexImage3D"] = load_fn_ptr("glCompressedTexImage3D", load)
    table[]["glCompressedTexSubImage1D"] = load_fn_ptr("glCompressedTexSubImage1D", load)
    table[]["glCompressedTexSubImage2D"] = load_fn_ptr("glCompressedTexSubImage2D", load)
    table[]["glCompressedTexSubImage3D"] = load_fn_ptr("glCompressedTexSubImage3D", load)
    table[]["glGetCompressedTexImage"] = load_fn_ptr("glGetCompressedTexImage", load)
    table[]["glSampleCoverage"] = load_fn_ptr("glSampleCoverage", load)


def init_gl_version_1_4(load: LoadProc) raises:
    table = func_table.get_or_create_ptr()
    table[]["glBlendColor"] = load_fn_ptr("glBlendColor", load)
    table[]["glBlendEquation"] = load_fn_ptr("glBlendEquation", load)
    table[]["glBlendFuncSeparate"] = load_fn_ptr("glBlendFuncSeparate", load)
    table[]["glMultiDrawArrays"] = load_fn_ptr("glMultiDrawArrays", load)
    table[]["glMultiDrawElements"] = load_fn_ptr("glMultiDrawElements", load)
    table[]["glPointParameterf"] = load_fn_ptr("glPointParameterf", load)
    table[]["glPointParameterfv"] = load_fn_ptr("glPointParameterfv", load)
    table[]["glPointParameteri"] = load_fn_ptr("glPointParameteri", load)
    table[]["glPointParameteriv"] = load_fn_ptr("glPointParameteriv", load)


def init_gl_version_1_5(load: LoadProc) raises:
    table = func_table.get_or_create_ptr()
    table[]["glBeginQuery"] = load_fn_ptr("glBeginQuery", load)
    table[]["glBindBuffer"] = load_fn_ptr("glBindBuffer", load)
    table[]["glBufferData"] = load_fn_ptr("glBufferData", load)
    table[]["glBufferSubData"] = load_fn_ptr("glBufferSubData", load)
    table[]["glDeleteBuffers"] = load_fn_ptr("glDeleteBuffers", load)
    table[]["glDeleteQueries"] = load_fn_ptr("glDeleteQueries", load)
    table[]["glEndQuery"] = load_fn_ptr("glEndQuery", load)
    table[]["glGenBuffers"] = load_fn_ptr("glGenBuffers", load)
    table[]["glGenQueries"] = load_fn_ptr("glGenQueries", load)
    table[]["glGetBufferParameteriv"] = load_fn_ptr("glGetBufferParameteriv", load)
    table[]["glGetBufferPointerv"] = load_fn_ptr("glGetBufferPointerv", load)
    table[]["glGetBufferSubData"] = load_fn_ptr("glGetBufferSubData", load)
    table[]["glGetQueryObjectiv"] = load_fn_ptr("glGetQueryObjectiv", load)
    table[]["glGetQueryObjectuiv"] = load_fn_ptr("glGetQueryObjectuiv", load)
    table[]["glGetQueryiv"] = load_fn_ptr("glGetQueryiv", load)
    table[]["glIsBuffer"] = load_fn_ptr("glIsBuffer", load)
    table[]["glIsQuery"] = load_fn_ptr("glIsQuery", load)
    table[]["glMapBuffer"] = load_fn_ptr("glMapBuffer", load)
    table[]["glUnmapBuffer"] = load_fn_ptr("glUnmapBuffer", load)


def init_gl_version_2_0(load: LoadProc) raises:
    table = func_table.get_or_create_ptr()
    table[]["glAttachShader"] = load_fn_ptr("glAttachShader", load)
    table[]["glBindAttribLocation"] = load_fn_ptr("glBindAttribLocation", load)
    table[]["glBlendEquationSeparate"] = load_fn_ptr("glBlendEquationSeparate", load)
    table[]["glCompileShader"] = load_fn_ptr("glCompileShader", load)
    table[]["glCreateProgram"] = load_fn_ptr("glCreateProgram", load)
    table[]["glCreateShader"] = load_fn_ptr("glCreateShader", load)
    table[]["glDeleteProgram"] = load_fn_ptr("glDeleteProgram", load)
    table[]["glDeleteShader"] = load_fn_ptr("glDeleteShader", load)
    table[]["glDetachShader"] = load_fn_ptr("glDetachShader", load)
    table[]["glDisableVertexAttribArray"] = load_fn_ptr("glDisableVertexAttribArray", load)
    table[]["glDrawBuffers"] = load_fn_ptr("glDrawBuffers", load)
    table[]["glEnableVertexAttribArray"] = load_fn_ptr("glEnableVertexAttribArray", load)
    table[]["glGetActiveAttrib"] = load_fn_ptr("glGetActiveAttrib", load)
    table[]["glGetActiveUniform"] = load_fn_ptr("glGetActiveUniform", load)
    table[]["glGetAttachedShaders"] = load_fn_ptr("glGetAttachedShaders", load)
    table[]["glGetAttribLocation"] = load_fn_ptr("glGetAttribLocation", load)
    table[]["glGetProgramInfoLog"] = load_fn_ptr("glGetProgramInfoLog", load)
    table[]["glGetProgramiv"] = load_fn_ptr("glGetProgramiv", load)
    table[]["glGetShaderInfoLog"] = load_fn_ptr("glGetShaderInfoLog", load)
    table[]["glGetShaderSource"] = load_fn_ptr("glGetShaderSource", load)
    table[]["glGetShaderiv"] = load_fn_ptr("glGetShaderiv", load)
    table[]["glGetUniformLocation"] = load_fn_ptr("glGetUniformLocation", load)
    table[]["glGetUniformfv"] = load_fn_ptr("glGetUniformfv", load)
    table[]["glGetUniformiv"] = load_fn_ptr("glGetUniformiv", load)
    table[]["glGetVertexAttribPointerv"] = load_fn_ptr("glGetVertexAttribPointerv", load)
    table[]["glGetVertexAttribdv"] = load_fn_ptr("glGetVertexAttribdv", load)
    table[]["glGetVertexAttribfv"] = load_fn_ptr("glGetVertexAttribfv", load)
    table[]["glGetVertexAttribiv"] = load_fn_ptr("glGetVertexAttribiv", load)
    table[]["glIsProgram"] = load_fn_ptr("glIsProgram", load)
    table[]["glIsShader"] = load_fn_ptr("glIsShader", load)
    table[]["glLinkProgram"] = load_fn_ptr("glLinkProgram", load)
    table[]["glShaderSource"] = load_fn_ptr("glShaderSource", load)
    table[]["glStencilFuncSeparate"] = load_fn_ptr("glStencilFuncSeparate", load)
    table[]["glStencilMaskSeparate"] = load_fn_ptr("glStencilMaskSeparate", load)
    table[]["glStencilOpSeparate"] = load_fn_ptr("glStencilOpSeparate", load)
    table[]["glUniform1f"] = load_fn_ptr("glUniform1f", load)
    table[]["glUniform1fv"] = load_fn_ptr("glUniform1fv", load)
    table[]["glUniform1i"] = load_fn_ptr("glUniform1i", load)
    table[]["glUniform1iv"] = load_fn_ptr("glUniform1iv", load)
    table[]["glUniform2f"] = load_fn_ptr("glUniform2f", load)
    table[]["glUniform2fv"] = load_fn_ptr("glUniform2fv", load)
    table[]["glUniform2i"] = load_fn_ptr("glUniform2i", load)
    table[]["glUniform2iv"] = load_fn_ptr("glUniform2iv", load)
    table[]["glUniform3f"] = load_fn_ptr("glUniform3f", load)
    table[]["glUniform3fv"] = load_fn_ptr("glUniform3fv", load)
    table[]["glUniform3i"] = load_fn_ptr("glUniform3i", load)
    table[]["glUniform3iv"] = load_fn_ptr("glUniform3iv", load)
    table[]["glUniform4f"] = load_fn_ptr("glUniform4f", load)
    table[]["glUniform4fv"] = load_fn_ptr("glUniform4fv", load)
    table[]["glUniform4i"] = load_fn_ptr("glUniform4i", load)
    table[]["glUniform4iv"] = load_fn_ptr("glUniform4iv", load)
    table[]["glUniformMatrix2fv"] = load_fn_ptr("glUniformMatrix2fv", load)
    table[]["glUniformMatrix3fv"] = load_fn_ptr("glUniformMatrix3fv", load)
    table[]["glUniformMatrix4fv"] = load_fn_ptr("glUniformMatrix4fv", load)
    table[]["glUseProgram"] = load_fn_ptr("glUseProgram", load)
    table[]["glValidateProgram"] = load_fn_ptr("glValidateProgram", load)
    table[]["glVertexAttrib1d"] = load_fn_ptr("glVertexAttrib1d", load)
    table[]["glVertexAttrib1dv"] = load_fn_ptr("glVertexAttrib1dv", load)
    table[]["glVertexAttrib1f"] = load_fn_ptr("glVertexAttrib1f", load)
    table[]["glVertexAttrib1fv"] = load_fn_ptr("glVertexAttrib1fv", load)
    table[]["glVertexAttrib1s"] = load_fn_ptr("glVertexAttrib1s", load)
    table[]["glVertexAttrib1sv"] = load_fn_ptr("glVertexAttrib1sv", load)
    table[]["glVertexAttrib2d"] = load_fn_ptr("glVertexAttrib2d", load)
    table[]["glVertexAttrib2dv"] = load_fn_ptr("glVertexAttrib2dv", load)
    table[]["glVertexAttrib2f"] = load_fn_ptr("glVertexAttrib2f", load)
    table[]["glVertexAttrib2fv"] = load_fn_ptr("glVertexAttrib2fv", load)
    table[]["glVertexAttrib2s"] = load_fn_ptr("glVertexAttrib2s", load)
    table[]["glVertexAttrib2sv"] = load_fn_ptr("glVertexAttrib2sv", load)
    table[]["glVertexAttrib3d"] = load_fn_ptr("glVertexAttrib3d", load)
    table[]["glVertexAttrib3dv"] = load_fn_ptr("glVertexAttrib3dv", load)
    table[]["glVertexAttrib3f"] = load_fn_ptr("glVertexAttrib3f", load)
    table[]["glVertexAttrib3fv"] = load_fn_ptr("glVertexAttrib3fv", load)
    table[]["glVertexAttrib3s"] = load_fn_ptr("glVertexAttrib3s", load)
    table[]["glVertexAttrib3sv"] = load_fn_ptr("glVertexAttrib3sv", load)
    table[]["glVertexAttrib4Nbv"] = load_fn_ptr("glVertexAttrib4Nbv", load)
    table[]["glVertexAttrib4Niv"] = load_fn_ptr("glVertexAttrib4Niv", load)
    table[]["glVertexAttrib4Nsv"] = load_fn_ptr("glVertexAttrib4Nsv", load)
    table[]["glVertexAttrib4Nub"] = load_fn_ptr("glVertexAttrib4Nub", load)
    table[]["glVertexAttrib4Nubv"] = load_fn_ptr("glVertexAttrib4Nubv", load)
    table[]["glVertexAttrib4Nuiv"] = load_fn_ptr("glVertexAttrib4Nuiv", load)
    table[]["glVertexAttrib4Nusv"] = load_fn_ptr("glVertexAttrib4Nusv", load)
    table[]["glVertexAttrib4bv"] = load_fn_ptr("glVertexAttrib4bv", load)
    table[]["glVertexAttrib4d"] = load_fn_ptr("glVertexAttrib4d", load)
    table[]["glVertexAttrib4dv"] = load_fn_ptr("glVertexAttrib4dv", load)
    table[]["glVertexAttrib4f"] = load_fn_ptr("glVertexAttrib4f", load)
    table[]["glVertexAttrib4fv"] = load_fn_ptr("glVertexAttrib4fv", load)
    table[]["glVertexAttrib4iv"] = load_fn_ptr("glVertexAttrib4iv", load)
    table[]["glVertexAttrib4s"] = load_fn_ptr("glVertexAttrib4s", load)
    table[]["glVertexAttrib4sv"] = load_fn_ptr("glVertexAttrib4sv", load)
    table[]["glVertexAttrib4ubv"] = load_fn_ptr("glVertexAttrib4ubv", load)
    table[]["glVertexAttrib4uiv"] = load_fn_ptr("glVertexAttrib4uiv", load)
    table[]["glVertexAttrib4usv"] = load_fn_ptr("glVertexAttrib4usv", load)
    table[]["glVertexAttribPointer"] = load_fn_ptr("glVertexAttribPointer", load)


def init_gl_version_2_1(load: LoadProc) raises:
    table = func_table.get_or_create_ptr()
    table[]["glUniformMatrix2x3fv"] = load_fn_ptr("glUniformMatrix2x3fv", load)
    table[]["glUniformMatrix2x4fv"] = load_fn_ptr("glUniformMatrix2x4fv", load)
    table[]["glUniformMatrix3x2fv"] = load_fn_ptr("glUniformMatrix3x2fv", load)
    table[]["glUniformMatrix3x4fv"] = load_fn_ptr("glUniformMatrix3x4fv", load)
    table[]["glUniformMatrix4x2fv"] = load_fn_ptr("glUniformMatrix4x2fv", load)
    table[]["glUniformMatrix4x3fv"] = load_fn_ptr("glUniformMatrix4x3fv", load)


def init_gl_version_3_0(load: LoadProc) raises:
    table = func_table.get_or_create_ptr()
    table[]["glBeginConditionalRender"] = load_fn_ptr("glBeginConditionalRender", load)
    table[]["glBeginTransformFeedback"] = load_fn_ptr("glBeginTransformFeedback", load)
    table[]["glBindBufferBase"] = load_fn_ptr("glBindBufferBase", load)
    table[]["glBindBufferRange"] = load_fn_ptr("glBindBufferRange", load)
    table[]["glBindFragDataLocation"] = load_fn_ptr("glBindFragDataLocation", load)
    table[]["glBindFramebuffer"] = load_fn_ptr("glBindFramebuffer", load)
    table[]["glBindRenderbuffer"] = load_fn_ptr("glBindRenderbuffer", load)
    table[]["glBindVertexArray"] = load_fn_ptr("glBindVertexArray", load)
    table[]["glBlitFramebuffer"] = load_fn_ptr("glBlitFramebuffer", load)
    table[]["glCheckFramebufferStatus"] = load_fn_ptr("glCheckFramebufferStatus", load)
    table[]["glClampColor"] = load_fn_ptr("glClampColor", load)
    table[]["glClearBufferfi"] = load_fn_ptr("glClearBufferfi", load)
    table[]["glClearBufferfv"] = load_fn_ptr("glClearBufferfv", load)
    table[]["glClearBufferiv"] = load_fn_ptr("glClearBufferiv", load)
    table[]["glClearBufferuiv"] = load_fn_ptr("glClearBufferuiv", load)
    table[]["glColorMaski"] = load_fn_ptr("glColorMaski", load)
    table[]["glDeleteFramebuffers"] = load_fn_ptr("glDeleteFramebuffers", load)
    table[]["glDeleteRenderbuffers"] = load_fn_ptr("glDeleteRenderbuffers", load)
    table[]["glDeleteVertexArrays"] = load_fn_ptr("glDeleteVertexArrays", load)
    table[]["glDisablei"] = load_fn_ptr("glDisablei", load)
    table[]["glEnablei"] = load_fn_ptr("glEnablei", load)
    table[]["glEndConditionalRender"] = load_fn_ptr("glEndConditionalRender", load)
    table[]["glEndTransformFeedback"] = load_fn_ptr("glEndTransformFeedback", load)
    table[]["glFlushMappedBufferRange"] = load_fn_ptr("glFlushMappedBufferRange", load)
    table[]["glFramebufferRenderbuffer"] = load_fn_ptr("glFramebufferRenderbuffer", load)
    table[]["glFramebufferTexture1D"] = load_fn_ptr("glFramebufferTexture1D", load)
    table[]["glFramebufferTexture2D"] = load_fn_ptr("glFramebufferTexture2D", load)
    table[]["glFramebufferTexture3D"] = load_fn_ptr("glFramebufferTexture3D", load)
    table[]["glFramebufferTextureLayer"] = load_fn_ptr("glFramebufferTextureLayer", load)
    table[]["glGenFramebuffers"] = load_fn_ptr("glGenFramebuffers", load)
    table[]["glGenRenderbuffers"] = load_fn_ptr("glGenRenderbuffers", load)
    table[]["glGenVertexArrays"] = load_fn_ptr("glGenVertexArrays", load)
    table[]["glGenerateMipmap"] = load_fn_ptr("glGenerateMipmap", load)
    table[]["glGetBooleani_v"] = load_fn_ptr("glGetBooleani_v", load)
    table[]["glGetFragDataLocation"] = load_fn_ptr("glGetFragDataLocation", load)
    table[]["glGetFramebufferAttachmentParameteriv"] = load_fn_ptr("glGetFramebufferAttachmentParameteriv", load)
    table[]["glGetIntegeri_v"] = load_fn_ptr("glGetIntegeri_v", load)
    table[]["glGetRenderbufferParameteriv"] = load_fn_ptr("glGetRenderbufferParameteriv", load)
    table[]["glGetStringi"] = load_fn_ptr("glGetStringi", load)
    table[]["glGetTexParameterIiv"] = load_fn_ptr("glGetTexParameterIiv", load)
    table[]["glGetTexParameterIuiv"] = load_fn_ptr("glGetTexParameterIuiv", load)
    table[]["glGetTransformFeedbackVarying"] = load_fn_ptr("glGetTransformFeedbackVarying", load)
    table[]["glGetUniformuiv"] = load_fn_ptr("glGetUniformuiv", load)
    table[]["glGetVertexAttribIiv"] = load_fn_ptr("glGetVertexAttribIiv", load)
    table[]["glGetVertexAttribIuiv"] = load_fn_ptr("glGetVertexAttribIuiv", load)
    table[]["glIsEnabledi"] = load_fn_ptr("glIsEnabledi", load)
    table[]["glIsFramebuffer"] = load_fn_ptr("glIsFramebuffer", load)
    table[]["glIsRenderbuffer"] = load_fn_ptr("glIsRenderbuffer", load)
    table[]["glIsVertexArray"] = load_fn_ptr("glIsVertexArray", load)
    table[]["glMapBufferRange"] = load_fn_ptr("glMapBufferRange", load)
    table[]["glRenderbufferStorage"] = load_fn_ptr("glRenderbufferStorage", load)
    table[]["glRenderbufferStorageMultisample"] = load_fn_ptr("glRenderbufferStorageMultisample", load)
    table[]["glTexParameterIiv"] = load_fn_ptr("glTexParameterIiv", load)
    table[]["glTexParameterIuiv"] = load_fn_ptr("glTexParameterIuiv", load)
    table[]["glTransformFeedbackVaryings"] = load_fn_ptr("glTransformFeedbackVaryings", load)
    table[]["glUniform1ui"] = load_fn_ptr("glUniform1ui", load)
    table[]["glUniform1uiv"] = load_fn_ptr("glUniform1uiv", load)
    table[]["glUniform2ui"] = load_fn_ptr("glUniform2ui", load)
    table[]["glUniform2uiv"] = load_fn_ptr("glUniform2uiv", load)
    table[]["glUniform3ui"] = load_fn_ptr("glUniform3ui", load)
    table[]["glUniform3uiv"] = load_fn_ptr("glUniform3uiv", load)
    table[]["glUniform4ui"] = load_fn_ptr("glUniform4ui", load)
    table[]["glUniform4uiv"] = load_fn_ptr("glUniform4uiv", load)
    table[]["glVertexAttribI1i"] = load_fn_ptr("glVertexAttribI1i", load)
    table[]["glVertexAttribI1iv"] = load_fn_ptr("glVertexAttribI1iv", load)
    table[]["glVertexAttribI1ui"] = load_fn_ptr("glVertexAttribI1ui", load)
    table[]["glVertexAttribI1uiv"] = load_fn_ptr("glVertexAttribI1uiv", load)
    table[]["glVertexAttribI2i"] = load_fn_ptr("glVertexAttribI2i", load)
    table[]["glVertexAttribI2iv"] = load_fn_ptr("glVertexAttribI2iv", load)
    table[]["glVertexAttribI2ui"] = load_fn_ptr("glVertexAttribI2ui", load)
    table[]["glVertexAttribI2uiv"] = load_fn_ptr("glVertexAttribI2uiv", load)
    table[]["glVertexAttribI3i"] = load_fn_ptr("glVertexAttribI3i", load)
    table[]["glVertexAttribI3iv"] = load_fn_ptr("glVertexAttribI3iv", load)
    table[]["glVertexAttribI3ui"] = load_fn_ptr("glVertexAttribI3ui", load)
    table[]["glVertexAttribI3uiv"] = load_fn_ptr("glVertexAttribI3uiv", load)
    table[]["glVertexAttribI4bv"] = load_fn_ptr("glVertexAttribI4bv", load)
    table[]["glVertexAttribI4i"] = load_fn_ptr("glVertexAttribI4i", load)
    table[]["glVertexAttribI4iv"] = load_fn_ptr("glVertexAttribI4iv", load)
    table[]["glVertexAttribI4sv"] = load_fn_ptr("glVertexAttribI4sv", load)
    table[]["glVertexAttribI4ubv"] = load_fn_ptr("glVertexAttribI4ubv", load)
    table[]["glVertexAttribI4ui"] = load_fn_ptr("glVertexAttribI4ui", load)
    table[]["glVertexAttribI4uiv"] = load_fn_ptr("glVertexAttribI4uiv", load)
    table[]["glVertexAttribI4usv"] = load_fn_ptr("glVertexAttribI4usv", load)
    table[]["glVertexAttribIPointer"] = load_fn_ptr("glVertexAttribIPointer", load)


def init_gl_version_3_1(load: LoadProc) raises:
    table = func_table.get_or_create_ptr()
    table[]["glCopyBufferSubData"] = load_fn_ptr("glCopyBufferSubData", load)
    table[]["glDrawArraysInstanced"] = load_fn_ptr("glDrawArraysInstanced", load)
    table[]["glDrawElementsInstanced"] = load_fn_ptr("glDrawElementsInstanced", load)
    table[]["glGetActiveUniformBlockName"] = load_fn_ptr("glGetActiveUniformBlockName", load)
    table[]["glGetActiveUniformBlockiv"] = load_fn_ptr("glGetActiveUniformBlockiv", load)
    table[]["glGetActiveUniformName"] = load_fn_ptr("glGetActiveUniformName", load)
    table[]["glGetActiveUniformsiv"] = load_fn_ptr("glGetActiveUniformsiv", load)
    table[]["glGetUniformBlockIndex"] = load_fn_ptr("glGetUniformBlockIndex", load)
    table[]["glGetUniformIndices"] = load_fn_ptr("glGetUniformIndices", load)
    table[]["glPrimitiveRestartIndex"] = load_fn_ptr("glPrimitiveRestartIndex", load)
    table[]["glTexBuffer"] = load_fn_ptr("glTexBuffer", load)
    table[]["glUniformBlockBinding"] = load_fn_ptr("glUniformBlockBinding", load)


def init_gl_version_3_2(load: LoadProc) raises:
    table = func_table.get_or_create_ptr()
    table[]["glClientWaitSync"] = load_fn_ptr("glClientWaitSync", load)
    table[]["glDeleteSync"] = load_fn_ptr("glDeleteSync", load)
    table[]["glDrawElementsBaseVertex"] = load_fn_ptr("glDrawElementsBaseVertex", load)
    table[]["glDrawElementsInstancedBaseVertex"] = load_fn_ptr("glDrawElementsInstancedBaseVertex", load)
    table[]["glDrawRangeElementsBaseVertex"] = load_fn_ptr("glDrawRangeElementsBaseVertex", load)
    table[]["glFenceSync"] = load_fn_ptr("glFenceSync", load)
    table[]["glFramebufferTexture"] = load_fn_ptr("glFramebufferTexture", load)
    table[]["glGetBufferParameteri64v"] = load_fn_ptr("glGetBufferParameteri64v", load)
    table[]["glGetInteger64i_v"] = load_fn_ptr("glGetInteger64i_v", load)
    table[]["glGetInteger64v"] = load_fn_ptr("glGetInteger64v", load)
    table[]["glGetMultisamplefv"] = load_fn_ptr("glGetMultisamplefv", load)
    table[]["glGetSynciv"] = load_fn_ptr("glGetSynciv", load)
    table[]["glIsSync"] = load_fn_ptr("glIsSync", load)
    table[]["glMultiDrawElementsBaseVertex"] = load_fn_ptr("glMultiDrawElementsBaseVertex", load)
    table[]["glProvokingVertex"] = load_fn_ptr("glProvokingVertex", load)
    table[]["glSampleMaski"] = load_fn_ptr("glSampleMaski", load)
    table[]["glTexImage2DMultisample"] = load_fn_ptr("glTexImage2DMultisample", load)
    table[]["glTexImage3DMultisample"] = load_fn_ptr("glTexImage3DMultisample", load)
    table[]["glWaitSync"] = load_fn_ptr("glWaitSync", load)


def init_gl_version_3_3(load: LoadProc) raises:
    table = func_table.get_or_create_ptr()
    table[]["glBindFragDataLocationIndexed"] = load_fn_ptr("glBindFragDataLocationIndexed", load)
    table[]["glBindSampler"] = load_fn_ptr("glBindSampler", load)
    table[]["glColorP3ui"] = load_fn_ptr("glColorP3ui", load)
    table[]["glColorP3uiv"] = load_fn_ptr("glColorP3uiv", load)
    table[]["glColorP4ui"] = load_fn_ptr("glColorP4ui", load)
    table[]["glColorP4uiv"] = load_fn_ptr("glColorP4uiv", load)
    table[]["glDeleteSamplers"] = load_fn_ptr("glDeleteSamplers", load)
    table[]["glGenSamplers"] = load_fn_ptr("glGenSamplers", load)
    table[]["glGetFragDataIndex"] = load_fn_ptr("glGetFragDataIndex", load)
    table[]["glGetQueryObjecti64v"] = load_fn_ptr("glGetQueryObjecti64v", load)
    table[]["glGetQueryObjectui64v"] = load_fn_ptr("glGetQueryObjectui64v", load)
    table[]["glGetSamplerParameterIiv"] = load_fn_ptr("glGetSamplerParameterIiv", load)
    table[]["glGetSamplerParameterIuiv"] = load_fn_ptr("glGetSamplerParameterIuiv", load)
    table[]["glGetSamplerParameterfv"] = load_fn_ptr("glGetSamplerParameterfv", load)
    table[]["glGetSamplerParameteriv"] = load_fn_ptr("glGetSamplerParameteriv", load)
    table[]["glIsSampler"] = load_fn_ptr("glIsSampler", load)
    table[]["glMultiTexCoordP1ui"] = load_fn_ptr("glMultiTexCoordP1ui", load)
    table[]["glMultiTexCoordP1uiv"] = load_fn_ptr("glMultiTexCoordP1uiv", load)
    table[]["glMultiTexCoordP2ui"] = load_fn_ptr("glMultiTexCoordP2ui", load)
    table[]["glMultiTexCoordP2uiv"] = load_fn_ptr("glMultiTexCoordP2uiv", load)
    table[]["glMultiTexCoordP3ui"] = load_fn_ptr("glMultiTexCoordP3ui", load)
    table[]["glMultiTexCoordP3uiv"] = load_fn_ptr("glMultiTexCoordP3uiv", load)
    table[]["glMultiTexCoordP4ui"] = load_fn_ptr("glMultiTexCoordP4ui", load)
    table[]["glMultiTexCoordP4uiv"] = load_fn_ptr("glMultiTexCoordP4uiv", load)
    table[]["glNormalP3ui"] = load_fn_ptr("glNormalP3ui", load)
    table[]["glNormalP3uiv"] = load_fn_ptr("glNormalP3uiv", load)
    table[]["glQueryCounter"] = load_fn_ptr("glQueryCounter", load)
    table[]["glSamplerParameterIiv"] = load_fn_ptr("glSamplerParameterIiv", load)
    table[]["glSamplerParameterIuiv"] = load_fn_ptr("glSamplerParameterIuiv", load)
    table[]["glSamplerParameterf"] = load_fn_ptr("glSamplerParameterf", load)
    table[]["glSamplerParameterfv"] = load_fn_ptr("glSamplerParameterfv", load)
    table[]["glSamplerParameteri"] = load_fn_ptr("glSamplerParameteri", load)
    table[]["glSamplerParameteriv"] = load_fn_ptr("glSamplerParameteriv", load)
    table[]["glSecondaryColorP3ui"] = load_fn_ptr("glSecondaryColorP3ui", load)
    table[]["glSecondaryColorP3uiv"] = load_fn_ptr("glSecondaryColorP3uiv", load)
    table[]["glTexCoordP1ui"] = load_fn_ptr("glTexCoordP1ui", load)
    table[]["glTexCoordP1uiv"] = load_fn_ptr("glTexCoordP1uiv", load)
    table[]["glTexCoordP2ui"] = load_fn_ptr("glTexCoordP2ui", load)
    table[]["glTexCoordP2uiv"] = load_fn_ptr("glTexCoordP2uiv", load)
    table[]["glTexCoordP3ui"] = load_fn_ptr("glTexCoordP3ui", load)
    table[]["glTexCoordP3uiv"] = load_fn_ptr("glTexCoordP3uiv", load)
    table[]["glTexCoordP4ui"] = load_fn_ptr("glTexCoordP4ui", load)
    table[]["glTexCoordP4uiv"] = load_fn_ptr("glTexCoordP4uiv", load)
    table[]["glVertexAttribDivisor"] = load_fn_ptr("glVertexAttribDivisor", load)
    table[]["glVertexAttribP1ui"] = load_fn_ptr("glVertexAttribP1ui", load)
    table[]["glVertexAttribP1uiv"] = load_fn_ptr("glVertexAttribP1uiv", load)
    table[]["glVertexAttribP2ui"] = load_fn_ptr("glVertexAttribP2ui", load)
    table[]["glVertexAttribP2uiv"] = load_fn_ptr("glVertexAttribP2uiv", load)
    table[]["glVertexAttribP3ui"] = load_fn_ptr("glVertexAttribP3ui", load)
    table[]["glVertexAttribP3uiv"] = load_fn_ptr("glVertexAttribP3uiv", load)
    table[]["glVertexAttribP4ui"] = load_fn_ptr("glVertexAttribP4ui", load)
    table[]["glVertexAttribP4uiv"] = load_fn_ptr("glVertexAttribP4uiv", load)
    table[]["glVertexP2ui"] = load_fn_ptr("glVertexP2ui", load)
    table[]["glVertexP2uiv"] = load_fn_ptr("glVertexP2uiv", load)
    table[]["glVertexP3ui"] = load_fn_ptr("glVertexP3ui", load)
    table[]["glVertexP3uiv"] = load_fn_ptr("glVertexP3uiv", load)
    table[]["glVertexP4ui"] = load_fn_ptr("glVertexP4ui", load)
    table[]["glVertexP4uiv"] = load_fn_ptr("glVertexP4uiv", load)


def init_gl_version_4_0(load: LoadProc) raises:
    table = func_table.get_or_create_ptr()
    table[]["glBeginQueryIndexed"] = load_fn_ptr("glBeginQueryIndexed", load)
    table[]["glBindTransformFeedback"] = load_fn_ptr("glBindTransformFeedback", load)
    table[]["glBlendEquationSeparatei"] = load_fn_ptr("glBlendEquationSeparatei", load)
    table[]["glBlendEquationi"] = load_fn_ptr("glBlendEquationi", load)
    table[]["glBlendFuncSeparatei"] = load_fn_ptr("glBlendFuncSeparatei", load)
    table[]["glBlendFunci"] = load_fn_ptr("glBlendFunci", load)
    table[]["glDeleteTransformFeedbacks"] = load_fn_ptr("glDeleteTransformFeedbacks", load)
    table[]["glDrawArraysIndirect"] = load_fn_ptr("glDrawArraysIndirect", load)
    table[]["glDrawElementsIndirect"] = load_fn_ptr("glDrawElementsIndirect", load)
    table[]["glDrawTransformFeedback"] = load_fn_ptr("glDrawTransformFeedback", load)
    table[]["glDrawTransformFeedbackStream"] = load_fn_ptr("glDrawTransformFeedbackStream", load)
    table[]["glEndQueryIndexed"] = load_fn_ptr("glEndQueryIndexed", load)
    table[]["glGenTransformFeedbacks"] = load_fn_ptr("glGenTransformFeedbacks", load)
    table[]["glGetActiveSubroutineName"] = load_fn_ptr("glGetActiveSubroutineName", load)
    table[]["glGetActiveSubroutineUniformName"] = load_fn_ptr("glGetActiveSubroutineUniformName", load)
    table[]["glGetActiveSubroutineUniformiv"] = load_fn_ptr("glGetActiveSubroutineUniformiv", load)
    table[]["glGetProgramStageiv"] = load_fn_ptr("glGetProgramStageiv", load)
    table[]["glGetQueryIndexediv"] = load_fn_ptr("glGetQueryIndexediv", load)
    table[]["glGetSubroutineIndex"] = load_fn_ptr("glGetSubroutineIndex", load)
    table[]["glGetSubroutineUniformLocation"] = load_fn_ptr("glGetSubroutineUniformLocation", load)
    table[]["glGetUniformSubroutineuiv"] = load_fn_ptr("glGetUniformSubroutineuiv", load)
    table[]["glGetUniformdv"] = load_fn_ptr("glGetUniformdv", load)
    table[]["glIsTransformFeedback"] = load_fn_ptr("glIsTransformFeedback", load)
    table[]["glMinSampleShading"] = load_fn_ptr("glMinSampleShading", load)
    table[]["glPatchParameterfv"] = load_fn_ptr("glPatchParameterfv", load)
    table[]["glPatchParameteri"] = load_fn_ptr("glPatchParameteri", load)
    table[]["glPauseTransformFeedback"] = load_fn_ptr("glPauseTransformFeedback", load)
    table[]["glResumeTransformFeedback"] = load_fn_ptr("glResumeTransformFeedback", load)
    table[]["glUniform1d"] = load_fn_ptr("glUniform1d", load)
    table[]["glUniform1dv"] = load_fn_ptr("glUniform1dv", load)
    table[]["glUniform2d"] = load_fn_ptr("glUniform2d", load)
    table[]["glUniform2dv"] = load_fn_ptr("glUniform2dv", load)
    table[]["glUniform3d"] = load_fn_ptr("glUniform3d", load)
    table[]["glUniform3dv"] = load_fn_ptr("glUniform3dv", load)
    table[]["glUniform4d"] = load_fn_ptr("glUniform4d", load)
    table[]["glUniform4dv"] = load_fn_ptr("glUniform4dv", load)
    table[]["glUniformMatrix2dv"] = load_fn_ptr("glUniformMatrix2dv", load)
    table[]["glUniformMatrix2x3dv"] = load_fn_ptr("glUniformMatrix2x3dv", load)
    table[]["glUniformMatrix2x4dv"] = load_fn_ptr("glUniformMatrix2x4dv", load)
    table[]["glUniformMatrix3dv"] = load_fn_ptr("glUniformMatrix3dv", load)
    table[]["glUniformMatrix3x2dv"] = load_fn_ptr("glUniformMatrix3x2dv", load)
    table[]["glUniformMatrix3x4dv"] = load_fn_ptr("glUniformMatrix3x4dv", load)
    table[]["glUniformMatrix4dv"] = load_fn_ptr("glUniformMatrix4dv", load)
    table[]["glUniformMatrix4x2dv"] = load_fn_ptr("glUniformMatrix4x2dv", load)
    table[]["glUniformMatrix4x3dv"] = load_fn_ptr("glUniformMatrix4x3dv", load)
    table[]["glUniformSubroutinesuiv"] = load_fn_ptr("glUniformSubroutinesuiv", load)


def init_gl_version_4_1(load: LoadProc) raises:
    table = func_table.get_or_create_ptr()
    table[]["glActiveShaderProgram"] = load_fn_ptr("glActiveShaderProgram", load)
    table[]["glBindProgramPipeline"] = load_fn_ptr("glBindProgramPipeline", load)
    table[]["glClearDepthf"] = load_fn_ptr("glClearDepthf", load)
    table[]["glCreateShaderProgramv"] = load_fn_ptr("glCreateShaderProgramv", load)
    table[]["glDeleteProgramPipelines"] = load_fn_ptr("glDeleteProgramPipelines", load)
    table[]["glDepthRangeArrayv"] = load_fn_ptr("glDepthRangeArrayv", load)
    table[]["glDepthRangeIndexed"] = load_fn_ptr("glDepthRangeIndexed", load)
    table[]["glDepthRangef"] = load_fn_ptr("glDepthRangef", load)
    table[]["glGenProgramPipelines"] = load_fn_ptr("glGenProgramPipelines", load)
    table[]["glGetDoublei_v"] = load_fn_ptr("glGetDoublei_v", load)
    table[]["glGetFloati_v"] = load_fn_ptr("glGetFloati_v", load)
    table[]["glGetProgramBinary"] = load_fn_ptr("glGetProgramBinary", load)
    table[]["glGetProgramPipelineInfoLog"] = load_fn_ptr("glGetProgramPipelineInfoLog", load)
    table[]["glGetProgramPipelineiv"] = load_fn_ptr("glGetProgramPipelineiv", load)
    table[]["glGetShaderPrecisionFormat"] = load_fn_ptr("glGetShaderPrecisionFormat", load)
    table[]["glGetVertexAttribLdv"] = load_fn_ptr("glGetVertexAttribLdv", load)
    table[]["glIsProgramPipeline"] = load_fn_ptr("glIsProgramPipeline", load)
    table[]["glProgramBinary"] = load_fn_ptr("glProgramBinary", load)
    table[]["glProgramParameteri"] = load_fn_ptr("glProgramParameteri", load)
    table[]["glProgramUniform1d"] = load_fn_ptr("glProgramUniform1d", load)
    table[]["glProgramUniform1dv"] = load_fn_ptr("glProgramUniform1dv", load)
    table[]["glProgramUniform1f"] = load_fn_ptr("glProgramUniform1f", load)
    table[]["glProgramUniform1fv"] = load_fn_ptr("glProgramUniform1fv", load)
    table[]["glProgramUniform1i"] = load_fn_ptr("glProgramUniform1i", load)
    table[]["glProgramUniform1iv"] = load_fn_ptr("glProgramUniform1iv", load)
    table[]["glProgramUniform1ui"] = load_fn_ptr("glProgramUniform1ui", load)
    table[]["glProgramUniform1uiv"] = load_fn_ptr("glProgramUniform1uiv", load)
    table[]["glProgramUniform2d"] = load_fn_ptr("glProgramUniform2d", load)
    table[]["glProgramUniform2dv"] = load_fn_ptr("glProgramUniform2dv", load)
    table[]["glProgramUniform2f"] = load_fn_ptr("glProgramUniform2f", load)
    table[]["glProgramUniform2fv"] = load_fn_ptr("glProgramUniform2fv", load)
    table[]["glProgramUniform2i"] = load_fn_ptr("glProgramUniform2i", load)
    table[]["glProgramUniform2iv"] = load_fn_ptr("glProgramUniform2iv", load)
    table[]["glProgramUniform2ui"] = load_fn_ptr("glProgramUniform2ui", load)
    table[]["glProgramUniform2uiv"] = load_fn_ptr("glProgramUniform2uiv", load)
    table[]["glProgramUniform3d"] = load_fn_ptr("glProgramUniform3d", load)
    table[]["glProgramUniform3dv"] = load_fn_ptr("glProgramUniform3dv", load)
    table[]["glProgramUniform3f"] = load_fn_ptr("glProgramUniform3f", load)
    table[]["glProgramUniform3fv"] = load_fn_ptr("glProgramUniform3fv", load)
    table[]["glProgramUniform3i"] = load_fn_ptr("glProgramUniform3i", load)
    table[]["glProgramUniform3iv"] = load_fn_ptr("glProgramUniform3iv", load)
    table[]["glProgramUniform3ui"] = load_fn_ptr("glProgramUniform3ui", load)
    table[]["glProgramUniform3uiv"] = load_fn_ptr("glProgramUniform3uiv", load)
    table[]["glProgramUniform4d"] = load_fn_ptr("glProgramUniform4d", load)
    table[]["glProgramUniform4dv"] = load_fn_ptr("glProgramUniform4dv", load)
    table[]["glProgramUniform4f"] = load_fn_ptr("glProgramUniform4f", load)
    table[]["glProgramUniform4fv"] = load_fn_ptr("glProgramUniform4fv", load)
    table[]["glProgramUniform4i"] = load_fn_ptr("glProgramUniform4i", load)
    table[]["glProgramUniform4iv"] = load_fn_ptr("glProgramUniform4iv", load)
    table[]["glProgramUniform4ui"] = load_fn_ptr("glProgramUniform4ui", load)
    table[]["glProgramUniform4uiv"] = load_fn_ptr("glProgramUniform4uiv", load)
    table[]["glProgramUniformMatrix2dv"] = load_fn_ptr("glProgramUniformMatrix2dv", load)
    table[]["glProgramUniformMatrix2fv"] = load_fn_ptr("glProgramUniformMatrix2fv", load)
    table[]["glProgramUniformMatrix2x3dv"] = load_fn_ptr("glProgramUniformMatrix2x3dv", load)
    table[]["glProgramUniformMatrix2x3fv"] = load_fn_ptr("glProgramUniformMatrix2x3fv", load)
    table[]["glProgramUniformMatrix2x4dv"] = load_fn_ptr("glProgramUniformMatrix2x4dv", load)
    table[]["glProgramUniformMatrix2x4fv"] = load_fn_ptr("glProgramUniformMatrix2x4fv", load)
    table[]["glProgramUniformMatrix3dv"] = load_fn_ptr("glProgramUniformMatrix3dv", load)
    table[]["glProgramUniformMatrix3fv"] = load_fn_ptr("glProgramUniformMatrix3fv", load)
    table[]["glProgramUniformMatrix3x2dv"] = load_fn_ptr("glProgramUniformMatrix3x2dv", load)
    table[]["glProgramUniformMatrix3x2fv"] = load_fn_ptr("glProgramUniformMatrix3x2fv", load)
    table[]["glProgramUniformMatrix3x4dv"] = load_fn_ptr("glProgramUniformMatrix3x4dv", load)
    table[]["glProgramUniformMatrix3x4fv"] = load_fn_ptr("glProgramUniformMatrix3x4fv", load)
    table[]["glProgramUniformMatrix4dv"] = load_fn_ptr("glProgramUniformMatrix4dv", load)
    table[]["glProgramUniformMatrix4fv"] = load_fn_ptr("glProgramUniformMatrix4fv", load)
    table[]["glProgramUniformMatrix4x2dv"] = load_fn_ptr("glProgramUniformMatrix4x2dv", load)
    table[]["glProgramUniformMatrix4x2fv"] = load_fn_ptr("glProgramUniformMatrix4x2fv", load)
    table[]["glProgramUniformMatrix4x3dv"] = load_fn_ptr("glProgramUniformMatrix4x3dv", load)
    table[]["glProgramUniformMatrix4x3fv"] = load_fn_ptr("glProgramUniformMatrix4x3fv", load)
    table[]["glReleaseShaderCompiler"] = load_fn_ptr("glReleaseShaderCompiler", load)
    table[]["glScissorArrayv"] = load_fn_ptr("glScissorArrayv", load)
    table[]["glScissorIndexed"] = load_fn_ptr("glScissorIndexed", load)
    table[]["glScissorIndexedv"] = load_fn_ptr("glScissorIndexedv", load)
    table[]["glShaderBinary"] = load_fn_ptr("glShaderBinary", load)
    table[]["glUseProgramStages"] = load_fn_ptr("glUseProgramStages", load)
    table[]["glValidateProgramPipeline"] = load_fn_ptr("glValidateProgramPipeline", load)
    table[]["glVertexAttribL1d"] = load_fn_ptr("glVertexAttribL1d", load)
    table[]["glVertexAttribL1dv"] = load_fn_ptr("glVertexAttribL1dv", load)
    table[]["glVertexAttribL2d"] = load_fn_ptr("glVertexAttribL2d", load)
    table[]["glVertexAttribL2dv"] = load_fn_ptr("glVertexAttribL2dv", load)
    table[]["glVertexAttribL3d"] = load_fn_ptr("glVertexAttribL3d", load)
    table[]["glVertexAttribL3dv"] = load_fn_ptr("glVertexAttribL3dv", load)
    table[]["glVertexAttribL4d"] = load_fn_ptr("glVertexAttribL4d", load)
    table[]["glVertexAttribL4dv"] = load_fn_ptr("glVertexAttribL4dv", load)
    table[]["glVertexAttribLPointer"] = load_fn_ptr("glVertexAttribLPointer", load)
    table[]["glViewportArrayv"] = load_fn_ptr("glViewportArrayv", load)
    table[]["glViewportIndexedf"] = load_fn_ptr("glViewportIndexedf", load)
    table[]["glViewportIndexedfv"] = load_fn_ptr("glViewportIndexedfv", load)


def init_gl_version_4_2(load: LoadProc) raises:
    table = func_table.get_or_create_ptr()
    table[]["glBindImageTexture"] = load_fn_ptr("glBindImageTexture", load)
    table[]["glDrawArraysInstancedBaseInstance"] = load_fn_ptr("glDrawArraysInstancedBaseInstance", load)
    table[]["glDrawElementsInstancedBaseInstance"] = load_fn_ptr("glDrawElementsInstancedBaseInstance", load)
    table[]["glDrawElementsInstancedBaseVertexBaseInstance"] = load_fn_ptr("glDrawElementsInstancedBaseVertexBaseInstance", load)
    table[]["glDrawTransformFeedbackInstanced"] = load_fn_ptr("glDrawTransformFeedbackInstanced", load)
    table[]["glDrawTransformFeedbackStreamInstanced"] = load_fn_ptr("glDrawTransformFeedbackStreamInstanced", load)
    table[]["glGetActiveAtomicCounterBufferiv"] = load_fn_ptr("glGetActiveAtomicCounterBufferiv", load)
    table[]["glGetInternalformativ"] = load_fn_ptr("glGetInternalformativ", load)
    table[]["glMemoryBarrier"] = load_fn_ptr("glMemoryBarrier", load)
    table[]["glTexStorage1D"] = load_fn_ptr("glTexStorage1D", load)
    table[]["glTexStorage2D"] = load_fn_ptr("glTexStorage2D", load)
    table[]["glTexStorage3D"] = load_fn_ptr("glTexStorage3D", load)


def init_gl_version_4_3(load: LoadProc) raises:
    table = func_table.get_or_create_ptr()
    table[]["glBindVertexBuffer"] = load_fn_ptr("glBindVertexBuffer", load)
    table[]["glClearBufferData"] = load_fn_ptr("glClearBufferData", load)
    table[]["glClearBufferSubData"] = load_fn_ptr("glClearBufferSubData", load)
    table[]["glCopyImageSubData"] = load_fn_ptr("glCopyImageSubData", load)
    table[]["glDebugMessageCallback"] = load_fn_ptr("glDebugMessageCallback", load)
    table[]["glDebugMessageControl"] = load_fn_ptr("glDebugMessageControl", load)
    table[]["glDebugMessageInsert"] = load_fn_ptr("glDebugMessageInsert", load)
    table[]["glDispatchCompute"] = load_fn_ptr("glDispatchCompute", load)
    table[]["glDispatchComputeIndirect"] = load_fn_ptr("glDispatchComputeIndirect", load)
    table[]["glFramebufferParameteri"] = load_fn_ptr("glFramebufferParameteri", load)
    table[]["glGetDebugMessageLog"] = load_fn_ptr("glGetDebugMessageLog", load)
    table[]["glGetFramebufferParameteriv"] = load_fn_ptr("glGetFramebufferParameteriv", load)
    table[]["glGetInternalformati64v"] = load_fn_ptr("glGetInternalformati64v", load)
    table[]["glGetObjectLabel"] = load_fn_ptr("glGetObjectLabel", load)
    table[]["glGetObjectPtrLabel"] = load_fn_ptr("glGetObjectPtrLabel", load)
    table[]["glGetProgramInterfaceiv"] = load_fn_ptr("glGetProgramInterfaceiv", load)
    table[]["glGetProgramResourceIndex"] = load_fn_ptr("glGetProgramResourceIndex", load)
    table[]["glGetProgramResourceLocation"] = load_fn_ptr("glGetProgramResourceLocation", load)
    table[]["glGetProgramResourceLocationIndex"] = load_fn_ptr("glGetProgramResourceLocationIndex", load)
    table[]["glGetProgramResourceName"] = load_fn_ptr("glGetProgramResourceName", load)
    table[]["glGetProgramResourceiv"] = load_fn_ptr("glGetProgramResourceiv", load)
    table[]["glInvalidateBufferData"] = load_fn_ptr("glInvalidateBufferData", load)
    table[]["glInvalidateBufferSubData"] = load_fn_ptr("glInvalidateBufferSubData", load)
    table[]["glInvalidateFramebuffer"] = load_fn_ptr("glInvalidateFramebuffer", load)
    table[]["glInvalidateSubFramebuffer"] = load_fn_ptr("glInvalidateSubFramebuffer", load)
    table[]["glInvalidateTexImage"] = load_fn_ptr("glInvalidateTexImage", load)
    table[]["glInvalidateTexSubImage"] = load_fn_ptr("glInvalidateTexSubImage", load)
    table[]["glMultiDrawArraysIndirect"] = load_fn_ptr("glMultiDrawArraysIndirect", load)
    table[]["glMultiDrawElementsIndirect"] = load_fn_ptr("glMultiDrawElementsIndirect", load)
    table[]["glObjectLabel"] = load_fn_ptr("glObjectLabel", load)
    table[]["glObjectPtrLabel"] = load_fn_ptr("glObjectPtrLabel", load)
    table[]["glPopDebugGroup"] = load_fn_ptr("glPopDebugGroup", load)
    table[]["glPushDebugGroup"] = load_fn_ptr("glPushDebugGroup", load)
    table[]["glShaderStorageBlockBinding"] = load_fn_ptr("glShaderStorageBlockBinding", load)
    table[]["glTexBufferRange"] = load_fn_ptr("glTexBufferRange", load)
    table[]["glTexStorage2DMultisample"] = load_fn_ptr("glTexStorage2DMultisample", load)
    table[]["glTexStorage3DMultisample"] = load_fn_ptr("glTexStorage3DMultisample", load)
    table[]["glTextureView"] = load_fn_ptr("glTextureView", load)
    table[]["glVertexAttribBinding"] = load_fn_ptr("glVertexAttribBinding", load)
    table[]["glVertexAttribFormat"] = load_fn_ptr("glVertexAttribFormat", load)
    table[]["glVertexAttribIFormat"] = load_fn_ptr("glVertexAttribIFormat", load)
    table[]["glVertexAttribLFormat"] = load_fn_ptr("glVertexAttribLFormat", load)
    table[]["glVertexBindingDivisor"] = load_fn_ptr("glVertexBindingDivisor", load)


def init_gl_version_4_4(load: LoadProc) raises:
    table = func_table.get_or_create_ptr()
    table[]["glBindBuffersBase"] = load_fn_ptr("glBindBuffersBase", load)
    table[]["glBindBuffersRange"] = load_fn_ptr("glBindBuffersRange", load)
    table[]["glBindImageTextures"] = load_fn_ptr("glBindImageTextures", load)
    table[]["glBindSamplers"] = load_fn_ptr("glBindSamplers", load)
    table[]["glBindTextures"] = load_fn_ptr("glBindTextures", load)
    table[]["glBindVertexBuffers"] = load_fn_ptr("glBindVertexBuffers", load)
    table[]["glBufferStorage"] = load_fn_ptr("glBufferStorage", load)
    table[]["glClearTexImage"] = load_fn_ptr("glClearTexImage", load)
    table[]["glClearTexSubImage"] = load_fn_ptr("glClearTexSubImage", load)


def init_gl_version_4_5(load: LoadProc) raises:
    table = func_table.get_or_create_ptr()
    table[]["glBindTextureUnit"] = load_fn_ptr("glBindTextureUnit", load)
    table[]["glBlitNamedFramebuffer"] = load_fn_ptr("glBlitNamedFramebuffer", load)
    table[]["glCheckNamedFramebufferStatus"] = load_fn_ptr("glCheckNamedFramebufferStatus", load)
    table[]["glClearNamedBufferData"] = load_fn_ptr("glClearNamedBufferData", load)
    table[]["glClearNamedBufferSubData"] = load_fn_ptr("glClearNamedBufferSubData", load)
    table[]["glClearNamedFramebufferfi"] = load_fn_ptr("glClearNamedFramebufferfi", load)
    table[]["glClearNamedFramebufferfv"] = load_fn_ptr("glClearNamedFramebufferfv", load)
    table[]["glClearNamedFramebufferiv"] = load_fn_ptr("glClearNamedFramebufferiv", load)
    table[]["glClearNamedFramebufferuiv"] = load_fn_ptr("glClearNamedFramebufferuiv", load)
    table[]["glClipControl"] = load_fn_ptr("glClipControl", load)
    table[]["glCompressedTextureSubImage1D"] = load_fn_ptr("glCompressedTextureSubImage1D", load)
    table[]["glCompressedTextureSubImage2D"] = load_fn_ptr("glCompressedTextureSubImage2D", load)
    table[]["glCompressedTextureSubImage3D"] = load_fn_ptr("glCompressedTextureSubImage3D", load)
    table[]["glCopyNamedBufferSubData"] = load_fn_ptr("glCopyNamedBufferSubData", load)
    table[]["glCopyTextureSubImage1D"] = load_fn_ptr("glCopyTextureSubImage1D", load)
    table[]["glCopyTextureSubImage2D"] = load_fn_ptr("glCopyTextureSubImage2D", load)
    table[]["glCopyTextureSubImage3D"] = load_fn_ptr("glCopyTextureSubImage3D", load)
    table[]["glCreateBuffers"] = load_fn_ptr("glCreateBuffers", load)
    table[]["glCreateFramebuffers"] = load_fn_ptr("glCreateFramebuffers", load)
    table[]["glCreateProgramPipelines"] = load_fn_ptr("glCreateProgramPipelines", load)
    table[]["glCreateQueries"] = load_fn_ptr("glCreateQueries", load)
    table[]["glCreateRenderbuffers"] = load_fn_ptr("glCreateRenderbuffers", load)
    table[]["glCreateSamplers"] = load_fn_ptr("glCreateSamplers", load)
    table[]["glCreateTextures"] = load_fn_ptr("glCreateTextures", load)
    table[]["glCreateTransformFeedbacks"] = load_fn_ptr("glCreateTransformFeedbacks", load)
    table[]["glCreateVertexArrays"] = load_fn_ptr("glCreateVertexArrays", load)
    table[]["glDisableVertexArrayAttrib"] = load_fn_ptr("glDisableVertexArrayAttrib", load)
    table[]["glEnableVertexArrayAttrib"] = load_fn_ptr("glEnableVertexArrayAttrib", load)
    table[]["glFlushMappedNamedBufferRange"] = load_fn_ptr("glFlushMappedNamedBufferRange", load)
    table[]["glGenerateTextureMipmap"] = load_fn_ptr("glGenerateTextureMipmap", load)
    table[]["glGetCompressedTextureImage"] = load_fn_ptr("glGetCompressedTextureImage", load)
    table[]["glGetCompressedTextureSubImage"] = load_fn_ptr("glGetCompressedTextureSubImage", load)
    table[]["glGetGraphicsResetStatus"] = load_fn_ptr("glGetGraphicsResetStatus", load)
    table[]["glGetNamedBufferParameteri64v"] = load_fn_ptr("glGetNamedBufferParameteri64v", load)
    table[]["glGetNamedBufferParameteriv"] = load_fn_ptr("glGetNamedBufferParameteriv", load)
    table[]["glGetNamedBufferPointerv"] = load_fn_ptr("glGetNamedBufferPointerv", load)
    table[]["glGetNamedBufferSubData"] = load_fn_ptr("glGetNamedBufferSubData", load)
    table[]["glGetNamedFramebufferAttachmentParameteriv"] = load_fn_ptr("glGetNamedFramebufferAttachmentParameteriv", load)
    table[]["glGetNamedFramebufferParameteriv"] = load_fn_ptr("glGetNamedFramebufferParameteriv", load)
    table[]["glGetNamedRenderbufferParameteriv"] = load_fn_ptr("glGetNamedRenderbufferParameteriv", load)
    table[]["glGetQueryBufferObjecti64v"] = load_fn_ptr("glGetQueryBufferObjecti64v", load)
    table[]["glGetQueryBufferObjectiv"] = load_fn_ptr("glGetQueryBufferObjectiv", load)
    table[]["glGetQueryBufferObjectui64v"] = load_fn_ptr("glGetQueryBufferObjectui64v", load)
    table[]["glGetQueryBufferObjectuiv"] = load_fn_ptr("glGetQueryBufferObjectuiv", load)
    table[]["glGetTextureImage"] = load_fn_ptr("glGetTextureImage", load)
    table[]["glGetTextureLevelParameterfv"] = load_fn_ptr("glGetTextureLevelParameterfv", load)
    table[]["glGetTextureLevelParameteriv"] = load_fn_ptr("glGetTextureLevelParameteriv", load)
    table[]["glGetTextureParameterIiv"] = load_fn_ptr("glGetTextureParameterIiv", load)
    table[]["glGetTextureParameterIuiv"] = load_fn_ptr("glGetTextureParameterIuiv", load)
    table[]["glGetTextureParameterfv"] = load_fn_ptr("glGetTextureParameterfv", load)
    table[]["glGetTextureParameteriv"] = load_fn_ptr("glGetTextureParameteriv", load)
    table[]["glGetTextureSubImage"] = load_fn_ptr("glGetTextureSubImage", load)
    table[]["glGetTransformFeedbacki64_v"] = load_fn_ptr("glGetTransformFeedbacki64_v", load)
    table[]["glGetTransformFeedbacki_v"] = load_fn_ptr("glGetTransformFeedbacki_v", load)
    table[]["glGetTransformFeedbackiv"] = load_fn_ptr("glGetTransformFeedbackiv", load)
    table[]["glGetVertexArrayIndexed64iv"] = load_fn_ptr("glGetVertexArrayIndexed64iv", load)
    table[]["glGetVertexArrayIndexediv"] = load_fn_ptr("glGetVertexArrayIndexediv", load)
    table[]["glGetVertexArrayiv"] = load_fn_ptr("glGetVertexArrayiv", load)
    table[]["glGetnColorTable"] = load_fn_ptr("glGetnColorTable", load)
    table[]["glGetnCompressedTexImage"] = load_fn_ptr("glGetnCompressedTexImage", load)
    table[]["glGetnConvolutionFilter"] = load_fn_ptr("glGetnConvolutionFilter", load)
    table[]["glGetnHistogram"] = load_fn_ptr("glGetnHistogram", load)
    table[]["glGetnMapdv"] = load_fn_ptr("glGetnMapdv", load)
    table[]["glGetnMapfv"] = load_fn_ptr("glGetnMapfv", load)
    table[]["glGetnMapiv"] = load_fn_ptr("glGetnMapiv", load)
    table[]["glGetnMinmax"] = load_fn_ptr("glGetnMinmax", load)
    table[]["glGetnPixelMapfv"] = load_fn_ptr("glGetnPixelMapfv", load)
    table[]["glGetnPixelMapuiv"] = load_fn_ptr("glGetnPixelMapuiv", load)
    table[]["glGetnPixelMapusv"] = load_fn_ptr("glGetnPixelMapusv", load)
    table[]["glGetnPolygonStipple"] = load_fn_ptr("glGetnPolygonStipple", load)
    table[]["glGetnSeparableFilter"] = load_fn_ptr("glGetnSeparableFilter", load)
    table[]["glGetnTexImage"] = load_fn_ptr("glGetnTexImage", load)
    table[]["glGetnUniformdv"] = load_fn_ptr("glGetnUniformdv", load)
    table[]["glGetnUniformfv"] = load_fn_ptr("glGetnUniformfv", load)
    table[]["glGetnUniformiv"] = load_fn_ptr("glGetnUniformiv", load)
    table[]["glGetnUniformuiv"] = load_fn_ptr("glGetnUniformuiv", load)
    table[]["glInvalidateNamedFramebufferData"] = load_fn_ptr("glInvalidateNamedFramebufferData", load)
    table[]["glInvalidateNamedFramebufferSubData"] = load_fn_ptr("glInvalidateNamedFramebufferSubData", load)
    table[]["glMapNamedBuffer"] = load_fn_ptr("glMapNamedBuffer", load)
    table[]["glMapNamedBufferRange"] = load_fn_ptr("glMapNamedBufferRange", load)
    table[]["glMemoryBarrierByRegion"] = load_fn_ptr("glMemoryBarrierByRegion", load)
    table[]["glNamedBufferData"] = load_fn_ptr("glNamedBufferData", load)
    table[]["glNamedBufferStorage"] = load_fn_ptr("glNamedBufferStorage", load)
    table[]["glNamedBufferSubData"] = load_fn_ptr("glNamedBufferSubData", load)
    table[]["glNamedFramebufferDrawBuffer"] = load_fn_ptr("glNamedFramebufferDrawBuffer", load)
    table[]["glNamedFramebufferDrawBuffers"] = load_fn_ptr("glNamedFramebufferDrawBuffers", load)
    table[]["glNamedFramebufferParameteri"] = load_fn_ptr("glNamedFramebufferParameteri", load)
    table[]["glNamedFramebufferReadBuffer"] = load_fn_ptr("glNamedFramebufferReadBuffer", load)
    table[]["glNamedFramebufferRenderbuffer"] = load_fn_ptr("glNamedFramebufferRenderbuffer", load)
    table[]["glNamedFramebufferTexture"] = load_fn_ptr("glNamedFramebufferTexture", load)
    table[]["glNamedFramebufferTextureLayer"] = load_fn_ptr("glNamedFramebufferTextureLayer", load)
    table[]["glNamedRenderbufferStorage"] = load_fn_ptr("glNamedRenderbufferStorage", load)
    table[]["glNamedRenderbufferStorageMultisample"] = load_fn_ptr("glNamedRenderbufferStorageMultisample", load)
    table[]["glReadnPixels"] = load_fn_ptr("glReadnPixels", load)
    table[]["glTextureBarrier"] = load_fn_ptr("glTextureBarrier", load)
    table[]["glTextureBuffer"] = load_fn_ptr("glTextureBuffer", load)
    table[]["glTextureBufferRange"] = load_fn_ptr("glTextureBufferRange", load)
    table[]["glTextureParameterIiv"] = load_fn_ptr("glTextureParameterIiv", load)
    table[]["glTextureParameterIuiv"] = load_fn_ptr("glTextureParameterIuiv", load)
    table[]["glTextureParameterf"] = load_fn_ptr("glTextureParameterf", load)
    table[]["glTextureParameterfv"] = load_fn_ptr("glTextureParameterfv", load)
    table[]["glTextureParameteri"] = load_fn_ptr("glTextureParameteri", load)
    table[]["glTextureParameteriv"] = load_fn_ptr("glTextureParameteriv", load)
    table[]["glTextureStorage1D"] = load_fn_ptr("glTextureStorage1D", load)
    table[]["glTextureStorage2D"] = load_fn_ptr("glTextureStorage2D", load)
    table[]["glTextureStorage2DMultisample"] = load_fn_ptr("glTextureStorage2DMultisample", load)
    table[]["glTextureStorage3D"] = load_fn_ptr("glTextureStorage3D", load)
    table[]["glTextureStorage3DMultisample"] = load_fn_ptr("glTextureStorage3DMultisample", load)
    table[]["glTextureSubImage1D"] = load_fn_ptr("glTextureSubImage1D", load)
    table[]["glTextureSubImage2D"] = load_fn_ptr("glTextureSubImage2D", load)
    table[]["glTextureSubImage3D"] = load_fn_ptr("glTextureSubImage3D", load)
    table[]["glTransformFeedbackBufferBase"] = load_fn_ptr("glTransformFeedbackBufferBase", load)
    table[]["glTransformFeedbackBufferRange"] = load_fn_ptr("glTransformFeedbackBufferRange", load)
    table[]["glUnmapNamedBuffer"] = load_fn_ptr("glUnmapNamedBuffer", load)
    table[]["glVertexArrayAttribBinding"] = load_fn_ptr("glVertexArrayAttribBinding", load)
    table[]["glVertexArrayAttribFormat"] = load_fn_ptr("glVertexArrayAttribFormat", load)
    table[]["glVertexArrayAttribIFormat"] = load_fn_ptr("glVertexArrayAttribIFormat", load)
    table[]["glVertexArrayAttribLFormat"] = load_fn_ptr("glVertexArrayAttribLFormat", load)
    table[]["glVertexArrayBindingDivisor"] = load_fn_ptr("glVertexArrayBindingDivisor", load)
    table[]["glVertexArrayElementBuffer"] = load_fn_ptr("glVertexArrayElementBuffer", load)
    table[]["glVertexArrayVertexBuffer"] = load_fn_ptr("glVertexArrayVertexBuffer", load)
    table[]["glVertexArrayVertexBuffers"] = load_fn_ptr("glVertexArrayVertexBuffers", load)


def init_gl_version_4_6(load: LoadProc) raises:
    table = func_table.get_or_create_ptr()
    table[]["glMultiDrawArraysIndirectCount"] = load_fn_ptr("glMultiDrawArraysIndirectCount", load)
    table[]["glMultiDrawElementsIndirectCount"] = load_fn_ptr("glMultiDrawElementsIndirectCount", load)
    table[]["glPolygonOffsetClamp"] = load_fn_ptr("glPolygonOffsetClamp", load)
    table[]["glSpecializeShader"] = load_fn_ptr("glSpecializeShader", load)


# ========= INIT =========
def init_opengl(load: LoadProc) raises:
    init_gl_version_1_0(load)
    init_gl_version_1_1(load)
    init_gl_version_1_2(load)
    init_gl_version_1_3(load)
    init_gl_version_1_4(load)
    init_gl_version_1_5(load)
    init_gl_version_2_0(load)
    init_gl_version_2_1(load)
    init_gl_version_3_0(load)
    init_gl_version_3_1(load)
    init_gl_version_3_2(load)
    init_gl_version_3_3(load)
    init_gl_version_4_0(load)
    init_gl_version_4_1(load)
    init_gl_version_4_2(load)
    init_gl_version_4_3(load)
    init_gl_version_4_4(load)
    init_gl_version_4_5(load)
    init_gl_version_4_6(load)
