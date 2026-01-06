# x-------------------------------------------x #
# | OpenGL bindings for Mojo
# x-------------------------------------------x #

from sys.ffi import _Global, c_char, c_int, c_uint, c_short, c_ushort, c_size_t, c_ssize_t, c_float, c_double
from memory import OpaquePointer
from os import abort

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

comptime GLDEBUGPROC = fn (source: GLenum, type: GLenum, id: GLuint, severity: GLenum, length: GLsizei, message: Ptr[GLchar], userParam: OpaquePointer)

# ========= ENUMS =========


@fieldwise_init
@register_passable("trivial")
struct AlphaFunction(Intable):
    var value: GLenum

    comptime NEVER = AlphaFunction(0x0200)
    comptime LESS = AlphaFunction(0x0201)
    comptime EQUAL = AlphaFunction(0x0202)
    comptime LEQUAL = AlphaFunction(0x0203)
    comptime GREATER = AlphaFunction(0x0204)
    comptime NOTEQUAL = AlphaFunction(0x0205)
    comptime GEQUAL = AlphaFunction(0x0206)
    comptime ALWAYS = AlphaFunction(0x0207)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct AtomicCounterBufferPName(Intable):
    var value: GLenum

    comptime ATOMIC_COUNTER_BUFFER_REFERENCED_BY_COMPUTE_SHADER = AtomicCounterBufferPName(0x90ED)
    comptime ATOMIC_COUNTER_BUFFER_BINDING = AtomicCounterBufferPName(0x92C1)
    comptime ATOMIC_COUNTER_BUFFER_DATA_SIZE = AtomicCounterBufferPName(0x92C4)
    comptime ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTERS = AtomicCounterBufferPName(0x92C5)
    comptime ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTER_INDICES = AtomicCounterBufferPName(0x92C6)
    comptime ATOMIC_COUNTER_BUFFER_REFERENCED_BY_VERTEX_SHADER = AtomicCounterBufferPName(0x92C7)
    comptime ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_CONTROL_SHADER = AtomicCounterBufferPName(0x92C8)
    comptime ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_EVALUATION_SHADER = AtomicCounterBufferPName(0x92C9)
    comptime ATOMIC_COUNTER_BUFFER_REFERENCED_BY_GEOMETRY_SHADER = AtomicCounterBufferPName(0x92CA)
    comptime ATOMIC_COUNTER_BUFFER_REFERENCED_BY_FRAGMENT_SHADER = AtomicCounterBufferPName(0x92CB)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct AttribMask(Intable):
    var value: GLenum

    comptime CURRENT_BIT = AttribMask(0x00000001)
    comptime POINT_BIT = AttribMask(0x00000002)
    comptime LINE_BIT = AttribMask(0x00000004)
    comptime POLYGON_BIT = AttribMask(0x00000008)
    comptime POLYGON_STIPPLE_BIT = AttribMask(0x00000010)
    comptime PIXEL_MODE_BIT = AttribMask(0x00000020)
    comptime LIGHTING_BIT = AttribMask(0x00000040)
    comptime FOG_BIT = AttribMask(0x00000080)
    comptime DEPTH_BUFFER_BIT = AttribMask(0x00000100)
    comptime ACCUM_BUFFER_BIT = AttribMask(0x00000200)
    comptime STENCIL_BUFFER_BIT = AttribMask(0x00000400)
    comptime VIEWPORT_BIT = AttribMask(0x00000800)
    comptime TRANSFORM_BIT = AttribMask(0x00001000)
    comptime ENABLE_BIT = AttribMask(0x00002000)
    comptime COLOR_BUFFER_BIT = AttribMask(0x00004000)
    comptime HINT_BIT = AttribMask(0x00008000)
    comptime EVAL_BIT = AttribMask(0x00010000)
    comptime LIST_BIT = AttribMask(0x00020000)
    comptime TEXTURE_BIT = AttribMask(0x00040000)
    comptime SCISSOR_BIT = AttribMask(0x00080000)
    comptime MULTISAMPLE_BIT = AttribMask(0x20000000)
    comptime MULTISAMPLE_BIT_ARB = AttribMask(0x20000000)
    comptime MULTISAMPLE_BIT_EXT = AttribMask(0x20000000)
    comptime MULTISAMPLE_BIT_3DFX = AttribMask(0x20000000)
    comptime ALL_ATTRIB_BITS = AttribMask(0xFFFFFFFF)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct AttributeType(Intable):
    var value: GLenum

    comptime INT = AttributeType(0x1404)
    comptime UNSIGNED_INT = AttributeType(0x1405)
    comptime FLOAT = AttributeType(0x1406)
    comptime DOUBLE = AttributeType(0x140A)
    comptime INT64_ARB = AttributeType(0x140E)
    comptime INT64_NV = AttributeType(0x140E)
    comptime UNSIGNED_INT64_ARB = AttributeType(0x140F)
    comptime UNSIGNED_INT64_NV = AttributeType(0x140F)
    comptime FLOAT_VEC2 = AttributeType(0x8B50)
    comptime FLOAT_VEC2_ARB = AttributeType(0x8B50)
    comptime FLOAT_VEC3 = AttributeType(0x8B51)
    comptime FLOAT_VEC3_ARB = AttributeType(0x8B51)
    comptime FLOAT_VEC4 = AttributeType(0x8B52)
    comptime FLOAT_VEC4_ARB = AttributeType(0x8B52)
    comptime INT_VEC2 = AttributeType(0x8B53)
    comptime INT_VEC2_ARB = AttributeType(0x8B53)
    comptime INT_VEC3 = AttributeType(0x8B54)
    comptime INT_VEC3_ARB = AttributeType(0x8B54)
    comptime INT_VEC4 = AttributeType(0x8B55)
    comptime INT_VEC4_ARB = AttributeType(0x8B55)
    comptime BOOL = AttributeType(0x8B56)
    comptime BOOL_ARB = AttributeType(0x8B56)
    comptime BOOL_VEC2 = AttributeType(0x8B57)
    comptime BOOL_VEC2_ARB = AttributeType(0x8B57)
    comptime BOOL_VEC3 = AttributeType(0x8B58)
    comptime BOOL_VEC3_ARB = AttributeType(0x8B58)
    comptime BOOL_VEC4 = AttributeType(0x8B59)
    comptime BOOL_VEC4_ARB = AttributeType(0x8B59)
    comptime FLOAT_MAT2 = AttributeType(0x8B5A)
    comptime FLOAT_MAT2_ARB = AttributeType(0x8B5A)
    comptime FLOAT_MAT3 = AttributeType(0x8B5B)
    comptime FLOAT_MAT3_ARB = AttributeType(0x8B5B)
    comptime FLOAT_MAT4 = AttributeType(0x8B5C)
    comptime FLOAT_MAT4_ARB = AttributeType(0x8B5C)
    comptime SAMPLER_1D = AttributeType(0x8B5D)
    comptime SAMPLER_1D_ARB = AttributeType(0x8B5D)
    comptime SAMPLER_2D = AttributeType(0x8B5E)
    comptime SAMPLER_2D_ARB = AttributeType(0x8B5E)
    comptime SAMPLER_3D = AttributeType(0x8B5F)
    comptime SAMPLER_3D_ARB = AttributeType(0x8B5F)
    comptime SAMPLER_3D_OES = AttributeType(0x8B5F)
    comptime SAMPLER_CUBE = AttributeType(0x8B60)
    comptime SAMPLER_CUBE_ARB = AttributeType(0x8B60)
    comptime SAMPLER_1D_SHADOW = AttributeType(0x8B61)
    comptime SAMPLER_1D_SHADOW_ARB = AttributeType(0x8B61)
    comptime SAMPLER_2D_SHADOW = AttributeType(0x8B62)
    comptime SAMPLER_2D_SHADOW_ARB = AttributeType(0x8B62)
    comptime SAMPLER_2D_SHADOW_EXT = AttributeType(0x8B62)
    comptime SAMPLER_2D_RECT = AttributeType(0x8B63)
    comptime SAMPLER_2D_RECT_ARB = AttributeType(0x8B63)
    comptime SAMPLER_2D_RECT_SHADOW = AttributeType(0x8B64)
    comptime SAMPLER_2D_RECT_SHADOW_ARB = AttributeType(0x8B64)
    comptime FLOAT_MAT2x3 = AttributeType(0x8B65)
    comptime FLOAT_MAT2x3_NV = AttributeType(0x8B65)
    comptime FLOAT_MAT2x4 = AttributeType(0x8B66)
    comptime FLOAT_MAT2x4_NV = AttributeType(0x8B66)
    comptime FLOAT_MAT3x2 = AttributeType(0x8B67)
    comptime FLOAT_MAT3x2_NV = AttributeType(0x8B67)
    comptime FLOAT_MAT3x4 = AttributeType(0x8B68)
    comptime FLOAT_MAT3x4_NV = AttributeType(0x8B68)
    comptime FLOAT_MAT4x2 = AttributeType(0x8B69)
    comptime FLOAT_MAT4x2_NV = AttributeType(0x8B69)
    comptime FLOAT_MAT4x3 = AttributeType(0x8B6A)
    comptime FLOAT_MAT4x3_NV = AttributeType(0x8B6A)
    comptime SAMPLER_BUFFER = AttributeType(0x8DC2)
    comptime SAMPLER_1D_ARRAY_SHADOW = AttributeType(0x8DC3)
    comptime SAMPLER_2D_ARRAY_SHADOW = AttributeType(0x8DC4)
    comptime SAMPLER_CUBE_SHADOW = AttributeType(0x8DC5)
    comptime UNSIGNED_INT_VEC2 = AttributeType(0x8DC6)
    comptime UNSIGNED_INT_VEC3 = AttributeType(0x8DC7)
    comptime UNSIGNED_INT_VEC4 = AttributeType(0x8DC8)
    comptime INT_SAMPLER_1D = AttributeType(0x8DC9)
    comptime INT_SAMPLER_2D = AttributeType(0x8DCA)
    comptime INT_SAMPLER_3D = AttributeType(0x8DCB)
    comptime INT_SAMPLER_CUBE = AttributeType(0x8DCC)
    comptime INT_SAMPLER_2D_RECT = AttributeType(0x8DCD)
    comptime INT_SAMPLER_1D_ARRAY = AttributeType(0x8DCE)
    comptime INT_SAMPLER_2D_ARRAY = AttributeType(0x8DCF)
    comptime INT_SAMPLER_BUFFER = AttributeType(0x8DD0)
    comptime UNSIGNED_INT_SAMPLER_1D = AttributeType(0x8DD1)
    comptime UNSIGNED_INT_SAMPLER_2D = AttributeType(0x8DD2)
    comptime UNSIGNED_INT_SAMPLER_3D = AttributeType(0x8DD3)
    comptime UNSIGNED_INT_SAMPLER_CUBE = AttributeType(0x8DD4)
    comptime UNSIGNED_INT_SAMPLER_2D_RECT = AttributeType(0x8DD5)
    comptime UNSIGNED_INT_SAMPLER_1D_ARRAY = AttributeType(0x8DD6)
    comptime UNSIGNED_INT_SAMPLER_2D_ARRAY = AttributeType(0x8DD7)
    comptime UNSIGNED_INT_SAMPLER_BUFFER = AttributeType(0x8DD8)
    comptime DOUBLE_MAT2 = AttributeType(0x8F46)
    comptime DOUBLE_MAT3 = AttributeType(0x8F47)
    comptime DOUBLE_MAT4 = AttributeType(0x8F48)
    comptime DOUBLE_MAT2x3 = AttributeType(0x8F49)
    comptime DOUBLE_MAT2x4 = AttributeType(0x8F4A)
    comptime DOUBLE_MAT3x2 = AttributeType(0x8F4B)
    comptime DOUBLE_MAT3x4 = AttributeType(0x8F4C)
    comptime DOUBLE_MAT4x2 = AttributeType(0x8F4D)
    comptime DOUBLE_MAT4x3 = AttributeType(0x8F4E)
    comptime INT64_VEC2_ARB = AttributeType(0x8FE9)
    comptime INT64_VEC3_ARB = AttributeType(0x8FEA)
    comptime INT64_VEC4_ARB = AttributeType(0x8FEB)
    comptime UNSIGNED_INT64_VEC2_ARB = AttributeType(0x8FF5)
    comptime UNSIGNED_INT64_VEC3_ARB = AttributeType(0x8FF6)
    comptime UNSIGNED_INT64_VEC4_ARB = AttributeType(0x8FF7)
    comptime DOUBLE_VEC2 = AttributeType(0x8FFC)
    comptime DOUBLE_VEC3 = AttributeType(0x8FFD)
    comptime DOUBLE_VEC4 = AttributeType(0x8FFE)
    comptime SAMPLER_CUBE_MAP_ARRAY = AttributeType(0x900C)
    comptime SAMPLER_CUBE_MAP_ARRAY_SHADOW = AttributeType(0x900D)
    comptime INT_SAMPLER_CUBE_MAP_ARRAY = AttributeType(0x900E)
    comptime UNSIGNED_INT_SAMPLER_CUBE_MAP_ARRAY = AttributeType(0x900F)
    comptime IMAGE_1D = AttributeType(0x904C)
    comptime IMAGE_2D = AttributeType(0x904D)
    comptime IMAGE_3D = AttributeType(0x904E)
    comptime IMAGE_2D_RECT = AttributeType(0x904F)
    comptime IMAGE_CUBE = AttributeType(0x9050)
    comptime IMAGE_BUFFER = AttributeType(0x9051)
    comptime IMAGE_1D_ARRAY = AttributeType(0x9052)
    comptime IMAGE_2D_ARRAY = AttributeType(0x9053)
    comptime IMAGE_CUBE_MAP_ARRAY = AttributeType(0x9054)
    comptime IMAGE_2D_MULTISAMPLE = AttributeType(0x9055)
    comptime IMAGE_2D_MULTISAMPLE_ARRAY = AttributeType(0x9056)
    comptime INT_IMAGE_1D = AttributeType(0x9057)
    comptime INT_IMAGE_2D = AttributeType(0x9058)
    comptime INT_IMAGE_3D = AttributeType(0x9059)
    comptime INT_IMAGE_2D_RECT = AttributeType(0x905A)
    comptime INT_IMAGE_CUBE = AttributeType(0x905B)
    comptime INT_IMAGE_BUFFER = AttributeType(0x905C)
    comptime INT_IMAGE_1D_ARRAY = AttributeType(0x905D)
    comptime INT_IMAGE_2D_ARRAY = AttributeType(0x905E)
    comptime INT_IMAGE_CUBE_MAP_ARRAY = AttributeType(0x905F)
    comptime INT_IMAGE_2D_MULTISAMPLE = AttributeType(0x9060)
    comptime INT_IMAGE_2D_MULTISAMPLE_ARRAY = AttributeType(0x9061)
    comptime UNSIGNED_INT_IMAGE_1D = AttributeType(0x9062)
    comptime UNSIGNED_INT_IMAGE_2D = AttributeType(0x9063)
    comptime UNSIGNED_INT_IMAGE_3D = AttributeType(0x9064)
    comptime UNSIGNED_INT_IMAGE_2D_RECT = AttributeType(0x9065)
    comptime UNSIGNED_INT_IMAGE_CUBE = AttributeType(0x9066)
    comptime UNSIGNED_INT_IMAGE_BUFFER = AttributeType(0x9067)
    comptime UNSIGNED_INT_IMAGE_1D_ARRAY = AttributeType(0x9068)
    comptime UNSIGNED_INT_IMAGE_2D_ARRAY = AttributeType(0x9069)
    comptime UNSIGNED_INT_IMAGE_CUBE_MAP_ARRAY = AttributeType(0x906A)
    comptime UNSIGNED_INT_IMAGE_2D_MULTISAMPLE = AttributeType(0x906B)
    comptime UNSIGNED_INT_IMAGE_2D_MULTISAMPLE_ARRAY = AttributeType(0x906C)
    comptime SAMPLER_2D_MULTISAMPLE = AttributeType(0x9108)
    comptime INT_SAMPLER_2D_MULTISAMPLE = AttributeType(0x9109)
    comptime UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE = AttributeType(0x910A)
    comptime SAMPLER_2D_MULTISAMPLE_ARRAY = AttributeType(0x910B)
    comptime INT_SAMPLER_2D_MULTISAMPLE_ARRAY = AttributeType(0x910C)
    comptime UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE_ARRAY = AttributeType(0x910D)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct BindTransformFeedbackTarget(Intable):
    var value: GLenum

    comptime TRANSFORM_FEEDBACK = BindTransformFeedbackTarget(0x8E22)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct BlendEquationModeEXT(Intable):
    var value: GLenum

    comptime FUNC_ADD = BlendEquationModeEXT(0x8006)
    comptime FUNC_ADD_EXT = BlendEquationModeEXT(0x8006)
    comptime MIN = BlendEquationModeEXT(0x8007)
    comptime MIN_EXT = BlendEquationModeEXT(0x8007)
    comptime MAX = BlendEquationModeEXT(0x8008)
    comptime MAX_EXT = BlendEquationModeEXT(0x8008)
    comptime FUNC_SUBTRACT = BlendEquationModeEXT(0x800A)
    comptime FUNC_SUBTRACT_EXT = BlendEquationModeEXT(0x800A)
    comptime FUNC_REVERSE_SUBTRACT = BlendEquationModeEXT(0x800B)
    comptime FUNC_REVERSE_SUBTRACT_EXT = BlendEquationModeEXT(0x800B)
    comptime ALPHA_MIN_SGIX = BlendEquationModeEXT(0x8320)
    comptime ALPHA_MAX_SGIX = BlendEquationModeEXT(0x8321)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct BlendingFactor(Intable):
    var value: GLenum

    comptime ZERO = BlendingFactor(0)
    comptime ONE = BlendingFactor(1)
    comptime SRC_COLOR = BlendingFactor(0x0300)
    comptime ONE_MINUS_SRC_COLOR = BlendingFactor(0x0301)
    comptime SRC_ALPHA = BlendingFactor(0x0302)
    comptime ONE_MINUS_SRC_ALPHA = BlendingFactor(0x0303)
    comptime DST_ALPHA = BlendingFactor(0x0304)
    comptime ONE_MINUS_DST_ALPHA = BlendingFactor(0x0305)
    comptime DST_COLOR = BlendingFactor(0x0306)
    comptime ONE_MINUS_DST_COLOR = BlendingFactor(0x0307)
    comptime SRC_ALPHA_SATURATE = BlendingFactor(0x0308)
    comptime CONSTANT_COLOR = BlendingFactor(0x8001)
    comptime ONE_MINUS_CONSTANT_COLOR = BlendingFactor(0x8002)
    comptime CONSTANT_ALPHA = BlendingFactor(0x8003)
    comptime ONE_MINUS_CONSTANT_ALPHA = BlendingFactor(0x8004)
    comptime SRC1_ALPHA = BlendingFactor(0x8589)
    comptime SRC1_COLOR = BlendingFactor(0x88F9)
    comptime ONE_MINUS_SRC1_COLOR = BlendingFactor(0x88FA)
    comptime ONE_MINUS_SRC1_ALPHA = BlendingFactor(0x88FB)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct BlitFramebufferFilter(Intable):
    var value: GLenum

    comptime NEAREST = BlitFramebufferFilter(0x2600)
    comptime LINEAR = BlitFramebufferFilter(0x2601)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct Buffer(Intable):
    var value: GLenum

    comptime COLOR = Buffer(0x1800)
    comptime DEPTH = Buffer(0x1801)
    comptime STENCIL = Buffer(0x1802)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct BufferAccessARB(Intable):
    var value: GLenum

    comptime READ_ONLY = BufferAccessARB(0x88B8)
    comptime WRITE_ONLY = BufferAccessARB(0x88B9)
    comptime READ_WRITE = BufferAccessARB(0x88BA)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct BufferPNameARB(Intable):
    var value: GLenum

    comptime BUFFER_IMMUTABLE_STORAGE = BufferPNameARB(0x821F)
    comptime BUFFER_STORAGE_FLAGS = BufferPNameARB(0x8220)
    comptime BUFFER_SIZE = BufferPNameARB(0x8764)
    comptime BUFFER_SIZE_ARB = BufferPNameARB(0x8764)
    comptime BUFFER_USAGE = BufferPNameARB(0x8765)
    comptime BUFFER_USAGE_ARB = BufferPNameARB(0x8765)
    comptime BUFFER_ACCESS = BufferPNameARB(0x88BB)
    comptime BUFFER_ACCESS_ARB = BufferPNameARB(0x88BB)
    comptime BUFFER_MAPPED = BufferPNameARB(0x88BC)
    comptime BUFFER_MAPPED_ARB = BufferPNameARB(0x88BC)
    comptime BUFFER_ACCESS_FLAGS = BufferPNameARB(0x911F)
    comptime BUFFER_MAP_LENGTH = BufferPNameARB(0x9120)
    comptime BUFFER_MAP_OFFSET = BufferPNameARB(0x9121)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct BufferPointerNameARB(Intable):
    var value: GLenum

    comptime BUFFER_MAP_POINTER = BufferPointerNameARB(0x88BD)
    comptime BUFFER_MAP_POINTER_ARB = BufferPointerNameARB(0x88BD)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct BufferStorageMask(Intable):
    var value: GLbitfield

    comptime DYNAMIC_STORAGE_BIT = BufferStorageMask(0x0100)
    comptime DYNAMIC_STORAGE_BIT_EXT = BufferStorageMask(0x0100)
    comptime CLIENT_STORAGE_BIT = BufferStorageMask(0x0200)
    comptime CLIENT_STORAGE_BIT_EXT = BufferStorageMask(0x0200)
    comptime SPARSE_STORAGE_BIT_ARB = BufferStorageMask(0x0400)
    comptime LGPU_SEPARATE_STORAGE_BIT_NVX = BufferStorageMask(0x0800)
    comptime PER_GPU_STORAGE_BIT_NV = BufferStorageMask(0x0800)
    comptime EXTERNAL_STORAGE_BIT_NVX = BufferStorageMask(0x2000)
    comptime MAP_READ_BIT = BufferStorageMask(0x0001)
    comptime MAP_READ_BIT_EXT = BufferStorageMask(0x0001)
    comptime MAP_WRITE_BIT = BufferStorageMask(0x0002)
    comptime MAP_WRITE_BIT_EXT = BufferStorageMask(0x0002)
    comptime MAP_PERSISTENT_BIT = BufferStorageMask(0x0040)
    comptime MAP_PERSISTENT_BIT_EXT = BufferStorageMask(0x0040)
    comptime MAP_COHERENT_BIT = BufferStorageMask(0x0080)
    comptime MAP_COHERENT_BIT_EXT = BufferStorageMask(0x0080)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)

    @always_inline
    fn __or__(lhs, rhs: Self) -> Self:
        return Self(lhs.value | rhs.value)


@fieldwise_init
@register_passable("trivial")
struct BufferStorageTarget(Intable):
    var value: GLenum

    comptime ARRAY_BUFFER = BufferStorageTarget(0x8892)
    comptime ELEMENT_ARRAY_BUFFER = BufferStorageTarget(0x8893)
    comptime PIXEL_PACK_BUFFER = BufferStorageTarget(0x88EB)
    comptime PIXEL_UNPACK_BUFFER = BufferStorageTarget(0x88EC)
    comptime UNIFORM_BUFFER = BufferStorageTarget(0x8A11)
    comptime TEXTURE_BUFFER = BufferStorageTarget(0x8C2A)
    comptime TRANSFORM_FEEDBACK_BUFFER = BufferStorageTarget(0x8C8E)
    comptime COPY_READ_BUFFER = BufferStorageTarget(0x8F36)
    comptime COPY_WRITE_BUFFER = BufferStorageTarget(0x8F37)
    comptime DRAW_INDIRECT_BUFFER = BufferStorageTarget(0x8F3F)
    comptime SHADER_STORAGE_BUFFER = BufferStorageTarget(0x90D2)
    comptime DISPATCH_INDIRECT_BUFFER = BufferStorageTarget(0x90EE)
    comptime QUERY_BUFFER = BufferStorageTarget(0x9192)
    comptime ATOMIC_COUNTER_BUFFER = BufferStorageTarget(0x92C0)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct BufferTargetARB(Intable):
    var value: GLenum

    comptime PARAMETER_BUFFER = BufferTargetARB(0x80EE)
    comptime ARRAY_BUFFER = BufferTargetARB(0x8892)
    comptime ELEMENT_ARRAY_BUFFER = BufferTargetARB(0x8893)
    comptime PIXEL_PACK_BUFFER = BufferTargetARB(0x88EB)
    comptime PIXEL_UNPACK_BUFFER = BufferTargetARB(0x88EC)
    comptime UNIFORM_BUFFER = BufferTargetARB(0x8A11)
    comptime TEXTURE_BUFFER = BufferTargetARB(0x8C2A)
    comptime TRANSFORM_FEEDBACK_BUFFER = BufferTargetARB(0x8C8E)
    comptime COPY_READ_BUFFER = BufferTargetARB(0x8F36)
    comptime COPY_WRITE_BUFFER = BufferTargetARB(0x8F37)
    comptime DRAW_INDIRECT_BUFFER = BufferTargetARB(0x8F3F)
    comptime SHADER_STORAGE_BUFFER = BufferTargetARB(0x90D2)
    comptime DISPATCH_INDIRECT_BUFFER = BufferTargetARB(0x90EE)
    comptime QUERY_BUFFER = BufferTargetARB(0x9192)
    comptime ATOMIC_COUNTER_BUFFER = BufferTargetARB(0x92C0)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct BufferUsageARB(Intable):
    var value: GLenum

    comptime STREAM_DRAW = BufferUsageARB(0x88E0)
    comptime STREAM_READ = BufferUsageARB(0x88E1)
    comptime STREAM_COPY = BufferUsageARB(0x88E2)
    comptime STATIC_DRAW = BufferUsageARB(0x88E4)
    comptime STATIC_READ = BufferUsageARB(0x88E5)
    comptime STATIC_COPY = BufferUsageARB(0x88E6)
    comptime DYNAMIC_DRAW = BufferUsageARB(0x88E8)
    comptime DYNAMIC_READ = BufferUsageARB(0x88E9)
    comptime DYNAMIC_COPY = BufferUsageARB(0x88EA)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct ClampColorModeARB(Intable):
    var value: GLenum

    comptime FALSE = ClampColorModeARB(0)
    comptime TRUE = ClampColorModeARB(1)
    comptime FIXED_ONLY = ClampColorModeARB(0x891D)
    comptime FIXED_ONLY_ARB = ClampColorModeARB(0x891D)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct ClampColorTargetARB(Intable):
    var value: GLenum

    comptime CLAMP_VERTEX_COLOR_ARB = ClampColorTargetARB(0x891A)
    comptime CLAMP_FRAGMENT_COLOR_ARB = ClampColorTargetARB(0x891B)
    comptime CLAMP_READ_COLOR = ClampColorTargetARB(0x891C)
    comptime CLAMP_READ_COLOR_ARB = ClampColorTargetARB(0x891C)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct ClearBufferMask(Intable):
    var value: GLbitfield

    comptime DEPTH_BUFFER_BIT = ClearBufferMask(0x00000100)
    comptime ACCUM_BUFFER_BIT = ClearBufferMask(0x00000200)
    comptime STENCIL_BUFFER_BIT = ClearBufferMask(0x00000400)
    comptime COLOR_BUFFER_BIT = ClearBufferMask(0x00004000)
    comptime COVERAGE_BUFFER_BIT_NV = ClearBufferMask(0x00008000)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)

    @always_inline
    fn __or__(lhs, rhs: Self) -> Self:
        return Self(lhs.value | rhs.value)


@fieldwise_init
@register_passable("trivial")
struct ClipControlDepth(Intable):
    var value: GLenum

    comptime NEGATIVE_ONE_TO_ONE = ClipControlDepth(0x935E)
    comptime ZERO_TO_ONE = ClipControlDepth(0x935F)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct ClipControlOrigin(Intable):
    var value: GLenum

    comptime LOWER_LEFT = ClipControlOrigin(0x8CA1)
    comptime UPPER_LEFT = ClipControlOrigin(0x8CA2)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct ColorBuffer(Intable):
    var value: GLenum

    comptime NONE = ColorBuffer(0)
    comptime FRONT_LEFT = ColorBuffer(0x0400)
    comptime FRONT_RIGHT = ColorBuffer(0x0401)
    comptime BACK_LEFT = ColorBuffer(0x0402)
    comptime BACK_RIGHT = ColorBuffer(0x0403)
    comptime FRONT = ColorBuffer(0x0404)
    comptime BACK = ColorBuffer(0x0405)
    comptime LEFT = ColorBuffer(0x0406)
    comptime RIGHT = ColorBuffer(0x0407)
    comptime FRONT_AND_BACK = ColorBuffer(0x0408)
    comptime COLOR_ATTACHMENT0 = ColorBuffer(0x8CE0)
    comptime COLOR_ATTACHMENT1 = ColorBuffer(0x8CE1)
    comptime COLOR_ATTACHMENT2 = ColorBuffer(0x8CE2)
    comptime COLOR_ATTACHMENT3 = ColorBuffer(0x8CE3)
    comptime COLOR_ATTACHMENT4 = ColorBuffer(0x8CE4)
    comptime COLOR_ATTACHMENT5 = ColorBuffer(0x8CE5)
    comptime COLOR_ATTACHMENT6 = ColorBuffer(0x8CE6)
    comptime COLOR_ATTACHMENT7 = ColorBuffer(0x8CE7)
    comptime COLOR_ATTACHMENT8 = ColorBuffer(0x8CE8)
    comptime COLOR_ATTACHMENT9 = ColorBuffer(0x8CE9)
    comptime COLOR_ATTACHMENT10 = ColorBuffer(0x8CEA)
    comptime COLOR_ATTACHMENT11 = ColorBuffer(0x8CEB)
    comptime COLOR_ATTACHMENT12 = ColorBuffer(0x8CEC)
    comptime COLOR_ATTACHMENT13 = ColorBuffer(0x8CED)
    comptime COLOR_ATTACHMENT14 = ColorBuffer(0x8CEE)
    comptime COLOR_ATTACHMENT15 = ColorBuffer(0x8CEF)
    comptime COLOR_ATTACHMENT16 = ColorBuffer(0x8CF0)
    comptime COLOR_ATTACHMENT17 = ColorBuffer(0x8CF1)
    comptime COLOR_ATTACHMENT18 = ColorBuffer(0x8CF2)
    comptime COLOR_ATTACHMENT19 = ColorBuffer(0x8CF3)
    comptime COLOR_ATTACHMENT20 = ColorBuffer(0x8CF4)
    comptime COLOR_ATTACHMENT21 = ColorBuffer(0x8CF5)
    comptime COLOR_ATTACHMENT22 = ColorBuffer(0x8CF6)
    comptime COLOR_ATTACHMENT23 = ColorBuffer(0x8CF7)
    comptime COLOR_ATTACHMENT24 = ColorBuffer(0x8CF8)
    comptime COLOR_ATTACHMENT25 = ColorBuffer(0x8CF9)
    comptime COLOR_ATTACHMENT26 = ColorBuffer(0x8CFA)
    comptime COLOR_ATTACHMENT27 = ColorBuffer(0x8CFB)
    comptime COLOR_ATTACHMENT28 = ColorBuffer(0x8CFC)
    comptime COLOR_ATTACHMENT29 = ColorBuffer(0x8CFD)
    comptime COLOR_ATTACHMENT30 = ColorBuffer(0x8CFE)
    comptime COLOR_ATTACHMENT31 = ColorBuffer(0x8CFF)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct ColorPointerType(Intable):
    var value: GLenum

    comptime BYTE = ColorPointerType(0x1400)
    comptime UNSIGNED_BYTE = ColorPointerType(0x1401)
    comptime SHORT = ColorPointerType(0x1402)
    comptime UNSIGNED_SHORT = ColorPointerType(0x1403)
    comptime INT = ColorPointerType(0x1404)
    comptime UNSIGNED_INT = ColorPointerType(0x1405)
    comptime FLOAT = ColorPointerType(0x1406)
    comptime DOUBLE = ColorPointerType(0x140A)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct ColorTableTarget(Intable):
    var value: GLenum

    comptime COLOR_TABLE = ColorTableTarget(0x80D0)
    comptime POST_CONVOLUTION_COLOR_TABLE = ColorTableTarget(0x80D1)
    comptime POST_COLOR_MATRIX_COLOR_TABLE = ColorTableTarget(0x80D2)
    comptime PROXY_COLOR_TABLE = ColorTableTarget(0x80D3)
    comptime PROXY_POST_CONVOLUTION_COLOR_TABLE = ColorTableTarget(0x80D4)
    comptime PROXY_POST_COLOR_MATRIX_COLOR_TABLE = ColorTableTarget(0x80D5)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct ConditionalRenderMode(Intable):
    var value: GLenum

    comptime QUERY_WAIT = ConditionalRenderMode(0x8E13)
    comptime QUERY_NO_WAIT = ConditionalRenderMode(0x8E14)
    comptime QUERY_BY_REGION_WAIT = ConditionalRenderMode(0x8E15)
    comptime QUERY_BY_REGION_NO_WAIT = ConditionalRenderMode(0x8E16)
    comptime QUERY_WAIT_INVERTED = ConditionalRenderMode(0x8E17)
    comptime QUERY_NO_WAIT_INVERTED = ConditionalRenderMode(0x8E18)
    comptime QUERY_BY_REGION_WAIT_INVERTED = ConditionalRenderMode(0x8E19)
    comptime QUERY_BY_REGION_NO_WAIT_INVERTED = ConditionalRenderMode(0x8E1A)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct ContextFlagMask(Intable):
    var value: GLenum

    comptime CONTEXT_FLAG_FORWARD_COMPATIBLE_BIT = ContextFlagMask(0x00000001)
    comptime CONTEXT_FLAG_DEBUG_BIT = ContextFlagMask(0x00000002)
    comptime CONTEXT_FLAG_DEBUG_BIT_KHR = ContextFlagMask(0x00000002)
    comptime CONTEXT_FLAG_ROBUST_ACCESS_BIT = ContextFlagMask(0x00000004)
    comptime CONTEXT_FLAG_ROBUST_ACCESS_BIT_ARB = ContextFlagMask(0x00000004)
    comptime CONTEXT_FLAG_NO_ERROR_BIT = ContextFlagMask(0x00000008)
    comptime CONTEXT_FLAG_NO_ERROR_BIT_KHR = ContextFlagMask(0x00000008)
    comptime CONTEXT_FLAG_PROTECTED_CONTENT_BIT_EXT = ContextFlagMask(0x00000010)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct ContextProfileMask(Intable):
    var value: GLenum

    comptime CONTEXT_CORE_PROFILE_BIT = ContextProfileMask(0x00000001)
    comptime CONTEXT_COMPATIBILITY_PROFILE_BIT = ContextProfileMask(0x00000002)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct ConvolutionTarget(Intable):
    var value: GLenum

    comptime CONVOLUTION_1D = ConvolutionTarget(0x8010)
    comptime CONVOLUTION_2D = ConvolutionTarget(0x8011)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct ConvolutionTargetEXT(Intable):
    var value: GLenum

    comptime CONVOLUTION_1D = ConvolutionTargetEXT(0x8010)
    comptime CONVOLUTION_1D_EXT = ConvolutionTargetEXT(0x8010)
    comptime CONVOLUTION_2D = ConvolutionTargetEXT(0x8011)
    comptime CONVOLUTION_2D_EXT = ConvolutionTargetEXT(0x8011)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct CopyBufferSubDataTarget(Intable):
    var value: GLenum

    comptime ARRAY_BUFFER = CopyBufferSubDataTarget(0x8892)
    comptime ELEMENT_ARRAY_BUFFER = CopyBufferSubDataTarget(0x8893)
    comptime PIXEL_PACK_BUFFER = CopyBufferSubDataTarget(0x88EB)
    comptime PIXEL_UNPACK_BUFFER = CopyBufferSubDataTarget(0x88EC)
    comptime UNIFORM_BUFFER = CopyBufferSubDataTarget(0x8A11)
    comptime TEXTURE_BUFFER = CopyBufferSubDataTarget(0x8C2A)
    comptime TRANSFORM_FEEDBACK_BUFFER = CopyBufferSubDataTarget(0x8C8E)
    comptime COPY_READ_BUFFER = CopyBufferSubDataTarget(0x8F36)
    comptime COPY_WRITE_BUFFER = CopyBufferSubDataTarget(0x8F37)
    comptime DRAW_INDIRECT_BUFFER = CopyBufferSubDataTarget(0x8F3F)
    comptime SHADER_STORAGE_BUFFER = CopyBufferSubDataTarget(0x90D2)
    comptime DISPATCH_INDIRECT_BUFFER = CopyBufferSubDataTarget(0x90EE)
    comptime QUERY_BUFFER = CopyBufferSubDataTarget(0x9192)
    comptime ATOMIC_COUNTER_BUFFER = CopyBufferSubDataTarget(0x92C0)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct CopyImageSubDataTarget(Intable):
    var value: GLenum

    comptime TEXTURE_1D = CopyImageSubDataTarget(0x0DE0)
    comptime TEXTURE_2D = CopyImageSubDataTarget(0x0DE1)
    comptime TEXTURE_3D = CopyImageSubDataTarget(0x806F)
    comptime TEXTURE_RECTANGLE = CopyImageSubDataTarget(0x84F5)
    comptime TEXTURE_CUBE_MAP = CopyImageSubDataTarget(0x8513)
    comptime TEXTURE_1D_ARRAY = CopyImageSubDataTarget(0x8C18)
    comptime TEXTURE_2D_ARRAY = CopyImageSubDataTarget(0x8C1A)
    comptime RENDERBUFFER = CopyImageSubDataTarget(0x8D41)
    comptime TEXTURE_CUBE_MAP_ARRAY = CopyImageSubDataTarget(0x9009)
    comptime TEXTURE_2D_MULTISAMPLE = CopyImageSubDataTarget(0x9100)
    comptime TEXTURE_2D_MULTISAMPLE_ARRAY = CopyImageSubDataTarget(0x9102)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct DebugSeverity(Intable):
    var value: GLenum

    comptime DONT_CARE = DebugSeverity(0x1100)
    comptime DEBUG_SEVERITY_NOTIFICATION = DebugSeverity(0x826B)
    comptime DEBUG_SEVERITY_HIGH = DebugSeverity(0x9146)
    comptime DEBUG_SEVERITY_MEDIUM = DebugSeverity(0x9147)
    comptime DEBUG_SEVERITY_LOW = DebugSeverity(0x9148)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct DebugSource(Intable):
    var value: GLenum

    comptime DONT_CARE = DebugSource(0x1100)
    comptime DEBUG_SOURCE_API = DebugSource(0x8246)
    comptime DEBUG_SOURCE_WINDOW_SYSTEM = DebugSource(0x8247)
    comptime DEBUG_SOURCE_SHADER_COMPILER = DebugSource(0x8248)
    comptime DEBUG_SOURCE_THIRD_PARTY = DebugSource(0x8249)
    comptime DEBUG_SOURCE_APPLICATION = DebugSource(0x824A)
    comptime DEBUG_SOURCE_OTHER = DebugSource(0x824B)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct DebugType(Intable):
    var value: GLenum

    comptime DONT_CARE = DebugType(0x1100)
    comptime DEBUG_TYPE_ERROR = DebugType(0x824C)
    comptime DEBUG_TYPE_DEPRECATED_BEHAVIOR = DebugType(0x824D)
    comptime DEBUG_TYPE_UNDEFINED_BEHAVIOR = DebugType(0x824E)
    comptime DEBUG_TYPE_PORTABILITY = DebugType(0x824F)
    comptime DEBUG_TYPE_PERFORMANCE = DebugType(0x8250)
    comptime DEBUG_TYPE_OTHER = DebugType(0x8251)
    comptime DEBUG_TYPE_MARKER = DebugType(0x8268)
    comptime DEBUG_TYPE_PUSH_GROUP = DebugType(0x8269)
    comptime DEBUG_TYPE_POP_GROUP = DebugType(0x826A)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct DepthFunction(Intable):
    var value: GLenum

    comptime NEVER = DepthFunction(0x0200)
    comptime LESS = DepthFunction(0x0201)
    comptime EQUAL = DepthFunction(0x0202)
    comptime LEQUAL = DepthFunction(0x0203)
    comptime GREATER = DepthFunction(0x0204)
    comptime NOTEQUAL = DepthFunction(0x0205)
    comptime GEQUAL = DepthFunction(0x0206)
    comptime ALWAYS = DepthFunction(0x0207)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct DepthStencilTextureMode(Intable):
    var value: GLenum

    comptime STENCIL_INDEX = DepthStencilTextureMode(0x1901)
    comptime DEPTH_COMPONENT = DepthStencilTextureMode(0x1902)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct DrawBufferMode(Intable):
    var value: GLenum

    comptime NONE = DrawBufferMode(0)
    comptime NONE_OES = DrawBufferMode(0)
    comptime FRONT_LEFT = DrawBufferMode(0x0400)
    comptime FRONT_RIGHT = DrawBufferMode(0x0401)
    comptime BACK_LEFT = DrawBufferMode(0x0402)
    comptime BACK_RIGHT = DrawBufferMode(0x0403)
    comptime FRONT = DrawBufferMode(0x0404)
    comptime BACK = DrawBufferMode(0x0405)
    comptime LEFT = DrawBufferMode(0x0406)
    comptime RIGHT = DrawBufferMode(0x0407)
    comptime FRONT_AND_BACK = DrawBufferMode(0x0408)
    comptime AUX0 = DrawBufferMode(0x0409)
    comptime AUX1 = DrawBufferMode(0x040A)
    comptime AUX2 = DrawBufferMode(0x040B)
    comptime AUX3 = DrawBufferMode(0x040C)
    comptime COLOR_ATTACHMENT0 = DrawBufferMode(0x8CE0)
    comptime COLOR_ATTACHMENT0_NV = DrawBufferMode(0x8CE0)
    comptime COLOR_ATTACHMENT1 = DrawBufferMode(0x8CE1)
    comptime COLOR_ATTACHMENT1_NV = DrawBufferMode(0x8CE1)
    comptime COLOR_ATTACHMENT2 = DrawBufferMode(0x8CE2)
    comptime COLOR_ATTACHMENT2_NV = DrawBufferMode(0x8CE2)
    comptime COLOR_ATTACHMENT3 = DrawBufferMode(0x8CE3)
    comptime COLOR_ATTACHMENT3_NV = DrawBufferMode(0x8CE3)
    comptime COLOR_ATTACHMENT4 = DrawBufferMode(0x8CE4)
    comptime COLOR_ATTACHMENT4_NV = DrawBufferMode(0x8CE4)
    comptime COLOR_ATTACHMENT5 = DrawBufferMode(0x8CE5)
    comptime COLOR_ATTACHMENT5_NV = DrawBufferMode(0x8CE5)
    comptime COLOR_ATTACHMENT6 = DrawBufferMode(0x8CE6)
    comptime COLOR_ATTACHMENT6_NV = DrawBufferMode(0x8CE6)
    comptime COLOR_ATTACHMENT7 = DrawBufferMode(0x8CE7)
    comptime COLOR_ATTACHMENT7_NV = DrawBufferMode(0x8CE7)
    comptime COLOR_ATTACHMENT8 = DrawBufferMode(0x8CE8)
    comptime COLOR_ATTACHMENT8_NV = DrawBufferMode(0x8CE8)
    comptime COLOR_ATTACHMENT9 = DrawBufferMode(0x8CE9)
    comptime COLOR_ATTACHMENT9_NV = DrawBufferMode(0x8CE9)
    comptime COLOR_ATTACHMENT10 = DrawBufferMode(0x8CEA)
    comptime COLOR_ATTACHMENT10_NV = DrawBufferMode(0x8CEA)
    comptime COLOR_ATTACHMENT11 = DrawBufferMode(0x8CEB)
    comptime COLOR_ATTACHMENT11_NV = DrawBufferMode(0x8CEB)
    comptime COLOR_ATTACHMENT12 = DrawBufferMode(0x8CEC)
    comptime COLOR_ATTACHMENT12_NV = DrawBufferMode(0x8CEC)
    comptime COLOR_ATTACHMENT13 = DrawBufferMode(0x8CED)
    comptime COLOR_ATTACHMENT13_NV = DrawBufferMode(0x8CED)
    comptime COLOR_ATTACHMENT14 = DrawBufferMode(0x8CEE)
    comptime COLOR_ATTACHMENT14_NV = DrawBufferMode(0x8CEE)
    comptime COLOR_ATTACHMENT15 = DrawBufferMode(0x8CEF)
    comptime COLOR_ATTACHMENT15_NV = DrawBufferMode(0x8CEF)
    comptime COLOR_ATTACHMENT16 = DrawBufferMode(0x8CF0)
    comptime COLOR_ATTACHMENT17 = DrawBufferMode(0x8CF1)
    comptime COLOR_ATTACHMENT18 = DrawBufferMode(0x8CF2)
    comptime COLOR_ATTACHMENT19 = DrawBufferMode(0x8CF3)
    comptime COLOR_ATTACHMENT20 = DrawBufferMode(0x8CF4)
    comptime COLOR_ATTACHMENT21 = DrawBufferMode(0x8CF5)
    comptime COLOR_ATTACHMENT22 = DrawBufferMode(0x8CF6)
    comptime COLOR_ATTACHMENT23 = DrawBufferMode(0x8CF7)
    comptime COLOR_ATTACHMENT24 = DrawBufferMode(0x8CF8)
    comptime COLOR_ATTACHMENT25 = DrawBufferMode(0x8CF9)
    comptime COLOR_ATTACHMENT26 = DrawBufferMode(0x8CFA)
    comptime COLOR_ATTACHMENT27 = DrawBufferMode(0x8CFB)
    comptime COLOR_ATTACHMENT28 = DrawBufferMode(0x8CFC)
    comptime COLOR_ATTACHMENT29 = DrawBufferMode(0x8CFD)
    comptime COLOR_ATTACHMENT30 = DrawBufferMode(0x8CFE)
    comptime COLOR_ATTACHMENT31 = DrawBufferMode(0x8CFF)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct DrawElementsType(Intable):
    var value: GLenum

    comptime UNSIGNED_BYTE = DrawElementsType(0x1401)
    comptime UNSIGNED_SHORT = DrawElementsType(0x1403)
    comptime UNSIGNED_INT = DrawElementsType(0x1405)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct EnableCap(Intable):
    var value: GLenum

    comptime POINT_SMOOTH = EnableCap(0x0B10)
    comptime LINE_SMOOTH = EnableCap(0x0B20)
    comptime LINE_STIPPLE = EnableCap(0x0B24)
    comptime POLYGON_SMOOTH = EnableCap(0x0B41)
    comptime POLYGON_STIPPLE = EnableCap(0x0B42)
    comptime CULL_FACE = EnableCap(0x0B44)
    comptime LIGHTING = EnableCap(0x0B50)
    comptime COLOR_MATERIAL = EnableCap(0x0B57)
    comptime FOG = EnableCap(0x0B60)
    comptime DEPTH_TEST = EnableCap(0x0B71)
    comptime STENCIL_TEST = EnableCap(0x0B90)
    comptime NORMALIZE = EnableCap(0x0BA1)
    comptime ALPHA_TEST = EnableCap(0x0BC0)
    comptime DITHER = EnableCap(0x0BD0)
    comptime BLEND = EnableCap(0x0BE2)
    comptime INDEX_LOGIC_OP = EnableCap(0x0BF1)
    comptime COLOR_LOGIC_OP = EnableCap(0x0BF2)
    comptime SCISSOR_TEST = EnableCap(0x0C11)
    comptime TEXTURE_GEN_S = EnableCap(0x0C60)
    comptime TEXTURE_GEN_T = EnableCap(0x0C61)
    comptime TEXTURE_GEN_R = EnableCap(0x0C62)
    comptime TEXTURE_GEN_Q = EnableCap(0x0C63)
    comptime AUTO_NORMAL = EnableCap(0x0D80)
    comptime MAP1_COLOR_4 = EnableCap(0x0D90)
    comptime MAP1_INDEX = EnableCap(0x0D91)
    comptime MAP1_NORMAL = EnableCap(0x0D92)
    comptime MAP1_TEXTURE_COORD_1 = EnableCap(0x0D93)
    comptime MAP1_TEXTURE_COORD_2 = EnableCap(0x0D94)
    comptime MAP1_TEXTURE_COORD_3 = EnableCap(0x0D95)
    comptime MAP1_TEXTURE_COORD_4 = EnableCap(0x0D96)
    comptime MAP1_VERTEX_3 = EnableCap(0x0D97)
    comptime MAP1_VERTEX_4 = EnableCap(0x0D98)
    comptime MAP2_COLOR_4 = EnableCap(0x0DB0)
    comptime MAP2_INDEX = EnableCap(0x0DB1)
    comptime MAP2_NORMAL = EnableCap(0x0DB2)
    comptime MAP2_TEXTURE_COORD_1 = EnableCap(0x0DB3)
    comptime MAP2_TEXTURE_COORD_2 = EnableCap(0x0DB4)
    comptime MAP2_TEXTURE_COORD_3 = EnableCap(0x0DB5)
    comptime MAP2_TEXTURE_COORD_4 = EnableCap(0x0DB6)
    comptime MAP2_VERTEX_3 = EnableCap(0x0DB7)
    comptime MAP2_VERTEX_4 = EnableCap(0x0DB8)
    comptime TEXTURE_1D = EnableCap(0x0DE0)
    comptime TEXTURE_2D = EnableCap(0x0DE1)
    comptime POLYGON_OFFSET_POINT = EnableCap(0x2A01)
    comptime POLYGON_OFFSET_LINE = EnableCap(0x2A02)
    comptime CLIP_PLANE0 = EnableCap(0x3000)
    comptime CLIP_DISTANCE0 = EnableCap(0x3000)
    comptime CLIP_PLANE1 = EnableCap(0x3001)
    comptime CLIP_DISTANCE1 = EnableCap(0x3001)
    comptime CLIP_PLANE2 = EnableCap(0x3002)
    comptime CLIP_DISTANCE2 = EnableCap(0x3002)
    comptime CLIP_PLANE3 = EnableCap(0x3003)
    comptime CLIP_DISTANCE3 = EnableCap(0x3003)
    comptime CLIP_PLANE4 = EnableCap(0x3004)
    comptime CLIP_DISTANCE4 = EnableCap(0x3004)
    comptime CLIP_PLANE5 = EnableCap(0x3005)
    comptime CLIP_DISTANCE5 = EnableCap(0x3005)
    comptime CLIP_DISTANCE6 = EnableCap(0x3006)
    comptime CLIP_DISTANCE7 = EnableCap(0x3007)
    comptime LIGHT0 = EnableCap(0x4000)
    comptime LIGHT1 = EnableCap(0x4001)
    comptime LIGHT2 = EnableCap(0x4002)
    comptime LIGHT3 = EnableCap(0x4003)
    comptime LIGHT4 = EnableCap(0x4004)
    comptime LIGHT5 = EnableCap(0x4005)
    comptime LIGHT6 = EnableCap(0x4006)
    comptime LIGHT7 = EnableCap(0x4007)
    comptime CONVOLUTION_1D_EXT = EnableCap(0x8010)
    comptime CONVOLUTION_2D_EXT = EnableCap(0x8011)
    comptime SEPARABLE_2D_EXT = EnableCap(0x8012)
    comptime HISTOGRAM_EXT = EnableCap(0x8024)
    comptime MINMAX_EXT = EnableCap(0x802E)
    comptime POLYGON_OFFSET_FILL = EnableCap(0x8037)
    comptime RESCALE_NORMAL_EXT = EnableCap(0x803A)
    comptime TEXTURE_3D_EXT = EnableCap(0x806F)
    comptime VERTEX_ARRAY = EnableCap(0x8074)
    comptime NORMAL_ARRAY = EnableCap(0x8075)
    comptime COLOR_ARRAY = EnableCap(0x8076)
    comptime INDEX_ARRAY = EnableCap(0x8077)
    comptime TEXTURE_COORD_ARRAY = EnableCap(0x8078)
    comptime EDGE_FLAG_ARRAY = EnableCap(0x8079)
    comptime INTERLACE_SGIX = EnableCap(0x8094)
    comptime MULTISAMPLE = EnableCap(0x809D)
    comptime MULTISAMPLE_SGIS = EnableCap(0x809D)
    comptime SAMPLE_ALPHA_TO_COVERAGE = EnableCap(0x809E)
    comptime SAMPLE_ALPHA_TO_MASK_SGIS = EnableCap(0x809E)
    comptime SAMPLE_ALPHA_TO_ONE = EnableCap(0x809F)
    comptime SAMPLE_ALPHA_TO_ONE_SGIS = EnableCap(0x809F)
    comptime SAMPLE_COVERAGE = EnableCap(0x80A0)
    comptime SAMPLE_MASK_SGIS = EnableCap(0x80A0)
    comptime TEXTURE_COLOR_TABLE_SGI = EnableCap(0x80BC)
    comptime COLOR_TABLE = EnableCap(0x80D0)
    comptime COLOR_TABLE_SGI = EnableCap(0x80D0)
    comptime POST_CONVOLUTION_COLOR_TABLE = EnableCap(0x80D1)
    comptime POST_CONVOLUTION_COLOR_TABLE_SGI = EnableCap(0x80D1)
    comptime POST_COLOR_MATRIX_COLOR_TABLE = EnableCap(0x80D2)
    comptime POST_COLOR_MATRIX_COLOR_TABLE_SGI = EnableCap(0x80D2)
    comptime TEXTURE_4D_SGIS = EnableCap(0x8134)
    comptime PIXEL_TEX_GEN_SGIX = EnableCap(0x8139)
    comptime SPRITE_SGIX = EnableCap(0x8148)
    comptime REFERENCE_PLANE_SGIX = EnableCap(0x817D)
    comptime IR_INSTRUMENT1_SGIX = EnableCap(0x817F)
    comptime CALLIGRAPHIC_FRAGMENT_SGIX = EnableCap(0x8183)
    comptime FRAMEZOOM_SGIX = EnableCap(0x818B)
    comptime FOG_OFFSET_SGIX = EnableCap(0x8198)
    comptime SHARED_TEXTURE_PALETTE_EXT = EnableCap(0x81FB)
    comptime DEBUG_OUTPUT_SYNCHRONOUS = EnableCap(0x8242)
    comptime ASYNC_HISTOGRAM_SGIX = EnableCap(0x832C)
    comptime PIXEL_TEXTURE_SGIS = EnableCap(0x8353)
    comptime ASYNC_TEX_IMAGE_SGIX = EnableCap(0x835C)
    comptime ASYNC_DRAW_PIXELS_SGIX = EnableCap(0x835D)
    comptime ASYNC_READ_PIXELS_SGIX = EnableCap(0x835E)
    comptime FRAGMENT_LIGHTING_SGIX = EnableCap(0x8400)
    comptime FRAGMENT_COLOR_MATERIAL_SGIX = EnableCap(0x8401)
    comptime FRAGMENT_LIGHT0_SGIX = EnableCap(0x840C)
    comptime FRAGMENT_LIGHT1_SGIX = EnableCap(0x840D)
    comptime FRAGMENT_LIGHT2_SGIX = EnableCap(0x840E)
    comptime FRAGMENT_LIGHT3_SGIX = EnableCap(0x840F)
    comptime FRAGMENT_LIGHT4_SGIX = EnableCap(0x8410)
    comptime FRAGMENT_LIGHT5_SGIX = EnableCap(0x8411)
    comptime FRAGMENT_LIGHT6_SGIX = EnableCap(0x8412)
    comptime FRAGMENT_LIGHT7_SGIX = EnableCap(0x8413)
    comptime TEXTURE_RECTANGLE = EnableCap(0x84F5)
    comptime TEXTURE_RECTANGLE_ARB = EnableCap(0x84F5)
    comptime TEXTURE_RECTANGLE_NV = EnableCap(0x84F5)
    comptime TEXTURE_CUBE_MAP = EnableCap(0x8513)
    comptime TEXTURE_CUBE_MAP_ARB = EnableCap(0x8513)
    comptime TEXTURE_CUBE_MAP_EXT = EnableCap(0x8513)
    comptime TEXTURE_CUBE_MAP_OES = EnableCap(0x8513)
    comptime PROGRAM_POINT_SIZE = EnableCap(0x8642)
    comptime DEPTH_CLAMP = EnableCap(0x864F)
    comptime TEXTURE_CUBE_MAP_SEAMLESS = EnableCap(0x884F)
    comptime SAMPLE_SHADING = EnableCap(0x8C36)
    comptime RASTERIZER_DISCARD = EnableCap(0x8C89)
    comptime TEXTURE_GEN_STR_OES = EnableCap(0x8D60)
    comptime PRIMITIVE_RESTART_FIXED_INDEX = EnableCap(0x8D69)
    comptime FRAMEBUFFER_SRGB = EnableCap(0x8DB9)
    comptime SAMPLE_MASK = EnableCap(0x8E51)
    comptime FETCH_PER_SAMPLE_ARM = EnableCap(0x8F65)
    comptime PRIMITIVE_RESTART = EnableCap(0x8F9D)
    comptime DEBUG_OUTPUT = EnableCap(0x92E0)
    comptime SHADING_RATE_IMAGE_PER_PRIMITIVE_NV = EnableCap(0x95B1)
    comptime FRAMEBUFFER_FETCH_NONCOHERENT_QCOM = EnableCap(0x96A2)
    comptime SHADING_RATE_PRESERVE_ASPECT_RATIO_QCOM = EnableCap(0x96A5)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct ErrorCode(Intable):
    var value: GLenum

    comptime NO_ERROR = ErrorCode(0)
    comptime INVALID_ENUM = ErrorCode(0x0500)
    comptime INVALID_VALUE = ErrorCode(0x0501)
    comptime INVALID_OPERATION = ErrorCode(0x0502)
    comptime STACK_OVERFLOW = ErrorCode(0x0503)
    comptime STACK_UNDERFLOW = ErrorCode(0x0504)
    comptime OUT_OF_MEMORY = ErrorCode(0x0505)
    comptime INVALID_FRAMEBUFFER_OPERATION = ErrorCode(0x0506)
    comptime INVALID_FRAMEBUFFER_OPERATION_EXT = ErrorCode(0x0506)
    comptime INVALID_FRAMEBUFFER_OPERATION_OES = ErrorCode(0x0506)
    comptime TABLE_TOO_LARGE_EXT = ErrorCode(0x8031)
    comptime TABLE_TOO_LARGE = ErrorCode(0x8031)
    comptime TEXTURE_TOO_LARGE_EXT = ErrorCode(0x8065)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct FogCoordinatePointerType(Intable):
    var value: GLenum

    comptime FLOAT = FogCoordinatePointerType(0x1406)
    comptime DOUBLE = FogCoordinatePointerType(0x140A)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct FogMode(Intable):
    var value: GLenum

    comptime EXP = FogMode(0x0800)
    comptime EXP2 = FogMode(0x0801)
    comptime LINEAR = FogMode(0x2601)
    comptime FOG_FUNC_SGIS = FogMode(0x812A)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct FramebufferAttachment(Intable):
    var value: GLenum

    comptime DEPTH_STENCIL_ATTACHMENT = FramebufferAttachment(0x821A)
    comptime COLOR_ATTACHMENT0 = FramebufferAttachment(0x8CE0)
    comptime COLOR_ATTACHMENT1 = FramebufferAttachment(0x8CE1)
    comptime COLOR_ATTACHMENT2 = FramebufferAttachment(0x8CE2)
    comptime COLOR_ATTACHMENT3 = FramebufferAttachment(0x8CE3)
    comptime COLOR_ATTACHMENT4 = FramebufferAttachment(0x8CE4)
    comptime COLOR_ATTACHMENT5 = FramebufferAttachment(0x8CE5)
    comptime COLOR_ATTACHMENT6 = FramebufferAttachment(0x8CE6)
    comptime COLOR_ATTACHMENT7 = FramebufferAttachment(0x8CE7)
    comptime COLOR_ATTACHMENT8 = FramebufferAttachment(0x8CE8)
    comptime COLOR_ATTACHMENT9 = FramebufferAttachment(0x8CE9)
    comptime COLOR_ATTACHMENT10 = FramebufferAttachment(0x8CEA)
    comptime COLOR_ATTACHMENT11 = FramebufferAttachment(0x8CEB)
    comptime COLOR_ATTACHMENT12 = FramebufferAttachment(0x8CEC)
    comptime COLOR_ATTACHMENT13 = FramebufferAttachment(0x8CED)
    comptime COLOR_ATTACHMENT14 = FramebufferAttachment(0x8CEE)
    comptime COLOR_ATTACHMENT15 = FramebufferAttachment(0x8CEF)
    comptime COLOR_ATTACHMENT16 = FramebufferAttachment(0x8CF0)
    comptime COLOR_ATTACHMENT17 = FramebufferAttachment(0x8CF1)
    comptime COLOR_ATTACHMENT18 = FramebufferAttachment(0x8CF2)
    comptime COLOR_ATTACHMENT19 = FramebufferAttachment(0x8CF3)
    comptime COLOR_ATTACHMENT20 = FramebufferAttachment(0x8CF4)
    comptime COLOR_ATTACHMENT21 = FramebufferAttachment(0x8CF5)
    comptime COLOR_ATTACHMENT22 = FramebufferAttachment(0x8CF6)
    comptime COLOR_ATTACHMENT23 = FramebufferAttachment(0x8CF7)
    comptime COLOR_ATTACHMENT24 = FramebufferAttachment(0x8CF8)
    comptime COLOR_ATTACHMENT25 = FramebufferAttachment(0x8CF9)
    comptime COLOR_ATTACHMENT26 = FramebufferAttachment(0x8CFA)
    comptime COLOR_ATTACHMENT27 = FramebufferAttachment(0x8CFB)
    comptime COLOR_ATTACHMENT28 = FramebufferAttachment(0x8CFC)
    comptime COLOR_ATTACHMENT29 = FramebufferAttachment(0x8CFD)
    comptime COLOR_ATTACHMENT30 = FramebufferAttachment(0x8CFE)
    comptime COLOR_ATTACHMENT31 = FramebufferAttachment(0x8CFF)
    comptime DEPTH_ATTACHMENT = FramebufferAttachment(0x8D00)
    comptime STENCIL_ATTACHMENT = FramebufferAttachment(0x8D20)
    comptime SHADING_RATE_ATTACHMENT_EXT = FramebufferAttachment(0x96D1)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct FramebufferAttachmentParameterName(Intable):
    var value: GLenum

    comptime FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING = FramebufferAttachmentParameterName(0x8210)
    comptime FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING_EXT = FramebufferAttachmentParameterName(0x8210)
    comptime FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE = FramebufferAttachmentParameterName(0x8211)
    comptime FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE_EXT = FramebufferAttachmentParameterName(0x8211)
    comptime FRAMEBUFFER_ATTACHMENT_RED_SIZE = FramebufferAttachmentParameterName(0x8212)
    comptime FRAMEBUFFER_ATTACHMENT_GREEN_SIZE = FramebufferAttachmentParameterName(0x8213)
    comptime FRAMEBUFFER_ATTACHMENT_BLUE_SIZE = FramebufferAttachmentParameterName(0x8214)
    comptime FRAMEBUFFER_ATTACHMENT_ALPHA_SIZE = FramebufferAttachmentParameterName(0x8215)
    comptime FRAMEBUFFER_ATTACHMENT_DEPTH_SIZE = FramebufferAttachmentParameterName(0x8216)
    comptime FRAMEBUFFER_ATTACHMENT_STENCIL_SIZE = FramebufferAttachmentParameterName(0x8217)
    comptime FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE = FramebufferAttachmentParameterName(0x8CD0)
    comptime FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE_EXT = FramebufferAttachmentParameterName(0x8CD0)
    comptime FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE_OES = FramebufferAttachmentParameterName(0x8CD0)
    comptime FRAMEBUFFER_ATTACHMENT_OBJECT_NAME = FramebufferAttachmentParameterName(0x8CD1)
    comptime FRAMEBUFFER_ATTACHMENT_OBJECT_NAME_EXT = FramebufferAttachmentParameterName(0x8CD1)
    comptime FRAMEBUFFER_ATTACHMENT_OBJECT_NAME_OES = FramebufferAttachmentParameterName(0x8CD1)
    comptime FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL = FramebufferAttachmentParameterName(0x8CD2)
    comptime FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL_EXT = FramebufferAttachmentParameterName(0x8CD2)
    comptime FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL_OES = FramebufferAttachmentParameterName(0x8CD2)
    comptime FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE = FramebufferAttachmentParameterName(0x8CD3)
    comptime FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE_EXT = FramebufferAttachmentParameterName(0x8CD3)
    comptime FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE_OES = FramebufferAttachmentParameterName(0x8CD3)
    comptime FRAMEBUFFER_ATTACHMENT_TEXTURE_3D_ZOFFSET_EXT = FramebufferAttachmentParameterName(0x8CD4)
    comptime FRAMEBUFFER_ATTACHMENT_TEXTURE_3D_ZOFFSET_OES = FramebufferAttachmentParameterName(0x8CD4)
    comptime FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER = FramebufferAttachmentParameterName(0x8CD4)
    comptime FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER_EXT = FramebufferAttachmentParameterName(0x8CD4)
    comptime FRAMEBUFFER_ATTACHMENT_TEXTURE_SAMPLES_EXT = FramebufferAttachmentParameterName(0x8D6C)
    comptime FRAMEBUFFER_ATTACHMENT_LAYERED = FramebufferAttachmentParameterName(0x8DA7)
    comptime FRAMEBUFFER_ATTACHMENT_LAYERED_ARB = FramebufferAttachmentParameterName(0x8DA7)
    comptime FRAMEBUFFER_ATTACHMENT_LAYERED_EXT = FramebufferAttachmentParameterName(0x8DA7)
    comptime FRAMEBUFFER_ATTACHMENT_LAYERED_OES = FramebufferAttachmentParameterName(0x8DA7)
    comptime FRAMEBUFFER_ATTACHMENT_TEXTURE_SCALE_IMG = FramebufferAttachmentParameterName(0x913F)
    comptime FRAMEBUFFER_ATTACHMENT_TEXTURE_NUM_VIEWS_OVR = FramebufferAttachmentParameterName(0x9630)
    comptime FRAMEBUFFER_ATTACHMENT_TEXTURE_BASE_VIEW_INDEX_OVR = FramebufferAttachmentParameterName(0x9632)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct FramebufferParameterName(Intable):
    var value: GLenum

    comptime FRAMEBUFFER_DEFAULT_WIDTH = FramebufferParameterName(0x9310)
    comptime FRAMEBUFFER_DEFAULT_HEIGHT = FramebufferParameterName(0x9311)
    comptime FRAMEBUFFER_DEFAULT_LAYERS = FramebufferParameterName(0x9312)
    comptime FRAMEBUFFER_DEFAULT_SAMPLES = FramebufferParameterName(0x9313)
    comptime FRAMEBUFFER_DEFAULT_FIXED_SAMPLE_LOCATIONS = FramebufferParameterName(0x9314)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct FramebufferStatus(Intable):
    var value: GLenum

    comptime FRAMEBUFFER_UNDEFINED = FramebufferStatus(0x8219)
    comptime FRAMEBUFFER_COMPLETE = FramebufferStatus(0x8CD5)
    comptime FRAMEBUFFER_INCOMPLETE_ATTACHMENT = FramebufferStatus(0x8CD6)
    comptime FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT = FramebufferStatus(0x8CD7)
    comptime FRAMEBUFFER_INCOMPLETE_DRAW_BUFFER = FramebufferStatus(0x8CDB)
    comptime FRAMEBUFFER_INCOMPLETE_READ_BUFFER = FramebufferStatus(0x8CDC)
    comptime FRAMEBUFFER_UNSUPPORTED = FramebufferStatus(0x8CDD)
    comptime FRAMEBUFFER_INCOMPLETE_MULTISAMPLE = FramebufferStatus(0x8D56)
    comptime FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS = FramebufferStatus(0x8DA8)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct FramebufferTarget(Intable):
    var value: GLenum

    comptime READ_FRAMEBUFFER = FramebufferTarget(0x8CA8)
    comptime DRAW_FRAMEBUFFER = FramebufferTarget(0x8CA9)
    comptime FRAMEBUFFER = FramebufferTarget(0x8D40)
    comptime FRAMEBUFFER_OES = FramebufferTarget(0x8D40)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct FrontFaceDirection(Intable):
    var value: GLenum

    comptime CW = FrontFaceDirection(0x0900)
    comptime CCW = FrontFaceDirection(0x0901)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct GetFramebufferParameter(Intable):
    var value: GLenum

    comptime DOUBLEBUFFER = GetFramebufferParameter(0x0C32)
    comptime STEREO = GetFramebufferParameter(0x0C33)
    comptime SAMPLE_BUFFERS = GetFramebufferParameter(0x80A8)
    comptime SAMPLES = GetFramebufferParameter(0x80A9)
    comptime IMPLEMENTATION_COLOR_READ_TYPE = GetFramebufferParameter(0x8B9A)
    comptime IMPLEMENTATION_COLOR_READ_FORMAT = GetFramebufferParameter(0x8B9B)
    comptime FRAMEBUFFER_DEFAULT_WIDTH = GetFramebufferParameter(0x9310)
    comptime FRAMEBUFFER_DEFAULT_HEIGHT = GetFramebufferParameter(0x9311)
    comptime FRAMEBUFFER_DEFAULT_LAYERS = GetFramebufferParameter(0x9312)
    comptime FRAMEBUFFER_DEFAULT_SAMPLES = GetFramebufferParameter(0x9313)
    comptime FRAMEBUFFER_DEFAULT_FIXED_SAMPLE_LOCATIONS = GetFramebufferParameter(0x9314)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct GetMultisamplePNameNV(Intable):
    var value: GLenum

    comptime SAMPLE_POSITION = GetMultisamplePNameNV(0x8E50)
    comptime SAMPLE_LOCATION_ARB = GetMultisamplePNameNV(0x8E50)
    comptime PROGRAMMABLE_SAMPLE_LOCATION_ARB = GetMultisamplePNameNV(0x9341)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct GetPName(Intable):
    var value: GLenum

    comptime CURRENT_COLOR = GetPName(0x0B00)
    comptime CURRENT_INDEX = GetPName(0x0B01)
    comptime CURRENT_NORMAL = GetPName(0x0B02)
    comptime CURRENT_TEXTURE_COORDS = GetPName(0x0B03)
    comptime CURRENT_RASTER_COLOR = GetPName(0x0B04)
    comptime CURRENT_RASTER_INDEX = GetPName(0x0B05)
    comptime CURRENT_RASTER_TEXTURE_COORDS = GetPName(0x0B06)
    comptime CURRENT_RASTER_POSITION = GetPName(0x0B07)
    comptime CURRENT_RASTER_POSITION_VALID = GetPName(0x0B08)
    comptime CURRENT_RASTER_DISTANCE = GetPName(0x0B09)
    comptime POINT_SMOOTH = GetPName(0x0B10)
    comptime POINT_SIZE = GetPName(0x0B11)
    comptime POINT_SIZE_RANGE = GetPName(0x0B12)
    comptime SMOOTH_POINT_SIZE_RANGE = GetPName(0x0B12)
    comptime POINT_SIZE_GRANULARITY = GetPName(0x0B13)
    comptime SMOOTH_POINT_SIZE_GRANULARITY = GetPName(0x0B13)
    comptime LINE_SMOOTH = GetPName(0x0B20)
    comptime LINE_WIDTH = GetPName(0x0B21)
    comptime LINE_WIDTH_RANGE = GetPName(0x0B22)
    comptime SMOOTH_LINE_WIDTH_RANGE = GetPName(0x0B22)
    comptime LINE_WIDTH_GRANULARITY = GetPName(0x0B23)
    comptime SMOOTH_LINE_WIDTH_GRANULARITY = GetPName(0x0B23)
    comptime LINE_STIPPLE = GetPName(0x0B24)
    comptime LINE_STIPPLE_PATTERN = GetPName(0x0B25)
    comptime LINE_STIPPLE_REPEAT = GetPName(0x0B26)
    comptime LIST_MODE = GetPName(0x0B30)
    comptime MAX_LIST_NESTING = GetPName(0x0B31)
    comptime LIST_BASE = GetPName(0x0B32)
    comptime LIST_INDEX = GetPName(0x0B33)
    comptime POLYGON_MODE = GetPName(0x0B40)
    comptime POLYGON_SMOOTH = GetPName(0x0B41)
    comptime POLYGON_STIPPLE = GetPName(0x0B42)
    comptime EDGE_FLAG = GetPName(0x0B43)
    comptime CULL_FACE = GetPName(0x0B44)
    comptime CULL_FACE_MODE = GetPName(0x0B45)
    comptime FRONT_FACE = GetPName(0x0B46)
    comptime LIGHTING = GetPName(0x0B50)
    comptime LIGHT_MODEL_LOCAL_VIEWER = GetPName(0x0B51)
    comptime LIGHT_MODEL_TWO_SIDE = GetPName(0x0B52)
    comptime LIGHT_MODEL_AMBIENT = GetPName(0x0B53)
    comptime SHADE_MODEL = GetPName(0x0B54)
    comptime COLOR_MATERIAL_FACE = GetPName(0x0B55)
    comptime COLOR_MATERIAL_PARAMETER = GetPName(0x0B56)
    comptime COLOR_MATERIAL = GetPName(0x0B57)
    comptime FOG = GetPName(0x0B60)
    comptime FOG_INDEX = GetPName(0x0B61)
    comptime FOG_DENSITY = GetPName(0x0B62)
    comptime FOG_START = GetPName(0x0B63)
    comptime FOG_END = GetPName(0x0B64)
    comptime FOG_MODE = GetPName(0x0B65)
    comptime FOG_COLOR = GetPName(0x0B66)
    comptime DEPTH_RANGE = GetPName(0x0B70)
    comptime DEPTH_TEST = GetPName(0x0B71)
    comptime DEPTH_WRITEMASK = GetPName(0x0B72)
    comptime DEPTH_CLEAR_VALUE = GetPName(0x0B73)
    comptime DEPTH_FUNC = GetPName(0x0B74)
    comptime ACCUM_CLEAR_VALUE = GetPName(0x0B80)
    comptime STENCIL_TEST = GetPName(0x0B90)
    comptime STENCIL_CLEAR_VALUE = GetPName(0x0B91)
    comptime STENCIL_FUNC = GetPName(0x0B92)
    comptime STENCIL_VALUE_MASK = GetPName(0x0B93)
    comptime STENCIL_FAIL = GetPName(0x0B94)
    comptime STENCIL_PASS_DEPTH_FAIL = GetPName(0x0B95)
    comptime STENCIL_PASS_DEPTH_PASS = GetPName(0x0B96)
    comptime STENCIL_REF = GetPName(0x0B97)
    comptime STENCIL_WRITEMASK = GetPName(0x0B98)
    comptime MATRIX_MODE = GetPName(0x0BA0)
    comptime NORMALIZE = GetPName(0x0BA1)
    comptime VIEWPORT = GetPName(0x0BA2)
    comptime MODELVIEW_STACK_DEPTH = GetPName(0x0BA3)
    comptime MODELVIEW0_STACK_DEPTH_EXT = GetPName(0x0BA3)
    comptime PROJECTION_STACK_DEPTH = GetPName(0x0BA4)
    comptime TEXTURE_STACK_DEPTH = GetPName(0x0BA5)
    comptime MODELVIEW_MATRIX = GetPName(0x0BA6)
    comptime MODELVIEW0_MATRIX_EXT = GetPName(0x0BA6)
    comptime PROJECTION_MATRIX = GetPName(0x0BA7)
    comptime TEXTURE_MATRIX = GetPName(0x0BA8)
    comptime ATTRIB_STACK_DEPTH = GetPName(0x0BB0)
    comptime CLIENT_ATTRIB_STACK_DEPTH = GetPName(0x0BB1)
    comptime ALPHA_TEST = GetPName(0x0BC0)
    comptime ALPHA_TEST_QCOM = GetPName(0x0BC0)
    comptime ALPHA_TEST_FUNC = GetPName(0x0BC1)
    comptime ALPHA_TEST_FUNC_QCOM = GetPName(0x0BC1)
    comptime ALPHA_TEST_REF = GetPName(0x0BC2)
    comptime ALPHA_TEST_REF_QCOM = GetPName(0x0BC2)
    comptime DITHER = GetPName(0x0BD0)
    comptime BLEND_DST = GetPName(0x0BE0)
    comptime BLEND_SRC = GetPName(0x0BE1)
    comptime BLEND = GetPName(0x0BE2)
    comptime LOGIC_OP_MODE = GetPName(0x0BF0)
    comptime INDEX_LOGIC_OP = GetPName(0x0BF1)
    comptime LOGIC_OP = GetPName(0x0BF1)
    comptime COLOR_LOGIC_OP = GetPName(0x0BF2)
    comptime AUX_BUFFERS = GetPName(0x0C00)
    comptime DRAW_BUFFER = GetPName(0x0C01)
    comptime DRAW_BUFFER_EXT = GetPName(0x0C01)
    comptime READ_BUFFER = GetPName(0x0C02)
    comptime READ_BUFFER_EXT = GetPName(0x0C02)
    comptime READ_BUFFER_NV = GetPName(0x0C02)
    comptime SCISSOR_BOX = GetPName(0x0C10)
    comptime SCISSOR_TEST = GetPName(0x0C11)
    comptime INDEX_CLEAR_VALUE = GetPName(0x0C20)
    comptime INDEX_WRITEMASK = GetPName(0x0C21)
    comptime COLOR_CLEAR_VALUE = GetPName(0x0C22)
    comptime COLOR_WRITEMASK = GetPName(0x0C23)
    comptime INDEX_MODE = GetPName(0x0C30)
    comptime RGBA_MODE = GetPName(0x0C31)
    comptime DOUBLEBUFFER = GetPName(0x0C32)
    comptime STEREO = GetPName(0x0C33)
    comptime RENDER_MODE = GetPName(0x0C40)
    comptime PERSPECTIVE_CORRECTION_HINT = GetPName(0x0C50)
    comptime POINT_SMOOTH_HINT = GetPName(0x0C51)
    comptime LINE_SMOOTH_HINT = GetPName(0x0C52)
    comptime POLYGON_SMOOTH_HINT = GetPName(0x0C53)
    comptime FOG_HINT = GetPName(0x0C54)
    comptime TEXTURE_GEN_S = GetPName(0x0C60)
    comptime TEXTURE_GEN_T = GetPName(0x0C61)
    comptime TEXTURE_GEN_R = GetPName(0x0C62)
    comptime TEXTURE_GEN_Q = GetPName(0x0C63)
    comptime PIXEL_MAP_I_TO_I_SIZE = GetPName(0x0CB0)
    comptime PIXEL_MAP_S_TO_S_SIZE = GetPName(0x0CB1)
    comptime PIXEL_MAP_I_TO_R_SIZE = GetPName(0x0CB2)
    comptime PIXEL_MAP_I_TO_G_SIZE = GetPName(0x0CB3)
    comptime PIXEL_MAP_I_TO_B_SIZE = GetPName(0x0CB4)
    comptime PIXEL_MAP_I_TO_A_SIZE = GetPName(0x0CB5)
    comptime PIXEL_MAP_R_TO_R_SIZE = GetPName(0x0CB6)
    comptime PIXEL_MAP_G_TO_G_SIZE = GetPName(0x0CB7)
    comptime PIXEL_MAP_B_TO_B_SIZE = GetPName(0x0CB8)
    comptime PIXEL_MAP_A_TO_A_SIZE = GetPName(0x0CB9)
    comptime UNPACK_SWAP_BYTES = GetPName(0x0CF0)
    comptime UNPACK_LSB_FIRST = GetPName(0x0CF1)
    comptime UNPACK_ROW_LENGTH = GetPName(0x0CF2)
    comptime UNPACK_SKIP_ROWS = GetPName(0x0CF3)
    comptime UNPACK_SKIP_PIXELS = GetPName(0x0CF4)
    comptime UNPACK_ALIGNMENT = GetPName(0x0CF5)
    comptime PACK_SWAP_BYTES = GetPName(0x0D00)
    comptime PACK_LSB_FIRST = GetPName(0x0D01)
    comptime PACK_ROW_LENGTH = GetPName(0x0D02)
    comptime PACK_ROW_LENGTH_NV = GetPName(0x0D02)
    comptime PACK_SKIP_ROWS = GetPName(0x0D03)
    comptime PACK_SKIP_ROWS_NV = GetPName(0x0D03)
    comptime PACK_SKIP_PIXELS = GetPName(0x0D04)
    comptime PACK_SKIP_PIXELS_NV = GetPName(0x0D04)
    comptime PACK_ALIGNMENT = GetPName(0x0D05)
    comptime MAP_COLOR = GetPName(0x0D10)
    comptime MAP_STENCIL = GetPName(0x0D11)
    comptime INDEX_SHIFT = GetPName(0x0D12)
    comptime INDEX_OFFSET = GetPName(0x0D13)
    comptime RED_SCALE = GetPName(0x0D14)
    comptime RED_BIAS = GetPName(0x0D15)
    comptime ZOOM_X = GetPName(0x0D16)
    comptime ZOOM_Y = GetPName(0x0D17)
    comptime GREEN_SCALE = GetPName(0x0D18)
    comptime GREEN_BIAS = GetPName(0x0D19)
    comptime BLUE_SCALE = GetPName(0x0D1A)
    comptime BLUE_BIAS = GetPName(0x0D1B)
    comptime ALPHA_SCALE = GetPName(0x0D1C)
    comptime ALPHA_BIAS = GetPName(0x0D1D)
    comptime DEPTH_SCALE = GetPName(0x0D1E)
    comptime DEPTH_BIAS = GetPName(0x0D1F)
    comptime MAX_EVAL_ORDER = GetPName(0x0D30)
    comptime MAX_LIGHTS = GetPName(0x0D31)
    comptime MAX_CLIP_PLANES = GetPName(0x0D32)
    comptime MAX_CLIP_DISTANCES = GetPName(0x0D32)
    comptime MAX_TEXTURE_SIZE = GetPName(0x0D33)
    comptime MAX_PIXEL_MAP_TABLE = GetPName(0x0D34)
    comptime MAX_ATTRIB_STACK_DEPTH = GetPName(0x0D35)
    comptime MAX_MODELVIEW_STACK_DEPTH = GetPName(0x0D36)
    comptime MAX_NAME_STACK_DEPTH = GetPName(0x0D37)
    comptime MAX_PROJECTION_STACK_DEPTH = GetPName(0x0D38)
    comptime MAX_TEXTURE_STACK_DEPTH = GetPName(0x0D39)
    comptime MAX_VIEWPORT_DIMS = GetPName(0x0D3A)
    comptime MAX_CLIENT_ATTRIB_STACK_DEPTH = GetPName(0x0D3B)
    comptime SUBPIXEL_BITS = GetPName(0x0D50)
    comptime INDEX_BITS = GetPName(0x0D51)
    comptime RED_BITS = GetPName(0x0D52)
    comptime GREEN_BITS = GetPName(0x0D53)
    comptime BLUE_BITS = GetPName(0x0D54)
    comptime ALPHA_BITS = GetPName(0x0D55)
    comptime DEPTH_BITS = GetPName(0x0D56)
    comptime STENCIL_BITS = GetPName(0x0D57)
    comptime ACCUM_RED_BITS = GetPName(0x0D58)
    comptime ACCUM_GREEN_BITS = GetPName(0x0D59)
    comptime ACCUM_BLUE_BITS = GetPName(0x0D5A)
    comptime ACCUM_ALPHA_BITS = GetPName(0x0D5B)
    comptime NAME_STACK_DEPTH = GetPName(0x0D70)
    comptime AUTO_NORMAL = GetPName(0x0D80)
    comptime MAP1_COLOR_4 = GetPName(0x0D90)
    comptime MAP1_INDEX = GetPName(0x0D91)
    comptime MAP1_NORMAL = GetPName(0x0D92)
    comptime MAP1_TEXTURE_COORD_1 = GetPName(0x0D93)
    comptime MAP1_TEXTURE_COORD_2 = GetPName(0x0D94)
    comptime MAP1_TEXTURE_COORD_3 = GetPName(0x0D95)
    comptime MAP1_TEXTURE_COORD_4 = GetPName(0x0D96)
    comptime MAP1_VERTEX_3 = GetPName(0x0D97)
    comptime MAP1_VERTEX_4 = GetPName(0x0D98)
    comptime MAP2_COLOR_4 = GetPName(0x0DB0)
    comptime MAP2_INDEX = GetPName(0x0DB1)
    comptime MAP2_NORMAL = GetPName(0x0DB2)
    comptime MAP2_TEXTURE_COORD_1 = GetPName(0x0DB3)
    comptime MAP2_TEXTURE_COORD_2 = GetPName(0x0DB4)
    comptime MAP2_TEXTURE_COORD_3 = GetPName(0x0DB5)
    comptime MAP2_TEXTURE_COORD_4 = GetPName(0x0DB6)
    comptime MAP2_VERTEX_3 = GetPName(0x0DB7)
    comptime MAP2_VERTEX_4 = GetPName(0x0DB8)
    comptime MAP1_GRID_DOMAIN = GetPName(0x0DD0)
    comptime MAP1_GRID_SEGMENTS = GetPName(0x0DD1)
    comptime MAP2_GRID_DOMAIN = GetPName(0x0DD2)
    comptime MAP2_GRID_SEGMENTS = GetPName(0x0DD3)
    comptime TEXTURE_1D = GetPName(0x0DE0)
    comptime TEXTURE_2D = GetPName(0x0DE1)
    comptime FEEDBACK_BUFFER_SIZE = GetPName(0x0DF1)
    comptime FEEDBACK_BUFFER_TYPE = GetPName(0x0DF2)
    comptime SELECTION_BUFFER_SIZE = GetPName(0x0DF4)
    comptime POLYGON_OFFSET_UNITS = GetPName(0x2A00)
    comptime POLYGON_OFFSET_POINT = GetPName(0x2A01)
    comptime POLYGON_OFFSET_LINE = GetPName(0x2A02)
    comptime CLIP_PLANE0 = GetPName(0x3000)
    comptime CLIP_PLANE1 = GetPName(0x3001)
    comptime CLIP_PLANE2 = GetPName(0x3002)
    comptime CLIP_PLANE3 = GetPName(0x3003)
    comptime CLIP_PLANE4 = GetPName(0x3004)
    comptime CLIP_PLANE5 = GetPName(0x3005)
    comptime LIGHT0 = GetPName(0x4000)
    comptime LIGHT1 = GetPName(0x4001)
    comptime LIGHT2 = GetPName(0x4002)
    comptime LIGHT3 = GetPName(0x4003)
    comptime LIGHT4 = GetPName(0x4004)
    comptime LIGHT5 = GetPName(0x4005)
    comptime LIGHT6 = GetPName(0x4006)
    comptime LIGHT7 = GetPName(0x4007)
    comptime BLEND_COLOR = GetPName(0x8005)
    comptime BLEND_COLOR_EXT = GetPName(0x8005)
    comptime BLEND_EQUATION = GetPName(0x8009)
    comptime BLEND_EQUATION_EXT = GetPName(0x8009)
    comptime BLEND_EQUATION_OES = GetPName(0x8009)
    comptime BLEND_EQUATION_RGB = GetPName(0x8009)
    comptime PACK_CMYK_HINT_EXT = GetPName(0x800E)
    comptime UNPACK_CMYK_HINT_EXT = GetPName(0x800F)
    comptime CONVOLUTION_1D_EXT = GetPName(0x8010)
    comptime CONVOLUTION_2D_EXT = GetPName(0x8011)
    comptime SEPARABLE_2D_EXT = GetPName(0x8012)
    comptime POST_CONVOLUTION_RED_SCALE_EXT = GetPName(0x801C)
    comptime POST_CONVOLUTION_GREEN_SCALE_EXT = GetPName(0x801D)
    comptime POST_CONVOLUTION_BLUE_SCALE_EXT = GetPName(0x801E)
    comptime POST_CONVOLUTION_ALPHA_SCALE_EXT = GetPName(0x801F)
    comptime POST_CONVOLUTION_RED_BIAS_EXT = GetPName(0x8020)
    comptime POST_CONVOLUTION_GREEN_BIAS_EXT = GetPName(0x8021)
    comptime POST_CONVOLUTION_BLUE_BIAS_EXT = GetPName(0x8022)
    comptime POST_CONVOLUTION_ALPHA_BIAS_EXT = GetPName(0x8023)
    comptime HISTOGRAM_EXT = GetPName(0x8024)
    comptime MINMAX_EXT = GetPName(0x802E)
    comptime POLYGON_OFFSET_FILL = GetPName(0x8037)
    comptime POLYGON_OFFSET_FACTOR = GetPName(0x8038)
    comptime POLYGON_OFFSET_BIAS_EXT = GetPName(0x8039)
    comptime RESCALE_NORMAL_EXT = GetPName(0x803A)
    comptime TEXTURE_BINDING_1D = GetPName(0x8068)
    comptime TEXTURE_BINDING_2D = GetPName(0x8069)
    comptime TEXTURE_3D_BINDING_EXT = GetPName(0x806A)
    comptime TEXTURE_BINDING_3D = GetPName(0x806A)
    comptime PACK_SKIP_IMAGES = GetPName(0x806B)
    comptime PACK_SKIP_IMAGES_EXT = GetPName(0x806B)
    comptime PACK_IMAGE_HEIGHT = GetPName(0x806C)
    comptime PACK_IMAGE_HEIGHT_EXT = GetPName(0x806C)
    comptime UNPACK_SKIP_IMAGES = GetPName(0x806D)
    comptime UNPACK_SKIP_IMAGES_EXT = GetPName(0x806D)
    comptime UNPACK_IMAGE_HEIGHT = GetPName(0x806E)
    comptime UNPACK_IMAGE_HEIGHT_EXT = GetPName(0x806E)
    comptime TEXTURE_3D_EXT = GetPName(0x806F)
    comptime MAX_3D_TEXTURE_SIZE = GetPName(0x8073)
    comptime MAX_3D_TEXTURE_SIZE_EXT = GetPName(0x8073)
    comptime VERTEX_ARRAY = GetPName(0x8074)
    comptime NORMAL_ARRAY = GetPName(0x8075)
    comptime COLOR_ARRAY = GetPName(0x8076)
    comptime INDEX_ARRAY = GetPName(0x8077)
    comptime TEXTURE_COORD_ARRAY = GetPName(0x8078)
    comptime EDGE_FLAG_ARRAY = GetPName(0x8079)
    comptime VERTEX_ARRAY_SIZE = GetPName(0x807A)
    comptime VERTEX_ARRAY_TYPE = GetPName(0x807B)
    comptime VERTEX_ARRAY_STRIDE = GetPName(0x807C)
    comptime VERTEX_ARRAY_COUNT_EXT = GetPName(0x807D)
    comptime NORMAL_ARRAY_TYPE = GetPName(0x807E)
    comptime NORMAL_ARRAY_STRIDE = GetPName(0x807F)
    comptime NORMAL_ARRAY_COUNT_EXT = GetPName(0x8080)
    comptime COLOR_ARRAY_SIZE = GetPName(0x8081)
    comptime COLOR_ARRAY_TYPE = GetPName(0x8082)
    comptime COLOR_ARRAY_STRIDE = GetPName(0x8083)
    comptime COLOR_ARRAY_COUNT_EXT = GetPName(0x8084)
    comptime INDEX_ARRAY_TYPE = GetPName(0x8085)
    comptime INDEX_ARRAY_STRIDE = GetPName(0x8086)
    comptime INDEX_ARRAY_COUNT_EXT = GetPName(0x8087)
    comptime TEXTURE_COORD_ARRAY_SIZE = GetPName(0x8088)
    comptime TEXTURE_COORD_ARRAY_TYPE = GetPName(0x8089)
    comptime TEXTURE_COORD_ARRAY_STRIDE = GetPName(0x808A)
    comptime TEXTURE_COORD_ARRAY_COUNT_EXT = GetPName(0x808B)
    comptime EDGE_FLAG_ARRAY_STRIDE = GetPName(0x808C)
    comptime EDGE_FLAG_ARRAY_COUNT_EXT = GetPName(0x808D)
    comptime INTERLACE_SGIX = GetPName(0x8094)
    comptime DETAIL_TEXTURE_2D_BINDING_SGIS = GetPName(0x8096)
    comptime MULTISAMPLE_SGIS = GetPName(0x809D)
    comptime SAMPLE_ALPHA_TO_MASK_SGIS = GetPName(0x809E)
    comptime SAMPLE_ALPHA_TO_ONE_SGIS = GetPName(0x809F)
    comptime SAMPLE_MASK_SGIS = GetPName(0x80A0)
    comptime SAMPLE_BUFFERS = GetPName(0x80A8)
    comptime SAMPLE_BUFFERS_SGIS = GetPName(0x80A8)
    comptime SAMPLES = GetPName(0x80A9)
    comptime SAMPLES_SGIS = GetPName(0x80A9)
    comptime SAMPLE_COVERAGE_VALUE = GetPName(0x80AA)
    comptime SAMPLE_MASK_VALUE_SGIS = GetPName(0x80AA)
    comptime SAMPLE_COVERAGE_INVERT = GetPName(0x80AB)
    comptime SAMPLE_MASK_INVERT_SGIS = GetPName(0x80AB)
    comptime SAMPLE_PATTERN_SGIS = GetPName(0x80AC)
    comptime COLOR_MATRIX_SGI = GetPName(0x80B1)
    comptime COLOR_MATRIX_STACK_DEPTH_SGI = GetPName(0x80B2)
    comptime MAX_COLOR_MATRIX_STACK_DEPTH_SGI = GetPName(0x80B3)
    comptime POST_COLOR_MATRIX_RED_SCALE_SGI = GetPName(0x80B4)
    comptime POST_COLOR_MATRIX_GREEN_SCALE_SGI = GetPName(0x80B5)
    comptime POST_COLOR_MATRIX_BLUE_SCALE_SGI = GetPName(0x80B6)
    comptime POST_COLOR_MATRIX_ALPHA_SCALE_SGI = GetPName(0x80B7)
    comptime POST_COLOR_MATRIX_RED_BIAS_SGI = GetPName(0x80B8)
    comptime POST_COLOR_MATRIX_GREEN_BIAS_SGI = GetPName(0x80B9)
    comptime POST_COLOR_MATRIX_BLUE_BIAS_SGI = GetPName(0x80BA)
    comptime POST_COLOR_MATRIX_ALPHA_BIAS_SGI = GetPName(0x80BB)
    comptime TEXTURE_COLOR_TABLE_SGI = GetPName(0x80BC)
    comptime BLEND_DST_RGB = GetPName(0x80C8)
    comptime BLEND_SRC_RGB = GetPName(0x80C9)
    comptime BLEND_DST_ALPHA = GetPName(0x80CA)
    comptime BLEND_SRC_ALPHA = GetPName(0x80CB)
    comptime COLOR_TABLE_SGI = GetPName(0x80D0)
    comptime POST_CONVOLUTION_COLOR_TABLE_SGI = GetPName(0x80D1)
    comptime POST_COLOR_MATRIX_COLOR_TABLE_SGI = GetPName(0x80D2)
    comptime MAX_ELEMENTS_VERTICES = GetPName(0x80E8)
    comptime MAX_ELEMENTS_INDICES = GetPName(0x80E9)
    comptime POINT_SIZE_MIN = GetPName(0x8126)
    comptime POINT_SIZE_MIN_ARB = GetPName(0x8126)
    comptime POINT_SIZE_MIN_EXT = GetPName(0x8126)
    comptime POINT_SIZE_MIN_SGIS = GetPName(0x8126)
    comptime POINT_SIZE_MAX = GetPName(0x8127)
    comptime POINT_SIZE_MAX_ARB = GetPName(0x8127)
    comptime POINT_SIZE_MAX_EXT = GetPName(0x8127)
    comptime POINT_SIZE_MAX_SGIS = GetPName(0x8127)
    comptime POINT_FADE_THRESHOLD_SIZE = GetPName(0x8128)
    comptime POINT_FADE_THRESHOLD_SIZE_ARB = GetPName(0x8128)
    comptime POINT_FADE_THRESHOLD_SIZE_EXT = GetPName(0x8128)
    comptime POINT_FADE_THRESHOLD_SIZE_SGIS = GetPName(0x8128)
    comptime DISTANCE_ATTENUATION_EXT = GetPName(0x8129)
    comptime DISTANCE_ATTENUATION_SGIS = GetPName(0x8129)
    comptime POINT_DISTANCE_ATTENUATION = GetPName(0x8129)
    comptime POINT_DISTANCE_ATTENUATION_ARB = GetPName(0x8129)
    comptime FOG_FUNC_POINTS_SGIS = GetPName(0x812B)
    comptime MAX_FOG_FUNC_POINTS_SGIS = GetPName(0x812C)
    comptime PACK_SKIP_VOLUMES_SGIS = GetPName(0x8130)
    comptime PACK_IMAGE_DEPTH_SGIS = GetPName(0x8131)
    comptime UNPACK_SKIP_VOLUMES_SGIS = GetPName(0x8132)
    comptime UNPACK_IMAGE_DEPTH_SGIS = GetPName(0x8133)
    comptime TEXTURE_4D_SGIS = GetPName(0x8134)
    comptime MAX_4D_TEXTURE_SIZE_SGIS = GetPName(0x8138)
    comptime PIXEL_TEX_GEN_SGIX = GetPName(0x8139)
    comptime PIXEL_TILE_BEST_ALIGNMENT_SGIX = GetPName(0x813E)
    comptime PIXEL_TILE_CACHE_INCREMENT_SGIX = GetPName(0x813F)
    comptime PIXEL_TILE_WIDTH_SGIX = GetPName(0x8140)
    comptime PIXEL_TILE_HEIGHT_SGIX = GetPName(0x8141)
    comptime PIXEL_TILE_GRID_WIDTH_SGIX = GetPName(0x8142)
    comptime PIXEL_TILE_GRID_HEIGHT_SGIX = GetPName(0x8143)
    comptime PIXEL_TILE_GRID_DEPTH_SGIX = GetPName(0x8144)
    comptime PIXEL_TILE_CACHE_SIZE_SGIX = GetPName(0x8145)
    comptime SPRITE_SGIX = GetPName(0x8148)
    comptime SPRITE_MODE_SGIX = GetPName(0x8149)
    comptime SPRITE_AXIS_SGIX = GetPName(0x814A)
    comptime SPRITE_TRANSLATION_SGIX = GetPName(0x814B)
    comptime TEXTURE_4D_BINDING_SGIS = GetPName(0x814F)
    comptime MAX_CLIPMAP_DEPTH_SGIX = GetPName(0x8177)
    comptime MAX_CLIPMAP_VIRTUAL_DEPTH_SGIX = GetPName(0x8178)
    comptime POST_TEXTURE_FILTER_BIAS_RANGE_SGIX = GetPName(0x817B)
    comptime POST_TEXTURE_FILTER_SCALE_RANGE_SGIX = GetPName(0x817C)
    comptime REFERENCE_PLANE_SGIX = GetPName(0x817D)
    comptime REFERENCE_PLANE_EQUATION_SGIX = GetPName(0x817E)
    comptime IR_INSTRUMENT1_SGIX = GetPName(0x817F)
    comptime INSTRUMENT_MEASUREMENTS_SGIX = GetPName(0x8181)
    comptime CALLIGRAPHIC_FRAGMENT_SGIX = GetPName(0x8183)
    comptime FRAMEZOOM_SGIX = GetPName(0x818B)
    comptime FRAMEZOOM_FACTOR_SGIX = GetPName(0x818C)
    comptime MAX_FRAMEZOOM_FACTOR_SGIX = GetPName(0x818D)
    comptime GENERATE_MIPMAP_HINT_SGIS = GetPName(0x8192)
    comptime DEFORMATIONS_MASK_SGIX = GetPName(0x8196)
    comptime FOG_OFFSET_SGIX = GetPName(0x8198)
    comptime FOG_OFFSET_VALUE_SGIX = GetPName(0x8199)
    comptime LIGHT_MODEL_COLOR_CONTROL = GetPName(0x81F8)
    comptime SHARED_TEXTURE_PALETTE_EXT = GetPName(0x81FB)
    comptime MAJOR_VERSION = GetPName(0x821B)
    comptime MINOR_VERSION = GetPName(0x821C)
    comptime NUM_EXTENSIONS = GetPName(0x821D)
    comptime CONTEXT_FLAGS = GetPName(0x821E)
    comptime PROGRAM_PIPELINE_BINDING = GetPName(0x825A)
    comptime MAX_VIEWPORTS = GetPName(0x825B)
    comptime VIEWPORT_SUBPIXEL_BITS = GetPName(0x825C)
    comptime VIEWPORT_BOUNDS_RANGE = GetPName(0x825D)
    comptime LAYER_PROVOKING_VERTEX = GetPName(0x825E)
    comptime VIEWPORT_INDEX_PROVOKING_VERTEX = GetPName(0x825F)
    comptime MAX_COMPUTE_UNIFORM_COMPONENTS = GetPName(0x8263)
    comptime MAX_COMPUTE_ATOMIC_COUNTER_BUFFERS = GetPName(0x8264)
    comptime MAX_COMPUTE_ATOMIC_COUNTERS = GetPName(0x8265)
    comptime MAX_COMBINED_COMPUTE_UNIFORM_COMPONENTS = GetPName(0x8266)
    comptime MAX_DEBUG_GROUP_STACK_DEPTH = GetPName(0x826C)
    comptime DEBUG_GROUP_STACK_DEPTH = GetPName(0x826D)
    comptime MAX_UNIFORM_LOCATIONS = GetPName(0x826E)
    comptime VERTEX_BINDING_DIVISOR = GetPName(0x82D6)
    comptime VERTEX_BINDING_OFFSET = GetPName(0x82D7)
    comptime VERTEX_BINDING_STRIDE = GetPName(0x82D8)
    comptime MAX_VERTEX_ATTRIB_RELATIVE_OFFSET = GetPName(0x82D9)
    comptime MAX_VERTEX_ATTRIB_BINDINGS = GetPName(0x82DA)
    comptime MAX_LABEL_LENGTH = GetPName(0x82E8)
    comptime CONVOLUTION_HINT_SGIX = GetPName(0x8316)
    comptime ASYNC_MARKER_SGIX = GetPName(0x8329)
    comptime PIXEL_TEX_GEN_MODE_SGIX = GetPName(0x832B)
    comptime ASYNC_HISTOGRAM_SGIX = GetPName(0x832C)
    comptime MAX_ASYNC_HISTOGRAM_SGIX = GetPName(0x832D)
    comptime PIXEL_TEXTURE_SGIS = GetPName(0x8353)
    comptime ASYNC_TEX_IMAGE_SGIX = GetPName(0x835C)
    comptime ASYNC_DRAW_PIXELS_SGIX = GetPName(0x835D)
    comptime ASYNC_READ_PIXELS_SGIX = GetPName(0x835E)
    comptime MAX_ASYNC_TEX_IMAGE_SGIX = GetPName(0x835F)
    comptime MAX_ASYNC_DRAW_PIXELS_SGIX = GetPName(0x8360)
    comptime MAX_ASYNC_READ_PIXELS_SGIX = GetPName(0x8361)
    comptime VERTEX_PRECLIP_SGIX = GetPName(0x83EE)
    comptime VERTEX_PRECLIP_HINT_SGIX = GetPName(0x83EF)
    comptime FRAGMENT_LIGHTING_SGIX = GetPName(0x8400)
    comptime FRAGMENT_COLOR_MATERIAL_SGIX = GetPName(0x8401)
    comptime FRAGMENT_COLOR_MATERIAL_FACE_SGIX = GetPName(0x8402)
    comptime FRAGMENT_COLOR_MATERIAL_PARAMETER_SGIX = GetPName(0x8403)
    comptime MAX_FRAGMENT_LIGHTS_SGIX = GetPName(0x8404)
    comptime MAX_ACTIVE_LIGHTS_SGIX = GetPName(0x8405)
    comptime LIGHT_ENV_MODE_SGIX = GetPName(0x8407)
    comptime FRAGMENT_LIGHT_MODEL_LOCAL_VIEWER_SGIX = GetPName(0x8408)
    comptime FRAGMENT_LIGHT_MODEL_TWO_SIDE_SGIX = GetPName(0x8409)
    comptime FRAGMENT_LIGHT_MODEL_AMBIENT_SGIX = GetPName(0x840A)
    comptime FRAGMENT_LIGHT_MODEL_NORMAL_INTERPOLATION_SGIX = GetPName(0x840B)
    comptime FRAGMENT_LIGHT0_SGIX = GetPName(0x840C)
    comptime PACK_RESAMPLE_SGIX = GetPName(0x842E)
    comptime UNPACK_RESAMPLE_SGIX = GetPName(0x842F)
    comptime ALIASED_POINT_SIZE_RANGE = GetPName(0x846D)
    comptime ALIASED_LINE_WIDTH_RANGE = GetPName(0x846E)
    comptime ACTIVE_TEXTURE = GetPName(0x84E0)
    comptime MAX_RENDERBUFFER_SIZE = GetPName(0x84E8)
    comptime TEXTURE_COMPRESSION_HINT = GetPName(0x84EF)
    comptime TEXTURE_BINDING_RECTANGLE = GetPName(0x84F6)
    comptime TEXTURE_BINDING_RECTANGLE_ARB = GetPName(0x84F6)
    comptime TEXTURE_BINDING_RECTANGLE_NV = GetPName(0x84F6)
    comptime MAX_RECTANGLE_TEXTURE_SIZE = GetPName(0x84F8)
    comptime MAX_TEXTURE_LOD_BIAS = GetPName(0x84FD)
    comptime TEXTURE_BINDING_CUBE_MAP = GetPName(0x8514)
    comptime TEXTURE_BINDING_CUBE_MAP_ARB = GetPName(0x8514)
    comptime TEXTURE_BINDING_CUBE_MAP_EXT = GetPName(0x8514)
    comptime TEXTURE_BINDING_CUBE_MAP_OES = GetPName(0x8514)
    comptime MAX_CUBE_MAP_TEXTURE_SIZE = GetPName(0x851C)
    comptime MAX_CUBE_MAP_TEXTURE_SIZE_ARB = GetPName(0x851C)
    comptime MAX_CUBE_MAP_TEXTURE_SIZE_EXT = GetPName(0x851C)
    comptime MAX_CUBE_MAP_TEXTURE_SIZE_OES = GetPName(0x851C)
    comptime PACK_SUBSAMPLE_RATE_SGIX = GetPName(0x85A0)
    comptime UNPACK_SUBSAMPLE_RATE_SGIX = GetPName(0x85A1)
    comptime VERTEX_ARRAY_BINDING = GetPName(0x85B5)
    comptime PROGRAM_POINT_SIZE = GetPName(0x8642)
    comptime NUM_COMPRESSED_TEXTURE_FORMATS = GetPName(0x86A2)
    comptime COMPRESSED_TEXTURE_FORMATS = GetPName(0x86A3)
    comptime NUM_PROGRAM_BINARY_FORMATS = GetPName(0x87FE)
    comptime PROGRAM_BINARY_FORMATS = GetPName(0x87FF)
    comptime STENCIL_BACK_FUNC = GetPName(0x8800)
    comptime STENCIL_BACK_FAIL = GetPName(0x8801)
    comptime STENCIL_BACK_PASS_DEPTH_FAIL = GetPName(0x8802)
    comptime STENCIL_BACK_PASS_DEPTH_PASS = GetPName(0x8803)
    comptime MAX_DRAW_BUFFERS = GetPName(0x8824)
    comptime BLEND_EQUATION_ALPHA = GetPName(0x883D)
    comptime MAX_VERTEX_ATTRIBS = GetPName(0x8869)
    comptime MAX_TEXTURE_IMAGE_UNITS = GetPName(0x8872)
    comptime ARRAY_BUFFER_BINDING = GetPName(0x8894)
    comptime ELEMENT_ARRAY_BUFFER_BINDING = GetPName(0x8895)
    comptime PIXEL_PACK_BUFFER_BINDING = GetPName(0x88ED)
    comptime PIXEL_UNPACK_BUFFER_BINDING = GetPName(0x88EF)
    comptime MAX_DUAL_SOURCE_DRAW_BUFFERS = GetPName(0x88FC)
    comptime MAX_ARRAY_TEXTURE_LAYERS = GetPName(0x88FF)
    comptime MIN_PROGRAM_TEXEL_OFFSET = GetPName(0x8904)
    comptime MAX_PROGRAM_TEXEL_OFFSET = GetPName(0x8905)
    comptime SAMPLER_BINDING = GetPName(0x8919)
    comptime FRAGMENT_SHADER_ATI = GetPName(0x8920)
    comptime UNIFORM_BUFFER_BINDING = GetPName(0x8A28)
    comptime UNIFORM_BUFFER_START = GetPName(0x8A29)
    comptime UNIFORM_BUFFER_SIZE = GetPName(0x8A2A)
    comptime MAX_VERTEX_UNIFORM_BLOCKS = GetPName(0x8A2B)
    comptime MAX_GEOMETRY_UNIFORM_BLOCKS = GetPName(0x8A2C)
    comptime MAX_FRAGMENT_UNIFORM_BLOCKS = GetPName(0x8A2D)
    comptime MAX_COMBINED_UNIFORM_BLOCKS = GetPName(0x8A2E)
    comptime MAX_UNIFORM_BUFFER_BINDINGS = GetPName(0x8A2F)
    comptime MAX_UNIFORM_BLOCK_SIZE = GetPName(0x8A30)
    comptime MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS = GetPName(0x8A31)
    comptime MAX_COMBINED_GEOMETRY_UNIFORM_COMPONENTS = GetPName(0x8A32)
    comptime MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS = GetPName(0x8A33)
    comptime UNIFORM_BUFFER_OFFSET_ALIGNMENT = GetPName(0x8A34)
    comptime MAX_FRAGMENT_UNIFORM_COMPONENTS = GetPName(0x8B49)
    comptime MAX_VERTEX_UNIFORM_COMPONENTS = GetPName(0x8B4A)
    comptime MAX_VARYING_FLOATS = GetPName(0x8B4B)
    comptime MAX_VARYING_COMPONENTS = GetPName(0x8B4B)
    comptime MAX_VERTEX_TEXTURE_IMAGE_UNITS = GetPName(0x8B4C)
    comptime MAX_COMBINED_TEXTURE_IMAGE_UNITS = GetPName(0x8B4D)
    comptime FRAGMENT_SHADER_DERIVATIVE_HINT = GetPName(0x8B8B)
    comptime CURRENT_PROGRAM = GetPName(0x8B8D)
    comptime IMPLEMENTATION_COLOR_READ_TYPE = GetPName(0x8B9A)
    comptime IMPLEMENTATION_COLOR_READ_FORMAT = GetPName(0x8B9B)
    comptime TEXTURE_BINDING_1D_ARRAY = GetPName(0x8C1C)
    comptime TEXTURE_BINDING_2D_ARRAY = GetPName(0x8C1D)
    comptime MAX_GEOMETRY_TEXTURE_IMAGE_UNITS = GetPName(0x8C29)
    comptime MAX_TEXTURE_BUFFER_SIZE = GetPName(0x8C2B)
    comptime TEXTURE_BINDING_BUFFER = GetPName(0x8C2C)
    comptime TRANSFORM_FEEDBACK_BUFFER_START = GetPName(0x8C84)
    comptime TRANSFORM_FEEDBACK_BUFFER_SIZE = GetPName(0x8C85)
    comptime TRANSFORM_FEEDBACK_BUFFER_BINDING = GetPName(0x8C8F)
    comptime MOTION_ESTIMATION_SEARCH_BLOCK_X_QCOM = GetPName(0x8C90)
    comptime MOTION_ESTIMATION_SEARCH_BLOCK_Y_QCOM = GetPName(0x8C91)
    comptime STENCIL_BACK_REF = GetPName(0x8CA3)
    comptime STENCIL_BACK_VALUE_MASK = GetPName(0x8CA4)
    comptime STENCIL_BACK_WRITEMASK = GetPName(0x8CA5)
    comptime DRAW_FRAMEBUFFER_BINDING = GetPName(0x8CA6)
    comptime RENDERBUFFER_BINDING = GetPName(0x8CA7)
    comptime READ_FRAMEBUFFER_BINDING = GetPName(0x8CAA)
    comptime MAX_COLOR_ATTACHMENTS = GetPName(0x8CDF)
    comptime MAX_COLOR_ATTACHMENTS_EXT = GetPName(0x8CDF)
    comptime MAX_COLOR_ATTACHMENTS_NV = GetPName(0x8CDF)
    comptime TEXTURE_GEN_STR_OES = GetPName(0x8D60)
    comptime MAX_ELEMENT_INDEX = GetPName(0x8D6B)
    comptime MAX_GEOMETRY_UNIFORM_COMPONENTS = GetPName(0x8DDF)
    comptime SHADER_BINARY_FORMATS = GetPName(0x8DF8)
    comptime NUM_SHADER_BINARY_FORMATS = GetPName(0x8DF9)
    comptime SHADER_COMPILER = GetPName(0x8DFA)
    comptime MAX_VERTEX_UNIFORM_VECTORS = GetPName(0x8DFB)
    comptime MAX_VARYING_VECTORS = GetPName(0x8DFC)
    comptime MAX_FRAGMENT_UNIFORM_VECTORS = GetPName(0x8DFD)
    comptime TIMESTAMP = GetPName(0x8E28)
    comptime TIMESTAMP_EXT = GetPName(0x8E28)
    comptime PROVOKING_VERTEX = GetPName(0x8E4F)
    comptime MAX_SAMPLE_MASK_WORDS = GetPName(0x8E59)
    comptime MAX_TESS_CONTROL_UNIFORM_BLOCKS = GetPName(0x8E89)
    comptime MAX_TESS_EVALUATION_UNIFORM_BLOCKS = GetPName(0x8E8A)
    comptime FETCH_PER_SAMPLE_ARM = GetPName(0x8F65)
    comptime FRAGMENT_SHADER_FRAMEBUFFER_FETCH_MRT_ARM = GetPName(0x8F66)
    comptime FRAGMENT_SHADING_RATE_NON_TRIVIAL_COMBINERS_SUPPORTED_EXT = GetPName(0x8F6F)
    comptime PRIMITIVE_RESTART_INDEX = GetPName(0x8F9E)
    comptime MIN_MAP_BUFFER_ALIGNMENT = GetPName(0x90BC)
    comptime SHADER_STORAGE_BUFFER_BINDING = GetPName(0x90D3)
    comptime SHADER_STORAGE_BUFFER_START = GetPName(0x90D4)
    comptime SHADER_STORAGE_BUFFER_SIZE = GetPName(0x90D5)
    comptime MAX_VERTEX_SHADER_STORAGE_BLOCKS = GetPName(0x90D6)
    comptime MAX_GEOMETRY_SHADER_STORAGE_BLOCKS = GetPName(0x90D7)
    comptime MAX_TESS_CONTROL_SHADER_STORAGE_BLOCKS = GetPName(0x90D8)
    comptime MAX_TESS_EVALUATION_SHADER_STORAGE_BLOCKS = GetPName(0x90D9)
    comptime MAX_FRAGMENT_SHADER_STORAGE_BLOCKS = GetPName(0x90DA)
    comptime MAX_COMPUTE_SHADER_STORAGE_BLOCKS = GetPName(0x90DB)
    comptime MAX_COMBINED_SHADER_STORAGE_BLOCKS = GetPName(0x90DC)
    comptime MAX_SHADER_STORAGE_BUFFER_BINDINGS = GetPName(0x90DD)
    comptime SHADER_STORAGE_BUFFER_OFFSET_ALIGNMENT = GetPName(0x90DF)
    comptime MAX_COMPUTE_WORK_GROUP_INVOCATIONS = GetPName(0x90EB)
    comptime DISPATCH_INDIRECT_BUFFER_BINDING = GetPName(0x90EF)
    comptime TEXTURE_BINDING_2D_MULTISAMPLE = GetPName(0x9104)
    comptime TEXTURE_BINDING_2D_MULTISAMPLE_ARRAY = GetPName(0x9105)
    comptime MAX_COLOR_TEXTURE_SAMPLES = GetPName(0x910E)
    comptime MAX_DEPTH_TEXTURE_SAMPLES = GetPName(0x910F)
    comptime MAX_INTEGER_SAMPLES = GetPName(0x9110)
    comptime MAX_SERVER_WAIT_TIMEOUT = GetPName(0x9111)
    comptime MAX_VERTEX_OUTPUT_COMPONENTS = GetPName(0x9122)
    comptime MAX_GEOMETRY_INPUT_COMPONENTS = GetPName(0x9123)
    comptime MAX_GEOMETRY_OUTPUT_COMPONENTS = GetPName(0x9124)
    comptime MAX_FRAGMENT_INPUT_COMPONENTS = GetPName(0x9125)
    comptime CONTEXT_PROFILE_MASK = GetPName(0x9126)
    comptime TEXTURE_BUFFER_OFFSET_ALIGNMENT = GetPName(0x919F)
    comptime MAX_COMPUTE_UNIFORM_BLOCKS = GetPName(0x91BB)
    comptime MAX_COMPUTE_TEXTURE_IMAGE_UNITS = GetPName(0x91BC)
    comptime MAX_COMPUTE_WORK_GROUP_COUNT = GetPName(0x91BE)
    comptime MAX_COMPUTE_WORK_GROUP_SIZE = GetPName(0x91BF)
    comptime MAX_VERTEX_ATOMIC_COUNTERS = GetPName(0x92D2)
    comptime MAX_TESS_CONTROL_ATOMIC_COUNTERS = GetPName(0x92D3)
    comptime MAX_TESS_EVALUATION_ATOMIC_COUNTERS = GetPName(0x92D4)
    comptime MAX_GEOMETRY_ATOMIC_COUNTERS = GetPName(0x92D5)
    comptime MAX_FRAGMENT_ATOMIC_COUNTERS = GetPName(0x92D6)
    comptime MAX_COMBINED_ATOMIC_COUNTERS = GetPName(0x92D7)
    comptime MAX_FRAMEBUFFER_WIDTH = GetPName(0x9315)
    comptime MAX_FRAMEBUFFER_HEIGHT = GetPName(0x9316)
    comptime MAX_FRAMEBUFFER_LAYERS = GetPName(0x9317)
    comptime MAX_FRAMEBUFFER_SAMPLES = GetPName(0x9318)
    comptime NUM_DEVICE_UUIDS_EXT = GetPName(0x9596)
    comptime DEVICE_UUID_EXT = GetPName(0x9597)
    comptime DRIVER_UUID_EXT = GetPName(0x9598)
    comptime DEVICE_LUID_EXT = GetPName(0x9599)
    comptime DEVICE_NODE_MASK_EXT = GetPName(0x959A)
    comptime SHADING_RATE_IMAGE_PER_PRIMITIVE_NV = GetPName(0x95B1)
    comptime SHADING_RATE_IMAGE_PALETTE_COUNT_NV = GetPName(0x95B2)
    comptime MAX_TIMELINE_SEMAPHORE_VALUE_DIFFERENCE_NV = GetPName(0x95B6)
    comptime FRAMEBUFFER_FETCH_NONCOHERENT_QCOM = GetPName(0x96A2)
    comptime SHADING_RATE_QCOM = GetPName(0x96A4)
    comptime SHADING_RATE_EXT = GetPName(0x96D0)
    comptime MIN_FRAGMENT_SHADING_RATE_ATTACHMENT_TEXEL_WIDTH_EXT = GetPName(0x96D7)
    comptime MAX_FRAGMENT_SHADING_RATE_ATTACHMENT_TEXEL_WIDTH_EXT = GetPName(0x96D8)
    comptime MIN_FRAGMENT_SHADING_RATE_ATTACHMENT_TEXEL_HEIGHT_EXT = GetPName(0x96D9)
    comptime MAX_FRAGMENT_SHADING_RATE_ATTACHMENT_TEXEL_HEIGHT_EXT = GetPName(0x96DA)
    comptime MAX_FRAGMENT_SHADING_RATE_ATTACHMENT_TEXEL_ASPECT_RATIO_EXT = GetPName(0x96DB)
    comptime MAX_FRAGMENT_SHADING_RATE_ATTACHMENT_LAYERS_EXT = GetPName(0x96DC)
    comptime FRAGMENT_SHADING_RATE_WITH_SHADER_DEPTH_STENCIL_WRITES_SUPPORTED_EXT = GetPName(0x96DD)
    comptime FRAGMENT_SHADING_RATE_WITH_SAMPLE_MASK_SUPPORTED_EXT = GetPName(0x96DE)
    comptime FRAGMENT_SHADING_RATE_ATTACHMENT_WITH_DEFAULT_FRAMEBUFFER_SUPPORTED_EXT = GetPName(0x96DF)
    comptime SHADER_CORE_COUNT_ARM = GetPName(0x96F0)
    comptime SHADER_CORE_ACTIVE_COUNT_ARM = GetPName(0x96F1)
    comptime SHADER_CORE_PRESENT_MASK_ARM = GetPName(0x96F2)
    comptime SHADER_CORE_MAX_WARP_COUNT_ARM = GetPName(0x96F3)
    comptime SHADER_CORE_PIXEL_RATE_ARM = GetPName(0x96F4)
    comptime SHADER_CORE_TEXEL_RATE_ARM = GetPName(0x96F5)
    comptime SHADER_CORE_FMA_RATE_ARM = GetPName(0x96F6)
    comptime MAX_TASK_WORK_GROUP_TOTAL_COUNT_EXT = GetPName(0x9740)
    comptime MAX_MESH_WORK_GROUP_TOTAL_COUNT_EXT = GetPName(0x9741)
    comptime MAX_TASK_PAYLOAD_SIZE_EXT = GetPName(0x9742)
    comptime MAX_TASK_SHARED_MEMORY_SIZE_EXT = GetPName(0x9743)
    comptime MAX_MESH_SHARED_MEMORY_SIZE_EXT = GetPName(0x9744)
    comptime MAX_TASK_PAYLOAD_AND_SHARED_MEMORY_SIZE_EXT = GetPName(0x9745)
    comptime MAX_MESH_PAYLOAD_AND_SHARED_MEMORY_SIZE_EXT = GetPName(0x9746)
    comptime MAX_MESH_OUTPUT_MEMORY_SIZE_EXT = GetPName(0x9747)
    comptime MAX_MESH_PAYLOAD_AND_OUTPUT_MEMORY_SIZE_EXT = GetPName(0x9748)
    comptime MAX_MESH_OUTPUT_COMPONENTS_EXT = GetPName(0x9749)
    comptime MAX_MESH_OUTPUT_LAYERS_EXT = GetPName(0x974A)
    comptime MAX_PREFERRED_TASK_WORK_GROUP_INVOCATIONS_EXT = GetPName(0x974B)
    comptime MAX_PREFERRED_MESH_WORK_GROUP_INVOCATIONS_EXT = GetPName(0x974C)
    comptime MESH_PREFERS_LOCAL_INVOCATION_VERTEX_OUTPUT_EXT = GetPName(0x974D)
    comptime MESH_PREFERS_LOCAL_INVOCATION_PRIMITIVE_OUTPUT_EXT = GetPName(0x974E)
    comptime MESH_PREFERS_COMPACT_VERTEX_OUTPUT_EXT = GetPName(0x974F)
    comptime MESH_PREFERS_COMPACT_PRIMITIVE_OUTPUT_EXT = GetPName(0x9750)
    comptime MAX_TASK_WORK_GROUP_COUNT_EXT = GetPName(0x9751)
    comptime MAX_MESH_WORK_GROUP_COUNT_EXT = GetPName(0x9752)
    comptime MAX_MESH_OUTPUT_PRIMITIVES_EXT = GetPName(0x9756)
    comptime MAX_MESH_WORK_GROUP_INVOCATIONS_EXT = GetPName(0x9757)
    comptime MAX_MESH_WORK_GROUP_SIZE_EXT = GetPName(0x9758)
    comptime MAX_TASK_WORK_GROUP_INVOCATIONS_EXT = GetPName(0x9759)
    comptime MAX_TASK_WORK_GROUP_SIZE_EXT = GetPName(0x975A)
    comptime FRAGMENT_SHADING_RATE_PRIMITIVE_RATE_WITH_MULTI_VIEWPORT_SUPPORTED_EXT = GetPName(0x9780)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct GetTextureParameter(Intable):
    var value: GLenum

    comptime TEXTURE_WIDTH = GetTextureParameter(0x1000)
    comptime TEXTURE_HEIGHT = GetTextureParameter(0x1001)
    comptime TEXTURE_INTERNAL_FORMAT = GetTextureParameter(0x1003)
    comptime TEXTURE_COMPONENTS = GetTextureParameter(0x1003)
    comptime TEXTURE_BORDER_COLOR = GetTextureParameter(0x1004)
    comptime TEXTURE_BORDER_COLOR_NV = GetTextureParameter(0x1004)
    comptime TEXTURE_BORDER = GetTextureParameter(0x1005)
    comptime TEXTURE_MAG_FILTER = GetTextureParameter(0x2800)
    comptime TEXTURE_MIN_FILTER = GetTextureParameter(0x2801)
    comptime TEXTURE_WRAP_S = GetTextureParameter(0x2802)
    comptime TEXTURE_WRAP_T = GetTextureParameter(0x2803)
    comptime TEXTURE_RED_SIZE = GetTextureParameter(0x805C)
    comptime TEXTURE_GREEN_SIZE = GetTextureParameter(0x805D)
    comptime TEXTURE_BLUE_SIZE = GetTextureParameter(0x805E)
    comptime TEXTURE_ALPHA_SIZE = GetTextureParameter(0x805F)
    comptime TEXTURE_LUMINANCE_SIZE = GetTextureParameter(0x8060)
    comptime TEXTURE_INTENSITY_SIZE = GetTextureParameter(0x8061)
    comptime TEXTURE_PRIORITY = GetTextureParameter(0x8066)
    comptime TEXTURE_RESIDENT = GetTextureParameter(0x8067)
    comptime TEXTURE_DEPTH_EXT = GetTextureParameter(0x8071)
    comptime TEXTURE_WRAP_R_EXT = GetTextureParameter(0x8072)
    comptime DETAIL_TEXTURE_LEVEL_SGIS = GetTextureParameter(0x809A)
    comptime DETAIL_TEXTURE_MODE_SGIS = GetTextureParameter(0x809B)
    comptime DETAIL_TEXTURE_FUNC_POINTS_SGIS = GetTextureParameter(0x809C)
    comptime SHARPEN_TEXTURE_FUNC_POINTS_SGIS = GetTextureParameter(0x80B0)
    comptime SHADOW_AMBIENT_SGIX = GetTextureParameter(0x80BF)
    comptime DUAL_TEXTURE_SELECT_SGIS = GetTextureParameter(0x8124)
    comptime QUAD_TEXTURE_SELECT_SGIS = GetTextureParameter(0x8125)
    comptime TEXTURE_4DSIZE_SGIS = GetTextureParameter(0x8136)
    comptime TEXTURE_WRAP_Q_SGIS = GetTextureParameter(0x8137)
    comptime TEXTURE_MIN_LOD_SGIS = GetTextureParameter(0x813A)
    comptime TEXTURE_MAX_LOD_SGIS = GetTextureParameter(0x813B)
    comptime TEXTURE_BASE_LEVEL_SGIS = GetTextureParameter(0x813C)
    comptime TEXTURE_MAX_LEVEL_SGIS = GetTextureParameter(0x813D)
    comptime TEXTURE_FILTER4_SIZE_SGIS = GetTextureParameter(0x8147)
    comptime TEXTURE_CLIPMAP_CENTER_SGIX = GetTextureParameter(0x8171)
    comptime TEXTURE_CLIPMAP_FRAME_SGIX = GetTextureParameter(0x8172)
    comptime TEXTURE_CLIPMAP_OFFSET_SGIX = GetTextureParameter(0x8173)
    comptime TEXTURE_CLIPMAP_VIRTUAL_DEPTH_SGIX = GetTextureParameter(0x8174)
    comptime TEXTURE_CLIPMAP_LOD_OFFSET_SGIX = GetTextureParameter(0x8175)
    comptime TEXTURE_CLIPMAP_DEPTH_SGIX = GetTextureParameter(0x8176)
    comptime POST_TEXTURE_FILTER_BIAS_SGIX = GetTextureParameter(0x8179)
    comptime POST_TEXTURE_FILTER_SCALE_SGIX = GetTextureParameter(0x817A)
    comptime TEXTURE_LOD_BIAS_S_SGIX = GetTextureParameter(0x818E)
    comptime TEXTURE_LOD_BIAS_T_SGIX = GetTextureParameter(0x818F)
    comptime TEXTURE_LOD_BIAS_R_SGIX = GetTextureParameter(0x8190)
    comptime GENERATE_MIPMAP_SGIS = GetTextureParameter(0x8191)
    comptime TEXTURE_COMPARE_SGIX = GetTextureParameter(0x819A)
    comptime TEXTURE_COMPARE_OPERATOR_SGIX = GetTextureParameter(0x819B)
    comptime TEXTURE_LEQUAL_R_SGIX = GetTextureParameter(0x819C)
    comptime TEXTURE_GEQUAL_R_SGIX = GetTextureParameter(0x819D)
    comptime TEXTURE_MAX_CLAMP_S_SGIX = GetTextureParameter(0x8369)
    comptime TEXTURE_MAX_CLAMP_T_SGIX = GetTextureParameter(0x836A)
    comptime TEXTURE_MAX_CLAMP_R_SGIX = GetTextureParameter(0x836B)
    comptime NORMAL_MAP = GetTextureParameter(0x8511)
    comptime NORMAL_MAP_ARB = GetTextureParameter(0x8511)
    comptime NORMAL_MAP_EXT = GetTextureParameter(0x8511)
    comptime NORMAL_MAP_NV = GetTextureParameter(0x8511)
    comptime NORMAL_MAP_OES = GetTextureParameter(0x8511)
    comptime REFLECTION_MAP = GetTextureParameter(0x8512)
    comptime REFLECTION_MAP_ARB = GetTextureParameter(0x8512)
    comptime REFLECTION_MAP_EXT = GetTextureParameter(0x8512)
    comptime REFLECTION_MAP_NV = GetTextureParameter(0x8512)
    comptime REFLECTION_MAP_OES = GetTextureParameter(0x8512)
    comptime TEXTURE_UNNORMALIZED_COORDINATES_ARM = GetTextureParameter(0x8F6A)
    comptime SURFACE_COMPRESSION_EXT = GetTextureParameter(0x96C0)
    comptime TEXTURE_Y_DEGAMMA_QCOM = GetTextureParameter(0x9710)
    comptime TEXTURE_CBCR_DEGAMMA_QCOM = GetTextureParameter(0x9711)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct GraphicsResetStatus(Intable):
    var value: GLenum

    comptime NO_ERROR = GraphicsResetStatus(0)
    comptime GUILTY_CONTEXT_RESET = GraphicsResetStatus(0x8253)
    comptime INNOCENT_CONTEXT_RESET = GraphicsResetStatus(0x8254)
    comptime UNKNOWN_CONTEXT_RESET = GraphicsResetStatus(0x8255)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct HintMode(Intable):
    var value: GLenum

    comptime DONT_CARE = HintMode(0x1100)
    comptime FASTEST = HintMode(0x1101)
    comptime NICEST = HintMode(0x1102)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct HintTarget(Intable):
    var value: GLenum

    comptime PERSPECTIVE_CORRECTION_HINT = HintTarget(0x0C50)
    comptime POINT_SMOOTH_HINT = HintTarget(0x0C51)
    comptime LINE_SMOOTH_HINT = HintTarget(0x0C52)
    comptime POLYGON_SMOOTH_HINT = HintTarget(0x0C53)
    comptime FOG_HINT = HintTarget(0x0C54)
    comptime PACK_CMYK_HINT_EXT = HintTarget(0x800E)
    comptime UNPACK_CMYK_HINT_EXT = HintTarget(0x800F)
    comptime PHONG_HINT_WIN = HintTarget(0x80EB)
    comptime CLIP_VOLUME_CLIPPING_HINT_EXT = HintTarget(0x80F0)
    comptime TEXTURE_MULTI_BUFFER_HINT_SGIX = HintTarget(0x812E)
    comptime GENERATE_MIPMAP_HINT = HintTarget(0x8192)
    comptime GENERATE_MIPMAP_HINT_SGIS = HintTarget(0x8192)
    comptime PROGRAM_BINARY_RETRIEVABLE_HINT = HintTarget(0x8257)
    comptime CONVOLUTION_HINT_SGIX = HintTarget(0x8316)
    comptime SCALEBIAS_HINT_SGIX = HintTarget(0x8322)
    comptime LINE_QUALITY_HINT_SGIX = HintTarget(0x835B)
    comptime VERTEX_PRECLIP_SGIX = HintTarget(0x83EE)
    comptime VERTEX_PRECLIP_HINT_SGIX = HintTarget(0x83EF)
    comptime TEXTURE_COMPRESSION_HINT = HintTarget(0x84EF)
    comptime TEXTURE_COMPRESSION_HINT_ARB = HintTarget(0x84EF)
    comptime VERTEX_ARRAY_STORAGE_HINT_APPLE = HintTarget(0x851F)
    comptime MULTISAMPLE_FILTER_HINT_NV = HintTarget(0x8534)
    comptime TRANSFORM_HINT_APPLE = HintTarget(0x85B1)
    comptime TEXTURE_STORAGE_HINT_APPLE = HintTarget(0x85BC)
    comptime FRAGMENT_SHADER_DERIVATIVE_HINT = HintTarget(0x8B8B)
    comptime FRAGMENT_SHADER_DERIVATIVE_HINT_ARB = HintTarget(0x8B8B)
    comptime FRAGMENT_SHADER_DERIVATIVE_HINT_OES = HintTarget(0x8B8B)
    comptime BINNING_CONTROL_HINT_QCOM = HintTarget(0x8FB0)
    comptime PREFER_DOUBLEBUFFER_HINT_PGI = HintTarget(0x1A1F8)
    comptime CONSERVE_MEMORY_HINT_PGI = HintTarget(0x1A1FD)
    comptime RECLAIM_MEMORY_HINT_PGI = HintTarget(0x1A1FE)
    comptime NATIVE_GRAPHICS_BEGIN_HINT_PGI = HintTarget(0x1A203)
    comptime NATIVE_GRAPHICS_END_HINT_PGI = HintTarget(0x1A204)
    comptime ALWAYS_FAST_HINT_PGI = HintTarget(0x1A20C)
    comptime ALWAYS_SOFT_HINT_PGI = HintTarget(0x1A20D)
    comptime ALLOW_DRAW_OBJ_HINT_PGI = HintTarget(0x1A20E)
    comptime ALLOW_DRAW_WIN_HINT_PGI = HintTarget(0x1A20F)
    comptime ALLOW_DRAW_FRG_HINT_PGI = HintTarget(0x1A210)
    comptime ALLOW_DRAW_MEM_HINT_PGI = HintTarget(0x1A211)
    comptime STRICT_DEPTHFUNC_HINT_PGI = HintTarget(0x1A216)
    comptime STRICT_LIGHTING_HINT_PGI = HintTarget(0x1A217)
    comptime STRICT_SCISSOR_HINT_PGI = HintTarget(0x1A218)
    comptime FULL_STIPPLE_HINT_PGI = HintTarget(0x1A219)
    comptime CLIP_NEAR_HINT_PGI = HintTarget(0x1A220)
    comptime CLIP_FAR_HINT_PGI = HintTarget(0x1A221)
    comptime WIDE_LINE_HINT_PGI = HintTarget(0x1A222)
    comptime BACK_NORMALS_HINT_PGI = HintTarget(0x1A223)
    comptime VERTEX_DATA_HINT_PGI = HintTarget(0x1A22A)
    comptime VERTEX_CONSISTENT_HINT_PGI = HintTarget(0x1A22B)
    comptime MATERIAL_SIDE_HINT_PGI = HintTarget(0x1A22C)
    comptime MAX_VERTEX_HINT_PGI = HintTarget(0x1A22D)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct HistogramTarget(Intable):
    var value: GLenum

    comptime HISTOGRAM = HistogramTarget(0x8024)
    comptime PROXY_HISTOGRAM = HistogramTarget(0x8025)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct InternalFormat(Intable):
    var value: GLenum

    comptime STENCIL_INDEX = InternalFormat(0x1901)
    comptime STENCIL_INDEX_OES = InternalFormat(0x1901)
    comptime DEPTH_COMPONENT = InternalFormat(0x1902)
    comptime RED = InternalFormat(0x1903)
    comptime RED_EXT = InternalFormat(0x1903)
    comptime RGB = InternalFormat(0x1907)
    comptime RGBA = InternalFormat(0x1908)
    comptime R3_G3_B2 = InternalFormat(0x2A10)
    comptime ALPHA4 = InternalFormat(0x803B)
    comptime ALPHA4_EXT = InternalFormat(0x803B)
    comptime ALPHA8 = InternalFormat(0x803C)
    comptime ALPHA8_EXT = InternalFormat(0x803C)
    comptime ALPHA8_OES = InternalFormat(0x803C)
    comptime ALPHA12 = InternalFormat(0x803D)
    comptime ALPHA12_EXT = InternalFormat(0x803D)
    comptime ALPHA16 = InternalFormat(0x803E)
    comptime ALPHA16_EXT = InternalFormat(0x803E)
    comptime LUMINANCE4 = InternalFormat(0x803F)
    comptime LUMINANCE4_EXT = InternalFormat(0x803F)
    comptime LUMINANCE8 = InternalFormat(0x8040)
    comptime LUMINANCE8_EXT = InternalFormat(0x8040)
    comptime LUMINANCE8_OES = InternalFormat(0x8040)
    comptime LUMINANCE12 = InternalFormat(0x8041)
    comptime LUMINANCE12_EXT = InternalFormat(0x8041)
    comptime LUMINANCE16 = InternalFormat(0x8042)
    comptime LUMINANCE16_EXT = InternalFormat(0x8042)
    comptime LUMINANCE4_ALPHA4 = InternalFormat(0x8043)
    comptime LUMINANCE4_ALPHA4_EXT = InternalFormat(0x8043)
    comptime LUMINANCE4_ALPHA4_OES = InternalFormat(0x8043)
    comptime LUMINANCE6_ALPHA2 = InternalFormat(0x8044)
    comptime LUMINANCE6_ALPHA2_EXT = InternalFormat(0x8044)
    comptime LUMINANCE8_ALPHA8 = InternalFormat(0x8045)
    comptime LUMINANCE8_ALPHA8_EXT = InternalFormat(0x8045)
    comptime LUMINANCE8_ALPHA8_OES = InternalFormat(0x8045)
    comptime LUMINANCE12_ALPHA4 = InternalFormat(0x8046)
    comptime LUMINANCE12_ALPHA4_EXT = InternalFormat(0x8046)
    comptime LUMINANCE12_ALPHA12 = InternalFormat(0x8047)
    comptime LUMINANCE12_ALPHA12_EXT = InternalFormat(0x8047)
    comptime LUMINANCE16_ALPHA16 = InternalFormat(0x8048)
    comptime LUMINANCE16_ALPHA16_EXT = InternalFormat(0x8048)
    comptime INTENSITY = InternalFormat(0x8049)
    comptime INTENSITY4 = InternalFormat(0x804A)
    comptime INTENSITY4_EXT = InternalFormat(0x804A)
    comptime INTENSITY8 = InternalFormat(0x804B)
    comptime INTENSITY8_EXT = InternalFormat(0x804B)
    comptime INTENSITY12 = InternalFormat(0x804C)
    comptime INTENSITY12_EXT = InternalFormat(0x804C)
    comptime INTENSITY16 = InternalFormat(0x804D)
    comptime INTENSITY16_EXT = InternalFormat(0x804D)
    comptime RGB2_EXT = InternalFormat(0x804E)
    comptime RGB4 = InternalFormat(0x804F)
    comptime RGB4_EXT = InternalFormat(0x804F)
    comptime RGB5 = InternalFormat(0x8050)
    comptime RGB5_EXT = InternalFormat(0x8050)
    comptime RGB8 = InternalFormat(0x8051)
    comptime RGB8_EXT = InternalFormat(0x8051)
    comptime RGB8_OES = InternalFormat(0x8051)
    comptime RGB10 = InternalFormat(0x8052)
    comptime RGB10_EXT = InternalFormat(0x8052)
    comptime RGB12 = InternalFormat(0x8053)
    comptime RGB12_EXT = InternalFormat(0x8053)
    comptime RGB16 = InternalFormat(0x8054)
    comptime RGB16_EXT = InternalFormat(0x8054)
    comptime RGBA2 = InternalFormat(0x8055)
    comptime RGBA2_EXT = InternalFormat(0x8055)
    comptime RGBA4 = InternalFormat(0x8056)
    comptime RGBA4_EXT = InternalFormat(0x8056)
    comptime RGBA4_OES = InternalFormat(0x8056)
    comptime RGB5_A1 = InternalFormat(0x8057)
    comptime RGB5_A1_EXT = InternalFormat(0x8057)
    comptime RGB5_A1_OES = InternalFormat(0x8057)
    comptime RGBA8 = InternalFormat(0x8058)
    comptime RGBA8_EXT = InternalFormat(0x8058)
    comptime RGBA8_OES = InternalFormat(0x8058)
    comptime RGB10_A2 = InternalFormat(0x8059)
    comptime RGB10_A2_EXT = InternalFormat(0x8059)
    comptime RGBA12 = InternalFormat(0x805A)
    comptime RGBA12_EXT = InternalFormat(0x805A)
    comptime RGBA16 = InternalFormat(0x805B)
    comptime RGBA16_EXT = InternalFormat(0x805B)
    comptime DUAL_ALPHA4_SGIS = InternalFormat(0x8110)
    comptime DUAL_ALPHA8_SGIS = InternalFormat(0x8111)
    comptime DUAL_ALPHA12_SGIS = InternalFormat(0x8112)
    comptime DUAL_ALPHA16_SGIS = InternalFormat(0x8113)
    comptime DUAL_LUMINANCE4_SGIS = InternalFormat(0x8114)
    comptime DUAL_LUMINANCE8_SGIS = InternalFormat(0x8115)
    comptime DUAL_LUMINANCE12_SGIS = InternalFormat(0x8116)
    comptime DUAL_LUMINANCE16_SGIS = InternalFormat(0x8117)
    comptime DUAL_INTENSITY4_SGIS = InternalFormat(0x8118)
    comptime DUAL_INTENSITY8_SGIS = InternalFormat(0x8119)
    comptime DUAL_INTENSITY12_SGIS = InternalFormat(0x811A)
    comptime DUAL_INTENSITY16_SGIS = InternalFormat(0x811B)
    comptime DUAL_LUMINANCE_ALPHA4_SGIS = InternalFormat(0x811C)
    comptime DUAL_LUMINANCE_ALPHA8_SGIS = InternalFormat(0x811D)
    comptime QUAD_ALPHA4_SGIS = InternalFormat(0x811E)
    comptime QUAD_ALPHA8_SGIS = InternalFormat(0x811F)
    comptime QUAD_LUMINANCE4_SGIS = InternalFormat(0x8120)
    comptime QUAD_LUMINANCE8_SGIS = InternalFormat(0x8121)
    comptime QUAD_INTENSITY4_SGIS = InternalFormat(0x8122)
    comptime QUAD_INTENSITY8_SGIS = InternalFormat(0x8123)
    comptime DEPTH_COMPONENT16 = InternalFormat(0x81A5)
    comptime DEPTH_COMPONENT16_ARB = InternalFormat(0x81A5)
    comptime DEPTH_COMPONENT16_OES = InternalFormat(0x81A5)
    comptime DEPTH_COMPONENT16_SGIX = InternalFormat(0x81A5)
    comptime DEPTH_COMPONENT24 = InternalFormat(0x81A6)
    comptime DEPTH_COMPONENT24_ARB = InternalFormat(0x81A6)
    comptime DEPTH_COMPONENT24_OES = InternalFormat(0x81A6)
    comptime DEPTH_COMPONENT24_SGIX = InternalFormat(0x81A6)
    comptime DEPTH_COMPONENT32 = InternalFormat(0x81A7)
    comptime DEPTH_COMPONENT32_ARB = InternalFormat(0x81A7)
    comptime DEPTH_COMPONENT32_OES = InternalFormat(0x81A7)
    comptime DEPTH_COMPONENT32_SGIX = InternalFormat(0x81A7)
    comptime COMPRESSED_RED = InternalFormat(0x8225)
    comptime COMPRESSED_RG = InternalFormat(0x8226)
    comptime RG = InternalFormat(0x8227)
    comptime R8 = InternalFormat(0x8229)
    comptime R8_EXT = InternalFormat(0x8229)
    comptime R16 = InternalFormat(0x822A)
    comptime R16_EXT = InternalFormat(0x822A)
    comptime RG8 = InternalFormat(0x822B)
    comptime RG8_EXT = InternalFormat(0x822B)
    comptime RG16 = InternalFormat(0x822C)
    comptime RG16_EXT = InternalFormat(0x822C)
    comptime R16F = InternalFormat(0x822D)
    comptime R16F_EXT = InternalFormat(0x822D)
    comptime R32F = InternalFormat(0x822E)
    comptime R32F_EXT = InternalFormat(0x822E)
    comptime RG16F = InternalFormat(0x822F)
    comptime RG16F_EXT = InternalFormat(0x822F)
    comptime RG32F = InternalFormat(0x8230)
    comptime RG32F_EXT = InternalFormat(0x8230)
    comptime R8I = InternalFormat(0x8231)
    comptime R8UI = InternalFormat(0x8232)
    comptime R16I = InternalFormat(0x8233)
    comptime R16UI = InternalFormat(0x8234)
    comptime R32I = InternalFormat(0x8235)
    comptime R32UI = InternalFormat(0x8236)
    comptime RG8I = InternalFormat(0x8237)
    comptime RG8UI = InternalFormat(0x8238)
    comptime RG16I = InternalFormat(0x8239)
    comptime RG16UI = InternalFormat(0x823A)
    comptime RG32I = InternalFormat(0x823B)
    comptime RG32UI = InternalFormat(0x823C)
    comptime COMPRESSED_RGB_S3TC_DXT1_EXT = InternalFormat(0x83F0)
    comptime COMPRESSED_RGBA_S3TC_DXT1_EXT = InternalFormat(0x83F1)
    comptime COMPRESSED_RGBA_S3TC_DXT3_ANGLE = InternalFormat(0x83F2)
    comptime COMPRESSED_RGBA_S3TC_DXT3_EXT = InternalFormat(0x83F2)
    comptime COMPRESSED_RGBA_S3TC_DXT5_ANGLE = InternalFormat(0x83F3)
    comptime COMPRESSED_RGBA_S3TC_DXT5_EXT = InternalFormat(0x83F3)
    comptime COMPRESSED_RGB = InternalFormat(0x84ED)
    comptime COMPRESSED_RGBA = InternalFormat(0x84EE)
    comptime DEPTH_STENCIL = InternalFormat(0x84F9)
    comptime DEPTH_STENCIL_EXT = InternalFormat(0x84F9)
    comptime DEPTH_STENCIL_NV = InternalFormat(0x84F9)
    comptime DEPTH_STENCIL_OES = InternalFormat(0x84F9)
    comptime DEPTH_STENCIL_MESA = InternalFormat(0x8750)
    comptime RGBA32F = InternalFormat(0x8814)
    comptime RGBA32F_ARB = InternalFormat(0x8814)
    comptime RGBA32F_EXT = InternalFormat(0x8814)
    comptime RGB32F = InternalFormat(0x8815)
    comptime RGB32F_ARB = InternalFormat(0x8815)
    comptime RGB32F_EXT = InternalFormat(0x8815)
    comptime RGBA16F = InternalFormat(0x881A)
    comptime RGBA16F_ARB = InternalFormat(0x881A)
    comptime RGBA16F_EXT = InternalFormat(0x881A)
    comptime RGB16F = InternalFormat(0x881B)
    comptime RGB16F_ARB = InternalFormat(0x881B)
    comptime RGB16F_EXT = InternalFormat(0x881B)
    comptime DEPTH24_STENCIL8 = InternalFormat(0x88F0)
    comptime DEPTH24_STENCIL8_EXT = InternalFormat(0x88F0)
    comptime DEPTH24_STENCIL8_OES = InternalFormat(0x88F0)
    comptime R11F_G11F_B10F = InternalFormat(0x8C3A)
    comptime R11F_G11F_B10F_APPLE = InternalFormat(0x8C3A)
    comptime R11F_G11F_B10F_EXT = InternalFormat(0x8C3A)
    comptime RGB9_E5 = InternalFormat(0x8C3D)
    comptime RGB9_E5_APPLE = InternalFormat(0x8C3D)
    comptime RGB9_E5_EXT = InternalFormat(0x8C3D)
    comptime SRGB = InternalFormat(0x8C40)
    comptime SRGB_EXT = InternalFormat(0x8C40)
    comptime SRGB8 = InternalFormat(0x8C41)
    comptime SRGB8_EXT = InternalFormat(0x8C41)
    comptime SRGB8_NV = InternalFormat(0x8C41)
    comptime SRGB_ALPHA = InternalFormat(0x8C42)
    comptime SRGB_ALPHA_EXT = InternalFormat(0x8C42)
    comptime SRGB8_ALPHA8 = InternalFormat(0x8C43)
    comptime SRGB8_ALPHA8_EXT = InternalFormat(0x8C43)
    comptime COMPRESSED_SRGB = InternalFormat(0x8C48)
    comptime COMPRESSED_SRGB_ALPHA = InternalFormat(0x8C49)
    comptime COMPRESSED_SRGB_S3TC_DXT1_EXT = InternalFormat(0x8C4C)
    comptime COMPRESSED_SRGB_S3TC_DXT1_NV = InternalFormat(0x8C4C)
    comptime COMPRESSED_SRGB_ALPHA_S3TC_DXT1_EXT = InternalFormat(0x8C4D)
    comptime COMPRESSED_SRGB_ALPHA_S3TC_DXT1_NV = InternalFormat(0x8C4D)
    comptime COMPRESSED_SRGB_ALPHA_S3TC_DXT3_EXT = InternalFormat(0x8C4E)
    comptime COMPRESSED_SRGB_ALPHA_S3TC_DXT3_NV = InternalFormat(0x8C4E)
    comptime COMPRESSED_SRGB_ALPHA_S3TC_DXT5_EXT = InternalFormat(0x8C4F)
    comptime COMPRESSED_SRGB_ALPHA_S3TC_DXT5_NV = InternalFormat(0x8C4F)
    comptime DEPTH_COMPONENT32F = InternalFormat(0x8CAC)
    comptime DEPTH32F_STENCIL8 = InternalFormat(0x8CAD)
    comptime STENCIL_INDEX1 = InternalFormat(0x8D46)
    comptime STENCIL_INDEX1_EXT = InternalFormat(0x8D46)
    comptime STENCIL_INDEX1_OES = InternalFormat(0x8D46)
    comptime STENCIL_INDEX4 = InternalFormat(0x8D47)
    comptime STENCIL_INDEX4_EXT = InternalFormat(0x8D47)
    comptime STENCIL_INDEX4_OES = InternalFormat(0x8D47)
    comptime STENCIL_INDEX8 = InternalFormat(0x8D48)
    comptime STENCIL_INDEX8_EXT = InternalFormat(0x8D48)
    comptime STENCIL_INDEX8_OES = InternalFormat(0x8D48)
    comptime STENCIL_INDEX16 = InternalFormat(0x8D49)
    comptime STENCIL_INDEX16_EXT = InternalFormat(0x8D49)
    comptime RGB565_OES = InternalFormat(0x8D62)
    comptime RGB565 = InternalFormat(0x8D62)
    comptime ETC1_RGB8_OES = InternalFormat(0x8D64)
    comptime RGBA32UI = InternalFormat(0x8D70)
    comptime RGBA32UI_EXT = InternalFormat(0x8D70)
    comptime RGB32UI = InternalFormat(0x8D71)
    comptime RGB32UI_EXT = InternalFormat(0x8D71)
    comptime ALPHA32UI_EXT = InternalFormat(0x8D72)
    comptime INTENSITY32UI_EXT = InternalFormat(0x8D73)
    comptime LUMINANCE32UI_EXT = InternalFormat(0x8D74)
    comptime LUMINANCE_ALPHA32UI_EXT = InternalFormat(0x8D75)
    comptime RGBA16UI = InternalFormat(0x8D76)
    comptime RGBA16UI_EXT = InternalFormat(0x8D76)
    comptime RGB16UI = InternalFormat(0x8D77)
    comptime RGB16UI_EXT = InternalFormat(0x8D77)
    comptime ALPHA16UI_EXT = InternalFormat(0x8D78)
    comptime INTENSITY16UI_EXT = InternalFormat(0x8D79)
    comptime LUMINANCE16UI_EXT = InternalFormat(0x8D7A)
    comptime LUMINANCE_ALPHA16UI_EXT = InternalFormat(0x8D7B)
    comptime RGBA8UI = InternalFormat(0x8D7C)
    comptime RGBA8UI_EXT = InternalFormat(0x8D7C)
    comptime RGB8UI = InternalFormat(0x8D7D)
    comptime RGB8UI_EXT = InternalFormat(0x8D7D)
    comptime ALPHA8UI_EXT = InternalFormat(0x8D7E)
    comptime INTENSITY8UI_EXT = InternalFormat(0x8D7F)
    comptime LUMINANCE8UI_EXT = InternalFormat(0x8D80)
    comptime LUMINANCE_ALPHA8UI_EXT = InternalFormat(0x8D81)
    comptime RGBA32I = InternalFormat(0x8D82)
    comptime RGBA32I_EXT = InternalFormat(0x8D82)
    comptime RGB32I = InternalFormat(0x8D83)
    comptime RGB32I_EXT = InternalFormat(0x8D83)
    comptime ALPHA32I_EXT = InternalFormat(0x8D84)
    comptime INTENSITY32I_EXT = InternalFormat(0x8D85)
    comptime LUMINANCE32I_EXT = InternalFormat(0x8D86)
    comptime LUMINANCE_ALPHA32I_EXT = InternalFormat(0x8D87)
    comptime RGBA16I = InternalFormat(0x8D88)
    comptime RGBA16I_EXT = InternalFormat(0x8D88)
    comptime RGB16I = InternalFormat(0x8D89)
    comptime RGB16I_EXT = InternalFormat(0x8D89)
    comptime ALPHA16I_EXT = InternalFormat(0x8D8A)
    comptime INTENSITY16I_EXT = InternalFormat(0x8D8B)
    comptime LUMINANCE16I_EXT = InternalFormat(0x8D8C)
    comptime LUMINANCE_ALPHA16I_EXT = InternalFormat(0x8D8D)
    comptime RGBA8I = InternalFormat(0x8D8E)
    comptime RGBA8I_EXT = InternalFormat(0x8D8E)
    comptime RGB8I = InternalFormat(0x8D8F)
    comptime RGB8I_EXT = InternalFormat(0x8D8F)
    comptime ALPHA8I_EXT = InternalFormat(0x8D90)
    comptime INTENSITY8I_EXT = InternalFormat(0x8D91)
    comptime LUMINANCE8I_EXT = InternalFormat(0x8D92)
    comptime LUMINANCE_ALPHA8I_EXT = InternalFormat(0x8D93)
    comptime DEPTH_COMPONENT32F_NV = InternalFormat(0x8DAB)
    comptime DEPTH32F_STENCIL8_NV = InternalFormat(0x8DAC)
    comptime COMPRESSED_RED_RGTC1 = InternalFormat(0x8DBB)
    comptime COMPRESSED_RED_RGTC1_EXT = InternalFormat(0x8DBB)
    comptime COMPRESSED_SIGNED_RED_RGTC1 = InternalFormat(0x8DBC)
    comptime COMPRESSED_SIGNED_RED_RGTC1_EXT = InternalFormat(0x8DBC)
    comptime COMPRESSED_RED_GREEN_RGTC2_EXT = InternalFormat(0x8DBD)
    comptime COMPRESSED_RG_RGTC2 = InternalFormat(0x8DBD)
    comptime COMPRESSED_SIGNED_RED_GREEN_RGTC2_EXT = InternalFormat(0x8DBE)
    comptime COMPRESSED_SIGNED_RG_RGTC2 = InternalFormat(0x8DBE)
    comptime COMPRESSED_RGBA_BPTC_UNORM = InternalFormat(0x8E8C)
    comptime COMPRESSED_RGBA_BPTC_UNORM_ARB = InternalFormat(0x8E8C)
    comptime COMPRESSED_RGBA_BPTC_UNORM_EXT = InternalFormat(0x8E8C)
    comptime COMPRESSED_SRGB_ALPHA_BPTC_UNORM = InternalFormat(0x8E8D)
    comptime COMPRESSED_SRGB_ALPHA_BPTC_UNORM_ARB = InternalFormat(0x8E8D)
    comptime COMPRESSED_SRGB_ALPHA_BPTC_UNORM_EXT = InternalFormat(0x8E8D)
    comptime COMPRESSED_RGB_BPTC_SIGNED_FLOAT = InternalFormat(0x8E8E)
    comptime COMPRESSED_RGB_BPTC_SIGNED_FLOAT_ARB = InternalFormat(0x8E8E)
    comptime COMPRESSED_RGB_BPTC_SIGNED_FLOAT_EXT = InternalFormat(0x8E8E)
    comptime COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT = InternalFormat(0x8E8F)
    comptime COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT_ARB = InternalFormat(0x8E8F)
    comptime COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT_EXT = InternalFormat(0x8E8F)
    comptime R8_SNORM = InternalFormat(0x8F94)
    comptime RG8_SNORM = InternalFormat(0x8F95)
    comptime RGB8_SNORM = InternalFormat(0x8F96)
    comptime RGBA8_SNORM = InternalFormat(0x8F97)
    comptime R16_SNORM = InternalFormat(0x8F98)
    comptime R16_SNORM_EXT = InternalFormat(0x8F98)
    comptime RG16_SNORM = InternalFormat(0x8F99)
    comptime RG16_SNORM_EXT = InternalFormat(0x8F99)
    comptime RGB16_SNORM = InternalFormat(0x8F9A)
    comptime RGB16_SNORM_EXT = InternalFormat(0x8F9A)
    comptime RGBA16_SNORM = InternalFormat(0x8F9B)
    comptime RGBA16_SNORM_EXT = InternalFormat(0x8F9B)
    comptime SR8_EXT = InternalFormat(0x8FBD)
    comptime SRG8_EXT = InternalFormat(0x8FBE)
    comptime RGB10_A2UI = InternalFormat(0x906F)
    comptime COMPRESSED_R11_EAC = InternalFormat(0x9270)
    comptime COMPRESSED_R11_EAC_OES = InternalFormat(0x9270)
    comptime COMPRESSED_SIGNED_R11_EAC = InternalFormat(0x9271)
    comptime COMPRESSED_SIGNED_R11_EAC_OES = InternalFormat(0x9271)
    comptime COMPRESSED_RG11_EAC = InternalFormat(0x9272)
    comptime COMPRESSED_RG11_EAC_OES = InternalFormat(0x9272)
    comptime COMPRESSED_SIGNED_RG11_EAC = InternalFormat(0x9273)
    comptime COMPRESSED_SIGNED_RG11_EAC_OES = InternalFormat(0x9273)
    comptime COMPRESSED_RGB8_ETC2 = InternalFormat(0x9274)
    comptime COMPRESSED_RGB8_ETC2_OES = InternalFormat(0x9274)
    comptime COMPRESSED_SRGB8_ETC2 = InternalFormat(0x9275)
    comptime COMPRESSED_SRGB8_ETC2_OES = InternalFormat(0x9275)
    comptime COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2 = InternalFormat(0x9276)
    comptime COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2_OES = InternalFormat(0x9276)
    comptime COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2 = InternalFormat(0x9277)
    comptime COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2_OES = InternalFormat(0x9277)
    comptime COMPRESSED_RGBA8_ETC2_EAC = InternalFormat(0x9278)
    comptime COMPRESSED_RGBA8_ETC2_EAC_OES = InternalFormat(0x9278)
    comptime COMPRESSED_SRGB8_ALPHA8_ETC2_EAC = InternalFormat(0x9279)
    comptime COMPRESSED_SRGB8_ALPHA8_ETC2_EAC_OES = InternalFormat(0x9279)
    comptime COMPRESSED_RGBA_ASTC_4x4 = InternalFormat(0x93B0)
    comptime COMPRESSED_RGBA_ASTC_4x4_KHR = InternalFormat(0x93B0)
    comptime COMPRESSED_RGBA_ASTC_5x4 = InternalFormat(0x93B1)
    comptime COMPRESSED_RGBA_ASTC_5x4_KHR = InternalFormat(0x93B1)
    comptime COMPRESSED_RGBA_ASTC_5x5 = InternalFormat(0x93B2)
    comptime COMPRESSED_RGBA_ASTC_5x5_KHR = InternalFormat(0x93B2)
    comptime COMPRESSED_RGBA_ASTC_6x5 = InternalFormat(0x93B3)
    comptime COMPRESSED_RGBA_ASTC_6x5_KHR = InternalFormat(0x93B3)
    comptime COMPRESSED_RGBA_ASTC_6x6 = InternalFormat(0x93B4)
    comptime COMPRESSED_RGBA_ASTC_6x6_KHR = InternalFormat(0x93B4)
    comptime COMPRESSED_RGBA_ASTC_8x5 = InternalFormat(0x93B5)
    comptime COMPRESSED_RGBA_ASTC_8x5_KHR = InternalFormat(0x93B5)
    comptime COMPRESSED_RGBA_ASTC_8x6 = InternalFormat(0x93B6)
    comptime COMPRESSED_RGBA_ASTC_8x6_KHR = InternalFormat(0x93B6)
    comptime COMPRESSED_RGBA_ASTC_8x8 = InternalFormat(0x93B7)
    comptime COMPRESSED_RGBA_ASTC_8x8_KHR = InternalFormat(0x93B7)
    comptime COMPRESSED_RGBA_ASTC_10x5 = InternalFormat(0x93B8)
    comptime COMPRESSED_RGBA_ASTC_10x5_KHR = InternalFormat(0x93B8)
    comptime COMPRESSED_RGBA_ASTC_10x6 = InternalFormat(0x93B9)
    comptime COMPRESSED_RGBA_ASTC_10x6_KHR = InternalFormat(0x93B9)
    comptime COMPRESSED_RGBA_ASTC_10x8 = InternalFormat(0x93BA)
    comptime COMPRESSED_RGBA_ASTC_10x8_KHR = InternalFormat(0x93BA)
    comptime COMPRESSED_RGBA_ASTC_10x10 = InternalFormat(0x93BB)
    comptime COMPRESSED_RGBA_ASTC_10x10_KHR = InternalFormat(0x93BB)
    comptime COMPRESSED_RGBA_ASTC_12x10 = InternalFormat(0x93BC)
    comptime COMPRESSED_RGBA_ASTC_12x10_KHR = InternalFormat(0x93BC)
    comptime COMPRESSED_RGBA_ASTC_12x12 = InternalFormat(0x93BD)
    comptime COMPRESSED_RGBA_ASTC_12x12_KHR = InternalFormat(0x93BD)
    comptime COMPRESSED_RGBA_ASTC_3x3x3_OES = InternalFormat(0x93C0)
    comptime COMPRESSED_RGBA_ASTC_4x3x3_OES = InternalFormat(0x93C1)
    comptime COMPRESSED_RGBA_ASTC_4x4x3_OES = InternalFormat(0x93C2)
    comptime COMPRESSED_RGBA_ASTC_4x4x4_OES = InternalFormat(0x93C3)
    comptime COMPRESSED_RGBA_ASTC_5x4x4_OES = InternalFormat(0x93C4)
    comptime COMPRESSED_RGBA_ASTC_5x5x4_OES = InternalFormat(0x93C5)
    comptime COMPRESSED_RGBA_ASTC_5x5x5_OES = InternalFormat(0x93C6)
    comptime COMPRESSED_RGBA_ASTC_6x5x5_OES = InternalFormat(0x93C7)
    comptime COMPRESSED_RGBA_ASTC_6x6x5_OES = InternalFormat(0x93C8)
    comptime COMPRESSED_RGBA_ASTC_6x6x6_OES = InternalFormat(0x93C9)
    comptime COMPRESSED_SRGB8_ALPHA8_ASTC_4x4 = InternalFormat(0x93D0)
    comptime COMPRESSED_SRGB8_ALPHA8_ASTC_4x4_KHR = InternalFormat(0x93D0)
    comptime COMPRESSED_SRGB8_ALPHA8_ASTC_5x4 = InternalFormat(0x93D1)
    comptime COMPRESSED_SRGB8_ALPHA8_ASTC_5x4_KHR = InternalFormat(0x93D1)
    comptime COMPRESSED_SRGB8_ALPHA8_ASTC_5x5 = InternalFormat(0x93D2)
    comptime COMPRESSED_SRGB8_ALPHA8_ASTC_5x5_KHR = InternalFormat(0x93D2)
    comptime COMPRESSED_SRGB8_ALPHA8_ASTC_6x5 = InternalFormat(0x93D3)
    comptime COMPRESSED_SRGB8_ALPHA8_ASTC_6x5_KHR = InternalFormat(0x93D3)
    comptime COMPRESSED_SRGB8_ALPHA8_ASTC_6x6 = InternalFormat(0x93D4)
    comptime COMPRESSED_SRGB8_ALPHA8_ASTC_6x6_KHR = InternalFormat(0x93D4)
    comptime COMPRESSED_SRGB8_ALPHA8_ASTC_8x5 = InternalFormat(0x93D5)
    comptime COMPRESSED_SRGB8_ALPHA8_ASTC_8x5_KHR = InternalFormat(0x93D5)
    comptime COMPRESSED_SRGB8_ALPHA8_ASTC_8x6 = InternalFormat(0x93D6)
    comptime COMPRESSED_SRGB8_ALPHA8_ASTC_8x6_KHR = InternalFormat(0x93D6)
    comptime COMPRESSED_SRGB8_ALPHA8_ASTC_8x8 = InternalFormat(0x93D7)
    comptime COMPRESSED_SRGB8_ALPHA8_ASTC_8x8_KHR = InternalFormat(0x93D7)
    comptime COMPRESSED_SRGB8_ALPHA8_ASTC_10x5 = InternalFormat(0x93D8)
    comptime COMPRESSED_SRGB8_ALPHA8_ASTC_10x5_KHR = InternalFormat(0x93D8)
    comptime COMPRESSED_SRGB8_ALPHA8_ASTC_10x6 = InternalFormat(0x93D9)
    comptime COMPRESSED_SRGB8_ALPHA8_ASTC_10x6_KHR = InternalFormat(0x93D9)
    comptime COMPRESSED_SRGB8_ALPHA8_ASTC_10x8 = InternalFormat(0x93DA)
    comptime COMPRESSED_SRGB8_ALPHA8_ASTC_10x8_KHR = InternalFormat(0x93DA)
    comptime COMPRESSED_SRGB8_ALPHA8_ASTC_10x10 = InternalFormat(0x93DB)
    comptime COMPRESSED_SRGB8_ALPHA8_ASTC_10x10_KHR = InternalFormat(0x93DB)
    comptime COMPRESSED_SRGB8_ALPHA8_ASTC_12x10 = InternalFormat(0x93DC)
    comptime COMPRESSED_SRGB8_ALPHA8_ASTC_12x10_KHR = InternalFormat(0x93DC)
    comptime COMPRESSED_SRGB8_ALPHA8_ASTC_12x12 = InternalFormat(0x93DD)
    comptime COMPRESSED_SRGB8_ALPHA8_ASTC_12x12_KHR = InternalFormat(0x93DD)
    comptime COMPRESSED_SRGB8_ALPHA8_ASTC_3x3x3_OES = InternalFormat(0x93E0)
    comptime COMPRESSED_SRGB8_ALPHA8_ASTC_4x3x3_OES = InternalFormat(0x93E1)
    comptime COMPRESSED_SRGB8_ALPHA8_ASTC_4x4x3_OES = InternalFormat(0x93E2)
    comptime COMPRESSED_SRGB8_ALPHA8_ASTC_4x4x4_OES = InternalFormat(0x93E3)
    comptime COMPRESSED_SRGB8_ALPHA8_ASTC_5x4x4_OES = InternalFormat(0x93E4)
    comptime COMPRESSED_SRGB8_ALPHA8_ASTC_5x5x4_OES = InternalFormat(0x93E5)
    comptime COMPRESSED_SRGB8_ALPHA8_ASTC_5x5x5_OES = InternalFormat(0x93E6)
    comptime COMPRESSED_SRGB8_ALPHA8_ASTC_6x5x5_OES = InternalFormat(0x93E7)
    comptime COMPRESSED_SRGB8_ALPHA8_ASTC_6x6x5_OES = InternalFormat(0x93E8)
    comptime COMPRESSED_SRGB8_ALPHA8_ASTC_6x6x6_OES = InternalFormat(0x93E9)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct InternalFormatPName(Intable):
    var value: GLenum

    comptime SAMPLES = InternalFormatPName(0x80A9)
    comptime GENERATE_MIPMAP = InternalFormatPName(0x8191)
    comptime INTERNALFORMAT_SUPPORTED = InternalFormatPName(0x826F)
    comptime INTERNALFORMAT_PREFERRED = InternalFormatPName(0x8270)
    comptime INTERNALFORMAT_RED_SIZE = InternalFormatPName(0x8271)
    comptime INTERNALFORMAT_GREEN_SIZE = InternalFormatPName(0x8272)
    comptime INTERNALFORMAT_BLUE_SIZE = InternalFormatPName(0x8273)
    comptime INTERNALFORMAT_ALPHA_SIZE = InternalFormatPName(0x8274)
    comptime INTERNALFORMAT_DEPTH_SIZE = InternalFormatPName(0x8275)
    comptime INTERNALFORMAT_STENCIL_SIZE = InternalFormatPName(0x8276)
    comptime INTERNALFORMAT_SHARED_SIZE = InternalFormatPName(0x8277)
    comptime INTERNALFORMAT_RED_TYPE = InternalFormatPName(0x8278)
    comptime INTERNALFORMAT_GREEN_TYPE = InternalFormatPName(0x8279)
    comptime INTERNALFORMAT_BLUE_TYPE = InternalFormatPName(0x827A)
    comptime INTERNALFORMAT_ALPHA_TYPE = InternalFormatPName(0x827B)
    comptime INTERNALFORMAT_DEPTH_TYPE = InternalFormatPName(0x827C)
    comptime INTERNALFORMAT_STENCIL_TYPE = InternalFormatPName(0x827D)
    comptime MAX_WIDTH = InternalFormatPName(0x827E)
    comptime MAX_HEIGHT = InternalFormatPName(0x827F)
    comptime MAX_DEPTH = InternalFormatPName(0x8280)
    comptime MAX_LAYERS = InternalFormatPName(0x8281)
    comptime COLOR_COMPONENTS = InternalFormatPName(0x8283)
    comptime COLOR_RENDERABLE = InternalFormatPName(0x8286)
    comptime DEPTH_RENDERABLE = InternalFormatPName(0x8287)
    comptime STENCIL_RENDERABLE = InternalFormatPName(0x8288)
    comptime FRAMEBUFFER_RENDERABLE = InternalFormatPName(0x8289)
    comptime FRAMEBUFFER_RENDERABLE_LAYERED = InternalFormatPName(0x828A)
    comptime FRAMEBUFFER_BLEND = InternalFormatPName(0x828B)
    comptime READ_PIXELS = InternalFormatPName(0x828C)
    comptime READ_PIXELS_FORMAT = InternalFormatPName(0x828D)
    comptime READ_PIXELS_TYPE = InternalFormatPName(0x828E)
    comptime TEXTURE_IMAGE_FORMAT = InternalFormatPName(0x828F)
    comptime TEXTURE_IMAGE_TYPE = InternalFormatPName(0x8290)
    comptime GET_TEXTURE_IMAGE_FORMAT = InternalFormatPName(0x8291)
    comptime GET_TEXTURE_IMAGE_TYPE = InternalFormatPName(0x8292)
    comptime MIPMAP = InternalFormatPName(0x8293)
    comptime AUTO_GENERATE_MIPMAP = InternalFormatPName(0x8295)
    comptime COLOR_ENCODING = InternalFormatPName(0x8296)
    comptime SRGB_READ = InternalFormatPName(0x8297)
    comptime SRGB_WRITE = InternalFormatPName(0x8298)
    comptime FILTER = InternalFormatPName(0x829A)
    comptime VERTEX_TEXTURE = InternalFormatPName(0x829B)
    comptime TESS_CONTROL_TEXTURE = InternalFormatPName(0x829C)
    comptime TESS_EVALUATION_TEXTURE = InternalFormatPName(0x829D)
    comptime GEOMETRY_TEXTURE = InternalFormatPName(0x829E)
    comptime FRAGMENT_TEXTURE = InternalFormatPName(0x829F)
    comptime COMPUTE_TEXTURE = InternalFormatPName(0x82A0)
    comptime TEXTURE_SHADOW = InternalFormatPName(0x82A1)
    comptime TEXTURE_GATHER = InternalFormatPName(0x82A2)
    comptime TEXTURE_GATHER_SHADOW = InternalFormatPName(0x82A3)
    comptime SHADER_IMAGE_LOAD = InternalFormatPName(0x82A4)
    comptime SHADER_IMAGE_STORE = InternalFormatPName(0x82A5)
    comptime SHADER_IMAGE_ATOMIC = InternalFormatPName(0x82A6)
    comptime IMAGE_TEXEL_SIZE = InternalFormatPName(0x82A7)
    comptime IMAGE_COMPATIBILITY_CLASS = InternalFormatPName(0x82A8)
    comptime IMAGE_PIXEL_FORMAT = InternalFormatPName(0x82A9)
    comptime IMAGE_PIXEL_TYPE = InternalFormatPName(0x82AA)
    comptime SIMULTANEOUS_TEXTURE_AND_DEPTH_TEST = InternalFormatPName(0x82AC)
    comptime SIMULTANEOUS_TEXTURE_AND_STENCIL_TEST = InternalFormatPName(0x82AD)
    comptime SIMULTANEOUS_TEXTURE_AND_DEPTH_WRITE = InternalFormatPName(0x82AE)
    comptime SIMULTANEOUS_TEXTURE_AND_STENCIL_WRITE = InternalFormatPName(0x82AF)
    comptime TEXTURE_COMPRESSED_BLOCK_WIDTH = InternalFormatPName(0x82B1)
    comptime TEXTURE_COMPRESSED_BLOCK_HEIGHT = InternalFormatPName(0x82B2)
    comptime TEXTURE_COMPRESSED_BLOCK_SIZE = InternalFormatPName(0x82B3)
    comptime CLEAR_BUFFER = InternalFormatPName(0x82B4)
    comptime TEXTURE_VIEW = InternalFormatPName(0x82B5)
    comptime VIEW_COMPATIBILITY_CLASS = InternalFormatPName(0x82B6)
    comptime TEXTURE_COMPRESSED = InternalFormatPName(0x86A1)
    comptime NUM_SURFACE_COMPRESSION_FIXED_RATES_EXT = InternalFormatPName(0x8F6E)
    comptime IMAGE_FORMAT_COMPATIBILITY_TYPE = InternalFormatPName(0x90C7)
    comptime CLEAR_TEXTURE = InternalFormatPName(0x9365)
    comptime NUM_SAMPLE_COUNTS = InternalFormatPName(0x9380)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct InvalidateFramebufferAttachment(Intable):
    var value: GLenum

    comptime COLOR = InvalidateFramebufferAttachment(0x1800)
    comptime DEPTH = InvalidateFramebufferAttachment(0x1801)
    comptime STENCIL = InvalidateFramebufferAttachment(0x1802)
    comptime DEPTH_STENCIL_ATTACHMENT = InvalidateFramebufferAttachment(0x821A)
    comptime COLOR_ATTACHMENT0 = InvalidateFramebufferAttachment(0x8CE0)
    comptime COLOR_ATTACHMENT0_EXT = InvalidateFramebufferAttachment(0x8CE0)
    comptime COLOR_ATTACHMENT0_NV = InvalidateFramebufferAttachment(0x8CE0)
    comptime COLOR_ATTACHMENT0_OES = InvalidateFramebufferAttachment(0x8CE0)
    comptime COLOR_ATTACHMENT1 = InvalidateFramebufferAttachment(0x8CE1)
    comptime COLOR_ATTACHMENT1_EXT = InvalidateFramebufferAttachment(0x8CE1)
    comptime COLOR_ATTACHMENT1_NV = InvalidateFramebufferAttachment(0x8CE1)
    comptime COLOR_ATTACHMENT2 = InvalidateFramebufferAttachment(0x8CE2)
    comptime COLOR_ATTACHMENT2_EXT = InvalidateFramebufferAttachment(0x8CE2)
    comptime COLOR_ATTACHMENT2_NV = InvalidateFramebufferAttachment(0x8CE2)
    comptime COLOR_ATTACHMENT3 = InvalidateFramebufferAttachment(0x8CE3)
    comptime COLOR_ATTACHMENT3_EXT = InvalidateFramebufferAttachment(0x8CE3)
    comptime COLOR_ATTACHMENT3_NV = InvalidateFramebufferAttachment(0x8CE3)
    comptime COLOR_ATTACHMENT4 = InvalidateFramebufferAttachment(0x8CE4)
    comptime COLOR_ATTACHMENT4_EXT = InvalidateFramebufferAttachment(0x8CE4)
    comptime COLOR_ATTACHMENT4_NV = InvalidateFramebufferAttachment(0x8CE4)
    comptime COLOR_ATTACHMENT5 = InvalidateFramebufferAttachment(0x8CE5)
    comptime COLOR_ATTACHMENT5_EXT = InvalidateFramebufferAttachment(0x8CE5)
    comptime COLOR_ATTACHMENT5_NV = InvalidateFramebufferAttachment(0x8CE5)
    comptime COLOR_ATTACHMENT6 = InvalidateFramebufferAttachment(0x8CE6)
    comptime COLOR_ATTACHMENT6_EXT = InvalidateFramebufferAttachment(0x8CE6)
    comptime COLOR_ATTACHMENT6_NV = InvalidateFramebufferAttachment(0x8CE6)
    comptime COLOR_ATTACHMENT7 = InvalidateFramebufferAttachment(0x8CE7)
    comptime COLOR_ATTACHMENT7_EXT = InvalidateFramebufferAttachment(0x8CE7)
    comptime COLOR_ATTACHMENT7_NV = InvalidateFramebufferAttachment(0x8CE7)
    comptime COLOR_ATTACHMENT8 = InvalidateFramebufferAttachment(0x8CE8)
    comptime COLOR_ATTACHMENT8_EXT = InvalidateFramebufferAttachment(0x8CE8)
    comptime COLOR_ATTACHMENT8_NV = InvalidateFramebufferAttachment(0x8CE8)
    comptime COLOR_ATTACHMENT9 = InvalidateFramebufferAttachment(0x8CE9)
    comptime COLOR_ATTACHMENT9_EXT = InvalidateFramebufferAttachment(0x8CE9)
    comptime COLOR_ATTACHMENT9_NV = InvalidateFramebufferAttachment(0x8CE9)
    comptime COLOR_ATTACHMENT10 = InvalidateFramebufferAttachment(0x8CEA)
    comptime COLOR_ATTACHMENT10_EXT = InvalidateFramebufferAttachment(0x8CEA)
    comptime COLOR_ATTACHMENT10_NV = InvalidateFramebufferAttachment(0x8CEA)
    comptime COLOR_ATTACHMENT11 = InvalidateFramebufferAttachment(0x8CEB)
    comptime COLOR_ATTACHMENT11_EXT = InvalidateFramebufferAttachment(0x8CEB)
    comptime COLOR_ATTACHMENT11_NV = InvalidateFramebufferAttachment(0x8CEB)
    comptime COLOR_ATTACHMENT12 = InvalidateFramebufferAttachment(0x8CEC)
    comptime COLOR_ATTACHMENT12_EXT = InvalidateFramebufferAttachment(0x8CEC)
    comptime COLOR_ATTACHMENT12_NV = InvalidateFramebufferAttachment(0x8CEC)
    comptime COLOR_ATTACHMENT13 = InvalidateFramebufferAttachment(0x8CED)
    comptime COLOR_ATTACHMENT13_EXT = InvalidateFramebufferAttachment(0x8CED)
    comptime COLOR_ATTACHMENT13_NV = InvalidateFramebufferAttachment(0x8CED)
    comptime COLOR_ATTACHMENT14 = InvalidateFramebufferAttachment(0x8CEE)
    comptime COLOR_ATTACHMENT14_EXT = InvalidateFramebufferAttachment(0x8CEE)
    comptime COLOR_ATTACHMENT14_NV = InvalidateFramebufferAttachment(0x8CEE)
    comptime COLOR_ATTACHMENT15 = InvalidateFramebufferAttachment(0x8CEF)
    comptime COLOR_ATTACHMENT15_EXT = InvalidateFramebufferAttachment(0x8CEF)
    comptime COLOR_ATTACHMENT15_NV = InvalidateFramebufferAttachment(0x8CEF)
    comptime COLOR_ATTACHMENT16 = InvalidateFramebufferAttachment(0x8CF0)
    comptime COLOR_ATTACHMENT17 = InvalidateFramebufferAttachment(0x8CF1)
    comptime COLOR_ATTACHMENT18 = InvalidateFramebufferAttachment(0x8CF2)
    comptime COLOR_ATTACHMENT19 = InvalidateFramebufferAttachment(0x8CF3)
    comptime COLOR_ATTACHMENT20 = InvalidateFramebufferAttachment(0x8CF4)
    comptime COLOR_ATTACHMENT21 = InvalidateFramebufferAttachment(0x8CF5)
    comptime COLOR_ATTACHMENT22 = InvalidateFramebufferAttachment(0x8CF6)
    comptime COLOR_ATTACHMENT23 = InvalidateFramebufferAttachment(0x8CF7)
    comptime COLOR_ATTACHMENT24 = InvalidateFramebufferAttachment(0x8CF8)
    comptime COLOR_ATTACHMENT25 = InvalidateFramebufferAttachment(0x8CF9)
    comptime COLOR_ATTACHMENT26 = InvalidateFramebufferAttachment(0x8CFA)
    comptime COLOR_ATTACHMENT27 = InvalidateFramebufferAttachment(0x8CFB)
    comptime COLOR_ATTACHMENT28 = InvalidateFramebufferAttachment(0x8CFC)
    comptime COLOR_ATTACHMENT29 = InvalidateFramebufferAttachment(0x8CFD)
    comptime COLOR_ATTACHMENT30 = InvalidateFramebufferAttachment(0x8CFE)
    comptime COLOR_ATTACHMENT31 = InvalidateFramebufferAttachment(0x8CFF)
    comptime DEPTH_ATTACHMENT = InvalidateFramebufferAttachment(0x8D00)
    comptime DEPTH_ATTACHMENT_EXT = InvalidateFramebufferAttachment(0x8D00)
    comptime DEPTH_ATTACHMENT_OES = InvalidateFramebufferAttachment(0x8D00)
    comptime STENCIL_ATTACHMENT_EXT = InvalidateFramebufferAttachment(0x8D20)
    comptime STENCIL_ATTACHMENT_OES = InvalidateFramebufferAttachment(0x8D20)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct LogicOp(Intable):
    var value: GLenum

    comptime CLEAR = LogicOp(0x1500)
    comptime AND = LogicOp(0x1501)
    comptime AND_REVERSE = LogicOp(0x1502)
    comptime COPY = LogicOp(0x1503)
    comptime AND_INVERTED = LogicOp(0x1504)
    comptime NOOP = LogicOp(0x1505)
    comptime XOR = LogicOp(0x1506)
    comptime OR = LogicOp(0x1507)
    comptime NOR = LogicOp(0x1508)
    comptime EQUIV = LogicOp(0x1509)
    comptime INVERT = LogicOp(0x150A)
    comptime OR_REVERSE = LogicOp(0x150B)
    comptime COPY_INVERTED = LogicOp(0x150C)
    comptime OR_INVERTED = LogicOp(0x150D)
    comptime NAND = LogicOp(0x150E)
    comptime SET = LogicOp(0x150F)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct MapBufferAccessMask(Intable):
    var value: GLbitfield

    comptime MAP_READ_BIT = MapBufferAccessMask(0x0001)
    comptime MAP_READ_BIT_EXT = MapBufferAccessMask(0x0001)
    comptime MAP_WRITE_BIT = MapBufferAccessMask(0x0002)
    comptime MAP_WRITE_BIT_EXT = MapBufferAccessMask(0x0002)
    comptime MAP_INVALIDATE_RANGE_BIT = MapBufferAccessMask(0x0004)
    comptime MAP_INVALIDATE_RANGE_BIT_EXT = MapBufferAccessMask(0x0004)
    comptime MAP_INVALIDATE_BUFFER_BIT = MapBufferAccessMask(0x0008)
    comptime MAP_INVALIDATE_BUFFER_BIT_EXT = MapBufferAccessMask(0x0008)
    comptime MAP_FLUSH_EXPLICIT_BIT = MapBufferAccessMask(0x0010)
    comptime MAP_FLUSH_EXPLICIT_BIT_EXT = MapBufferAccessMask(0x0010)
    comptime MAP_UNSYNCHRONIZED_BIT = MapBufferAccessMask(0x0020)
    comptime MAP_UNSYNCHRONIZED_BIT_EXT = MapBufferAccessMask(0x0020)
    comptime MAP_PERSISTENT_BIT = MapBufferAccessMask(0x0040)
    comptime MAP_PERSISTENT_BIT_EXT = MapBufferAccessMask(0x0040)
    comptime MAP_COHERENT_BIT = MapBufferAccessMask(0x0080)
    comptime MAP_COHERENT_BIT_EXT = MapBufferAccessMask(0x0080)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)

    @always_inline
    fn __or__(lhs, rhs: Self) -> Self:
        return Self(lhs.value | rhs.value)


@fieldwise_init
@register_passable("trivial")
struct MapQuery(Intable):
    var value: GLenum

    comptime COEFF = MapQuery(0x0A00)
    comptime ORDER = MapQuery(0x0A01)
    comptime DOMAIN = MapQuery(0x0A02)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct MapTarget(Intable):
    var value: GLenum

    comptime MAP1_COLOR_4 = MapTarget(0x0D90)
    comptime MAP1_INDEX = MapTarget(0x0D91)
    comptime MAP1_NORMAL = MapTarget(0x0D92)
    comptime MAP1_TEXTURE_COORD_1 = MapTarget(0x0D93)
    comptime MAP1_TEXTURE_COORD_2 = MapTarget(0x0D94)
    comptime MAP1_TEXTURE_COORD_3 = MapTarget(0x0D95)
    comptime MAP1_TEXTURE_COORD_4 = MapTarget(0x0D96)
    comptime MAP1_VERTEX_3 = MapTarget(0x0D97)
    comptime MAP1_VERTEX_4 = MapTarget(0x0D98)
    comptime MAP2_COLOR_4 = MapTarget(0x0DB0)
    comptime MAP2_INDEX = MapTarget(0x0DB1)
    comptime MAP2_NORMAL = MapTarget(0x0DB2)
    comptime MAP2_TEXTURE_COORD_1 = MapTarget(0x0DB3)
    comptime MAP2_TEXTURE_COORD_2 = MapTarget(0x0DB4)
    comptime MAP2_TEXTURE_COORD_3 = MapTarget(0x0DB5)
    comptime MAP2_TEXTURE_COORD_4 = MapTarget(0x0DB6)
    comptime MAP2_VERTEX_3 = MapTarget(0x0DB7)
    comptime MAP2_VERTEX_4 = MapTarget(0x0DB8)
    comptime GEOMETRY_DEFORMATION_SGIX = MapTarget(0x8194)
    comptime TEXTURE_DEFORMATION_SGIX = MapTarget(0x8195)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct MatrixMode(Intable):
    var value: GLenum

    comptime MODELVIEW = MatrixMode(0x1700)
    comptime MODELVIEW0_EXT = MatrixMode(0x1700)
    comptime PROJECTION = MatrixMode(0x1701)
    comptime TEXTURE = MatrixMode(0x1702)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct MemoryBarrierMask(Intable):
    var value: GLbitfield

    comptime VERTEX_ATTRIB_ARRAY_BARRIER_BIT = MemoryBarrierMask(0x00000001)
    comptime VERTEX_ATTRIB_ARRAY_BARRIER_BIT_EXT = MemoryBarrierMask(0x00000001)
    comptime ELEMENT_ARRAY_BARRIER_BIT = MemoryBarrierMask(0x00000002)
    comptime ELEMENT_ARRAY_BARRIER_BIT_EXT = MemoryBarrierMask(0x00000002)
    comptime UNIFORM_BARRIER_BIT = MemoryBarrierMask(0x00000004)
    comptime UNIFORM_BARRIER_BIT_EXT = MemoryBarrierMask(0x00000004)
    comptime TEXTURE_FETCH_BARRIER_BIT = MemoryBarrierMask(0x00000008)
    comptime TEXTURE_FETCH_BARRIER_BIT_EXT = MemoryBarrierMask(0x00000008)
    comptime SHADER_GLOBAL_ACCESS_BARRIER_BIT_NV = MemoryBarrierMask(0x00000010)
    comptime SHADER_IMAGE_ACCESS_BARRIER_BIT = MemoryBarrierMask(0x00000020)
    comptime SHADER_IMAGE_ACCESS_BARRIER_BIT_EXT = MemoryBarrierMask(0x00000020)
    comptime COMMAND_BARRIER_BIT = MemoryBarrierMask(0x00000040)
    comptime COMMAND_BARRIER_BIT_EXT = MemoryBarrierMask(0x00000040)
    comptime PIXEL_BUFFER_BARRIER_BIT = MemoryBarrierMask(0x00000080)
    comptime PIXEL_BUFFER_BARRIER_BIT_EXT = MemoryBarrierMask(0x00000080)
    comptime TEXTURE_UPDATE_BARRIER_BIT = MemoryBarrierMask(0x00000100)
    comptime TEXTURE_UPDATE_BARRIER_BIT_EXT = MemoryBarrierMask(0x00000100)
    comptime BUFFER_UPDATE_BARRIER_BIT = MemoryBarrierMask(0x00000200)
    comptime BUFFER_UPDATE_BARRIER_BIT_EXT = MemoryBarrierMask(0x00000200)
    comptime FRAMEBUFFER_BARRIER_BIT = MemoryBarrierMask(0x00000400)
    comptime FRAMEBUFFER_BARRIER_BIT_EXT = MemoryBarrierMask(0x00000400)
    comptime TRANSFORM_FEEDBACK_BARRIER_BIT = MemoryBarrierMask(0x00000800)
    comptime TRANSFORM_FEEDBACK_BARRIER_BIT_EXT = MemoryBarrierMask(0x00000800)
    comptime ATOMIC_COUNTER_BARRIER_BIT = MemoryBarrierMask(0x00001000)
    comptime ATOMIC_COUNTER_BARRIER_BIT_EXT = MemoryBarrierMask(0x00001000)
    comptime SHADER_STORAGE_BARRIER_BIT = MemoryBarrierMask(0x00002000)
    comptime CLIENT_MAPPED_BUFFER_BARRIER_BIT = MemoryBarrierMask(0x00004000)
    comptime CLIENT_MAPPED_BUFFER_BARRIER_BIT_EXT = MemoryBarrierMask(0x00004000)
    comptime QUERY_BUFFER_BARRIER_BIT = MemoryBarrierMask(0x00008000)
    comptime ALL_BARRIER_BITS = MemoryBarrierMask(0xFFFFFFFF)
    comptime ALL_BARRIER_BITS_EXT = MemoryBarrierMask(0xFFFFFFFF)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)

    @always_inline
    fn __or__(lhs, rhs: Self) -> Self:
        return Self(lhs.value | rhs.value)


@fieldwise_init
@register_passable("trivial")
struct MeshMode1(Intable):
    var value: GLenum

    comptime POINT = MeshMode1(0x1B00)
    comptime LINE = MeshMode1(0x1B01)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct MeshMode2(Intable):
    var value: GLenum

    comptime POINT = MeshMode2(0x1B00)
    comptime LINE = MeshMode2(0x1B01)
    comptime FILL = MeshMode2(0x1B02)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct MinmaxTarget(Intable):
    var value: GLenum

    comptime MINMAX = MinmaxTarget(0x802E)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct NormalPointerType(Intable):
    var value: GLenum

    comptime BYTE = NormalPointerType(0x1400)
    comptime SHORT = NormalPointerType(0x1402)
    comptime INT = NormalPointerType(0x1404)
    comptime FLOAT = NormalPointerType(0x1406)
    comptime DOUBLE = NormalPointerType(0x140A)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct ObjectIdentifier(Intable):
    var value: GLenum

    comptime TEXTURE = ObjectIdentifier(0x1702)
    comptime VERTEX_ARRAY = ObjectIdentifier(0x8074)
    comptime BUFFER = ObjectIdentifier(0x82E0)
    comptime SHADER = ObjectIdentifier(0x82E1)
    comptime PROGRAM = ObjectIdentifier(0x82E2)
    comptime QUERY = ObjectIdentifier(0x82E3)
    comptime PROGRAM_PIPELINE = ObjectIdentifier(0x82E4)
    comptime SAMPLER = ObjectIdentifier(0x82E6)
    comptime FRAMEBUFFER = ObjectIdentifier(0x8D40)
    comptime RENDERBUFFER = ObjectIdentifier(0x8D41)
    comptime TRANSFORM_FEEDBACK = ObjectIdentifier(0x8E22)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct PatchParameterName(Intable):
    var value: GLenum

    comptime PATCH_VERTICES = PatchParameterName(0x8E72)
    comptime PATCH_DEFAULT_INNER_LEVEL = PatchParameterName(0x8E73)
    comptime PATCH_DEFAULT_OUTER_LEVEL = PatchParameterName(0x8E74)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct PathColorFormat(Intable):
    var value: GLenum

    comptime NONE = PathColorFormat(0)
    comptime ALPHA = PathColorFormat(0x1906)
    comptime RGB = PathColorFormat(0x1907)
    comptime RGBA = PathColorFormat(0x1908)
    comptime LUMINANCE = PathColorFormat(0x1909)
    comptime LUMINANCE_ALPHA = PathColorFormat(0x190A)
    comptime INTENSITY = PathColorFormat(0x8049)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct PathFillMode(Intable):
    var value: GLenum

    comptime INVERT = PathFillMode(0x150A)
    comptime PATH_FILL_MODE_NV = PathFillMode(0x9080)
    comptime COUNT_UP_NV = PathFillMode(0x9088)
    comptime COUNT_DOWN_NV = PathFillMode(0x9089)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct PathFontStyle(Intable):
    var value: GLenum

    comptime BOLD_BIT_NV = PathFontStyle(0x01)
    comptime ITALIC_BIT_NV = PathFontStyle(0x02)
    comptime NONE = PathFontStyle(0)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct PathGenMode(Intable):
    var value: GLenum

    comptime NONE = PathGenMode(0)
    comptime EYE_LINEAR = PathGenMode(0x2400)
    comptime OBJECT_LINEAR = PathGenMode(0x2401)
    comptime CONSTANT = PathGenMode(0x8576)
    comptime PATH_OBJECT_BOUNDING_BOX_NV = PathGenMode(0x908A)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct PathTransformType(Intable):
    var value: GLenum

    comptime NONE = PathTransformType(0)
    comptime TRANSLATE_X_NV = PathTransformType(0x908E)
    comptime TRANSLATE_Y_NV = PathTransformType(0x908F)
    comptime TRANSLATE_2D_NV = PathTransformType(0x9090)
    comptime TRANSLATE_3D_NV = PathTransformType(0x9091)
    comptime AFFINE_2D_NV = PathTransformType(0x9092)
    comptime AFFINE_3D_NV = PathTransformType(0x9094)
    comptime TRANSPOSE_AFFINE_2D_NV = PathTransformType(0x9096)
    comptime TRANSPOSE_AFFINE_3D_NV = PathTransformType(0x9098)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct PipelineParameterName(Intable):
    var value: GLenum

    comptime ACTIVE_PROGRAM = PipelineParameterName(0x8259)
    comptime FRAGMENT_SHADER = PipelineParameterName(0x8B30)
    comptime VERTEX_SHADER = PipelineParameterName(0x8B31)
    comptime INFO_LOG_LENGTH = PipelineParameterName(0x8B84)
    comptime GEOMETRY_SHADER = PipelineParameterName(0x8DD9)
    comptime TESS_EVALUATION_SHADER = PipelineParameterName(0x8E87)
    comptime TESS_CONTROL_SHADER = PipelineParameterName(0x8E88)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct PixelCopyType(Intable):
    var value: GLenum

    comptime COLOR = PixelCopyType(0x1800)
    comptime COLOR_EXT = PixelCopyType(0x1800)
    comptime DEPTH = PixelCopyType(0x1801)
    comptime DEPTH_EXT = PixelCopyType(0x1801)
    comptime STENCIL = PixelCopyType(0x1802)
    comptime STENCIL_EXT = PixelCopyType(0x1802)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct PixelFormat(Intable):
    var value: GLenum

    comptime UNSIGNED_SHORT = PixelFormat(0x1403)
    comptime UNSIGNED_INT = PixelFormat(0x1405)
    comptime COLOR_INDEX = PixelFormat(0x1900)
    comptime STENCIL_INDEX = PixelFormat(0x1901)
    comptime DEPTH_COMPONENT = PixelFormat(0x1902)
    comptime RED = PixelFormat(0x1903)
    comptime RED_EXT = PixelFormat(0x1903)
    comptime GREEN = PixelFormat(0x1904)
    comptime BLUE = PixelFormat(0x1905)
    comptime ALPHA = PixelFormat(0x1906)
    comptime RGB = PixelFormat(0x1907)
    comptime RGBA = PixelFormat(0x1908)
    comptime LUMINANCE = PixelFormat(0x1909)
    comptime LUMINANCE_ALPHA = PixelFormat(0x190A)
    comptime ABGR_EXT = PixelFormat(0x8000)
    comptime CMYK_EXT = PixelFormat(0x800C)
    comptime CMYKA_EXT = PixelFormat(0x800D)
    comptime BGR = PixelFormat(0x80E0)
    comptime BGR_EXT = PixelFormat(0x80E0)
    comptime BGRA = PixelFormat(0x80E1)
    comptime BGRA_EXT = PixelFormat(0x80E1)
    comptime BGRA_IMG = PixelFormat(0x80E1)
    comptime YCRCB_422_SGIX = PixelFormat(0x81BB)
    comptime YCRCB_444_SGIX = PixelFormat(0x81BC)
    comptime RG = PixelFormat(0x8227)
    comptime RG_INTEGER = PixelFormat(0x8228)
    comptime DEPTH_STENCIL = PixelFormat(0x84F9)
    comptime RED_INTEGER = PixelFormat(0x8D94)
    comptime GREEN_INTEGER = PixelFormat(0x8D95)
    comptime BLUE_INTEGER = PixelFormat(0x8D96)
    comptime RGB_INTEGER = PixelFormat(0x8D98)
    comptime RGBA_INTEGER = PixelFormat(0x8D99)
    comptime BGR_INTEGER = PixelFormat(0x8D9A)
    comptime BGRA_INTEGER = PixelFormat(0x8D9B)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct PixelMap(Intable):
    var value: GLenum

    comptime PIXEL_MAP_I_TO_I = PixelMap(0x0C70)
    comptime PIXEL_MAP_S_TO_S = PixelMap(0x0C71)
    comptime PIXEL_MAP_I_TO_R = PixelMap(0x0C72)
    comptime PIXEL_MAP_I_TO_G = PixelMap(0x0C73)
    comptime PIXEL_MAP_I_TO_B = PixelMap(0x0C74)
    comptime PIXEL_MAP_I_TO_A = PixelMap(0x0C75)
    comptime PIXEL_MAP_R_TO_R = PixelMap(0x0C76)
    comptime PIXEL_MAP_G_TO_G = PixelMap(0x0C77)
    comptime PIXEL_MAP_B_TO_B = PixelMap(0x0C78)
    comptime PIXEL_MAP_A_TO_A = PixelMap(0x0C79)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct PixelStoreParameter(Intable):
    var value: GLenum

    comptime UNPACK_SWAP_BYTES = PixelStoreParameter(0x0CF0)
    comptime UNPACK_LSB_FIRST = PixelStoreParameter(0x0CF1)
    comptime UNPACK_ROW_LENGTH = PixelStoreParameter(0x0CF2)
    comptime UNPACK_ROW_LENGTH_EXT = PixelStoreParameter(0x0CF2)
    comptime UNPACK_SKIP_ROWS = PixelStoreParameter(0x0CF3)
    comptime UNPACK_SKIP_ROWS_EXT = PixelStoreParameter(0x0CF3)
    comptime UNPACK_SKIP_PIXELS = PixelStoreParameter(0x0CF4)
    comptime UNPACK_SKIP_PIXELS_EXT = PixelStoreParameter(0x0CF4)
    comptime UNPACK_ALIGNMENT = PixelStoreParameter(0x0CF5)
    comptime PACK_SWAP_BYTES = PixelStoreParameter(0x0D00)
    comptime PACK_LSB_FIRST = PixelStoreParameter(0x0D01)
    comptime PACK_ROW_LENGTH = PixelStoreParameter(0x0D02)
    comptime PACK_ROW_LENGTH_NV = PixelStoreParameter(0x0D02)
    comptime PACK_SKIP_ROWS = PixelStoreParameter(0x0D03)
    comptime PACK_SKIP_ROWS_NV = PixelStoreParameter(0x0D03)
    comptime PACK_SKIP_PIXELS = PixelStoreParameter(0x0D04)
    comptime PACK_SKIP_PIXELS_NV = PixelStoreParameter(0x0D04)
    comptime PACK_ALIGNMENT = PixelStoreParameter(0x0D05)
    comptime PACK_SKIP_IMAGES = PixelStoreParameter(0x806B)
    comptime PACK_SKIP_IMAGES_EXT = PixelStoreParameter(0x806B)
    comptime PACK_IMAGE_HEIGHT = PixelStoreParameter(0x806C)
    comptime PACK_IMAGE_HEIGHT_EXT = PixelStoreParameter(0x806C)
    comptime UNPACK_SKIP_IMAGES = PixelStoreParameter(0x806D)
    comptime UNPACK_SKIP_IMAGES_EXT = PixelStoreParameter(0x806D)
    comptime UNPACK_IMAGE_HEIGHT = PixelStoreParameter(0x806E)
    comptime UNPACK_IMAGE_HEIGHT_EXT = PixelStoreParameter(0x806E)
    comptime PACK_SKIP_VOLUMES_SGIS = PixelStoreParameter(0x8130)
    comptime PACK_IMAGE_DEPTH_SGIS = PixelStoreParameter(0x8131)
    comptime UNPACK_SKIP_VOLUMES_SGIS = PixelStoreParameter(0x8132)
    comptime UNPACK_IMAGE_DEPTH_SGIS = PixelStoreParameter(0x8133)
    comptime PIXEL_TILE_WIDTH_SGIX = PixelStoreParameter(0x8140)
    comptime PIXEL_TILE_HEIGHT_SGIX = PixelStoreParameter(0x8141)
    comptime PIXEL_TILE_GRID_WIDTH_SGIX = PixelStoreParameter(0x8142)
    comptime PIXEL_TILE_GRID_HEIGHT_SGIX = PixelStoreParameter(0x8143)
    comptime PIXEL_TILE_GRID_DEPTH_SGIX = PixelStoreParameter(0x8144)
    comptime PIXEL_TILE_CACHE_SIZE_SGIX = PixelStoreParameter(0x8145)
    comptime PACK_RESAMPLE_SGIX = PixelStoreParameter(0x842E)
    comptime UNPACK_RESAMPLE_SGIX = PixelStoreParameter(0x842F)
    comptime PACK_SUBSAMPLE_RATE_SGIX = PixelStoreParameter(0x85A0)
    comptime UNPACK_SUBSAMPLE_RATE_SGIX = PixelStoreParameter(0x85A1)
    comptime PACK_RESAMPLE_OML = PixelStoreParameter(0x8984)
    comptime UNPACK_RESAMPLE_OML = PixelStoreParameter(0x8985)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct PixelType(Intable):
    var value: GLenum

    comptime BYTE = PixelType(0x1400)
    comptime UNSIGNED_BYTE = PixelType(0x1401)
    comptime SHORT = PixelType(0x1402)
    comptime UNSIGNED_SHORT = PixelType(0x1403)
    comptime INT = PixelType(0x1404)
    comptime UNSIGNED_INT = PixelType(0x1405)
    comptime FLOAT = PixelType(0x1406)
    comptime HALF_FLOAT = PixelType(0x140B)
    comptime HALF_FLOAT_ARB = PixelType(0x140B)
    comptime HALF_FLOAT_NV = PixelType(0x140B)
    comptime HALF_APPLE = PixelType(0x140B)
    comptime BITMAP = PixelType(0x1A00)
    comptime UNSIGNED_BYTE_3_3_2 = PixelType(0x8032)
    comptime UNSIGNED_BYTE_3_3_2_EXT = PixelType(0x8032)
    comptime UNSIGNED_SHORT_4_4_4_4 = PixelType(0x8033)
    comptime UNSIGNED_SHORT_4_4_4_4_EXT = PixelType(0x8033)
    comptime UNSIGNED_SHORT_5_5_5_1 = PixelType(0x8034)
    comptime UNSIGNED_SHORT_5_5_5_1_EXT = PixelType(0x8034)
    comptime UNSIGNED_INT_8_8_8_8 = PixelType(0x8035)
    comptime UNSIGNED_INT_8_8_8_8_EXT = PixelType(0x8035)
    comptime UNSIGNED_INT_10_10_10_2 = PixelType(0x8036)
    comptime UNSIGNED_INT_10_10_10_2_EXT = PixelType(0x8036)
    comptime UNSIGNED_BYTE_2_3_3_REV = PixelType(0x8362)
    comptime UNSIGNED_BYTE_2_3_3_REV_EXT = PixelType(0x8362)
    comptime UNSIGNED_SHORT_5_6_5 = PixelType(0x8363)
    comptime UNSIGNED_SHORT_5_6_5_EXT = PixelType(0x8363)
    comptime UNSIGNED_SHORT_5_6_5_REV = PixelType(0x8364)
    comptime UNSIGNED_SHORT_5_6_5_REV_EXT = PixelType(0x8364)
    comptime UNSIGNED_SHORT_4_4_4_4_REV = PixelType(0x8365)
    comptime UNSIGNED_SHORT_4_4_4_4_REV_EXT = PixelType(0x8365)
    comptime UNSIGNED_SHORT_4_4_4_4_REV_IMG = PixelType(0x8365)
    comptime UNSIGNED_SHORT_1_5_5_5_REV = PixelType(0x8366)
    comptime UNSIGNED_SHORT_1_5_5_5_REV_EXT = PixelType(0x8366)
    comptime UNSIGNED_INT_8_8_8_8_REV = PixelType(0x8367)
    comptime UNSIGNED_INT_8_8_8_8_REV_EXT = PixelType(0x8367)
    comptime UNSIGNED_INT_2_10_10_10_REV = PixelType(0x8368)
    comptime UNSIGNED_INT_2_10_10_10_REV_EXT = PixelType(0x8368)
    comptime UNSIGNED_INT_24_8 = PixelType(0x84FA)
    comptime UNSIGNED_INT_24_8_EXT = PixelType(0x84FA)
    comptime UNSIGNED_INT_24_8_NV = PixelType(0x84FA)
    comptime UNSIGNED_INT_24_8_OES = PixelType(0x84FA)
    comptime UNSIGNED_INT_10F_11F_11F_REV = PixelType(0x8C3B)
    comptime UNSIGNED_INT_10F_11F_11F_REV_APPLE = PixelType(0x8C3B)
    comptime UNSIGNED_INT_10F_11F_11F_REV_EXT = PixelType(0x8C3B)
    comptime UNSIGNED_INT_5_9_9_9_REV = PixelType(0x8C3E)
    comptime UNSIGNED_INT_5_9_9_9_REV_APPLE = PixelType(0x8C3E)
    comptime UNSIGNED_INT_5_9_9_9_REV_EXT = PixelType(0x8C3E)
    comptime FLOAT_32_UNSIGNED_INT_24_8_REV = PixelType(0x8DAD)
    comptime FLOAT_32_UNSIGNED_INT_24_8_REV_NV = PixelType(0x8DAD)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct PointParameterNameARB(Intable):
    var value: GLenum

    comptime POINT_SIZE_MIN = PointParameterNameARB(0x8126)
    comptime POINT_SIZE_MIN_ARB = PointParameterNameARB(0x8126)
    comptime POINT_SIZE_MIN_EXT = PointParameterNameARB(0x8126)
    comptime POINT_SIZE_MIN_SGIS = PointParameterNameARB(0x8126)
    comptime POINT_SIZE_MAX = PointParameterNameARB(0x8127)
    comptime POINT_SIZE_MAX_ARB = PointParameterNameARB(0x8127)
    comptime POINT_SIZE_MAX_EXT = PointParameterNameARB(0x8127)
    comptime POINT_SIZE_MAX_SGIS = PointParameterNameARB(0x8127)
    comptime POINT_FADE_THRESHOLD_SIZE = PointParameterNameARB(0x8128)
    comptime POINT_FADE_THRESHOLD_SIZE_ARB = PointParameterNameARB(0x8128)
    comptime POINT_FADE_THRESHOLD_SIZE_EXT = PointParameterNameARB(0x8128)
    comptime POINT_FADE_THRESHOLD_SIZE_SGIS = PointParameterNameARB(0x8128)
    comptime DISTANCE_ATTENUATION_EXT = PointParameterNameARB(0x8129)
    comptime DISTANCE_ATTENUATION_SGIS = PointParameterNameARB(0x8129)
    comptime POINT_DISTANCE_ATTENUATION = PointParameterNameARB(0x8129)
    comptime POINT_DISTANCE_ATTENUATION_ARB = PointParameterNameARB(0x8129)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct PolygonMode(Intable):
    var value: GLenum

    comptime POINT = PolygonMode(0x1B00)
    comptime LINE = PolygonMode(0x1B01)
    comptime FILL = PolygonMode(0x1B02)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct PrecisionType(Intable):
    var value: GLenum

    comptime LOW_FLOAT = PrecisionType(0x8DF0)
    comptime MEDIUM_FLOAT = PrecisionType(0x8DF1)
    comptime HIGH_FLOAT = PrecisionType(0x8DF2)
    comptime LOW_INT = PrecisionType(0x8DF3)
    comptime MEDIUM_INT = PrecisionType(0x8DF4)
    comptime HIGH_INT = PrecisionType(0x8DF5)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct PrimitiveType(Intable):
    var value: GLenum

    comptime POINTS = PrimitiveType(0x0000)
    comptime LINES = PrimitiveType(0x0001)
    comptime LINE_LOOP = PrimitiveType(0x0002)
    comptime LINE_STRIP = PrimitiveType(0x0003)
    comptime TRIANGLES = PrimitiveType(0x0004)
    comptime TRIANGLE_STRIP = PrimitiveType(0x0005)
    comptime TRIANGLE_FAN = PrimitiveType(0x0006)
    comptime QUADS = PrimitiveType(0x0007)
    comptime QUADS_EXT = PrimitiveType(0x0007)
    comptime QUAD_STRIP = PrimitiveType(0x0008)
    comptime POLYGON = PrimitiveType(0x0009)
    comptime LINES_ADJACENCY = PrimitiveType(0x000A)
    comptime LINES_ADJACENCY_ARB = PrimitiveType(0x000A)
    comptime LINES_ADJACENCY_EXT = PrimitiveType(0x000A)
    comptime LINE_STRIP_ADJACENCY = PrimitiveType(0x000B)
    comptime LINE_STRIP_ADJACENCY_ARB = PrimitiveType(0x000B)
    comptime LINE_STRIP_ADJACENCY_EXT = PrimitiveType(0x000B)
    comptime TRIANGLES_ADJACENCY = PrimitiveType(0x000C)
    comptime TRIANGLES_ADJACENCY_ARB = PrimitiveType(0x000C)
    comptime TRIANGLES_ADJACENCY_EXT = PrimitiveType(0x000C)
    comptime TRIANGLE_STRIP_ADJACENCY = PrimitiveType(0x000D)
    comptime TRIANGLE_STRIP_ADJACENCY_ARB = PrimitiveType(0x000D)
    comptime TRIANGLE_STRIP_ADJACENCY_EXT = PrimitiveType(0x000D)
    comptime PATCHES = PrimitiveType(0x000E)
    comptime PATCHES_EXT = PrimitiveType(0x000E)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct ProgramInterface(Intable):
    var value: GLenum

    comptime TRANSFORM_FEEDBACK_BUFFER = ProgramInterface(0x8C8E)
    comptime UNIFORM = ProgramInterface(0x92E1)
    comptime UNIFORM_BLOCK = ProgramInterface(0x92E2)
    comptime PROGRAM_INPUT = ProgramInterface(0x92E3)
    comptime PROGRAM_OUTPUT = ProgramInterface(0x92E4)
    comptime BUFFER_VARIABLE = ProgramInterface(0x92E5)
    comptime SHADER_STORAGE_BLOCK = ProgramInterface(0x92E6)
    comptime VERTEX_SUBROUTINE = ProgramInterface(0x92E8)
    comptime TESS_CONTROL_SUBROUTINE = ProgramInterface(0x92E9)
    comptime TESS_EVALUATION_SUBROUTINE = ProgramInterface(0x92EA)
    comptime GEOMETRY_SUBROUTINE = ProgramInterface(0x92EB)
    comptime FRAGMENT_SUBROUTINE = ProgramInterface(0x92EC)
    comptime COMPUTE_SUBROUTINE = ProgramInterface(0x92ED)
    comptime VERTEX_SUBROUTINE_UNIFORM = ProgramInterface(0x92EE)
    comptime TESS_CONTROL_SUBROUTINE_UNIFORM = ProgramInterface(0x92EF)
    comptime TESS_EVALUATION_SUBROUTINE_UNIFORM = ProgramInterface(0x92F0)
    comptime GEOMETRY_SUBROUTINE_UNIFORM = ProgramInterface(0x92F1)
    comptime FRAGMENT_SUBROUTINE_UNIFORM = ProgramInterface(0x92F2)
    comptime COMPUTE_SUBROUTINE_UNIFORM = ProgramInterface(0x92F3)
    comptime TRANSFORM_FEEDBACK_VARYING = ProgramInterface(0x92F4)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct ProgramInterfacePName(Intable):
    var value: GLenum

    comptime ACTIVE_RESOURCES = ProgramInterfacePName(0x92F5)
    comptime MAX_NAME_LENGTH = ProgramInterfacePName(0x92F6)
    comptime MAX_NUM_ACTIVE_VARIABLES = ProgramInterfacePName(0x92F7)
    comptime MAX_NUM_COMPATIBLE_SUBROUTINES = ProgramInterfacePName(0x92F8)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct ProgramParameterPName(Intable):
    var value: GLenum

    comptime PROGRAM_BINARY_RETRIEVABLE_HINT = ProgramParameterPName(0x8257)
    comptime PROGRAM_SEPARABLE = ProgramParameterPName(0x8258)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct ProgramPropertyARB(Intable):
    var value: GLenum

    comptime COMPUTE_WORK_GROUP_SIZE = ProgramPropertyARB(0x8267)
    comptime PROGRAM_BINARY_LENGTH = ProgramPropertyARB(0x8741)
    comptime GEOMETRY_VERTICES_OUT = ProgramPropertyARB(0x8916)
    comptime GEOMETRY_INPUT_TYPE = ProgramPropertyARB(0x8917)
    comptime GEOMETRY_OUTPUT_TYPE = ProgramPropertyARB(0x8918)
    comptime ACTIVE_UNIFORM_BLOCK_MAX_NAME_LENGTH = ProgramPropertyARB(0x8A35)
    comptime ACTIVE_UNIFORM_BLOCKS = ProgramPropertyARB(0x8A36)
    comptime DELETE_STATUS = ProgramPropertyARB(0x8B80)
    comptime LINK_STATUS = ProgramPropertyARB(0x8B82)
    comptime VALIDATE_STATUS = ProgramPropertyARB(0x8B83)
    comptime INFO_LOG_LENGTH = ProgramPropertyARB(0x8B84)
    comptime ATTACHED_SHADERS = ProgramPropertyARB(0x8B85)
    comptime ACTIVE_UNIFORMS = ProgramPropertyARB(0x8B86)
    comptime ACTIVE_UNIFORM_MAX_LENGTH = ProgramPropertyARB(0x8B87)
    comptime ACTIVE_ATTRIBUTES = ProgramPropertyARB(0x8B89)
    comptime ACTIVE_ATTRIBUTE_MAX_LENGTH = ProgramPropertyARB(0x8B8A)
    comptime TRANSFORM_FEEDBACK_VARYING_MAX_LENGTH = ProgramPropertyARB(0x8C76)
    comptime TRANSFORM_FEEDBACK_BUFFER_MODE = ProgramPropertyARB(0x8C7F)
    comptime TRANSFORM_FEEDBACK_VARYINGS = ProgramPropertyARB(0x8C83)
    comptime ACTIVE_ATOMIC_COUNTER_BUFFERS = ProgramPropertyARB(0x92D9)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct ProgramResourceProperty(Intable):
    var value: GLenum

    comptime NUM_COMPATIBLE_SUBROUTINES = ProgramResourceProperty(0x8E4A)
    comptime COMPATIBLE_SUBROUTINES = ProgramResourceProperty(0x8E4B)
    comptime UNIFORM = ProgramResourceProperty(0x92E1)
    comptime IS_PER_PATCH = ProgramResourceProperty(0x92E7)
    comptime NAME_LENGTH = ProgramResourceProperty(0x92F9)
    comptime TYPE = ProgramResourceProperty(0x92FA)
    comptime ARRAY_SIZE = ProgramResourceProperty(0x92FB)
    comptime OFFSET = ProgramResourceProperty(0x92FC)
    comptime BLOCK_INDEX = ProgramResourceProperty(0x92FD)
    comptime ARRAY_STRIDE = ProgramResourceProperty(0x92FE)
    comptime MATRIX_STRIDE = ProgramResourceProperty(0x92FF)
    comptime IS_ROW_MAJOR = ProgramResourceProperty(0x9300)
    comptime ATOMIC_COUNTER_BUFFER_INDEX = ProgramResourceProperty(0x9301)
    comptime BUFFER_BINDING = ProgramResourceProperty(0x9302)
    comptime BUFFER_DATA_SIZE = ProgramResourceProperty(0x9303)
    comptime NUM_ACTIVE_VARIABLES = ProgramResourceProperty(0x9304)
    comptime ACTIVE_VARIABLES = ProgramResourceProperty(0x9305)
    comptime REFERENCED_BY_VERTEX_SHADER = ProgramResourceProperty(0x9306)
    comptime REFERENCED_BY_TESS_CONTROL_SHADER = ProgramResourceProperty(0x9307)
    comptime REFERENCED_BY_TESS_EVALUATION_SHADER = ProgramResourceProperty(0x9308)
    comptime REFERENCED_BY_GEOMETRY_SHADER = ProgramResourceProperty(0x9309)
    comptime REFERENCED_BY_FRAGMENT_SHADER = ProgramResourceProperty(0x930A)
    comptime REFERENCED_BY_COMPUTE_SHADER = ProgramResourceProperty(0x930B)
    comptime TOP_LEVEL_ARRAY_SIZE = ProgramResourceProperty(0x930C)
    comptime TOP_LEVEL_ARRAY_STRIDE = ProgramResourceProperty(0x930D)
    comptime LOCATION = ProgramResourceProperty(0x930E)
    comptime LOCATION_INDEX = ProgramResourceProperty(0x930F)
    comptime LOCATION_COMPONENT = ProgramResourceProperty(0x934A)
    comptime TRANSFORM_FEEDBACK_BUFFER_INDEX = ProgramResourceProperty(0x934B)
    comptime TRANSFORM_FEEDBACK_BUFFER_STRIDE = ProgramResourceProperty(0x934C)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct ProgramStagePName(Intable):
    var value: GLenum

    comptime ACTIVE_SUBROUTINES = ProgramStagePName(0x8DE5)
    comptime ACTIVE_SUBROUTINE_UNIFORMS = ProgramStagePName(0x8DE6)
    comptime ACTIVE_SUBROUTINE_UNIFORM_LOCATIONS = ProgramStagePName(0x8E47)
    comptime ACTIVE_SUBROUTINE_MAX_LENGTH = ProgramStagePName(0x8E48)
    comptime ACTIVE_SUBROUTINE_UNIFORM_MAX_LENGTH = ProgramStagePName(0x8E49)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct QueryCounterTarget(Intable):
    var value: GLenum

    comptime TIMESTAMP = QueryCounterTarget(0x8E28)
    comptime TIMESTAMP_EXT = QueryCounterTarget(0x8E28)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct QueryObjectParameterName(Intable):
    var value: GLenum

    comptime QUERY_TARGET = QueryObjectParameterName(0x82EA)
    comptime QUERY_RESULT = QueryObjectParameterName(0x8866)
    comptime QUERY_RESULT_AVAILABLE = QueryObjectParameterName(0x8867)
    comptime QUERY_RESULT_NO_WAIT = QueryObjectParameterName(0x9194)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct QueryParameterName(Intable):
    var value: GLenum

    comptime QUERY_COUNTER_BITS = QueryParameterName(0x8864)
    comptime CURRENT_QUERY = QueryParameterName(0x8865)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct QueryTarget(Intable):
    var value: GLenum

    comptime TRANSFORM_FEEDBACK_OVERFLOW = QueryTarget(0x82EC)
    comptime VERTICES_SUBMITTED = QueryTarget(0x82EE)
    comptime PRIMITIVES_SUBMITTED = QueryTarget(0x82EF)
    comptime VERTEX_SHADER_INVOCATIONS = QueryTarget(0x82F0)
    comptime TIME_ELAPSED = QueryTarget(0x88BF)
    comptime SAMPLES_PASSED = QueryTarget(0x8914)
    comptime ANY_SAMPLES_PASSED = QueryTarget(0x8C2F)
    comptime PRIMITIVES_GENERATED = QueryTarget(0x8C87)
    comptime TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN = QueryTarget(0x8C88)
    comptime ANY_SAMPLES_PASSED_CONSERVATIVE = QueryTarget(0x8D6A)
    comptime TASK_SHADER_INVOCATIONS_EXT = QueryTarget(0x9753)
    comptime MESH_SHADER_INVOCATIONS_EXT = QueryTarget(0x9754)
    comptime MESH_PRIMITIVES_GENERATED_EXT = QueryTarget(0x9755)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct ReadBufferMode(Intable):
    var value: GLenum

    comptime NONE = ReadBufferMode(0)
    comptime NONE_OES = ReadBufferMode(0)
    comptime FRONT_LEFT = ReadBufferMode(0x0400)
    comptime FRONT_RIGHT = ReadBufferMode(0x0401)
    comptime BACK_LEFT = ReadBufferMode(0x0402)
    comptime BACK_RIGHT = ReadBufferMode(0x0403)
    comptime FRONT = ReadBufferMode(0x0404)
    comptime BACK = ReadBufferMode(0x0405)
    comptime LEFT = ReadBufferMode(0x0406)
    comptime RIGHT = ReadBufferMode(0x0407)
    comptime AUX0 = ReadBufferMode(0x0409)
    comptime AUX1 = ReadBufferMode(0x040A)
    comptime AUX2 = ReadBufferMode(0x040B)
    comptime AUX3 = ReadBufferMode(0x040C)
    comptime COLOR_ATTACHMENT0 = ReadBufferMode(0x8CE0)
    comptime COLOR_ATTACHMENT1 = ReadBufferMode(0x8CE1)
    comptime COLOR_ATTACHMENT2 = ReadBufferMode(0x8CE2)
    comptime COLOR_ATTACHMENT3 = ReadBufferMode(0x8CE3)
    comptime COLOR_ATTACHMENT4 = ReadBufferMode(0x8CE4)
    comptime COLOR_ATTACHMENT5 = ReadBufferMode(0x8CE5)
    comptime COLOR_ATTACHMENT6 = ReadBufferMode(0x8CE6)
    comptime COLOR_ATTACHMENT7 = ReadBufferMode(0x8CE7)
    comptime COLOR_ATTACHMENT8 = ReadBufferMode(0x8CE8)
    comptime COLOR_ATTACHMENT9 = ReadBufferMode(0x8CE9)
    comptime COLOR_ATTACHMENT10 = ReadBufferMode(0x8CEA)
    comptime COLOR_ATTACHMENT11 = ReadBufferMode(0x8CEB)
    comptime COLOR_ATTACHMENT12 = ReadBufferMode(0x8CEC)
    comptime COLOR_ATTACHMENT13 = ReadBufferMode(0x8CED)
    comptime COLOR_ATTACHMENT14 = ReadBufferMode(0x8CEE)
    comptime COLOR_ATTACHMENT15 = ReadBufferMode(0x8CEF)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct RenderbufferParameterName(Intable):
    var value: GLenum

    comptime RENDERBUFFER_COVERAGE_SAMPLES_NV = RenderbufferParameterName(0x8CAB)
    comptime RENDERBUFFER_SAMPLES = RenderbufferParameterName(0x8CAB)
    comptime RENDERBUFFER_SAMPLES_ANGLE = RenderbufferParameterName(0x8CAB)
    comptime RENDERBUFFER_SAMPLES_APPLE = RenderbufferParameterName(0x8CAB)
    comptime RENDERBUFFER_SAMPLES_EXT = RenderbufferParameterName(0x8CAB)
    comptime RENDERBUFFER_SAMPLES_NV = RenderbufferParameterName(0x8CAB)
    comptime RENDERBUFFER_WIDTH = RenderbufferParameterName(0x8D42)
    comptime RENDERBUFFER_WIDTH_EXT = RenderbufferParameterName(0x8D42)
    comptime RENDERBUFFER_WIDTH_OES = RenderbufferParameterName(0x8D42)
    comptime RENDERBUFFER_HEIGHT = RenderbufferParameterName(0x8D43)
    comptime RENDERBUFFER_HEIGHT_EXT = RenderbufferParameterName(0x8D43)
    comptime RENDERBUFFER_HEIGHT_OES = RenderbufferParameterName(0x8D43)
    comptime RENDERBUFFER_INTERNAL_FORMAT = RenderbufferParameterName(0x8D44)
    comptime RENDERBUFFER_INTERNAL_FORMAT_EXT = RenderbufferParameterName(0x8D44)
    comptime RENDERBUFFER_INTERNAL_FORMAT_OES = RenderbufferParameterName(0x8D44)
    comptime RENDERBUFFER_RED_SIZE = RenderbufferParameterName(0x8D50)
    comptime RENDERBUFFER_RED_SIZE_EXT = RenderbufferParameterName(0x8D50)
    comptime RENDERBUFFER_RED_SIZE_OES = RenderbufferParameterName(0x8D50)
    comptime RENDERBUFFER_GREEN_SIZE = RenderbufferParameterName(0x8D51)
    comptime RENDERBUFFER_GREEN_SIZE_EXT = RenderbufferParameterName(0x8D51)
    comptime RENDERBUFFER_GREEN_SIZE_OES = RenderbufferParameterName(0x8D51)
    comptime RENDERBUFFER_BLUE_SIZE = RenderbufferParameterName(0x8D52)
    comptime RENDERBUFFER_BLUE_SIZE_EXT = RenderbufferParameterName(0x8D52)
    comptime RENDERBUFFER_BLUE_SIZE_OES = RenderbufferParameterName(0x8D52)
    comptime RENDERBUFFER_ALPHA_SIZE = RenderbufferParameterName(0x8D53)
    comptime RENDERBUFFER_ALPHA_SIZE_EXT = RenderbufferParameterName(0x8D53)
    comptime RENDERBUFFER_ALPHA_SIZE_OES = RenderbufferParameterName(0x8D53)
    comptime RENDERBUFFER_DEPTH_SIZE = RenderbufferParameterName(0x8D54)
    comptime RENDERBUFFER_DEPTH_SIZE_EXT = RenderbufferParameterName(0x8D54)
    comptime RENDERBUFFER_DEPTH_SIZE_OES = RenderbufferParameterName(0x8D54)
    comptime RENDERBUFFER_STENCIL_SIZE = RenderbufferParameterName(0x8D55)
    comptime RENDERBUFFER_STENCIL_SIZE_EXT = RenderbufferParameterName(0x8D55)
    comptime RENDERBUFFER_STENCIL_SIZE_OES = RenderbufferParameterName(0x8D55)
    comptime RENDERBUFFER_COLOR_SAMPLES_NV = RenderbufferParameterName(0x8E10)
    comptime RENDERBUFFER_SAMPLES_IMG = RenderbufferParameterName(0x9133)
    comptime RENDERBUFFER_STORAGE_SAMPLES_AMD = RenderbufferParameterName(0x91B2)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct RenderbufferTarget(Intable):
    var value: GLenum

    comptime RENDERBUFFER = RenderbufferTarget(0x8D41)
    comptime RENDERBUFFER_OES = RenderbufferTarget(0x8D41)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct SamplerParameterF(Intable):
    var value: GLenum

    comptime TEXTURE_BORDER_COLOR = SamplerParameterF(0x1004)
    comptime TEXTURE_MIN_LOD = SamplerParameterF(0x813A)
    comptime TEXTURE_MAX_LOD = SamplerParameterF(0x813B)
    comptime TEXTURE_MAX_ANISOTROPY = SamplerParameterF(0x84FE)
    comptime TEXTURE_LOD_BIAS = SamplerParameterF(0x8501)
    comptime TEXTURE_UNNORMALIZED_COORDINATES_ARM = SamplerParameterF(0x8F6A)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct SamplerParameterI(Intable):
    var value: GLenum

    comptime TEXTURE_MAG_FILTER = SamplerParameterI(0x2800)
    comptime TEXTURE_MIN_FILTER = SamplerParameterI(0x2801)
    comptime TEXTURE_WRAP_S = SamplerParameterI(0x2802)
    comptime TEXTURE_WRAP_T = SamplerParameterI(0x2803)
    comptime TEXTURE_WRAP_R = SamplerParameterI(0x8072)
    comptime TEXTURE_COMPARE_MODE = SamplerParameterI(0x884C)
    comptime TEXTURE_COMPARE_FUNC = SamplerParameterI(0x884D)
    comptime TEXTURE_UNNORMALIZED_COORDINATES_ARM = SamplerParameterI(0x8F6A)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct SeparableTarget(Intable):
    var value: GLenum

    comptime SEPARABLE_2D = SeparableTarget(0x8012)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct ShaderBinaryFormat(Intable):
    var value: GLenum

    comptime SGX_BINARY_IMG = ShaderBinaryFormat(0x8C0A)
    comptime MALI_SHADER_BINARY_ARM = ShaderBinaryFormat(0x8F60)
    comptime SHADER_BINARY_VIV = ShaderBinaryFormat(0x8FC4)
    comptime SHADER_BINARY_DMP = ShaderBinaryFormat(0x9250)
    comptime GCCSO_SHADER_BINARY_FJ = ShaderBinaryFormat(0x9260)
    comptime SHADER_BINARY_FORMAT_SPIR_V = ShaderBinaryFormat(0x9551)
    comptime HUAWEI_SHADER_BINARY = ShaderBinaryFormat(0x9770)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct ShaderParameterName(Intable):
    var value: GLenum

    comptime SHADER_TYPE = ShaderParameterName(0x8B4F)
    comptime DELETE_STATUS = ShaderParameterName(0x8B80)
    comptime COMPILE_STATUS = ShaderParameterName(0x8B81)
    comptime INFO_LOG_LENGTH = ShaderParameterName(0x8B84)
    comptime SHADER_SOURCE_LENGTH = ShaderParameterName(0x8B88)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct ShaderType(Intable):
    var value: GLenum

    comptime FRAGMENT_SHADER = ShaderType(0x8B30)
    comptime FRAGMENT_SHADER_ARB = ShaderType(0x8B30)
    comptime VERTEX_SHADER = ShaderType(0x8B31)
    comptime VERTEX_SHADER_ARB = ShaderType(0x8B31)
    comptime GEOMETRY_SHADER = ShaderType(0x8DD9)
    comptime TESS_EVALUATION_SHADER = ShaderType(0x8E87)
    comptime TESS_CONTROL_SHADER = ShaderType(0x8E88)
    comptime COMPUTE_SHADER = ShaderType(0x91B9)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct SizedInternalFormat(Intable):
    var value: GLenum

    comptime R3_G3_B2 = SizedInternalFormat(0x2A10)
    comptime ALPHA4 = SizedInternalFormat(0x803B)
    comptime ALPHA4_EXT = SizedInternalFormat(0x803B)
    comptime ALPHA8 = SizedInternalFormat(0x803C)
    comptime ALPHA8_EXT = SizedInternalFormat(0x803C)
    comptime ALPHA8_OES = SizedInternalFormat(0x803C)
    comptime ALPHA12 = SizedInternalFormat(0x803D)
    comptime ALPHA12_EXT = SizedInternalFormat(0x803D)
    comptime ALPHA16 = SizedInternalFormat(0x803E)
    comptime ALPHA16_EXT = SizedInternalFormat(0x803E)
    comptime LUMINANCE4 = SizedInternalFormat(0x803F)
    comptime LUMINANCE4_EXT = SizedInternalFormat(0x803F)
    comptime LUMINANCE8 = SizedInternalFormat(0x8040)
    comptime LUMINANCE8_EXT = SizedInternalFormat(0x8040)
    comptime LUMINANCE8_OES = SizedInternalFormat(0x8040)
    comptime LUMINANCE12 = SizedInternalFormat(0x8041)
    comptime LUMINANCE12_EXT = SizedInternalFormat(0x8041)
    comptime LUMINANCE16 = SizedInternalFormat(0x8042)
    comptime LUMINANCE16_EXT = SizedInternalFormat(0x8042)
    comptime LUMINANCE4_ALPHA4 = SizedInternalFormat(0x8043)
    comptime LUMINANCE4_ALPHA4_EXT = SizedInternalFormat(0x8043)
    comptime LUMINANCE4_ALPHA4_OES = SizedInternalFormat(0x8043)
    comptime LUMINANCE6_ALPHA2 = SizedInternalFormat(0x8044)
    comptime LUMINANCE6_ALPHA2_EXT = SizedInternalFormat(0x8044)
    comptime LUMINANCE8_ALPHA8 = SizedInternalFormat(0x8045)
    comptime LUMINANCE8_ALPHA8_EXT = SizedInternalFormat(0x8045)
    comptime LUMINANCE8_ALPHA8_OES = SizedInternalFormat(0x8045)
    comptime LUMINANCE12_ALPHA4 = SizedInternalFormat(0x8046)
    comptime LUMINANCE12_ALPHA4_EXT = SizedInternalFormat(0x8046)
    comptime LUMINANCE12_ALPHA12 = SizedInternalFormat(0x8047)
    comptime LUMINANCE12_ALPHA12_EXT = SizedInternalFormat(0x8047)
    comptime LUMINANCE16_ALPHA16 = SizedInternalFormat(0x8048)
    comptime LUMINANCE16_ALPHA16_EXT = SizedInternalFormat(0x8048)
    comptime INTENSITY4 = SizedInternalFormat(0x804A)
    comptime INTENSITY4_EXT = SizedInternalFormat(0x804A)
    comptime INTENSITY8 = SizedInternalFormat(0x804B)
    comptime INTENSITY8_EXT = SizedInternalFormat(0x804B)
    comptime INTENSITY12 = SizedInternalFormat(0x804C)
    comptime INTENSITY12_EXT = SizedInternalFormat(0x804C)
    comptime INTENSITY16 = SizedInternalFormat(0x804D)
    comptime INTENSITY16_EXT = SizedInternalFormat(0x804D)
    comptime RGB2_EXT = SizedInternalFormat(0x804E)
    comptime RGB4 = SizedInternalFormat(0x804F)
    comptime RGB4_EXT = SizedInternalFormat(0x804F)
    comptime RGB5 = SizedInternalFormat(0x8050)
    comptime RGB5_EXT = SizedInternalFormat(0x8050)
    comptime RGB8 = SizedInternalFormat(0x8051)
    comptime RGB8_EXT = SizedInternalFormat(0x8051)
    comptime RGB8_OES = SizedInternalFormat(0x8051)
    comptime RGB10 = SizedInternalFormat(0x8052)
    comptime RGB10_EXT = SizedInternalFormat(0x8052)
    comptime RGB12 = SizedInternalFormat(0x8053)
    comptime RGB12_EXT = SizedInternalFormat(0x8053)
    comptime RGB16 = SizedInternalFormat(0x8054)
    comptime RGB16_EXT = SizedInternalFormat(0x8054)
    comptime RGBA2 = SizedInternalFormat(0x8055)
    comptime RGBA2_EXT = SizedInternalFormat(0x8055)
    comptime RGBA4 = SizedInternalFormat(0x8056)
    comptime RGBA4_EXT = SizedInternalFormat(0x8056)
    comptime RGBA4_OES = SizedInternalFormat(0x8056)
    comptime RGB5_A1 = SizedInternalFormat(0x8057)
    comptime RGB5_A1_EXT = SizedInternalFormat(0x8057)
    comptime RGB5_A1_OES = SizedInternalFormat(0x8057)
    comptime RGBA8 = SizedInternalFormat(0x8058)
    comptime RGBA8_EXT = SizedInternalFormat(0x8058)
    comptime RGBA8_OES = SizedInternalFormat(0x8058)
    comptime RGB10_A2 = SizedInternalFormat(0x8059)
    comptime RGB10_A2_EXT = SizedInternalFormat(0x8059)
    comptime RGBA12 = SizedInternalFormat(0x805A)
    comptime RGBA12_EXT = SizedInternalFormat(0x805A)
    comptime RGBA16 = SizedInternalFormat(0x805B)
    comptime RGBA16_EXT = SizedInternalFormat(0x805B)
    comptime DEPTH_COMPONENT16 = SizedInternalFormat(0x81A5)
    comptime DEPTH_COMPONENT16_ARB = SizedInternalFormat(0x81A5)
    comptime DEPTH_COMPONENT16_OES = SizedInternalFormat(0x81A5)
    comptime DEPTH_COMPONENT16_SGIX = SizedInternalFormat(0x81A5)
    comptime DEPTH_COMPONENT24 = SizedInternalFormat(0x81A6)
    comptime DEPTH_COMPONENT24_ARB = SizedInternalFormat(0x81A6)
    comptime DEPTH_COMPONENT24_OES = SizedInternalFormat(0x81A6)
    comptime DEPTH_COMPONENT24_SGIX = SizedInternalFormat(0x81A6)
    comptime DEPTH_COMPONENT32 = SizedInternalFormat(0x81A7)
    comptime DEPTH_COMPONENT32_ARB = SizedInternalFormat(0x81A7)
    comptime DEPTH_COMPONENT32_OES = SizedInternalFormat(0x81A7)
    comptime DEPTH_COMPONENT32_SGIX = SizedInternalFormat(0x81A7)
    comptime R8 = SizedInternalFormat(0x8229)
    comptime R8_EXT = SizedInternalFormat(0x8229)
    comptime R16 = SizedInternalFormat(0x822A)
    comptime R16_EXT = SizedInternalFormat(0x822A)
    comptime RG8 = SizedInternalFormat(0x822B)
    comptime RG8_EXT = SizedInternalFormat(0x822B)
    comptime RG16 = SizedInternalFormat(0x822C)
    comptime RG16_EXT = SizedInternalFormat(0x822C)
    comptime R16F = SizedInternalFormat(0x822D)
    comptime R16F_EXT = SizedInternalFormat(0x822D)
    comptime R32F = SizedInternalFormat(0x822E)
    comptime R32F_EXT = SizedInternalFormat(0x822E)
    comptime RG16F = SizedInternalFormat(0x822F)
    comptime RG16F_EXT = SizedInternalFormat(0x822F)
    comptime RG32F = SizedInternalFormat(0x8230)
    comptime RG32F_EXT = SizedInternalFormat(0x8230)
    comptime R8I = SizedInternalFormat(0x8231)
    comptime R8UI = SizedInternalFormat(0x8232)
    comptime R16I = SizedInternalFormat(0x8233)
    comptime R16UI = SizedInternalFormat(0x8234)
    comptime R32I = SizedInternalFormat(0x8235)
    comptime R32UI = SizedInternalFormat(0x8236)
    comptime RG8I = SizedInternalFormat(0x8237)
    comptime RG8UI = SizedInternalFormat(0x8238)
    comptime RG16I = SizedInternalFormat(0x8239)
    comptime RG16UI = SizedInternalFormat(0x823A)
    comptime RG32I = SizedInternalFormat(0x823B)
    comptime RG32UI = SizedInternalFormat(0x823C)
    comptime COMPRESSED_RGB_S3TC_DXT1_EXT = SizedInternalFormat(0x83F0)
    comptime COMPRESSED_RGBA_S3TC_DXT1_EXT = SizedInternalFormat(0x83F1)
    comptime COMPRESSED_RGBA_S3TC_DXT3_ANGLE = SizedInternalFormat(0x83F2)
    comptime COMPRESSED_RGBA_S3TC_DXT3_EXT = SizedInternalFormat(0x83F2)
    comptime COMPRESSED_RGBA_S3TC_DXT5_ANGLE = SizedInternalFormat(0x83F3)
    comptime COMPRESSED_RGBA_S3TC_DXT5_EXT = SizedInternalFormat(0x83F3)
    comptime RGBA32F = SizedInternalFormat(0x8814)
    comptime RGBA32F_ARB = SizedInternalFormat(0x8814)
    comptime RGBA32F_EXT = SizedInternalFormat(0x8814)
    comptime RGB32F = SizedInternalFormat(0x8815)
    comptime RGB32F_ARB = SizedInternalFormat(0x8815)
    comptime RGB32F_EXT = SizedInternalFormat(0x8815)
    comptime RGBA16F = SizedInternalFormat(0x881A)
    comptime RGBA16F_ARB = SizedInternalFormat(0x881A)
    comptime RGBA16F_EXT = SizedInternalFormat(0x881A)
    comptime RGB16F = SizedInternalFormat(0x881B)
    comptime RGB16F_ARB = SizedInternalFormat(0x881B)
    comptime RGB16F_EXT = SizedInternalFormat(0x881B)
    comptime DEPTH24_STENCIL8 = SizedInternalFormat(0x88F0)
    comptime DEPTH24_STENCIL8_EXT = SizedInternalFormat(0x88F0)
    comptime DEPTH24_STENCIL8_OES = SizedInternalFormat(0x88F0)
    comptime R11F_G11F_B10F = SizedInternalFormat(0x8C3A)
    comptime R11F_G11F_B10F_APPLE = SizedInternalFormat(0x8C3A)
    comptime R11F_G11F_B10F_EXT = SizedInternalFormat(0x8C3A)
    comptime RGB9_E5 = SizedInternalFormat(0x8C3D)
    comptime RGB9_E5_APPLE = SizedInternalFormat(0x8C3D)
    comptime RGB9_E5_EXT = SizedInternalFormat(0x8C3D)
    comptime SRGB8 = SizedInternalFormat(0x8C41)
    comptime SRGB8_EXT = SizedInternalFormat(0x8C41)
    comptime SRGB8_NV = SizedInternalFormat(0x8C41)
    comptime SRGB8_ALPHA8 = SizedInternalFormat(0x8C43)
    comptime SRGB8_ALPHA8_EXT = SizedInternalFormat(0x8C43)
    comptime COMPRESSED_SRGB_S3TC_DXT1_EXT = SizedInternalFormat(0x8C4C)
    comptime COMPRESSED_SRGB_S3TC_DXT1_NV = SizedInternalFormat(0x8C4C)
    comptime COMPRESSED_SRGB_ALPHA_S3TC_DXT1_EXT = SizedInternalFormat(0x8C4D)
    comptime COMPRESSED_SRGB_ALPHA_S3TC_DXT1_NV = SizedInternalFormat(0x8C4D)
    comptime COMPRESSED_SRGB_ALPHA_S3TC_DXT3_EXT = SizedInternalFormat(0x8C4E)
    comptime COMPRESSED_SRGB_ALPHA_S3TC_DXT3_NV = SizedInternalFormat(0x8C4E)
    comptime COMPRESSED_SRGB_ALPHA_S3TC_DXT5_EXT = SizedInternalFormat(0x8C4F)
    comptime COMPRESSED_SRGB_ALPHA_S3TC_DXT5_NV = SizedInternalFormat(0x8C4F)
    comptime DEPTH_COMPONENT32F = SizedInternalFormat(0x8CAC)
    comptime DEPTH32F_STENCIL8 = SizedInternalFormat(0x8CAD)
    comptime STENCIL_INDEX1 = SizedInternalFormat(0x8D46)
    comptime STENCIL_INDEX1_EXT = SizedInternalFormat(0x8D46)
    comptime STENCIL_INDEX1_OES = SizedInternalFormat(0x8D46)
    comptime STENCIL_INDEX4 = SizedInternalFormat(0x8D47)
    comptime STENCIL_INDEX4_EXT = SizedInternalFormat(0x8D47)
    comptime STENCIL_INDEX4_OES = SizedInternalFormat(0x8D47)
    comptime STENCIL_INDEX8 = SizedInternalFormat(0x8D48)
    comptime STENCIL_INDEX8_EXT = SizedInternalFormat(0x8D48)
    comptime STENCIL_INDEX8_OES = SizedInternalFormat(0x8D48)
    comptime STENCIL_INDEX16 = SizedInternalFormat(0x8D49)
    comptime STENCIL_INDEX16_EXT = SizedInternalFormat(0x8D49)
    comptime RGB565_OES = SizedInternalFormat(0x8D62)
    comptime RGB565 = SizedInternalFormat(0x8D62)
    comptime ETC1_RGB8_OES = SizedInternalFormat(0x8D64)
    comptime RGBA32UI = SizedInternalFormat(0x8D70)
    comptime RGBA32UI_EXT = SizedInternalFormat(0x8D70)
    comptime RGB32UI = SizedInternalFormat(0x8D71)
    comptime RGB32UI_EXT = SizedInternalFormat(0x8D71)
    comptime ALPHA32UI_EXT = SizedInternalFormat(0x8D72)
    comptime INTENSITY32UI_EXT = SizedInternalFormat(0x8D73)
    comptime LUMINANCE32UI_EXT = SizedInternalFormat(0x8D74)
    comptime LUMINANCE_ALPHA32UI_EXT = SizedInternalFormat(0x8D75)
    comptime RGBA16UI = SizedInternalFormat(0x8D76)
    comptime RGBA16UI_EXT = SizedInternalFormat(0x8D76)
    comptime RGB16UI = SizedInternalFormat(0x8D77)
    comptime RGB16UI_EXT = SizedInternalFormat(0x8D77)
    comptime ALPHA16UI_EXT = SizedInternalFormat(0x8D78)
    comptime INTENSITY16UI_EXT = SizedInternalFormat(0x8D79)
    comptime LUMINANCE16UI_EXT = SizedInternalFormat(0x8D7A)
    comptime LUMINANCE_ALPHA16UI_EXT = SizedInternalFormat(0x8D7B)
    comptime RGBA8UI = SizedInternalFormat(0x8D7C)
    comptime RGBA8UI_EXT = SizedInternalFormat(0x8D7C)
    comptime RGB8UI = SizedInternalFormat(0x8D7D)
    comptime RGB8UI_EXT = SizedInternalFormat(0x8D7D)
    comptime ALPHA8UI_EXT = SizedInternalFormat(0x8D7E)
    comptime INTENSITY8UI_EXT = SizedInternalFormat(0x8D7F)
    comptime LUMINANCE8UI_EXT = SizedInternalFormat(0x8D80)
    comptime LUMINANCE_ALPHA8UI_EXT = SizedInternalFormat(0x8D81)
    comptime RGBA32I = SizedInternalFormat(0x8D82)
    comptime RGBA32I_EXT = SizedInternalFormat(0x8D82)
    comptime RGB32I = SizedInternalFormat(0x8D83)
    comptime RGB32I_EXT = SizedInternalFormat(0x8D83)
    comptime ALPHA32I_EXT = SizedInternalFormat(0x8D84)
    comptime INTENSITY32I_EXT = SizedInternalFormat(0x8D85)
    comptime LUMINANCE32I_EXT = SizedInternalFormat(0x8D86)
    comptime LUMINANCE_ALPHA32I_EXT = SizedInternalFormat(0x8D87)
    comptime RGBA16I = SizedInternalFormat(0x8D88)
    comptime RGBA16I_EXT = SizedInternalFormat(0x8D88)
    comptime RGB16I = SizedInternalFormat(0x8D89)
    comptime RGB16I_EXT = SizedInternalFormat(0x8D89)
    comptime ALPHA16I_EXT = SizedInternalFormat(0x8D8A)
    comptime INTENSITY16I_EXT = SizedInternalFormat(0x8D8B)
    comptime LUMINANCE16I_EXT = SizedInternalFormat(0x8D8C)
    comptime LUMINANCE_ALPHA16I_EXT = SizedInternalFormat(0x8D8D)
    comptime RGBA8I = SizedInternalFormat(0x8D8E)
    comptime RGBA8I_EXT = SizedInternalFormat(0x8D8E)
    comptime RGB8I = SizedInternalFormat(0x8D8F)
    comptime RGB8I_EXT = SizedInternalFormat(0x8D8F)
    comptime ALPHA8I_EXT = SizedInternalFormat(0x8D90)
    comptime INTENSITY8I_EXT = SizedInternalFormat(0x8D91)
    comptime LUMINANCE8I_EXT = SizedInternalFormat(0x8D92)
    comptime LUMINANCE_ALPHA8I_EXT = SizedInternalFormat(0x8D93)
    comptime DEPTH_COMPONENT32F_NV = SizedInternalFormat(0x8DAB)
    comptime DEPTH32F_STENCIL8_NV = SizedInternalFormat(0x8DAC)
    comptime COMPRESSED_RED_RGTC1 = SizedInternalFormat(0x8DBB)
    comptime COMPRESSED_RED_RGTC1_EXT = SizedInternalFormat(0x8DBB)
    comptime COMPRESSED_SIGNED_RED_RGTC1 = SizedInternalFormat(0x8DBC)
    comptime COMPRESSED_SIGNED_RED_RGTC1_EXT = SizedInternalFormat(0x8DBC)
    comptime COMPRESSED_RED_GREEN_RGTC2_EXT = SizedInternalFormat(0x8DBD)
    comptime COMPRESSED_RG_RGTC2 = SizedInternalFormat(0x8DBD)
    comptime COMPRESSED_SIGNED_RED_GREEN_RGTC2_EXT = SizedInternalFormat(0x8DBE)
    comptime COMPRESSED_SIGNED_RG_RGTC2 = SizedInternalFormat(0x8DBE)
    comptime COMPRESSED_RGBA_BPTC_UNORM = SizedInternalFormat(0x8E8C)
    comptime COMPRESSED_RGBA_BPTC_UNORM_ARB = SizedInternalFormat(0x8E8C)
    comptime COMPRESSED_RGBA_BPTC_UNORM_EXT = SizedInternalFormat(0x8E8C)
    comptime COMPRESSED_SRGB_ALPHA_BPTC_UNORM = SizedInternalFormat(0x8E8D)
    comptime COMPRESSED_SRGB_ALPHA_BPTC_UNORM_ARB = SizedInternalFormat(0x8E8D)
    comptime COMPRESSED_SRGB_ALPHA_BPTC_UNORM_EXT = SizedInternalFormat(0x8E8D)
    comptime COMPRESSED_RGB_BPTC_SIGNED_FLOAT = SizedInternalFormat(0x8E8E)
    comptime COMPRESSED_RGB_BPTC_SIGNED_FLOAT_ARB = SizedInternalFormat(0x8E8E)
    comptime COMPRESSED_RGB_BPTC_SIGNED_FLOAT_EXT = SizedInternalFormat(0x8E8E)
    comptime COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT = SizedInternalFormat(0x8E8F)
    comptime COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT_ARB = SizedInternalFormat(0x8E8F)
    comptime COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT_EXT = SizedInternalFormat(0x8E8F)
    comptime R8_SNORM = SizedInternalFormat(0x8F94)
    comptime RG8_SNORM = SizedInternalFormat(0x8F95)
    comptime RGB8_SNORM = SizedInternalFormat(0x8F96)
    comptime RGBA8_SNORM = SizedInternalFormat(0x8F97)
    comptime R16_SNORM = SizedInternalFormat(0x8F98)
    comptime R16_SNORM_EXT = SizedInternalFormat(0x8F98)
    comptime RG16_SNORM = SizedInternalFormat(0x8F99)
    comptime RG16_SNORM_EXT = SizedInternalFormat(0x8F99)
    comptime RGB16_SNORM = SizedInternalFormat(0x8F9A)
    comptime RGB16_SNORM_EXT = SizedInternalFormat(0x8F9A)
    comptime RGBA16_SNORM = SizedInternalFormat(0x8F9B)
    comptime RGBA16_SNORM_EXT = SizedInternalFormat(0x8F9B)
    comptime RGB10_A2UI = SizedInternalFormat(0x906F)
    comptime COMPRESSED_R11_EAC = SizedInternalFormat(0x9270)
    comptime COMPRESSED_R11_EAC_OES = SizedInternalFormat(0x9270)
    comptime COMPRESSED_SIGNED_R11_EAC = SizedInternalFormat(0x9271)
    comptime COMPRESSED_SIGNED_R11_EAC_OES = SizedInternalFormat(0x9271)
    comptime COMPRESSED_RG11_EAC = SizedInternalFormat(0x9272)
    comptime COMPRESSED_RG11_EAC_OES = SizedInternalFormat(0x9272)
    comptime COMPRESSED_SIGNED_RG11_EAC = SizedInternalFormat(0x9273)
    comptime COMPRESSED_SIGNED_RG11_EAC_OES = SizedInternalFormat(0x9273)
    comptime COMPRESSED_RGB8_ETC2 = SizedInternalFormat(0x9274)
    comptime COMPRESSED_RGB8_ETC2_OES = SizedInternalFormat(0x9274)
    comptime COMPRESSED_SRGB8_ETC2 = SizedInternalFormat(0x9275)
    comptime COMPRESSED_SRGB8_ETC2_OES = SizedInternalFormat(0x9275)
    comptime COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2 = SizedInternalFormat(0x9276)
    comptime COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2_OES = SizedInternalFormat(0x9276)
    comptime COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2 = SizedInternalFormat(0x9277)
    comptime COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2_OES = SizedInternalFormat(0x9277)
    comptime COMPRESSED_RGBA8_ETC2_EAC = SizedInternalFormat(0x9278)
    comptime COMPRESSED_RGBA8_ETC2_EAC_OES = SizedInternalFormat(0x9278)
    comptime COMPRESSED_SRGB8_ALPHA8_ETC2_EAC = SizedInternalFormat(0x9279)
    comptime COMPRESSED_SRGB8_ALPHA8_ETC2_EAC_OES = SizedInternalFormat(0x9279)
    comptime COMPRESSED_RGBA_ASTC_4x4 = SizedInternalFormat(0x93B0)
    comptime COMPRESSED_RGBA_ASTC_4x4_KHR = SizedInternalFormat(0x93B0)
    comptime COMPRESSED_RGBA_ASTC_5x4 = SizedInternalFormat(0x93B1)
    comptime COMPRESSED_RGBA_ASTC_5x4_KHR = SizedInternalFormat(0x93B1)
    comptime COMPRESSED_RGBA_ASTC_5x5 = SizedInternalFormat(0x93B2)
    comptime COMPRESSED_RGBA_ASTC_5x5_KHR = SizedInternalFormat(0x93B2)
    comptime COMPRESSED_RGBA_ASTC_6x5 = SizedInternalFormat(0x93B3)
    comptime COMPRESSED_RGBA_ASTC_6x5_KHR = SizedInternalFormat(0x93B3)
    comptime COMPRESSED_RGBA_ASTC_6x6 = SizedInternalFormat(0x93B4)
    comptime COMPRESSED_RGBA_ASTC_6x6_KHR = SizedInternalFormat(0x93B4)
    comptime COMPRESSED_RGBA_ASTC_8x5 = SizedInternalFormat(0x93B5)
    comptime COMPRESSED_RGBA_ASTC_8x5_KHR = SizedInternalFormat(0x93B5)
    comptime COMPRESSED_RGBA_ASTC_8x6 = SizedInternalFormat(0x93B6)
    comptime COMPRESSED_RGBA_ASTC_8x6_KHR = SizedInternalFormat(0x93B6)
    comptime COMPRESSED_RGBA_ASTC_8x8 = SizedInternalFormat(0x93B7)
    comptime COMPRESSED_RGBA_ASTC_8x8_KHR = SizedInternalFormat(0x93B7)
    comptime COMPRESSED_RGBA_ASTC_10x5 = SizedInternalFormat(0x93B8)
    comptime COMPRESSED_RGBA_ASTC_10x5_KHR = SizedInternalFormat(0x93B8)
    comptime COMPRESSED_RGBA_ASTC_10x6 = SizedInternalFormat(0x93B9)
    comptime COMPRESSED_RGBA_ASTC_10x6_KHR = SizedInternalFormat(0x93B9)
    comptime COMPRESSED_RGBA_ASTC_10x8 = SizedInternalFormat(0x93BA)
    comptime COMPRESSED_RGBA_ASTC_10x8_KHR = SizedInternalFormat(0x93BA)
    comptime COMPRESSED_RGBA_ASTC_10x10 = SizedInternalFormat(0x93BB)
    comptime COMPRESSED_RGBA_ASTC_10x10_KHR = SizedInternalFormat(0x93BB)
    comptime COMPRESSED_RGBA_ASTC_12x10 = SizedInternalFormat(0x93BC)
    comptime COMPRESSED_RGBA_ASTC_12x10_KHR = SizedInternalFormat(0x93BC)
    comptime COMPRESSED_RGBA_ASTC_12x12 = SizedInternalFormat(0x93BD)
    comptime COMPRESSED_RGBA_ASTC_12x12_KHR = SizedInternalFormat(0x93BD)
    comptime COMPRESSED_RGBA_ASTC_3x3x3_OES = SizedInternalFormat(0x93C0)
    comptime COMPRESSED_RGBA_ASTC_4x3x3_OES = SizedInternalFormat(0x93C1)
    comptime COMPRESSED_RGBA_ASTC_4x4x3_OES = SizedInternalFormat(0x93C2)
    comptime COMPRESSED_RGBA_ASTC_4x4x4_OES = SizedInternalFormat(0x93C3)
    comptime COMPRESSED_RGBA_ASTC_5x4x4_OES = SizedInternalFormat(0x93C4)
    comptime COMPRESSED_RGBA_ASTC_5x5x4_OES = SizedInternalFormat(0x93C5)
    comptime COMPRESSED_RGBA_ASTC_5x5x5_OES = SizedInternalFormat(0x93C6)
    comptime COMPRESSED_RGBA_ASTC_6x5x5_OES = SizedInternalFormat(0x93C7)
    comptime COMPRESSED_RGBA_ASTC_6x6x5_OES = SizedInternalFormat(0x93C8)
    comptime COMPRESSED_RGBA_ASTC_6x6x6_OES = SizedInternalFormat(0x93C9)
    comptime COMPRESSED_SRGB8_ALPHA8_ASTC_4x4 = SizedInternalFormat(0x93D0)
    comptime COMPRESSED_SRGB8_ALPHA8_ASTC_4x4_KHR = SizedInternalFormat(0x93D0)
    comptime COMPRESSED_SRGB8_ALPHA8_ASTC_5x4 = SizedInternalFormat(0x93D1)
    comptime COMPRESSED_SRGB8_ALPHA8_ASTC_5x4_KHR = SizedInternalFormat(0x93D1)
    comptime COMPRESSED_SRGB8_ALPHA8_ASTC_5x5 = SizedInternalFormat(0x93D2)
    comptime COMPRESSED_SRGB8_ALPHA8_ASTC_5x5_KHR = SizedInternalFormat(0x93D2)
    comptime COMPRESSED_SRGB8_ALPHA8_ASTC_6x5 = SizedInternalFormat(0x93D3)
    comptime COMPRESSED_SRGB8_ALPHA8_ASTC_6x5_KHR = SizedInternalFormat(0x93D3)
    comptime COMPRESSED_SRGB8_ALPHA8_ASTC_6x6 = SizedInternalFormat(0x93D4)
    comptime COMPRESSED_SRGB8_ALPHA8_ASTC_6x6_KHR = SizedInternalFormat(0x93D4)
    comptime COMPRESSED_SRGB8_ALPHA8_ASTC_8x5 = SizedInternalFormat(0x93D5)
    comptime COMPRESSED_SRGB8_ALPHA8_ASTC_8x5_KHR = SizedInternalFormat(0x93D5)
    comptime COMPRESSED_SRGB8_ALPHA8_ASTC_8x6 = SizedInternalFormat(0x93D6)
    comptime COMPRESSED_SRGB8_ALPHA8_ASTC_8x6_KHR = SizedInternalFormat(0x93D6)
    comptime COMPRESSED_SRGB8_ALPHA8_ASTC_8x8 = SizedInternalFormat(0x93D7)
    comptime COMPRESSED_SRGB8_ALPHA8_ASTC_8x8_KHR = SizedInternalFormat(0x93D7)
    comptime COMPRESSED_SRGB8_ALPHA8_ASTC_10x5 = SizedInternalFormat(0x93D8)
    comptime COMPRESSED_SRGB8_ALPHA8_ASTC_10x5_KHR = SizedInternalFormat(0x93D8)
    comptime COMPRESSED_SRGB8_ALPHA8_ASTC_10x6 = SizedInternalFormat(0x93D9)
    comptime COMPRESSED_SRGB8_ALPHA8_ASTC_10x6_KHR = SizedInternalFormat(0x93D9)
    comptime COMPRESSED_SRGB8_ALPHA8_ASTC_10x8 = SizedInternalFormat(0x93DA)
    comptime COMPRESSED_SRGB8_ALPHA8_ASTC_10x8_KHR = SizedInternalFormat(0x93DA)
    comptime COMPRESSED_SRGB8_ALPHA8_ASTC_10x10 = SizedInternalFormat(0x93DB)
    comptime COMPRESSED_SRGB8_ALPHA8_ASTC_10x10_KHR = SizedInternalFormat(0x93DB)
    comptime COMPRESSED_SRGB8_ALPHA8_ASTC_12x10 = SizedInternalFormat(0x93DC)
    comptime COMPRESSED_SRGB8_ALPHA8_ASTC_12x10_KHR = SizedInternalFormat(0x93DC)
    comptime COMPRESSED_SRGB8_ALPHA8_ASTC_12x12 = SizedInternalFormat(0x93DD)
    comptime COMPRESSED_SRGB8_ALPHA8_ASTC_12x12_KHR = SizedInternalFormat(0x93DD)
    comptime COMPRESSED_SRGB8_ALPHA8_ASTC_3x3x3_OES = SizedInternalFormat(0x93E0)
    comptime COMPRESSED_SRGB8_ALPHA8_ASTC_4x3x3_OES = SizedInternalFormat(0x93E1)
    comptime COMPRESSED_SRGB8_ALPHA8_ASTC_4x4x3_OES = SizedInternalFormat(0x93E2)
    comptime COMPRESSED_SRGB8_ALPHA8_ASTC_4x4x4_OES = SizedInternalFormat(0x93E3)
    comptime COMPRESSED_SRGB8_ALPHA8_ASTC_5x4x4_OES = SizedInternalFormat(0x93E4)
    comptime COMPRESSED_SRGB8_ALPHA8_ASTC_5x5x4_OES = SizedInternalFormat(0x93E5)
    comptime COMPRESSED_SRGB8_ALPHA8_ASTC_5x5x5_OES = SizedInternalFormat(0x93E6)
    comptime COMPRESSED_SRGB8_ALPHA8_ASTC_6x5x5_OES = SizedInternalFormat(0x93E7)
    comptime COMPRESSED_SRGB8_ALPHA8_ASTC_6x6x5_OES = SizedInternalFormat(0x93E8)
    comptime COMPRESSED_SRGB8_ALPHA8_ASTC_6x6x6_OES = SizedInternalFormat(0x93E9)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct SpecialNumbers(Intable):
    var value: GLenum

    comptime FALSE = SpecialNumbers(0)
    comptime NO_ERROR = SpecialNumbers(0)
    comptime ZERO = SpecialNumbers(0)
    comptime NONE = SpecialNumbers(0)
    comptime NONE_OES = SpecialNumbers(0)
    comptime TRUE = SpecialNumbers(1)
    comptime ONE = SpecialNumbers(1)
    comptime INVALID_INDEX = SpecialNumbers(0xFFFFFFFF)
    comptime ALL_PIXELS_AMD = SpecialNumbers(0xFFFFFFFF)
    comptime TIMEOUT_IGNORED = SpecialNumbers(0xFFFFFFFFFFFFFFFF)
    comptime TIMEOUT_IGNORED_APPLE = SpecialNumbers(0xFFFFFFFFFFFFFFFF)
    comptime VERSION_ES_CL_1_0 = SpecialNumbers(1)
    comptime VERSION_ES_CM_1_1 = SpecialNumbers(1)
    comptime VERSION_ES_CL_1_1 = SpecialNumbers(1)
    comptime UUID_SIZE_EXT = SpecialNumbers(16)
    comptime LUID_SIZE_EXT = SpecialNumbers(8)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct StencilFunction(Intable):
    var value: GLenum

    comptime NEVER = StencilFunction(0x0200)
    comptime LESS = StencilFunction(0x0201)
    comptime EQUAL = StencilFunction(0x0202)
    comptime LEQUAL = StencilFunction(0x0203)
    comptime GREATER = StencilFunction(0x0204)
    comptime NOTEQUAL = StencilFunction(0x0205)
    comptime GEQUAL = StencilFunction(0x0206)
    comptime ALWAYS = StencilFunction(0x0207)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct StencilOp(Intable):
    var value: GLenum

    comptime ZERO = StencilOp(0)
    comptime INVERT = StencilOp(0x150A)
    comptime KEEP = StencilOp(0x1E00)
    comptime REPLACE = StencilOp(0x1E01)
    comptime INCR = StencilOp(0x1E02)
    comptime DECR = StencilOp(0x1E03)
    comptime INCR_WRAP = StencilOp(0x8507)
    comptime DECR_WRAP = StencilOp(0x8508)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct StringName(Intable):
    var value: GLenum

    comptime VENDOR = StringName(0x1F00)
    comptime RENDERER = StringName(0x1F01)
    comptime VERSION = StringName(0x1F02)
    comptime EXTENSIONS = StringName(0x1F03)
    comptime SHADING_LANGUAGE_VERSION = StringName(0x8B8C)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct SubroutineParameterName(Intable):
    var value: GLenum

    comptime UNIFORM_SIZE = SubroutineParameterName(0x8A38)
    comptime UNIFORM_NAME_LENGTH = SubroutineParameterName(0x8A39)
    comptime NUM_COMPATIBLE_SUBROUTINES = SubroutineParameterName(0x8E4A)
    comptime COMPATIBLE_SUBROUTINES = SubroutineParameterName(0x8E4B)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct SyncBehaviorFlags(Intable):
    var value: GLbitfield

    comptime NONE = SyncBehaviorFlags(0)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)

    @always_inline
    fn __or__(lhs, rhs: Self) -> Self:
        return Self(lhs.value | rhs.value)


@fieldwise_init
@register_passable("trivial")
struct SyncCondition(Intable):
    var value: GLenum

    comptime SYNC_GPU_COMMANDS_COMPLETE = SyncCondition(0x9117)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct SyncObjectMask(Intable):
    var value: GLbitfield

    comptime SYNC_FLUSH_COMMANDS_BIT = SyncObjectMask(0x00000001)
    comptime SYNC_FLUSH_COMMANDS_BIT_APPLE = SyncObjectMask(0x00000001)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)

    @always_inline
    fn __or__(lhs, rhs: Self) -> Self:
        return Self(lhs.value | rhs.value)


@fieldwise_init
@register_passable("trivial")
struct SyncParameterName(Intable):
    var value: GLenum

    comptime OBJECT_TYPE = SyncParameterName(0x9112)
    comptime SYNC_CONDITION = SyncParameterName(0x9113)
    comptime SYNC_STATUS = SyncParameterName(0x9114)
    comptime SYNC_FLAGS = SyncParameterName(0x9115)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct SyncStatus(Intable):
    var value: GLenum

    comptime ALREADY_SIGNALED = SyncStatus(0x911A)
    comptime TIMEOUT_EXPIRED = SyncStatus(0x911B)
    comptime CONDITION_SATISFIED = SyncStatus(0x911C)
    comptime WAIT_FAILED = SyncStatus(0x911D)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct TexCoordPointerType(Intable):
    var value: GLenum

    comptime SHORT = TexCoordPointerType(0x1402)
    comptime INT = TexCoordPointerType(0x1404)
    comptime FLOAT = TexCoordPointerType(0x1406)
    comptime DOUBLE = TexCoordPointerType(0x140A)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct TextureCompareMode(Intable):
    var value: GLenum

    comptime NONE = TextureCompareMode(0)
    comptime COMPARE_R_TO_TEXTURE = TextureCompareMode(0x884E)
    comptime COMPARE_REF_TO_TEXTURE = TextureCompareMode(0x884E)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct TextureEnvMode(Intable):
    var value: GLenum

    comptime ADD = TextureEnvMode(0x0104)
    comptime BLEND = TextureEnvMode(0x0BE2)
    comptime REPLACE = TextureEnvMode(0x1E01)
    comptime MODULATE = TextureEnvMode(0x2100)
    comptime DECAL = TextureEnvMode(0x2101)
    comptime REPLACE_EXT = TextureEnvMode(0x8062)
    comptime TEXTURE_ENV_BIAS_SGIX = TextureEnvMode(0x80BE)
    comptime COMBINE = TextureEnvMode(0x8570)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct TextureEnvParameter(Intable):
    var value: GLenum

    comptime ALPHA_SCALE = TextureEnvParameter(0x0D1C)
    comptime TEXTURE_ENV_MODE = TextureEnvParameter(0x2200)
    comptime TEXTURE_ENV_COLOR = TextureEnvParameter(0x2201)
    comptime TEXTURE_LOD_BIAS = TextureEnvParameter(0x8501)
    comptime COMBINE = TextureEnvParameter(0x8570)
    comptime COMBINE_ARB = TextureEnvParameter(0x8570)
    comptime COMBINE_EXT = TextureEnvParameter(0x8570)
    comptime COMBINE_RGB = TextureEnvParameter(0x8571)
    comptime COMBINE_RGB_ARB = TextureEnvParameter(0x8571)
    comptime COMBINE_RGB_EXT = TextureEnvParameter(0x8571)
    comptime COMBINE_ALPHA = TextureEnvParameter(0x8572)
    comptime COMBINE_ALPHA_ARB = TextureEnvParameter(0x8572)
    comptime COMBINE_ALPHA_EXT = TextureEnvParameter(0x8572)
    comptime RGB_SCALE = TextureEnvParameter(0x8573)
    comptime RGB_SCALE_ARB = TextureEnvParameter(0x8573)
    comptime RGB_SCALE_EXT = TextureEnvParameter(0x8573)
    comptime ADD_SIGNED = TextureEnvParameter(0x8574)
    comptime ADD_SIGNED_ARB = TextureEnvParameter(0x8574)
    comptime ADD_SIGNED_EXT = TextureEnvParameter(0x8574)
    comptime INTERPOLATE = TextureEnvParameter(0x8575)
    comptime INTERPOLATE_ARB = TextureEnvParameter(0x8575)
    comptime INTERPOLATE_EXT = TextureEnvParameter(0x8575)
    comptime CONSTANT = TextureEnvParameter(0x8576)
    comptime CONSTANT_ARB = TextureEnvParameter(0x8576)
    comptime CONSTANT_EXT = TextureEnvParameter(0x8576)
    comptime CONSTANT_NV = TextureEnvParameter(0x8576)
    comptime PRIMARY_COLOR = TextureEnvParameter(0x8577)
    comptime PRIMARY_COLOR_ARB = TextureEnvParameter(0x8577)
    comptime PRIMARY_COLOR_EXT = TextureEnvParameter(0x8577)
    comptime PREVIOUS = TextureEnvParameter(0x8578)
    comptime PREVIOUS_ARB = TextureEnvParameter(0x8578)
    comptime PREVIOUS_EXT = TextureEnvParameter(0x8578)
    comptime SOURCE0_RGB = TextureEnvParameter(0x8580)
    comptime SOURCE0_RGB_ARB = TextureEnvParameter(0x8580)
    comptime SOURCE0_RGB_EXT = TextureEnvParameter(0x8580)
    comptime SRC0_RGB = TextureEnvParameter(0x8580)
    comptime SOURCE1_RGB = TextureEnvParameter(0x8581)
    comptime SOURCE1_RGB_ARB = TextureEnvParameter(0x8581)
    comptime SOURCE1_RGB_EXT = TextureEnvParameter(0x8581)
    comptime SRC1_RGB = TextureEnvParameter(0x8581)
    comptime SOURCE2_RGB = TextureEnvParameter(0x8582)
    comptime SOURCE2_RGB_ARB = TextureEnvParameter(0x8582)
    comptime SOURCE2_RGB_EXT = TextureEnvParameter(0x8582)
    comptime SRC2_RGB = TextureEnvParameter(0x8582)
    comptime SOURCE3_RGB_NV = TextureEnvParameter(0x8583)
    comptime SOURCE0_ALPHA = TextureEnvParameter(0x8588)
    comptime SOURCE0_ALPHA_ARB = TextureEnvParameter(0x8588)
    comptime SOURCE0_ALPHA_EXT = TextureEnvParameter(0x8588)
    comptime SRC0_ALPHA = TextureEnvParameter(0x8588)
    comptime SOURCE1_ALPHA = TextureEnvParameter(0x8589)
    comptime SOURCE1_ALPHA_ARB = TextureEnvParameter(0x8589)
    comptime SOURCE1_ALPHA_EXT = TextureEnvParameter(0x8589)
    comptime SRC1_ALPHA = TextureEnvParameter(0x8589)
    comptime SRC1_ALPHA_EXT = TextureEnvParameter(0x8589)
    comptime SOURCE2_ALPHA = TextureEnvParameter(0x858A)
    comptime SOURCE2_ALPHA_ARB = TextureEnvParameter(0x858A)
    comptime SOURCE2_ALPHA_EXT = TextureEnvParameter(0x858A)
    comptime SRC2_ALPHA = TextureEnvParameter(0x858A)
    comptime SOURCE3_ALPHA_NV = TextureEnvParameter(0x858B)
    comptime OPERAND0_RGB = TextureEnvParameter(0x8590)
    comptime OPERAND0_RGB_ARB = TextureEnvParameter(0x8590)
    comptime OPERAND0_RGB_EXT = TextureEnvParameter(0x8590)
    comptime OPERAND1_RGB = TextureEnvParameter(0x8591)
    comptime OPERAND1_RGB_ARB = TextureEnvParameter(0x8591)
    comptime OPERAND1_RGB_EXT = TextureEnvParameter(0x8591)
    comptime OPERAND2_RGB = TextureEnvParameter(0x8592)
    comptime OPERAND2_RGB_ARB = TextureEnvParameter(0x8592)
    comptime OPERAND2_RGB_EXT = TextureEnvParameter(0x8592)
    comptime OPERAND3_RGB_NV = TextureEnvParameter(0x8593)
    comptime OPERAND0_ALPHA = TextureEnvParameter(0x8598)
    comptime OPERAND0_ALPHA_ARB = TextureEnvParameter(0x8598)
    comptime OPERAND0_ALPHA_EXT = TextureEnvParameter(0x8598)
    comptime OPERAND1_ALPHA = TextureEnvParameter(0x8599)
    comptime OPERAND1_ALPHA_ARB = TextureEnvParameter(0x8599)
    comptime OPERAND1_ALPHA_EXT = TextureEnvParameter(0x8599)
    comptime OPERAND2_ALPHA = TextureEnvParameter(0x859A)
    comptime OPERAND2_ALPHA_ARB = TextureEnvParameter(0x859A)
    comptime OPERAND2_ALPHA_EXT = TextureEnvParameter(0x859A)
    comptime OPERAND3_ALPHA_NV = TextureEnvParameter(0x859B)
    comptime COORD_REPLACE = TextureEnvParameter(0x8862)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct TextureMagFilter(Intable):
    var value: GLenum

    comptime NEAREST = TextureMagFilter(0x2600)
    comptime LINEAR = TextureMagFilter(0x2601)
    comptime LINEAR_DETAIL_SGIS = TextureMagFilter(0x8097)
    comptime LINEAR_DETAIL_ALPHA_SGIS = TextureMagFilter(0x8098)
    comptime LINEAR_DETAIL_COLOR_SGIS = TextureMagFilter(0x8099)
    comptime LINEAR_SHARPEN_SGIS = TextureMagFilter(0x80AD)
    comptime LINEAR_SHARPEN_ALPHA_SGIS = TextureMagFilter(0x80AE)
    comptime LINEAR_SHARPEN_COLOR_SGIS = TextureMagFilter(0x80AF)
    comptime FILTER4_SGIS = TextureMagFilter(0x8146)
    comptime PIXEL_TEX_GEN_Q_CEILING_SGIX = TextureMagFilter(0x8184)
    comptime PIXEL_TEX_GEN_Q_ROUND_SGIX = TextureMagFilter(0x8185)
    comptime PIXEL_TEX_GEN_Q_FLOOR_SGIX = TextureMagFilter(0x8186)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct TextureMinFilter(Intable):
    var value: GLenum

    comptime NEAREST = TextureMinFilter(0x2600)
    comptime LINEAR = TextureMinFilter(0x2601)
    comptime NEAREST_MIPMAP_NEAREST = TextureMinFilter(0x2700)
    comptime LINEAR_MIPMAP_NEAREST = TextureMinFilter(0x2701)
    comptime NEAREST_MIPMAP_LINEAR = TextureMinFilter(0x2702)
    comptime LINEAR_MIPMAP_LINEAR = TextureMinFilter(0x2703)
    comptime FILTER4_SGIS = TextureMinFilter(0x8146)
    comptime LINEAR_CLIPMAP_LINEAR_SGIX = TextureMinFilter(0x8170)
    comptime PIXEL_TEX_GEN_Q_CEILING_SGIX = TextureMinFilter(0x8184)
    comptime PIXEL_TEX_GEN_Q_ROUND_SGIX = TextureMinFilter(0x8185)
    comptime PIXEL_TEX_GEN_Q_FLOOR_SGIX = TextureMinFilter(0x8186)
    comptime NEAREST_CLIPMAP_NEAREST_SGIX = TextureMinFilter(0x844D)
    comptime NEAREST_CLIPMAP_LINEAR_SGIX = TextureMinFilter(0x844E)
    comptime LINEAR_CLIPMAP_NEAREST_SGIX = TextureMinFilter(0x844F)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct TextureParameterName(Intable):
    var value: GLenum

    comptime TEXTURE_WIDTH = TextureParameterName(0x1000)
    comptime TEXTURE_HEIGHT = TextureParameterName(0x1001)
    comptime TEXTURE_INTERNAL_FORMAT = TextureParameterName(0x1003)
    comptime TEXTURE_COMPONENTS = TextureParameterName(0x1003)
    comptime TEXTURE_BORDER_COLOR = TextureParameterName(0x1004)
    comptime TEXTURE_BORDER_COLOR_NV = TextureParameterName(0x1004)
    comptime TEXTURE_BORDER = TextureParameterName(0x1005)
    comptime TEXTURE_MAG_FILTER = TextureParameterName(0x2800)
    comptime TEXTURE_MIN_FILTER = TextureParameterName(0x2801)
    comptime TEXTURE_WRAP_S = TextureParameterName(0x2802)
    comptime TEXTURE_WRAP_T = TextureParameterName(0x2803)
    comptime TEXTURE_RED_SIZE = TextureParameterName(0x805C)
    comptime TEXTURE_GREEN_SIZE = TextureParameterName(0x805D)
    comptime TEXTURE_BLUE_SIZE = TextureParameterName(0x805E)
    comptime TEXTURE_ALPHA_SIZE = TextureParameterName(0x805F)
    comptime TEXTURE_LUMINANCE_SIZE = TextureParameterName(0x8060)
    comptime TEXTURE_INTENSITY_SIZE = TextureParameterName(0x8061)
    comptime TEXTURE_PRIORITY = TextureParameterName(0x8066)
    comptime TEXTURE_PRIORITY_EXT = TextureParameterName(0x8066)
    comptime TEXTURE_RESIDENT = TextureParameterName(0x8067)
    comptime TEXTURE_DEPTH_EXT = TextureParameterName(0x8071)
    comptime TEXTURE_WRAP_R = TextureParameterName(0x8072)
    comptime TEXTURE_WRAP_R_EXT = TextureParameterName(0x8072)
    comptime TEXTURE_WRAP_R_OES = TextureParameterName(0x8072)
    comptime DETAIL_TEXTURE_LEVEL_SGIS = TextureParameterName(0x809A)
    comptime DETAIL_TEXTURE_MODE_SGIS = TextureParameterName(0x809B)
    comptime DETAIL_TEXTURE_FUNC_POINTS_SGIS = TextureParameterName(0x809C)
    comptime SHARPEN_TEXTURE_FUNC_POINTS_SGIS = TextureParameterName(0x80B0)
    comptime SHADOW_AMBIENT_SGIX = TextureParameterName(0x80BF)
    comptime DUAL_TEXTURE_SELECT_SGIS = TextureParameterName(0x8124)
    comptime QUAD_TEXTURE_SELECT_SGIS = TextureParameterName(0x8125)
    comptime TEXTURE_4DSIZE_SGIS = TextureParameterName(0x8136)
    comptime TEXTURE_WRAP_Q_SGIS = TextureParameterName(0x8137)
    comptime TEXTURE_MIN_LOD = TextureParameterName(0x813A)
    comptime TEXTURE_MIN_LOD_SGIS = TextureParameterName(0x813A)
    comptime TEXTURE_MAX_LOD = TextureParameterName(0x813B)
    comptime TEXTURE_MAX_LOD_SGIS = TextureParameterName(0x813B)
    comptime TEXTURE_BASE_LEVEL = TextureParameterName(0x813C)
    comptime TEXTURE_BASE_LEVEL_SGIS = TextureParameterName(0x813C)
    comptime TEXTURE_MAX_LEVEL = TextureParameterName(0x813D)
    comptime TEXTURE_MAX_LEVEL_SGIS = TextureParameterName(0x813D)
    comptime TEXTURE_FILTER4_SIZE_SGIS = TextureParameterName(0x8147)
    comptime TEXTURE_CLIPMAP_CENTER_SGIX = TextureParameterName(0x8171)
    comptime TEXTURE_CLIPMAP_FRAME_SGIX = TextureParameterName(0x8172)
    comptime TEXTURE_CLIPMAP_OFFSET_SGIX = TextureParameterName(0x8173)
    comptime TEXTURE_CLIPMAP_VIRTUAL_DEPTH_SGIX = TextureParameterName(0x8174)
    comptime TEXTURE_CLIPMAP_LOD_OFFSET_SGIX = TextureParameterName(0x8175)
    comptime TEXTURE_CLIPMAP_DEPTH_SGIX = TextureParameterName(0x8176)
    comptime POST_TEXTURE_FILTER_BIAS_SGIX = TextureParameterName(0x8179)
    comptime POST_TEXTURE_FILTER_SCALE_SGIX = TextureParameterName(0x817A)
    comptime TEXTURE_LOD_BIAS_S_SGIX = TextureParameterName(0x818E)
    comptime TEXTURE_LOD_BIAS_T_SGIX = TextureParameterName(0x818F)
    comptime TEXTURE_LOD_BIAS_R_SGIX = TextureParameterName(0x8190)
    comptime GENERATE_MIPMAP = TextureParameterName(0x8191)
    comptime GENERATE_MIPMAP_SGIS = TextureParameterName(0x8191)
    comptime TEXTURE_COMPARE_SGIX = TextureParameterName(0x819A)
    comptime TEXTURE_COMPARE_OPERATOR_SGIX = TextureParameterName(0x819B)
    comptime TEXTURE_LEQUAL_R_SGIX = TextureParameterName(0x819C)
    comptime TEXTURE_GEQUAL_R_SGIX = TextureParameterName(0x819D)
    comptime TEXTURE_MAX_CLAMP_S_SGIX = TextureParameterName(0x8369)
    comptime TEXTURE_MAX_CLAMP_T_SGIX = TextureParameterName(0x836A)
    comptime TEXTURE_MAX_CLAMP_R_SGIX = TextureParameterName(0x836B)
    comptime TEXTURE_MEMORY_LAYOUT_INTEL = TextureParameterName(0x83FF)
    comptime TEXTURE_MAX_ANISOTROPY = TextureParameterName(0x84FE)
    comptime TEXTURE_LOD_BIAS = TextureParameterName(0x8501)
    comptime TEXTURE_COMPARE_MODE = TextureParameterName(0x884C)
    comptime TEXTURE_COMPARE_FUNC = TextureParameterName(0x884D)
    comptime TEXTURE_SWIZZLE_R = TextureParameterName(0x8E42)
    comptime TEXTURE_SWIZZLE_G = TextureParameterName(0x8E43)
    comptime TEXTURE_SWIZZLE_B = TextureParameterName(0x8E44)
    comptime TEXTURE_SWIZZLE_A = TextureParameterName(0x8E45)
    comptime TEXTURE_SWIZZLE_RGBA = TextureParameterName(0x8E46)
    comptime TEXTURE_UNNORMALIZED_COORDINATES_ARM = TextureParameterName(0x8F6A)
    comptime DEPTH_STENCIL_TEXTURE_MODE = TextureParameterName(0x90EA)
    comptime TEXTURE_TILING_EXT = TextureParameterName(0x9580)
    comptime TEXTURE_FOVEATED_CUTOFF_DENSITY_QCOM = TextureParameterName(0x96A0)
    comptime TEXTURE_Y_DEGAMMA_QCOM = TextureParameterName(0x9710)
    comptime TEXTURE_CBCR_DEGAMMA_QCOM = TextureParameterName(0x9711)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct TextureSwizzle(Intable):
    var value: GLenum

    comptime ZERO = TextureSwizzle(0)
    comptime ONE = TextureSwizzle(1)
    comptime RED = TextureSwizzle(0x1903)
    comptime GREEN = TextureSwizzle(0x1904)
    comptime BLUE = TextureSwizzle(0x1905)
    comptime ALPHA = TextureSwizzle(0x1906)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct TextureTarget(Intable):
    var value: GLenum

    comptime TEXTURE_1D = TextureTarget(0x0DE0)
    comptime TEXTURE_2D = TextureTarget(0x0DE1)
    comptime PROXY_TEXTURE_1D = TextureTarget(0x8063)
    comptime PROXY_TEXTURE_1D_EXT = TextureTarget(0x8063)
    comptime PROXY_TEXTURE_2D = TextureTarget(0x8064)
    comptime PROXY_TEXTURE_2D_EXT = TextureTarget(0x8064)
    comptime TEXTURE_3D = TextureTarget(0x806F)
    comptime TEXTURE_3D_EXT = TextureTarget(0x806F)
    comptime TEXTURE_3D_OES = TextureTarget(0x806F)
    comptime PROXY_TEXTURE_3D = TextureTarget(0x8070)
    comptime PROXY_TEXTURE_3D_EXT = TextureTarget(0x8070)
    comptime DETAIL_TEXTURE_2D_SGIS = TextureTarget(0x8095)
    comptime TEXTURE_4D_SGIS = TextureTarget(0x8134)
    comptime PROXY_TEXTURE_4D_SGIS = TextureTarget(0x8135)
    comptime TEXTURE_RECTANGLE = TextureTarget(0x84F5)
    comptime TEXTURE_RECTANGLE_ARB = TextureTarget(0x84F5)
    comptime TEXTURE_RECTANGLE_NV = TextureTarget(0x84F5)
    comptime PROXY_TEXTURE_RECTANGLE = TextureTarget(0x84F7)
    comptime PROXY_TEXTURE_RECTANGLE_ARB = TextureTarget(0x84F7)
    comptime PROXY_TEXTURE_RECTANGLE_NV = TextureTarget(0x84F7)
    comptime TEXTURE_CUBE_MAP = TextureTarget(0x8513)
    comptime TEXTURE_CUBE_MAP_ARB = TextureTarget(0x8513)
    comptime TEXTURE_CUBE_MAP_EXT = TextureTarget(0x8513)
    comptime TEXTURE_CUBE_MAP_OES = TextureTarget(0x8513)
    comptime TEXTURE_CUBE_MAP_POSITIVE_X = TextureTarget(0x8515)
    comptime TEXTURE_CUBE_MAP_POSITIVE_X_ARB = TextureTarget(0x8515)
    comptime TEXTURE_CUBE_MAP_POSITIVE_X_EXT = TextureTarget(0x8515)
    comptime TEXTURE_CUBE_MAP_POSITIVE_X_OES = TextureTarget(0x8515)
    comptime TEXTURE_CUBE_MAP_NEGATIVE_X = TextureTarget(0x8516)
    comptime TEXTURE_CUBE_MAP_NEGATIVE_X_ARB = TextureTarget(0x8516)
    comptime TEXTURE_CUBE_MAP_NEGATIVE_X_EXT = TextureTarget(0x8516)
    comptime TEXTURE_CUBE_MAP_NEGATIVE_X_OES = TextureTarget(0x8516)
    comptime TEXTURE_CUBE_MAP_POSITIVE_Y = TextureTarget(0x8517)
    comptime TEXTURE_CUBE_MAP_POSITIVE_Y_ARB = TextureTarget(0x8517)
    comptime TEXTURE_CUBE_MAP_POSITIVE_Y_EXT = TextureTarget(0x8517)
    comptime TEXTURE_CUBE_MAP_POSITIVE_Y_OES = TextureTarget(0x8517)
    comptime TEXTURE_CUBE_MAP_NEGATIVE_Y = TextureTarget(0x8518)
    comptime TEXTURE_CUBE_MAP_NEGATIVE_Y_ARB = TextureTarget(0x8518)
    comptime TEXTURE_CUBE_MAP_NEGATIVE_Y_EXT = TextureTarget(0x8518)
    comptime TEXTURE_CUBE_MAP_NEGATIVE_Y_OES = TextureTarget(0x8518)
    comptime TEXTURE_CUBE_MAP_POSITIVE_Z = TextureTarget(0x8519)
    comptime TEXTURE_CUBE_MAP_POSITIVE_Z_ARB = TextureTarget(0x8519)
    comptime TEXTURE_CUBE_MAP_POSITIVE_Z_EXT = TextureTarget(0x8519)
    comptime TEXTURE_CUBE_MAP_POSITIVE_Z_OES = TextureTarget(0x8519)
    comptime TEXTURE_CUBE_MAP_NEGATIVE_Z = TextureTarget(0x851A)
    comptime TEXTURE_CUBE_MAP_NEGATIVE_Z_ARB = TextureTarget(0x851A)
    comptime TEXTURE_CUBE_MAP_NEGATIVE_Z_EXT = TextureTarget(0x851A)
    comptime TEXTURE_CUBE_MAP_NEGATIVE_Z_OES = TextureTarget(0x851A)
    comptime PROXY_TEXTURE_CUBE_MAP = TextureTarget(0x851B)
    comptime PROXY_TEXTURE_CUBE_MAP_ARB = TextureTarget(0x851B)
    comptime PROXY_TEXTURE_CUBE_MAP_EXT = TextureTarget(0x851B)
    comptime TEXTURE_1D_ARRAY = TextureTarget(0x8C18)
    comptime PROXY_TEXTURE_1D_ARRAY = TextureTarget(0x8C19)
    comptime PROXY_TEXTURE_1D_ARRAY_EXT = TextureTarget(0x8C19)
    comptime TEXTURE_2D_ARRAY = TextureTarget(0x8C1A)
    comptime PROXY_TEXTURE_2D_ARRAY = TextureTarget(0x8C1B)
    comptime PROXY_TEXTURE_2D_ARRAY_EXT = TextureTarget(0x8C1B)
    comptime TEXTURE_BUFFER = TextureTarget(0x8C2A)
    comptime RENDERBUFFER = TextureTarget(0x8D41)
    comptime TEXTURE_CUBE_MAP_ARRAY = TextureTarget(0x9009)
    comptime TEXTURE_CUBE_MAP_ARRAY_ARB = TextureTarget(0x9009)
    comptime TEXTURE_CUBE_MAP_ARRAY_EXT = TextureTarget(0x9009)
    comptime TEXTURE_CUBE_MAP_ARRAY_OES = TextureTarget(0x9009)
    comptime PROXY_TEXTURE_CUBE_MAP_ARRAY = TextureTarget(0x900B)
    comptime PROXY_TEXTURE_CUBE_MAP_ARRAY_ARB = TextureTarget(0x900B)
    comptime TEXTURE_2D_MULTISAMPLE = TextureTarget(0x9100)
    comptime PROXY_TEXTURE_2D_MULTISAMPLE = TextureTarget(0x9101)
    comptime TEXTURE_2D_MULTISAMPLE_ARRAY = TextureTarget(0x9102)
    comptime PROXY_TEXTURE_2D_MULTISAMPLE_ARRAY = TextureTarget(0x9103)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct TextureUnit(Intable):
    var value: GLenum

    comptime TEXTURE0 = TextureUnit(0x84C0)
    comptime TEXTURE1 = TextureUnit(0x84C1)
    comptime TEXTURE2 = TextureUnit(0x84C2)
    comptime TEXTURE3 = TextureUnit(0x84C3)
    comptime TEXTURE4 = TextureUnit(0x84C4)
    comptime TEXTURE5 = TextureUnit(0x84C5)
    comptime TEXTURE6 = TextureUnit(0x84C6)
    comptime TEXTURE7 = TextureUnit(0x84C7)
    comptime TEXTURE8 = TextureUnit(0x84C8)
    comptime TEXTURE9 = TextureUnit(0x84C9)
    comptime TEXTURE10 = TextureUnit(0x84CA)
    comptime TEXTURE11 = TextureUnit(0x84CB)
    comptime TEXTURE12 = TextureUnit(0x84CC)
    comptime TEXTURE13 = TextureUnit(0x84CD)
    comptime TEXTURE14 = TextureUnit(0x84CE)
    comptime TEXTURE15 = TextureUnit(0x84CF)
    comptime TEXTURE16 = TextureUnit(0x84D0)
    comptime TEXTURE17 = TextureUnit(0x84D1)
    comptime TEXTURE18 = TextureUnit(0x84D2)
    comptime TEXTURE19 = TextureUnit(0x84D3)
    comptime TEXTURE20 = TextureUnit(0x84D4)
    comptime TEXTURE21 = TextureUnit(0x84D5)
    comptime TEXTURE22 = TextureUnit(0x84D6)
    comptime TEXTURE23 = TextureUnit(0x84D7)
    comptime TEXTURE24 = TextureUnit(0x84D8)
    comptime TEXTURE25 = TextureUnit(0x84D9)
    comptime TEXTURE26 = TextureUnit(0x84DA)
    comptime TEXTURE27 = TextureUnit(0x84DB)
    comptime TEXTURE28 = TextureUnit(0x84DC)
    comptime TEXTURE29 = TextureUnit(0x84DD)
    comptime TEXTURE30 = TextureUnit(0x84DE)
    comptime TEXTURE31 = TextureUnit(0x84DF)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct TextureWrapMode(Intable):
    var value: GLenum

    comptime CLAMP = TextureWrapMode(0x2900)
    comptime REPEAT = TextureWrapMode(0x2901)
    comptime CLAMP_TO_BORDER = TextureWrapMode(0x812D)
    comptime CLAMP_TO_BORDER_ARB = TextureWrapMode(0x812D)
    comptime CLAMP_TO_BORDER_EXT = TextureWrapMode(0x812D)
    comptime CLAMP_TO_BORDER_NV = TextureWrapMode(0x812D)
    comptime CLAMP_TO_BORDER_SGIS = TextureWrapMode(0x812D)
    comptime CLAMP_TO_BORDER_OES = TextureWrapMode(0x812D)
    comptime CLAMP_TO_EDGE = TextureWrapMode(0x812F)
    comptime CLAMP_TO_EDGE_SGIS = TextureWrapMode(0x812F)
    comptime MIRRORED_REPEAT = TextureWrapMode(0x8370)
    comptime MIRRORED_REPEAT_ARB = TextureWrapMode(0x8370)
    comptime MIRRORED_REPEAT_IBM = TextureWrapMode(0x8370)
    comptime MIRRORED_REPEAT_OES = TextureWrapMode(0x8370)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct TransformFeedbackBufferMode(Intable):
    var value: GLenum

    comptime INTERLEAVED_ATTRIBS = TransformFeedbackBufferMode(0x8C8C)
    comptime SEPARATE_ATTRIBS = TransformFeedbackBufferMode(0x8C8D)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct TransformFeedbackPName(Intable):
    var value: GLenum

    comptime TRANSFORM_FEEDBACK_BUFFER_START = TransformFeedbackPName(0x8C84)
    comptime TRANSFORM_FEEDBACK_BUFFER_SIZE = TransformFeedbackPName(0x8C85)
    comptime TRANSFORM_FEEDBACK_BUFFER_BINDING = TransformFeedbackPName(0x8C8F)
    comptime TRANSFORM_FEEDBACK_PAUSED = TransformFeedbackPName(0x8E23)
    comptime TRANSFORM_FEEDBACK_ACTIVE = TransformFeedbackPName(0x8E24)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct TriangleFace(Intable):
    var value: GLenum

    comptime FRONT = TriangleFace(0x0404)
    comptime BACK = TriangleFace(0x0405)
    comptime FRONT_AND_BACK = TriangleFace(0x0408)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct UniformBlockPName(Intable):
    var value: GLenum

    comptime UNIFORM_BLOCK_REFERENCED_BY_TESS_CONTROL_SHADER = UniformBlockPName(0x84F0)
    comptime UNIFORM_BLOCK_REFERENCED_BY_TESS_EVALUATION_SHADER = UniformBlockPName(0x84F1)
    comptime UNIFORM_BLOCK_BINDING = UniformBlockPName(0x8A3F)
    comptime UNIFORM_BLOCK_DATA_SIZE = UniformBlockPName(0x8A40)
    comptime UNIFORM_BLOCK_NAME_LENGTH = UniformBlockPName(0x8A41)
    comptime UNIFORM_BLOCK_ACTIVE_UNIFORMS = UniformBlockPName(0x8A42)
    comptime UNIFORM_BLOCK_ACTIVE_UNIFORM_INDICES = UniformBlockPName(0x8A43)
    comptime UNIFORM_BLOCK_REFERENCED_BY_VERTEX_SHADER = UniformBlockPName(0x8A44)
    comptime UNIFORM_BLOCK_REFERENCED_BY_GEOMETRY_SHADER = UniformBlockPName(0x8A45)
    comptime UNIFORM_BLOCK_REFERENCED_BY_FRAGMENT_SHADER = UniformBlockPName(0x8A46)
    comptime UNIFORM_BLOCK_REFERENCED_BY_COMPUTE_SHADER = UniformBlockPName(0x90EC)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct UniformPName(Intable):
    var value: GLenum

    comptime UNIFORM_TYPE = UniformPName(0x8A37)
    comptime UNIFORM_SIZE = UniformPName(0x8A38)
    comptime UNIFORM_NAME_LENGTH = UniformPName(0x8A39)
    comptime UNIFORM_BLOCK_INDEX = UniformPName(0x8A3A)
    comptime UNIFORM_OFFSET = UniformPName(0x8A3B)
    comptime UNIFORM_ARRAY_STRIDE = UniformPName(0x8A3C)
    comptime UNIFORM_MATRIX_STRIDE = UniformPName(0x8A3D)
    comptime UNIFORM_IS_ROW_MAJOR = UniformPName(0x8A3E)
    comptime UNIFORM_ATOMIC_COUNTER_BUFFER_INDEX = UniformPName(0x92DA)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct UniformType(Intable):
    var value: GLenum

    comptime INT = UniformType(0x1404)
    comptime UNSIGNED_INT = UniformType(0x1405)
    comptime FLOAT = UniformType(0x1406)
    comptime DOUBLE = UniformType(0x140A)
    comptime FLOAT_VEC2 = UniformType(0x8B50)
    comptime FLOAT_VEC3 = UniformType(0x8B51)
    comptime FLOAT_VEC4 = UniformType(0x8B52)
    comptime INT_VEC2 = UniformType(0x8B53)
    comptime INT_VEC3 = UniformType(0x8B54)
    comptime INT_VEC4 = UniformType(0x8B55)
    comptime BOOL = UniformType(0x8B56)
    comptime BOOL_VEC2 = UniformType(0x8B57)
    comptime BOOL_VEC3 = UniformType(0x8B58)
    comptime BOOL_VEC4 = UniformType(0x8B59)
    comptime FLOAT_MAT2 = UniformType(0x8B5A)
    comptime FLOAT_MAT3 = UniformType(0x8B5B)
    comptime FLOAT_MAT4 = UniformType(0x8B5C)
    comptime SAMPLER_1D = UniformType(0x8B5D)
    comptime SAMPLER_2D = UniformType(0x8B5E)
    comptime SAMPLER_3D = UniformType(0x8B5F)
    comptime SAMPLER_CUBE = UniformType(0x8B60)
    comptime SAMPLER_1D_SHADOW = UniformType(0x8B61)
    comptime SAMPLER_2D_SHADOW = UniformType(0x8B62)
    comptime SAMPLER_2D_RECT = UniformType(0x8B63)
    comptime SAMPLER_2D_RECT_SHADOW = UniformType(0x8B64)
    comptime FLOAT_MAT2x3 = UniformType(0x8B65)
    comptime FLOAT_MAT2x4 = UniformType(0x8B66)
    comptime FLOAT_MAT3x2 = UniformType(0x8B67)
    comptime FLOAT_MAT3x4 = UniformType(0x8B68)
    comptime FLOAT_MAT4x2 = UniformType(0x8B69)
    comptime FLOAT_MAT4x3 = UniformType(0x8B6A)
    comptime SAMPLER_1D_ARRAY = UniformType(0x8DC0)
    comptime SAMPLER_2D_ARRAY = UniformType(0x8DC1)
    comptime SAMPLER_BUFFER = UniformType(0x8DC2)
    comptime SAMPLER_1D_ARRAY_SHADOW = UniformType(0x8DC3)
    comptime SAMPLER_2D_ARRAY_SHADOW = UniformType(0x8DC4)
    comptime SAMPLER_CUBE_SHADOW = UniformType(0x8DC5)
    comptime UNSIGNED_INT_VEC2 = UniformType(0x8DC6)
    comptime UNSIGNED_INT_VEC3 = UniformType(0x8DC7)
    comptime UNSIGNED_INT_VEC4 = UniformType(0x8DC8)
    comptime INT_SAMPLER_1D = UniformType(0x8DC9)
    comptime INT_SAMPLER_2D = UniformType(0x8DCA)
    comptime INT_SAMPLER_3D = UniformType(0x8DCB)
    comptime INT_SAMPLER_CUBE = UniformType(0x8DCC)
    comptime INT_SAMPLER_2D_RECT = UniformType(0x8DCD)
    comptime INT_SAMPLER_1D_ARRAY = UniformType(0x8DCE)
    comptime INT_SAMPLER_2D_ARRAY = UniformType(0x8DCF)
    comptime INT_SAMPLER_BUFFER = UniformType(0x8DD0)
    comptime UNSIGNED_INT_SAMPLER_1D = UniformType(0x8DD1)
    comptime UNSIGNED_INT_SAMPLER_2D = UniformType(0x8DD2)
    comptime UNSIGNED_INT_SAMPLER_3D = UniformType(0x8DD3)
    comptime UNSIGNED_INT_SAMPLER_CUBE = UniformType(0x8DD4)
    comptime UNSIGNED_INT_SAMPLER_2D_RECT = UniformType(0x8DD5)
    comptime UNSIGNED_INT_SAMPLER_1D_ARRAY = UniformType(0x8DD6)
    comptime UNSIGNED_INT_SAMPLER_2D_ARRAY = UniformType(0x8DD7)
    comptime UNSIGNED_INT_SAMPLER_BUFFER = UniformType(0x8DD8)
    comptime DOUBLE_MAT2 = UniformType(0x8F46)
    comptime DOUBLE_MAT3 = UniformType(0x8F47)
    comptime DOUBLE_MAT4 = UniformType(0x8F48)
    comptime DOUBLE_MAT2x3 = UniformType(0x8F49)
    comptime DOUBLE_MAT2x4 = UniformType(0x8F4A)
    comptime DOUBLE_MAT3x2 = UniformType(0x8F4B)
    comptime DOUBLE_MAT3x4 = UniformType(0x8F4C)
    comptime DOUBLE_MAT4x2 = UniformType(0x8F4D)
    comptime DOUBLE_MAT4x3 = UniformType(0x8F4E)
    comptime DOUBLE_VEC2 = UniformType(0x8FFC)
    comptime DOUBLE_VEC3 = UniformType(0x8FFD)
    comptime DOUBLE_VEC4 = UniformType(0x8FFE)
    comptime SAMPLER_CUBE_MAP_ARRAY = UniformType(0x900C)
    comptime SAMPLER_CUBE_MAP_ARRAY_SHADOW = UniformType(0x900D)
    comptime INT_SAMPLER_CUBE_MAP_ARRAY = UniformType(0x900E)
    comptime UNSIGNED_INT_SAMPLER_CUBE_MAP_ARRAY = UniformType(0x900F)
    comptime SAMPLER_2D_MULTISAMPLE = UniformType(0x9108)
    comptime INT_SAMPLER_2D_MULTISAMPLE = UniformType(0x9109)
    comptime UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE = UniformType(0x910A)
    comptime SAMPLER_2D_MULTISAMPLE_ARRAY = UniformType(0x910B)
    comptime INT_SAMPLER_2D_MULTISAMPLE_ARRAY = UniformType(0x910C)
    comptime UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE_ARRAY = UniformType(0x910D)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct UseProgramStageMask(Intable):
    var value: GLbitfield

    comptime VERTEX_SHADER_BIT = UseProgramStageMask(0x00000001)
    comptime VERTEX_SHADER_BIT_EXT = UseProgramStageMask(0x00000001)
    comptime FRAGMENT_SHADER_BIT = UseProgramStageMask(0x00000002)
    comptime FRAGMENT_SHADER_BIT_EXT = UseProgramStageMask(0x00000002)
    comptime GEOMETRY_SHADER_BIT = UseProgramStageMask(0x00000004)
    comptime GEOMETRY_SHADER_BIT_EXT = UseProgramStageMask(0x00000004)
    comptime GEOMETRY_SHADER_BIT_OES = UseProgramStageMask(0x00000004)
    comptime TESS_CONTROL_SHADER_BIT = UseProgramStageMask(0x00000008)
    comptime TESS_CONTROL_SHADER_BIT_EXT = UseProgramStageMask(0x00000008)
    comptime TESS_CONTROL_SHADER_BIT_OES = UseProgramStageMask(0x00000008)
    comptime TESS_EVALUATION_SHADER_BIT = UseProgramStageMask(0x00000010)
    comptime TESS_EVALUATION_SHADER_BIT_EXT = UseProgramStageMask(0x00000010)
    comptime TESS_EVALUATION_SHADER_BIT_OES = UseProgramStageMask(0x00000010)
    comptime COMPUTE_SHADER_BIT = UseProgramStageMask(0x00000020)
    comptime MESH_SHADER_BIT_NV = UseProgramStageMask(0x00000040)
    comptime MESH_SHADER_BIT_EXT = UseProgramStageMask(0x00000040)
    comptime TASK_SHADER_BIT_NV = UseProgramStageMask(0x00000080)
    comptime TASK_SHADER_BIT_EXT = UseProgramStageMask(0x00000080)
    comptime ALL_SHADER_BITS = UseProgramStageMask(0xFFFFFFFF)
    comptime ALL_SHADER_BITS_EXT = UseProgramStageMask(0xFFFFFFFF)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)

    @always_inline
    fn __or__(lhs, rhs: Self) -> Self:
        return Self(lhs.value | rhs.value)


@fieldwise_init
@register_passable("trivial")
struct VertexArrayPName(Intable):
    var value: GLenum

    comptime VERTEX_ATTRIB_RELATIVE_OFFSET = VertexArrayPName(0x82D5)
    comptime VERTEX_ATTRIB_ARRAY_ENABLED = VertexArrayPName(0x8622)
    comptime VERTEX_ATTRIB_ARRAY_SIZE = VertexArrayPName(0x8623)
    comptime VERTEX_ATTRIB_ARRAY_STRIDE = VertexArrayPName(0x8624)
    comptime VERTEX_ATTRIB_ARRAY_TYPE = VertexArrayPName(0x8625)
    comptime VERTEX_ATTRIB_ARRAY_LONG = VertexArrayPName(0x874E)
    comptime VERTEX_ATTRIB_ARRAY_NORMALIZED = VertexArrayPName(0x886A)
    comptime VERTEX_ATTRIB_ARRAY_INTEGER = VertexArrayPName(0x88FD)
    comptime VERTEX_ATTRIB_ARRAY_DIVISOR = VertexArrayPName(0x88FE)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct VertexAttribEnum(Intable):
    var value: GLenum

    comptime VERTEX_ATTRIB_ARRAY_ENABLED = VertexAttribEnum(0x8622)
    comptime VERTEX_ATTRIB_ARRAY_SIZE = VertexAttribEnum(0x8623)
    comptime VERTEX_ATTRIB_ARRAY_STRIDE = VertexAttribEnum(0x8624)
    comptime VERTEX_ATTRIB_ARRAY_TYPE = VertexAttribEnum(0x8625)
    comptime CURRENT_VERTEX_ATTRIB = VertexAttribEnum(0x8626)
    comptime VERTEX_ATTRIB_ARRAY_NORMALIZED = VertexAttribEnum(0x886A)
    comptime VERTEX_ATTRIB_ARRAY_BUFFER_BINDING = VertexAttribEnum(0x889F)
    comptime VERTEX_ATTRIB_ARRAY_INTEGER = VertexAttribEnum(0x88FD)
    comptime VERTEX_ATTRIB_ARRAY_DIVISOR = VertexAttribEnum(0x88FE)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct VertexAttribIType(Intable):
    var value: GLenum

    comptime BYTE = VertexAttribIType(0x1400)
    comptime UNSIGNED_BYTE = VertexAttribIType(0x1401)
    comptime SHORT = VertexAttribIType(0x1402)
    comptime UNSIGNED_SHORT = VertexAttribIType(0x1403)
    comptime INT = VertexAttribIType(0x1404)
    comptime UNSIGNED_INT = VertexAttribIType(0x1405)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct VertexAttribLType(Intable):
    var value: GLenum

    comptime DOUBLE = VertexAttribLType(0x140A)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct VertexAttribPointerPropertyARB(Intable):
    var value: GLenum

    comptime VERTEX_ATTRIB_ARRAY_POINTER = VertexAttribPointerPropertyARB(0x8645)
    comptime VERTEX_ATTRIB_ARRAY_POINTER_ARB = VertexAttribPointerPropertyARB(0x8645)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct VertexAttribPointerType(Intable):
    var value: GLenum

    comptime BYTE = VertexAttribPointerType(0x1400)
    comptime UNSIGNED_BYTE = VertexAttribPointerType(0x1401)
    comptime SHORT = VertexAttribPointerType(0x1402)
    comptime UNSIGNED_SHORT = VertexAttribPointerType(0x1403)
    comptime INT = VertexAttribPointerType(0x1404)
    comptime UNSIGNED_INT = VertexAttribPointerType(0x1405)
    comptime FLOAT = VertexAttribPointerType(0x1406)
    comptime DOUBLE = VertexAttribPointerType(0x140A)
    comptime HALF_FLOAT = VertexAttribPointerType(0x140B)
    comptime FIXED = VertexAttribPointerType(0x140C)
    comptime INT64_ARB = VertexAttribPointerType(0x140E)
    comptime INT64_NV = VertexAttribPointerType(0x140E)
    comptime UNSIGNED_INT64_ARB = VertexAttribPointerType(0x140F)
    comptime UNSIGNED_INT64_NV = VertexAttribPointerType(0x140F)
    comptime UNSIGNED_INT_2_10_10_10_REV = VertexAttribPointerType(0x8368)
    comptime UNSIGNED_INT_2_10_10_10_REV_EXT = VertexAttribPointerType(0x8368)
    comptime UNSIGNED_INT_10F_11F_11F_REV = VertexAttribPointerType(0x8C3B)
    comptime INT_2_10_10_10_REV = VertexAttribPointerType(0x8D9F)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct VertexAttribPropertyARB(Intable):
    var value: GLenum

    comptime VERTEX_ATTRIB_BINDING = VertexAttribPropertyARB(0x82D4)
    comptime VERTEX_ATTRIB_RELATIVE_OFFSET = VertexAttribPropertyARB(0x82D5)
    comptime VERTEX_ATTRIB_ARRAY_ENABLED = VertexAttribPropertyARB(0x8622)
    comptime VERTEX_ATTRIB_ARRAY_SIZE = VertexAttribPropertyARB(0x8623)
    comptime VERTEX_ATTRIB_ARRAY_STRIDE = VertexAttribPropertyARB(0x8624)
    comptime VERTEX_ATTRIB_ARRAY_TYPE = VertexAttribPropertyARB(0x8625)
    comptime CURRENT_VERTEX_ATTRIB = VertexAttribPropertyARB(0x8626)
    comptime VERTEX_ATTRIB_ARRAY_LONG = VertexAttribPropertyARB(0x874E)
    comptime VERTEX_ATTRIB_ARRAY_NORMALIZED = VertexAttribPropertyARB(0x886A)
    comptime VERTEX_ATTRIB_ARRAY_BUFFER_BINDING = VertexAttribPropertyARB(0x889F)
    comptime VERTEX_ATTRIB_ARRAY_INTEGER = VertexAttribPropertyARB(0x88FD)
    comptime VERTEX_ATTRIB_ARRAY_INTEGER_EXT = VertexAttribPropertyARB(0x88FD)
    comptime VERTEX_ATTRIB_ARRAY_DIVISOR = VertexAttribPropertyARB(0x88FE)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct VertexAttribType(Intable):
    var value: GLenum

    comptime BYTE = VertexAttribType(0x1400)
    comptime UNSIGNED_BYTE = VertexAttribType(0x1401)
    comptime SHORT = VertexAttribType(0x1402)
    comptime UNSIGNED_SHORT = VertexAttribType(0x1403)
    comptime INT = VertexAttribType(0x1404)
    comptime UNSIGNED_INT = VertexAttribType(0x1405)
    comptime FLOAT = VertexAttribType(0x1406)
    comptime DOUBLE = VertexAttribType(0x140A)
    comptime HALF_FLOAT = VertexAttribType(0x140B)
    comptime FIXED = VertexAttribType(0x140C)
    comptime UNSIGNED_INT_2_10_10_10_REV = VertexAttribType(0x8368)
    comptime UNSIGNED_INT_2_10_10_10_REV_EXT = VertexAttribType(0x8368)
    comptime UNSIGNED_INT_10F_11F_11F_REV = VertexAttribType(0x8C3B)
    comptime INT_2_10_10_10_REV = VertexAttribType(0x8D9F)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct VertexPointerType(Intable):
    var value: GLenum

    comptime SHORT = VertexPointerType(0x1402)
    comptime INT = VertexPointerType(0x1404)
    comptime FLOAT = VertexPointerType(0x1406)
    comptime DOUBLE = VertexPointerType(0x140A)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


@fieldwise_init
@register_passable("trivial")
struct VertexProvokingMode(Intable):
    var value: GLenum

    comptime FIRST_VERTEX_CONVENTION = VertexProvokingMode(0x8E4D)
    comptime LAST_VERTEX_CONVENTION = VertexProvokingMode(0x8E4E)

    @always_inline
    fn __int__(self) -> Int:
        return Int(self.value)


# ========= COMMANDS =========

comptime LoadProc = fn (var proc: String) raises -> fn () -> None
comptime FuncPtr = ImmutOpaquePointer[ImmutOrigin.external]


fn _init_empty_table() -> Dict[String, FuncPtr]:
    return {}


comptime func_table = _Global["table", _init_empty_table]()


@always_inline
fn load_fn_ptr(name: String, load: LoadProc) raises -> FuncPtr:
    var func = load(name)
    var addr = UnsafePointer(to=func).bitcast[FuncPtr]()[]
    if not addr:
        raise Error("Failed to load function " + name)
    return addr


@always_inline
fn get_fn[fn_type: AnyTrivialRegType, name: StaticString]() raises -> fn_type:
    var ptr = func_table.get_or_create_ptr()[][name]
    return UnsafePointer(to=ptr).bitcast[fn_type]()[]


comptime glActiveShaderProgram = fn (pipeline: GLuint, program: GLuint)
comptime glActiveTexture = fn (texture: TextureUnit)
comptime glAttachShader = fn (program: GLuint, shader: GLuint)
comptime glBeginConditionalRender = fn (id: GLuint, mode: ConditionalRenderMode)
comptime glBeginQuery = fn (target: QueryTarget, id: GLuint)
comptime glBeginQueryIndexed = fn (target: QueryTarget, index: GLuint, id: GLuint)
comptime glBeginTransformFeedback = fn (primitive_mode: PrimitiveType)
comptime glBindAttribLocation = fn (program: GLuint, index: GLuint, name: Ptr[GLchar, ImmutAnyOrigin])
comptime glBindBuffer = fn (target: BufferTargetARB, buffer: GLuint)
comptime glBindBufferBase = fn (target: BufferTargetARB, index: GLuint, buffer: GLuint)
comptime glBindBufferRange = fn (target: BufferTargetARB, index: GLuint, buffer: GLuint, offset: GLintptr, size: GLsizeiptr)
comptime glBindBuffersBase = fn (target: BufferTargetARB, first: GLuint, count: GLsizei, buffers: Ptr[GLuint, ImmutAnyOrigin])
comptime glBindBuffersRange = fn (target: BufferTargetARB, first: GLuint, count: GLsizei, buffers: Ptr[GLuint, ImmutAnyOrigin], offsets: Ptr[GLintptr, ImmutAnyOrigin], sizes: Ptr[GLsizeiptr, ImmutAnyOrigin])
comptime glBindFragDataLocation = fn (program: GLuint, color: GLuint, name: Ptr[GLchar, ImmutAnyOrigin])
comptime glBindFragDataLocationIndexed = fn (program: GLuint, color_number: GLuint, index: GLuint, name: Ptr[GLchar, ImmutAnyOrigin])
comptime glBindFramebuffer = fn (target: FramebufferTarget, framebuffer: GLuint)
comptime glBindImageTexture = fn (unit: GLuint, texture: GLuint, level: GLint, layered: GLboolean, layer: GLint, access: BufferAccessARB, format: InternalFormat)
comptime glBindImageTextures = fn (first: GLuint, count: GLsizei, textures: Ptr[GLuint, ImmutAnyOrigin])
comptime glBindProgramPipeline = fn (pipeline: GLuint)
comptime glBindRenderbuffer = fn (target: RenderbufferTarget, renderbuffer: GLuint)
comptime glBindSampler = fn (unit: GLuint, sampler: GLuint)
comptime glBindSamplers = fn (first: GLuint, count: GLsizei, samplers: Ptr[GLuint, ImmutAnyOrigin])
comptime glBindTexture = fn (target: TextureTarget, texture: GLuint)
comptime glBindTextureUnit = fn (unit: GLuint, texture: GLuint)
comptime glBindTextures = fn (first: GLuint, count: GLsizei, textures: Ptr[GLuint, ImmutAnyOrigin])
comptime glBindTransformFeedback = fn (target: BindTransformFeedbackTarget, id: GLuint)
comptime glBindVertexArray = fn (array: GLuint)
comptime glBindVertexBuffer = fn (bindingindex: GLuint, buffer: GLuint, offset: GLintptr, stride: GLsizei)
comptime glBindVertexBuffers = fn (first: GLuint, count: GLsizei, buffers: Ptr[GLuint, ImmutAnyOrigin], offsets: Ptr[GLintptr, ImmutAnyOrigin], strides: Ptr[GLsizei, ImmutAnyOrigin])
comptime glBlendColor = fn (red: GLfloat, green: GLfloat, blue: GLfloat, alpha: GLfloat)
comptime glBlendEquation = fn (mode: BlendEquationModeEXT)
comptime glBlendEquationSeparate = fn (mode_rgb: BlendEquationModeEXT, mode_alpha: BlendEquationModeEXT)
comptime glBlendEquationSeparatei = fn (buf: GLuint, mode_rgb: BlendEquationModeEXT, mode_alpha: BlendEquationModeEXT)
comptime glBlendEquationi = fn (buf: GLuint, mode: BlendEquationModeEXT)
comptime glBlendFunc = fn (sfactor: BlendingFactor, dfactor: BlendingFactor)
comptime glBlendFuncSeparate = fn (sfactor_rgb: BlendingFactor, dfactor_rgb: BlendingFactor, sfactor_alpha: BlendingFactor, dfactor_alpha: BlendingFactor)
comptime glBlendFuncSeparatei = fn (buf: GLuint, src_rgb: BlendingFactor, dst_rgb: BlendingFactor, src_alpha: BlendingFactor, dst_alpha: BlendingFactor)
comptime glBlendFunci = fn (buf: GLuint, src: BlendingFactor, dst: BlendingFactor)
comptime glBlitFramebuffer = fn (src_x0: GLint, src_y0: GLint, src_x1: GLint, src_y1: GLint, dst_x0: GLint, dst_y0: GLint, dst_x1: GLint, dst_y1: GLint, mask: ClearBufferMask, filter: BlitFramebufferFilter)
comptime glBlitNamedFramebuffer = fn (read_framebuffer: GLuint, draw_framebuffer: GLuint, src_x0: GLint, src_y0: GLint, src_x1: GLint, src_y1: GLint, dst_x0: GLint, dst_y0: GLint, dst_x1: GLint, dst_y1: GLint, mask: ClearBufferMask, filter: BlitFramebufferFilter)
comptime glBufferData = fn (target: BufferTargetARB, size: GLsizeiptr, data: Ptr[NoneType, ImmutAnyOrigin], usage: BufferUsageARB)
comptime glBufferStorage = fn (target: BufferStorageTarget, size: GLsizeiptr, data: Ptr[NoneType, ImmutAnyOrigin], flags: BufferStorageMask)
comptime glBufferSubData = fn (target: BufferTargetARB, offset: GLintptr, size: GLsizeiptr, data: Ptr[NoneType, ImmutAnyOrigin])
comptime glCheckFramebufferStatus = fn (target: FramebufferTarget) -> FramebufferStatus
comptime glCheckNamedFramebufferStatus = fn (framebuffer: GLuint, target: FramebufferTarget) -> FramebufferStatus
comptime glClampColor = fn (target: ClampColorTargetARB, clamp: ClampColorModeARB)
comptime glClear = fn (mask: ClearBufferMask)
comptime glClearBufferData = fn (target: BufferStorageTarget, internalformat: SizedInternalFormat, format: PixelFormat, type: PixelType, data: Ptr[NoneType, ImmutAnyOrigin])
comptime glClearBufferSubData = fn (target: BufferTargetARB, internalformat: SizedInternalFormat, offset: GLintptr, size: GLsizeiptr, format: PixelFormat, type: PixelType, data: Ptr[NoneType, ImmutAnyOrigin])
comptime glClearBufferfi = fn (buffer: Buffer, drawbuffer: GLint, depth: GLfloat, stencil: GLint)
comptime glClearBufferfv = fn (buffer: Buffer, drawbuffer: GLint, value: Ptr[GLfloat, ImmutAnyOrigin])
comptime glClearBufferiv = fn (buffer: Buffer, drawbuffer: GLint, value: Ptr[GLint, ImmutAnyOrigin])
comptime glClearBufferuiv = fn (buffer: Buffer, drawbuffer: GLint, value: Ptr[GLuint, ImmutAnyOrigin])
comptime glClearColor = fn (red: GLfloat, green: GLfloat, blue: GLfloat, alpha: GLfloat)
comptime glClearDepth = fn (depth: GLdouble)
comptime glClearDepthf = fn (d: GLfloat)
comptime glClearNamedBufferData = fn (buffer: GLuint, internalformat: SizedInternalFormat, format: PixelFormat, type: PixelType, data: Ptr[NoneType, ImmutAnyOrigin])
comptime glClearNamedBufferSubData = fn (buffer: GLuint, internalformat: SizedInternalFormat, offset: GLintptr, size: GLsizeiptr, format: PixelFormat, type: PixelType, data: Ptr[NoneType, ImmutAnyOrigin])
comptime glClearNamedFramebufferfi = fn (framebuffer: GLuint, buffer: Buffer, drawbuffer: GLint, depth: GLfloat, stencil: GLint)
comptime glClearNamedFramebufferfv = fn (framebuffer: GLuint, buffer: Buffer, drawbuffer: GLint, value: Ptr[GLfloat, ImmutAnyOrigin])
comptime glClearNamedFramebufferiv = fn (framebuffer: GLuint, buffer: Buffer, drawbuffer: GLint, value: Ptr[GLint, ImmutAnyOrigin])
comptime glClearNamedFramebufferuiv = fn (framebuffer: GLuint, buffer: Buffer, drawbuffer: GLint, value: Ptr[GLuint, ImmutAnyOrigin])
comptime glClearStencil = fn (s: GLint)
comptime glClearTexImage = fn (texture: GLuint, level: GLint, format: PixelFormat, type: PixelType, data: Ptr[NoneType, ImmutAnyOrigin])
comptime glClearTexSubImage = fn (texture: GLuint, level: GLint, xoffset: GLint, yoffset: GLint, zoffset: GLint, width: GLsizei, height: GLsizei, depth: GLsizei, format: PixelFormat, type: PixelType, data: Ptr[NoneType, ImmutAnyOrigin])
comptime glClientWaitSync = fn (sync: GLsync, flags: SyncObjectMask, timeout: GLuint64) -> SyncStatus
comptime glClipControl = fn (origin: ClipControlOrigin, depth: ClipControlDepth)
comptime glColorMask = fn (red: GLboolean, green: GLboolean, blue: GLboolean, alpha: GLboolean)
comptime glColorMaski = fn (index: GLuint, r: GLboolean, g: GLboolean, b: GLboolean, a: GLboolean)
comptime glColorP3ui = fn (type: ColorPointerType, color: GLuint)
comptime glColorP3uiv = fn (type: ColorPointerType, color: Ptr[GLuint, ImmutAnyOrigin])
comptime glColorP4ui = fn (type: ColorPointerType, color: GLuint)
comptime glColorP4uiv = fn (type: ColorPointerType, color: Ptr[GLuint, ImmutAnyOrigin])
comptime glCompileShader = fn (shader: GLuint)
comptime glCompressedTexImage1D = fn (target: TextureTarget, level: GLint, internalformat: InternalFormat, width: GLsizei, border: GLint, image_size: GLsizei, data: Ptr[NoneType, ImmutAnyOrigin])
comptime glCompressedTexImage2D = fn (target: TextureTarget, level: GLint, internalformat: InternalFormat, width: GLsizei, height: GLsizei, border: GLint, image_size: GLsizei, data: Ptr[NoneType, ImmutAnyOrigin])
comptime glCompressedTexImage3D = fn (target: TextureTarget, level: GLint, internalformat: InternalFormat, width: GLsizei, height: GLsizei, depth: GLsizei, border: GLint, image_size: GLsizei, data: Ptr[NoneType, ImmutAnyOrigin])
comptime glCompressedTexSubImage1D = fn (target: TextureTarget, level: GLint, xoffset: GLint, width: GLsizei, format: InternalFormat, image_size: GLsizei, data: Ptr[NoneType, ImmutAnyOrigin])
comptime glCompressedTexSubImage2D = fn (target: TextureTarget, level: GLint, xoffset: GLint, yoffset: GLint, width: GLsizei, height: GLsizei, format: InternalFormat, image_size: GLsizei, data: Ptr[NoneType, ImmutAnyOrigin])
comptime glCompressedTexSubImage3D = fn (target: TextureTarget, level: GLint, xoffset: GLint, yoffset: GLint, zoffset: GLint, width: GLsizei, height: GLsizei, depth: GLsizei, format: InternalFormat, image_size: GLsizei, data: Ptr[NoneType, ImmutAnyOrigin])
comptime glCompressedTextureSubImage1D = fn (texture: GLuint, level: GLint, xoffset: GLint, width: GLsizei, format: InternalFormat, image_size: GLsizei, data: Ptr[NoneType, ImmutAnyOrigin])
comptime glCompressedTextureSubImage2D = fn (texture: GLuint, level: GLint, xoffset: GLint, yoffset: GLint, width: GLsizei, height: GLsizei, format: InternalFormat, image_size: GLsizei, data: Ptr[NoneType, ImmutAnyOrigin])
comptime glCompressedTextureSubImage3D = fn (texture: GLuint, level: GLint, xoffset: GLint, yoffset: GLint, zoffset: GLint, width: GLsizei, height: GLsizei, depth: GLsizei, format: InternalFormat, image_size: GLsizei, data: Ptr[NoneType, ImmutAnyOrigin])
comptime glCopyBufferSubData = fn (read_target: CopyBufferSubDataTarget, write_target: CopyBufferSubDataTarget, read_offset: GLintptr, write_offset: GLintptr, size: GLsizeiptr)
comptime glCopyImageSubData = fn (src_name: GLuint, src_target: CopyImageSubDataTarget, src_level: GLint, src_x: GLint, src_y: GLint, src_z: GLint, dst_name: GLuint, dst_target: CopyImageSubDataTarget, dst_level: GLint, dst_x: GLint, dst_y: GLint, dst_z: GLint, src_width: GLsizei, src_height: GLsizei, src_depth: GLsizei)
comptime glCopyNamedBufferSubData = fn (read_buffer: GLuint, write_buffer: GLuint, read_offset: GLintptr, write_offset: GLintptr, size: GLsizeiptr)
comptime glCopyTexImage1D = fn (target: TextureTarget, level: GLint, internalformat: InternalFormat, x: GLint, y: GLint, width: GLsizei, border: GLint)
comptime glCopyTexImage2D = fn (target: TextureTarget, level: GLint, internalformat: InternalFormat, x: GLint, y: GLint, width: GLsizei, height: GLsizei, border: GLint)
comptime glCopyTexSubImage1D = fn (target: TextureTarget, level: GLint, xoffset: GLint, x: GLint, y: GLint, width: GLsizei)
comptime glCopyTexSubImage2D = fn (target: TextureTarget, level: GLint, xoffset: GLint, yoffset: GLint, x: GLint, y: GLint, width: GLsizei, height: GLsizei)
comptime glCopyTexSubImage3D = fn (target: TextureTarget, level: GLint, xoffset: GLint, yoffset: GLint, zoffset: GLint, x: GLint, y: GLint, width: GLsizei, height: GLsizei)
comptime glCopyTextureSubImage1D = fn (texture: GLuint, level: GLint, xoffset: GLint, x: GLint, y: GLint, width: GLsizei)
comptime glCopyTextureSubImage2D = fn (texture: GLuint, level: GLint, xoffset: GLint, yoffset: GLint, x: GLint, y: GLint, width: GLsizei, height: GLsizei)
comptime glCopyTextureSubImage3D = fn (texture: GLuint, level: GLint, xoffset: GLint, yoffset: GLint, zoffset: GLint, x: GLint, y: GLint, width: GLsizei, height: GLsizei)
comptime glCreateBuffers = fn (n: GLsizei, buffers: Ptr[GLuint, MutAnyOrigin])
comptime glCreateFramebuffers = fn (n: GLsizei, framebuffers: Ptr[GLuint, MutAnyOrigin])
comptime glCreateProgram = fn () -> GLuint
comptime glCreateProgramPipelines = fn (n: GLsizei, pipelines: Ptr[GLuint, MutAnyOrigin])
comptime glCreateQueries = fn (target: QueryTarget, n: GLsizei, ids: Ptr[GLuint, MutAnyOrigin])
comptime glCreateRenderbuffers = fn (n: GLsizei, renderbuffers: Ptr[GLuint, MutAnyOrigin])
comptime glCreateSamplers = fn (n: GLsizei, samplers: Ptr[GLuint, MutAnyOrigin])
comptime glCreateShader = fn (type: ShaderType) -> GLuint
comptime glCreateShaderProgramv = fn (type: ShaderType, count: GLsizei, strings: Ptr[Ptr[GLchar, ImmutAnyOrigin], ImmutAnyOrigin]) -> GLuint
comptime glCreateTextures = fn (target: TextureTarget, n: GLsizei, textures: Ptr[GLuint, MutAnyOrigin])
comptime glCreateTransformFeedbacks = fn (n: GLsizei, ids: Ptr[GLuint, MutAnyOrigin])
comptime glCreateVertexArrays = fn (n: GLsizei, arrays: Ptr[GLuint, MutAnyOrigin])
comptime glCullFace = fn (mode: TriangleFace)
comptime glDebugMessageCallback = fn (callback: GLDEBUGPROC, user_param: Ptr[NoneType, ImmutAnyOrigin])
comptime glDebugMessageControl = fn (source: DebugSource, type: DebugType, severity: DebugSeverity, count: GLsizei, ids: Ptr[GLuint, ImmutAnyOrigin], enabled: GLboolean)
comptime glDebugMessageInsert = fn (source: DebugSource, type: DebugType, id: GLuint, severity: DebugSeverity, length: GLsizei, buf: Ptr[GLchar, ImmutAnyOrigin])
comptime glDeleteBuffers = fn (n: GLsizei, buffers: Ptr[GLuint, ImmutAnyOrigin])
comptime glDeleteFramebuffers = fn (n: GLsizei, framebuffers: Ptr[GLuint, ImmutAnyOrigin])
comptime glDeleteProgram = fn (program: GLuint)
comptime glDeleteProgramPipelines = fn (n: GLsizei, pipelines: Ptr[GLuint, ImmutAnyOrigin])
comptime glDeleteQueries = fn (n: GLsizei, ids: Ptr[GLuint, ImmutAnyOrigin])
comptime glDeleteRenderbuffers = fn (n: GLsizei, renderbuffers: Ptr[GLuint, ImmutAnyOrigin])
comptime glDeleteSamplers = fn (count: GLsizei, samplers: Ptr[GLuint, ImmutAnyOrigin])
comptime glDeleteShader = fn (shader: GLuint)
comptime glDeleteSync = fn (sync: GLsync)
comptime glDeleteTextures = fn (n: GLsizei, textures: Ptr[GLuint, ImmutAnyOrigin])
comptime glDeleteTransformFeedbacks = fn (n: GLsizei, ids: Ptr[GLuint, ImmutAnyOrigin])
comptime glDeleteVertexArrays = fn (n: GLsizei, arrays: Ptr[GLuint, ImmutAnyOrigin])
comptime glDepthFunc = fn (func: DepthFunction)
comptime glDepthMask = fn (flag: GLboolean)
comptime glDepthRange = fn (n: GLdouble, f: GLdouble)
comptime glDepthRangeArrayv = fn (first: GLuint, count: GLsizei, v: Ptr[GLdouble, ImmutAnyOrigin])
comptime glDepthRangeIndexed = fn (index: GLuint, n: GLdouble, f: GLdouble)
comptime glDepthRangef = fn (n: GLfloat, f: GLfloat)
comptime glDetachShader = fn (program: GLuint, shader: GLuint)
comptime glDisable = fn (cap: EnableCap)
comptime glDisableVertexArrayAttrib = fn (vaobj: GLuint, index: GLuint)
comptime glDisableVertexAttribArray = fn (index: GLuint)
comptime glDisablei = fn (target: EnableCap, index: GLuint)
comptime glDispatchCompute = fn (num_groups_x: GLuint, num_groups_y: GLuint, num_groups_z: GLuint)
comptime glDispatchComputeIndirect = fn (indirect: GLintptr)
comptime glDrawArrays = fn (mode: PrimitiveType, first: GLint, count: GLsizei)
comptime glDrawArraysIndirect = fn (mode: PrimitiveType, indirect: Ptr[NoneType, ImmutAnyOrigin])
comptime glDrawArraysInstanced = fn (mode: PrimitiveType, first: GLint, count: GLsizei, instancecount: GLsizei)
comptime glDrawArraysInstancedBaseInstance = fn (mode: PrimitiveType, first: GLint, count: GLsizei, instancecount: GLsizei, baseinstance: GLuint)
comptime glDrawBuffer = fn (buf: DrawBufferMode)
comptime glDrawBuffers = fn (n: GLsizei, bufs: Ptr[DrawBufferMode, ImmutAnyOrigin])
comptime glDrawElements = fn (mode: PrimitiveType, count: GLsizei, type: DrawElementsType, indices: Ptr[NoneType, ImmutAnyOrigin])
comptime glDrawElementsBaseVertex = fn (mode: PrimitiveType, count: GLsizei, type: DrawElementsType, indices: Ptr[NoneType, ImmutAnyOrigin], basevertex: GLint)
comptime glDrawElementsIndirect = fn (mode: PrimitiveType, type: DrawElementsType, indirect: Ptr[NoneType, ImmutAnyOrigin])
comptime glDrawElementsInstanced = fn (mode: PrimitiveType, count: GLsizei, type: DrawElementsType, indices: Ptr[NoneType, ImmutAnyOrigin], instancecount: GLsizei)
comptime glDrawElementsInstancedBaseInstance = fn (mode: PrimitiveType, count: GLsizei, type: DrawElementsType, indices: Ptr[NoneType, ImmutAnyOrigin], instancecount: GLsizei, baseinstance: GLuint)
comptime glDrawElementsInstancedBaseVertex = fn (mode: PrimitiveType, count: GLsizei, type: DrawElementsType, indices: Ptr[NoneType, ImmutAnyOrigin], instancecount: GLsizei, basevertex: GLint)
comptime glDrawElementsInstancedBaseVertexBaseInstance = fn (mode: PrimitiveType, count: GLsizei, type: DrawElementsType, indices: Ptr[NoneType, ImmutAnyOrigin], instancecount: GLsizei, basevertex: GLint, baseinstance: GLuint)
comptime glDrawRangeElements = fn (mode: PrimitiveType, start: GLuint, end: GLuint, count: GLsizei, type: DrawElementsType, indices: Ptr[NoneType, ImmutAnyOrigin])
comptime glDrawRangeElementsBaseVertex = fn (mode: PrimitiveType, start: GLuint, end: GLuint, count: GLsizei, type: DrawElementsType, indices: Ptr[NoneType, ImmutAnyOrigin], basevertex: GLint)
comptime glDrawTransformFeedback = fn (mode: PrimitiveType, id: GLuint)
comptime glDrawTransformFeedbackInstanced = fn (mode: PrimitiveType, id: GLuint, instancecount: GLsizei)
comptime glDrawTransformFeedbackStream = fn (mode: PrimitiveType, id: GLuint, stream: GLuint)
comptime glDrawTransformFeedbackStreamInstanced = fn (mode: PrimitiveType, id: GLuint, stream: GLuint, instancecount: GLsizei)
comptime glEnable = fn (cap: EnableCap)
comptime glEnableVertexArrayAttrib = fn (vaobj: GLuint, index: GLuint)
comptime glEnableVertexAttribArray = fn (index: GLuint)
comptime glEnablei = fn (target: EnableCap, index: GLuint)
comptime glEndConditionalRender = fn ()
comptime glEndQuery = fn (target: QueryTarget)
comptime glEndQueryIndexed = fn (target: QueryTarget, index: GLuint)
comptime glEndTransformFeedback = fn ()
comptime glFenceSync = fn (condition: SyncCondition, flags: SyncBehaviorFlags) -> GLsync
comptime glFinish = fn ()
comptime glFlush = fn ()
comptime glFlushMappedBufferRange = fn (target: BufferTargetARB, offset: GLintptr, length: GLsizeiptr)
comptime glFlushMappedNamedBufferRange = fn (buffer: GLuint, offset: GLintptr, length: GLsizeiptr)
comptime glFramebufferParameteri = fn (target: FramebufferTarget, pname: FramebufferParameterName, param: GLint)
comptime glFramebufferRenderbuffer = fn (target: FramebufferTarget, attachment: FramebufferAttachment, renderbuffertarget: RenderbufferTarget, renderbuffer: GLuint)
comptime glFramebufferTexture = fn (target: FramebufferTarget, attachment: FramebufferAttachment, texture: GLuint, level: GLint)
comptime glFramebufferTexture1D = fn (target: FramebufferTarget, attachment: FramebufferAttachment, textarget: TextureTarget, texture: GLuint, level: GLint)
comptime glFramebufferTexture2D = fn (target: FramebufferTarget, attachment: FramebufferAttachment, textarget: TextureTarget, texture: GLuint, level: GLint)
comptime glFramebufferTexture3D = fn (target: FramebufferTarget, attachment: FramebufferAttachment, textarget: TextureTarget, texture: GLuint, level: GLint, zoffset: GLint)
comptime glFramebufferTextureLayer = fn (target: FramebufferTarget, attachment: FramebufferAttachment, texture: GLuint, level: GLint, layer: GLint)
comptime glFrontFace = fn (mode: FrontFaceDirection)
comptime glGenBuffers = fn (n: GLsizei, buffers: Ptr[GLuint, MutAnyOrigin])
comptime glGenFramebuffers = fn (n: GLsizei, framebuffers: Ptr[GLuint, MutAnyOrigin])
comptime glGenProgramPipelines = fn (n: GLsizei, pipelines: Ptr[GLuint, MutAnyOrigin])
comptime glGenQueries = fn (n: GLsizei, ids: Ptr[GLuint, MutAnyOrigin])
comptime glGenRenderbuffers = fn (n: GLsizei, renderbuffers: Ptr[GLuint, MutAnyOrigin])
comptime glGenSamplers = fn (count: GLsizei, samplers: Ptr[GLuint, MutAnyOrigin])
comptime glGenTextures = fn (n: GLsizei, textures: Ptr[GLuint, MutAnyOrigin])
comptime glGenTransformFeedbacks = fn (n: GLsizei, ids: Ptr[GLuint, MutAnyOrigin])
comptime glGenVertexArrays = fn (n: GLsizei, arrays: Ptr[GLuint, MutAnyOrigin])
comptime glGenerateMipmap = fn (target: TextureTarget)
comptime glGenerateTextureMipmap = fn (texture: GLuint)
comptime glGetActiveAtomicCounterBufferiv = fn (program: GLuint, buffer_index: GLuint, pname: AtomicCounterBufferPName, params: Ptr[GLint, MutAnyOrigin])
comptime glGetActiveAttrib = fn (program: GLuint, index: GLuint, buf_size: GLsizei, length: Ptr[GLsizei, MutAnyOrigin], size: Ptr[GLint, MutAnyOrigin], type: Ptr[AttributeType, MutAnyOrigin], name: Ptr[GLchar, ImmutAnyOrigin])
comptime glGetActiveSubroutineName = fn (program: GLuint, shadertype: ShaderType, index: GLuint, buf_size: GLsizei, length: Ptr[GLsizei, MutAnyOrigin], name: Ptr[GLchar, ImmutAnyOrigin])
comptime glGetActiveSubroutineUniformName = fn (program: GLuint, shadertype: ShaderType, index: GLuint, buf_size: GLsizei, length: Ptr[GLsizei, MutAnyOrigin], name: Ptr[GLchar, ImmutAnyOrigin])
comptime glGetActiveSubroutineUniformiv = fn (program: GLuint, shadertype: ShaderType, index: GLuint, pname: SubroutineParameterName, values: Ptr[GLint, MutAnyOrigin])
comptime glGetActiveUniform = fn (program: GLuint, index: GLuint, buf_size: GLsizei, length: Ptr[GLsizei, MutAnyOrigin], size: Ptr[GLint, MutAnyOrigin], type: Ptr[UniformType, MutAnyOrigin], name: Ptr[GLchar, ImmutAnyOrigin])
comptime glGetActiveUniformBlockName = fn (program: GLuint, uniform_block_index: GLuint, buf_size: GLsizei, length: Ptr[GLsizei, MutAnyOrigin], uniform_block_name: Ptr[GLchar, ImmutAnyOrigin])
comptime glGetActiveUniformBlockiv = fn (program: GLuint, uniform_block_index: GLuint, pname: UniformBlockPName, params: Ptr[GLint, MutAnyOrigin])
comptime glGetActiveUniformName = fn (program: GLuint, uniform_index: GLuint, buf_size: GLsizei, length: Ptr[GLsizei, MutAnyOrigin], uniform_name: Ptr[GLchar, ImmutAnyOrigin])
comptime glGetActiveUniformsiv = fn (program: GLuint, uniform_count: GLsizei, uniform_indices: Ptr[GLuint, ImmutAnyOrigin], pname: UniformPName, params: Ptr[GLint, MutAnyOrigin])
comptime glGetAttachedShaders = fn (program: GLuint, max_count: GLsizei, count: Ptr[GLsizei, MutAnyOrigin], shaders: Ptr[GLuint, MutAnyOrigin])
comptime glGetAttribLocation = fn (program: GLuint, name: Ptr[GLchar, ImmutAnyOrigin]) -> GLint
comptime glGetBooleani_v = fn (target: BufferTargetARB, index: GLuint, data: Ptr[GLboolean, MutAnyOrigin])
comptime glGetBooleanv = fn (pname: GetPName, data: Ptr[GLboolean, MutAnyOrigin])
comptime glGetBufferParameteri64v = fn (target: BufferTargetARB, pname: BufferPNameARB, params: Ptr[GLint64, MutAnyOrigin])
comptime glGetBufferParameteriv = fn (target: BufferTargetARB, pname: BufferPNameARB, params: Ptr[GLint, MutAnyOrigin])
comptime glGetBufferPointerv = fn (target: BufferTargetARB, pname: BufferPointerNameARB, params: Ptr[Ptr[NoneType, MutAnyOrigin], MutAnyOrigin])
comptime glGetBufferSubData = fn (target: BufferTargetARB, offset: GLintptr, size: GLsizeiptr, data: Ptr[NoneType, MutAnyOrigin])
comptime glGetCompressedTexImage = fn (target: TextureTarget, level: GLint, img: Ptr[NoneType, MutAnyOrigin])
comptime glGetCompressedTextureImage = fn (texture: GLuint, level: GLint, buf_size: GLsizei, pixels: Ptr[NoneType, MutAnyOrigin])
comptime glGetCompressedTextureSubImage = fn (texture: GLuint, level: GLint, xoffset: GLint, yoffset: GLint, zoffset: GLint, width: GLsizei, height: GLsizei, depth: GLsizei, buf_size: GLsizei, pixels: Ptr[NoneType, MutAnyOrigin])
comptime glGetDebugMessageLog = fn (count: GLuint, buf_size: GLsizei, sources: Ptr[DebugSource, MutAnyOrigin], types: Ptr[DebugType, MutAnyOrigin], ids: Ptr[GLuint, MutAnyOrigin], severities: Ptr[DebugSeverity, MutAnyOrigin], lengths: Ptr[GLsizei, MutAnyOrigin], message_log: Ptr[GLchar, ImmutAnyOrigin]) -> GLuint
comptime glGetDoublei_v = fn (target: GetPName, index: GLuint, data: Ptr[GLdouble, MutAnyOrigin])
comptime glGetDoublev = fn (pname: GetPName, data: Ptr[GLdouble, MutAnyOrigin])
comptime glGetError = fn () -> ErrorCode
comptime glGetFloati_v = fn (target: GetPName, index: GLuint, data: Ptr[GLfloat, MutAnyOrigin])
comptime glGetFloatv = fn (pname: GetPName, data: Ptr[GLfloat, MutAnyOrigin])
comptime glGetFragDataIndex = fn (program: GLuint, name: Ptr[GLchar, ImmutAnyOrigin]) -> GLint
comptime glGetFragDataLocation = fn (program: GLuint, name: Ptr[GLchar, ImmutAnyOrigin]) -> GLint
comptime glGetFramebufferAttachmentParameteriv = fn (target: FramebufferTarget, attachment: FramebufferAttachment, pname: FramebufferAttachmentParameterName, params: Ptr[GLint, MutAnyOrigin])
comptime glGetFramebufferParameteriv = fn (target: FramebufferTarget, pname: FramebufferAttachmentParameterName, params: Ptr[GLint, MutAnyOrigin])
comptime glGetGraphicsResetStatus = fn () -> GraphicsResetStatus
comptime glGetInteger64i_v = fn (target: GetPName, index: GLuint, data: Ptr[GLint64, MutAnyOrigin])
comptime glGetInteger64v = fn (pname: GetPName, data: Ptr[GLint64, MutAnyOrigin])
comptime glGetIntegeri_v = fn (target: GetPName, index: GLuint, data: Ptr[GLint, MutAnyOrigin])
comptime glGetIntegerv = fn (pname: GetPName, data: Ptr[GLint, MutAnyOrigin])
comptime glGetInternalformati64v = fn (target: TextureTarget, internalformat: InternalFormat, pname: InternalFormatPName, count: GLsizei, params: Ptr[GLint64, MutAnyOrigin])
comptime glGetInternalformativ = fn (target: TextureTarget, internalformat: InternalFormat, pname: InternalFormatPName, count: GLsizei, params: Ptr[GLint, MutAnyOrigin])
comptime glGetMultisamplefv = fn (pname: GetMultisamplePNameNV, index: GLuint, val: Ptr[GLfloat, MutAnyOrigin])
comptime glGetNamedBufferParameteri64v = fn (buffer: GLuint, pname: BufferPNameARB, params: Ptr[GLint64, MutAnyOrigin])
comptime glGetNamedBufferParameteriv = fn (buffer: GLuint, pname: BufferPNameARB, params: Ptr[GLint, MutAnyOrigin])
comptime glGetNamedBufferPointerv = fn (buffer: GLuint, pname: BufferPointerNameARB, params: Ptr[Ptr[NoneType, MutAnyOrigin], MutAnyOrigin])
comptime glGetNamedBufferSubData = fn (buffer: GLuint, offset: GLintptr, size: GLsizeiptr, data: Ptr[NoneType, MutAnyOrigin])
comptime glGetNamedFramebufferAttachmentParameteriv = fn (framebuffer: GLuint, attachment: FramebufferAttachment, pname: FramebufferAttachmentParameterName, params: Ptr[GLint, MutAnyOrigin])
comptime glGetNamedFramebufferParameteriv = fn (framebuffer: GLuint, pname: GetFramebufferParameter, param: Ptr[GLint, MutAnyOrigin])
comptime glGetNamedRenderbufferParameteriv = fn (renderbuffer: GLuint, pname: RenderbufferParameterName, params: Ptr[GLint, MutAnyOrigin])
comptime glGetObjectLabel = fn (identifier: ObjectIdentifier, name: GLuint, buf_size: GLsizei, length: Ptr[GLsizei, MutAnyOrigin], label: Ptr[GLchar, ImmutAnyOrigin])
comptime glGetObjectPtrLabel = fn (ptr: Ptr[NoneType, ImmutAnyOrigin], buf_size: GLsizei, length: Ptr[GLsizei, MutAnyOrigin], label: Ptr[GLchar, ImmutAnyOrigin])
comptime glGetProgramBinary = fn (program: GLuint, buf_size: GLsizei, length: Ptr[GLsizei, MutAnyOrigin], binary_format: Ptr[GLenum, MutAnyOrigin], binary: Ptr[NoneType, MutAnyOrigin])
comptime glGetProgramInfoLog = fn (program: GLuint, buf_size: GLsizei, length: Ptr[GLsizei, MutAnyOrigin], info_log: Ptr[GLchar, ImmutAnyOrigin])
comptime glGetProgramInterfaceiv = fn (program: GLuint, program_interface: ProgramInterface, pname: ProgramInterfacePName, params: Ptr[GLint, MutAnyOrigin])
comptime glGetProgramPipelineInfoLog = fn (pipeline: GLuint, buf_size: GLsizei, length: Ptr[GLsizei, MutAnyOrigin], info_log: Ptr[GLchar, ImmutAnyOrigin])
comptime glGetProgramPipelineiv = fn (pipeline: GLuint, pname: PipelineParameterName, params: Ptr[GLint, MutAnyOrigin])
comptime glGetProgramResourceIndex = fn (program: GLuint, program_interface: ProgramInterface, name: Ptr[GLchar, ImmutAnyOrigin]) -> GLuint
comptime glGetProgramResourceLocation = fn (program: GLuint, program_interface: ProgramInterface, name: Ptr[GLchar, ImmutAnyOrigin]) -> GLint
comptime glGetProgramResourceLocationIndex = fn (program: GLuint, program_interface: ProgramInterface, name: Ptr[GLchar, ImmutAnyOrigin]) -> GLint
comptime glGetProgramResourceName = fn (program: GLuint, program_interface: ProgramInterface, index: GLuint, buf_size: GLsizei, length: Ptr[GLsizei, MutAnyOrigin], name: Ptr[GLchar, ImmutAnyOrigin])
comptime glGetProgramResourceiv = fn (program: GLuint, program_interface: ProgramInterface, index: GLuint, prop_count: GLsizei, props: Ptr[ProgramResourceProperty, ImmutAnyOrigin], count: GLsizei, length: Ptr[GLsizei, MutAnyOrigin], params: Ptr[GLint, MutAnyOrigin])
comptime glGetProgramStageiv = fn (program: GLuint, shadertype: ShaderType, pname: ProgramStagePName, values: Ptr[GLint, MutAnyOrigin])
comptime glGetProgramiv = fn (program: GLuint, pname: ProgramPropertyARB, params: Ptr[GLint, MutAnyOrigin])
comptime glGetQueryBufferObjecti64v = fn (id: GLuint, buffer: GLuint, pname: QueryObjectParameterName, offset: GLintptr)
comptime glGetQueryBufferObjectiv = fn (id: GLuint, buffer: GLuint, pname: QueryObjectParameterName, offset: GLintptr)
comptime glGetQueryBufferObjectui64v = fn (id: GLuint, buffer: GLuint, pname: QueryObjectParameterName, offset: GLintptr)
comptime glGetQueryBufferObjectuiv = fn (id: GLuint, buffer: GLuint, pname: QueryObjectParameterName, offset: GLintptr)
comptime glGetQueryIndexediv = fn (target: QueryTarget, index: GLuint, pname: QueryParameterName, params: Ptr[GLint, MutAnyOrigin])
comptime glGetQueryObjecti64v = fn (id: GLuint, pname: QueryObjectParameterName, params: Ptr[GLint64, MutAnyOrigin])
comptime glGetQueryObjectiv = fn (id: GLuint, pname: QueryObjectParameterName, params: Ptr[GLint, MutAnyOrigin])
comptime glGetQueryObjectui64v = fn (id: GLuint, pname: QueryObjectParameterName, params: Ptr[GLuint64, MutAnyOrigin])
comptime glGetQueryObjectuiv = fn (id: GLuint, pname: QueryObjectParameterName, params: Ptr[GLuint, MutAnyOrigin])
comptime glGetQueryiv = fn (target: QueryTarget, pname: QueryParameterName, params: Ptr[GLint, MutAnyOrigin])
comptime glGetRenderbufferParameteriv = fn (target: RenderbufferTarget, pname: RenderbufferParameterName, params: Ptr[GLint, MutAnyOrigin])
comptime glGetSamplerParameterIiv = fn (sampler: GLuint, pname: SamplerParameterI, params: Ptr[GLint, MutAnyOrigin])
comptime glGetSamplerParameterIuiv = fn (sampler: GLuint, pname: SamplerParameterI, params: Ptr[GLuint, MutAnyOrigin])
comptime glGetSamplerParameterfv = fn (sampler: GLuint, pname: SamplerParameterF, params: Ptr[GLfloat, MutAnyOrigin])
comptime glGetSamplerParameteriv = fn (sampler: GLuint, pname: SamplerParameterI, params: Ptr[GLint, MutAnyOrigin])
comptime glGetShaderInfoLog = fn (shader: GLuint, buf_size: GLsizei, length: Ptr[GLsizei, MutAnyOrigin], info_log: Ptr[GLchar, ImmutAnyOrigin])
comptime glGetShaderPrecisionFormat = fn (shadertype: ShaderType, precisiontype: PrecisionType, range: Ptr[GLint, MutAnyOrigin], precision: Ptr[GLint, MutAnyOrigin])
comptime glGetShaderSource = fn (shader: GLuint, buf_size: GLsizei, length: Ptr[GLsizei, MutAnyOrigin], source: Ptr[GLchar, ImmutAnyOrigin])
comptime glGetShaderiv = fn (shader: GLuint, pname: ShaderParameterName, params: Ptr[GLint, MutAnyOrigin])
comptime glGetString = fn (name: StringName) -> GLubyte
comptime glGetStringi = fn (name: StringName, index: GLuint) -> GLubyte
comptime glGetSubroutineIndex = fn (program: GLuint, shadertype: ShaderType, name: Ptr[GLchar, ImmutAnyOrigin]) -> GLuint
comptime glGetSubroutineUniformLocation = fn (program: GLuint, shadertype: ShaderType, name: Ptr[GLchar, ImmutAnyOrigin]) -> GLint
comptime glGetSynciv = fn (sync: GLsync, pname: SyncParameterName, count: GLsizei, length: Ptr[GLsizei, MutAnyOrigin], values: Ptr[GLint, MutAnyOrigin])
comptime glGetTexImage = fn (target: TextureTarget, level: GLint, format: PixelFormat, type: PixelType, pixels: Ptr[NoneType, MutAnyOrigin])
comptime glGetTexLevelParameterfv = fn (target: TextureTarget, level: GLint, pname: GetTextureParameter, params: Ptr[GLfloat, MutAnyOrigin])
comptime glGetTexLevelParameteriv = fn (target: TextureTarget, level: GLint, pname: GetTextureParameter, params: Ptr[GLint, MutAnyOrigin])
comptime glGetTexParameterIiv = fn (target: TextureTarget, pname: GetTextureParameter, params: Ptr[GLint, MutAnyOrigin])
comptime glGetTexParameterIuiv = fn (target: TextureTarget, pname: GetTextureParameter, params: Ptr[GLuint, MutAnyOrigin])
comptime glGetTexParameterfv = fn (target: TextureTarget, pname: GetTextureParameter, params: Ptr[GLfloat, MutAnyOrigin])
comptime glGetTexParameteriv = fn (target: TextureTarget, pname: GetTextureParameter, params: Ptr[GLint, MutAnyOrigin])
comptime glGetTextureImage = fn (texture: GLuint, level: GLint, format: PixelFormat, type: PixelType, buf_size: GLsizei, pixels: Ptr[NoneType, MutAnyOrigin])
comptime glGetTextureLevelParameterfv = fn (texture: GLuint, level: GLint, pname: GetTextureParameter, params: Ptr[GLfloat, MutAnyOrigin])
comptime glGetTextureLevelParameteriv = fn (texture: GLuint, level: GLint, pname: GetTextureParameter, params: Ptr[GLint, MutAnyOrigin])
comptime glGetTextureParameterIiv = fn (texture: GLuint, pname: GetTextureParameter, params: Ptr[GLint, MutAnyOrigin])
comptime glGetTextureParameterIuiv = fn (texture: GLuint, pname: GetTextureParameter, params: Ptr[GLuint, MutAnyOrigin])
comptime glGetTextureParameterfv = fn (texture: GLuint, pname: GetTextureParameter, params: Ptr[GLfloat, MutAnyOrigin])
comptime glGetTextureParameteriv = fn (texture: GLuint, pname: GetTextureParameter, params: Ptr[GLint, MutAnyOrigin])
comptime glGetTextureSubImage = fn (texture: GLuint, level: GLint, xoffset: GLint, yoffset: GLint, zoffset: GLint, width: GLsizei, height: GLsizei, depth: GLsizei, format: PixelFormat, type: PixelType, buf_size: GLsizei, pixels: Ptr[NoneType, MutAnyOrigin])
comptime glGetTransformFeedbackVarying = fn (program: GLuint, index: GLuint, buf_size: GLsizei, length: Ptr[GLsizei, MutAnyOrigin], size: Ptr[GLsizei, MutAnyOrigin], type: Ptr[AttributeType, MutAnyOrigin], name: Ptr[GLchar, ImmutAnyOrigin])
comptime glGetTransformFeedbacki64_v = fn (xfb: GLuint, pname: TransformFeedbackPName, index: GLuint, param: Ptr[GLint64, MutAnyOrigin])
comptime glGetTransformFeedbacki_v = fn (xfb: GLuint, pname: TransformFeedbackPName, index: GLuint, param: Ptr[GLint, MutAnyOrigin])
comptime glGetTransformFeedbackiv = fn (xfb: GLuint, pname: TransformFeedbackPName, param: Ptr[GLint, MutAnyOrigin])
comptime glGetUniformBlockIndex = fn (program: GLuint, uniform_block_name: Ptr[GLchar, ImmutAnyOrigin]) -> GLuint
comptime glGetUniformIndices = fn (program: GLuint, uniform_count: GLsizei, uniform_names: Ptr[Ptr[GLchar, ImmutAnyOrigin], ImmutAnyOrigin], uniform_indices: Ptr[GLuint, MutAnyOrigin])
comptime glGetUniformLocation = fn (program: GLuint, name: Ptr[GLchar, ImmutAnyOrigin]) -> GLint
comptime glGetUniformSubroutineuiv = fn (shadertype: ShaderType, location: GLint, params: Ptr[GLuint, MutAnyOrigin])
comptime glGetUniformdv = fn (program: GLuint, location: GLint, params: Ptr[GLdouble, MutAnyOrigin])
comptime glGetUniformfv = fn (program: GLuint, location: GLint, params: Ptr[GLfloat, MutAnyOrigin])
comptime glGetUniformiv = fn (program: GLuint, location: GLint, params: Ptr[GLint, MutAnyOrigin])
comptime glGetUniformuiv = fn (program: GLuint, location: GLint, params: Ptr[GLuint, MutAnyOrigin])
comptime glGetVertexArrayIndexed64iv = fn (vaobj: GLuint, index: GLuint, pname: VertexArrayPName, param: Ptr[GLint64, MutAnyOrigin])
comptime glGetVertexArrayIndexediv = fn (vaobj: GLuint, index: GLuint, pname: VertexArrayPName, param: Ptr[GLint, MutAnyOrigin])
comptime glGetVertexArrayiv = fn (vaobj: GLuint, pname: VertexArrayPName, param: Ptr[GLint, MutAnyOrigin])
comptime glGetVertexAttribIiv = fn (index: GLuint, pname: VertexAttribEnum, params: Ptr[GLint, MutAnyOrigin])
comptime glGetVertexAttribIuiv = fn (index: GLuint, pname: VertexAttribEnum, params: Ptr[GLuint, MutAnyOrigin])
comptime glGetVertexAttribLdv = fn (index: GLuint, pname: VertexAttribEnum, params: Ptr[GLdouble, MutAnyOrigin])
comptime glGetVertexAttribPointerv = fn (index: GLuint, pname: VertexAttribPointerPropertyARB, pointer: Ptr[Ptr[NoneType, MutAnyOrigin], MutAnyOrigin])
comptime glGetVertexAttribdv = fn (index: GLuint, pname: VertexAttribPropertyARB, params: Ptr[GLdouble, MutAnyOrigin])
comptime glGetVertexAttribfv = fn (index: GLuint, pname: VertexAttribPropertyARB, params: Ptr[GLfloat, MutAnyOrigin])
comptime glGetVertexAttribiv = fn (index: GLuint, pname: VertexAttribPropertyARB, params: Ptr[GLint, MutAnyOrigin])
comptime glGetnColorTable = fn (target: ColorTableTarget, format: PixelFormat, type: PixelType, buf_size: GLsizei, table: Ptr[NoneType, MutAnyOrigin])
comptime glGetnCompressedTexImage = fn (target: TextureTarget, lod: GLint, buf_size: GLsizei, pixels: Ptr[NoneType, MutAnyOrigin])
comptime glGetnConvolutionFilter = fn (target: ConvolutionTarget, format: PixelFormat, type: PixelType, buf_size: GLsizei, image: Ptr[NoneType, MutAnyOrigin])
comptime glGetnHistogram = fn (target: HistogramTarget, reset: GLboolean, format: PixelFormat, type: PixelType, buf_size: GLsizei, values: Ptr[NoneType, MutAnyOrigin])
comptime glGetnMapdv = fn (target: MapTarget, query: MapQuery, buf_size: GLsizei, v: Ptr[GLdouble, MutAnyOrigin])
comptime glGetnMapfv = fn (target: MapTarget, query: MapQuery, buf_size: GLsizei, v: Ptr[GLfloat, MutAnyOrigin])
comptime glGetnMapiv = fn (target: MapTarget, query: MapQuery, buf_size: GLsizei, v: Ptr[GLint, MutAnyOrigin])
comptime glGetnMinmax = fn (target: MinmaxTarget, reset: GLboolean, format: PixelFormat, type: PixelType, buf_size: GLsizei, values: Ptr[NoneType, MutAnyOrigin])
comptime glGetnPixelMapfv = fn (map: PixelMap, buf_size: GLsizei, values: Ptr[GLfloat, MutAnyOrigin])
comptime glGetnPixelMapuiv = fn (map: PixelMap, buf_size: GLsizei, values: Ptr[GLuint, MutAnyOrigin])
comptime glGetnPixelMapusv = fn (map: PixelMap, buf_size: GLsizei, values: Ptr[GLushort, MutAnyOrigin])
comptime glGetnPolygonStipple = fn (buf_size: GLsizei, pattern: Ptr[GLubyte, MutAnyOrigin])
comptime glGetnSeparableFilter = fn (target: SeparableTarget, format: PixelFormat, type: PixelType, row_buf_size: GLsizei, row: Ptr[NoneType, MutAnyOrigin], column_buf_size: GLsizei, column: Ptr[NoneType, MutAnyOrigin], span: Ptr[NoneType, MutAnyOrigin])
comptime glGetnTexImage = fn (target: TextureTarget, level: GLint, format: PixelFormat, type: PixelType, buf_size: GLsizei, pixels: Ptr[NoneType, MutAnyOrigin])
comptime glGetnUniformdv = fn (program: GLuint, location: GLint, buf_size: GLsizei, params: Ptr[GLdouble, MutAnyOrigin])
comptime glGetnUniformfv = fn (program: GLuint, location: GLint, buf_size: GLsizei, params: Ptr[GLfloat, MutAnyOrigin])
comptime glGetnUniformiv = fn (program: GLuint, location: GLint, buf_size: GLsizei, params: Ptr[GLint, MutAnyOrigin])
comptime glGetnUniformuiv = fn (program: GLuint, location: GLint, buf_size: GLsizei, params: Ptr[GLuint, MutAnyOrigin])
comptime glHint = fn (target: HintTarget, mode: HintMode)
comptime glInvalidateBufferData = fn (buffer: GLuint)
comptime glInvalidateBufferSubData = fn (buffer: GLuint, offset: GLintptr, length: GLsizeiptr)
comptime glInvalidateFramebuffer = fn (target: FramebufferTarget, num_attachments: GLsizei, attachments: Ptr[InvalidateFramebufferAttachment, ImmutAnyOrigin])
comptime glInvalidateNamedFramebufferData = fn (framebuffer: GLuint, num_attachments: GLsizei, attachments: Ptr[FramebufferAttachment, ImmutAnyOrigin])
comptime glInvalidateNamedFramebufferSubData = fn (framebuffer: GLuint, num_attachments: GLsizei, attachments: Ptr[FramebufferAttachment, ImmutAnyOrigin], x: GLint, y: GLint, width: GLsizei, height: GLsizei)
comptime glInvalidateSubFramebuffer = fn (target: FramebufferTarget, num_attachments: GLsizei, attachments: Ptr[InvalidateFramebufferAttachment, ImmutAnyOrigin], x: GLint, y: GLint, width: GLsizei, height: GLsizei)
comptime glInvalidateTexImage = fn (texture: GLuint, level: GLint)
comptime glInvalidateTexSubImage = fn (texture: GLuint, level: GLint, xoffset: GLint, yoffset: GLint, zoffset: GLint, width: GLsizei, height: GLsizei, depth: GLsizei)
comptime glIsBuffer = fn (buffer: GLuint) -> GLboolean
comptime glIsEnabled = fn (cap: EnableCap) -> GLboolean
comptime glIsEnabledi = fn (target: EnableCap, index: GLuint) -> GLboolean
comptime glIsFramebuffer = fn (framebuffer: GLuint) -> GLboolean
comptime glIsProgram = fn (program: GLuint) -> GLboolean
comptime glIsProgramPipeline = fn (pipeline: GLuint) -> GLboolean
comptime glIsQuery = fn (id: GLuint) -> GLboolean
comptime glIsRenderbuffer = fn (renderbuffer: GLuint) -> GLboolean
comptime glIsSampler = fn (sampler: GLuint) -> GLboolean
comptime glIsShader = fn (shader: GLuint) -> GLboolean
comptime glIsSync = fn (sync: GLsync) -> GLboolean
comptime glIsTexture = fn (texture: GLuint) -> GLboolean
comptime glIsTransformFeedback = fn (id: GLuint) -> GLboolean
comptime glIsVertexArray = fn (array: GLuint) -> GLboolean
comptime glLineWidth = fn (width: GLfloat)
comptime glLinkProgram = fn (program: GLuint)
comptime glLogicOp = fn (opcode: LogicOp)
comptime glMapBuffer = fn (target: BufferTargetARB, access: BufferAccessARB)
comptime glMapBufferRange = fn (target: BufferTargetARB, offset: GLintptr, length: GLsizeiptr, access: MapBufferAccessMask)
comptime glMapNamedBuffer = fn (buffer: GLuint, access: BufferAccessARB)
comptime glMapNamedBufferRange = fn (buffer: GLuint, offset: GLintptr, length: GLsizeiptr, access: MapBufferAccessMask)
comptime glMemoryBarrier = fn (barriers: MemoryBarrierMask)
comptime glMemoryBarrierByRegion = fn (barriers: MemoryBarrierMask)
comptime glMinSampleShading = fn (value: GLfloat)
comptime glMultiDrawArrays = fn (mode: PrimitiveType, first: Ptr[GLint, ImmutAnyOrigin], count: Ptr[GLsizei, ImmutAnyOrigin], drawcount: GLsizei)
comptime glMultiDrawArraysIndirect = fn (mode: PrimitiveType, indirect: Ptr[NoneType, ImmutAnyOrigin], drawcount: GLsizei, stride: GLsizei)
comptime glMultiDrawArraysIndirectCount = fn (mode: PrimitiveType, indirect: Ptr[NoneType, ImmutAnyOrigin], drawcount: GLintptr, maxdrawcount: GLsizei, stride: GLsizei)
comptime glMultiDrawElements = fn (mode: PrimitiveType, count: Ptr[GLsizei, ImmutAnyOrigin], type: DrawElementsType, indices: Ptr[Ptr[NoneType, ImmutAnyOrigin], ImmutAnyOrigin], drawcount: GLsizei)
comptime glMultiDrawElementsBaseVertex = fn (mode: PrimitiveType, count: Ptr[GLsizei, ImmutAnyOrigin], type: DrawElementsType, indices: Ptr[Ptr[NoneType, ImmutAnyOrigin], ImmutAnyOrigin], drawcount: GLsizei, basevertex: Ptr[GLint, ImmutAnyOrigin])
comptime glMultiDrawElementsIndirect = fn (mode: PrimitiveType, type: DrawElementsType, indirect: Ptr[NoneType, ImmutAnyOrigin], drawcount: GLsizei, stride: GLsizei)
comptime glMultiDrawElementsIndirectCount = fn (mode: PrimitiveType, type: DrawElementsType, indirect: Ptr[NoneType, ImmutAnyOrigin], drawcount: GLintptr, maxdrawcount: GLsizei, stride: GLsizei)
comptime glMultiTexCoordP1ui = fn (texture: TextureUnit, type: TexCoordPointerType, coords: GLuint)
comptime glMultiTexCoordP1uiv = fn (texture: TextureUnit, type: TexCoordPointerType, coords: Ptr[GLuint, ImmutAnyOrigin])
comptime glMultiTexCoordP2ui = fn (texture: TextureUnit, type: TexCoordPointerType, coords: GLuint)
comptime glMultiTexCoordP2uiv = fn (texture: TextureUnit, type: TexCoordPointerType, coords: Ptr[GLuint, ImmutAnyOrigin])
comptime glMultiTexCoordP3ui = fn (texture: TextureUnit, type: TexCoordPointerType, coords: GLuint)
comptime glMultiTexCoordP3uiv = fn (texture: TextureUnit, type: TexCoordPointerType, coords: Ptr[GLuint, ImmutAnyOrigin])
comptime glMultiTexCoordP4ui = fn (texture: TextureUnit, type: TexCoordPointerType, coords: GLuint)
comptime glMultiTexCoordP4uiv = fn (texture: TextureUnit, type: TexCoordPointerType, coords: Ptr[GLuint, ImmutAnyOrigin])
comptime glNamedBufferData = fn (buffer: GLuint, size: GLsizeiptr, data: Ptr[NoneType, ImmutAnyOrigin], usage: BufferUsageARB)
comptime glNamedBufferStorage = fn (buffer: GLuint, size: GLsizeiptr, data: Ptr[NoneType, ImmutAnyOrigin], flags: BufferStorageMask)
comptime glNamedBufferSubData = fn (buffer: GLuint, offset: GLintptr, size: GLsizeiptr, data: Ptr[NoneType, ImmutAnyOrigin])
comptime glNamedFramebufferDrawBuffer = fn (framebuffer: GLuint, buf: ColorBuffer)
comptime glNamedFramebufferDrawBuffers = fn (framebuffer: GLuint, n: GLsizei, bufs: Ptr[ColorBuffer, ImmutAnyOrigin])
comptime glNamedFramebufferParameteri = fn (framebuffer: GLuint, pname: FramebufferParameterName, param: GLint)
comptime glNamedFramebufferReadBuffer = fn (framebuffer: GLuint, src: ColorBuffer)
comptime glNamedFramebufferRenderbuffer = fn (framebuffer: GLuint, attachment: FramebufferAttachment, renderbuffertarget: RenderbufferTarget, renderbuffer: GLuint)
comptime glNamedFramebufferTexture = fn (framebuffer: GLuint, attachment: FramebufferAttachment, texture: GLuint, level: GLint)
comptime glNamedFramebufferTextureLayer = fn (framebuffer: GLuint, attachment: FramebufferAttachment, texture: GLuint, level: GLint, layer: GLint)
comptime glNamedRenderbufferStorage = fn (renderbuffer: GLuint, internalformat: InternalFormat, width: GLsizei, height: GLsizei)
comptime glNamedRenderbufferStorageMultisample = fn (renderbuffer: GLuint, samples: GLsizei, internalformat: InternalFormat, width: GLsizei, height: GLsizei)
comptime glNormalP3ui = fn (type: NormalPointerType, coords: GLuint)
comptime glNormalP3uiv = fn (type: NormalPointerType, coords: Ptr[GLuint, ImmutAnyOrigin])
comptime glObjectLabel = fn (identifier: ObjectIdentifier, name: GLuint, length: GLsizei, label: Ptr[GLchar, ImmutAnyOrigin])
comptime glObjectPtrLabel = fn (ptr: Ptr[NoneType, ImmutAnyOrigin], length: GLsizei, label: Ptr[GLchar, ImmutAnyOrigin])
comptime glPatchParameterfv = fn (pname: PatchParameterName, values: Ptr[GLfloat, ImmutAnyOrigin])
comptime glPatchParameteri = fn (pname: PatchParameterName, value: GLint)
comptime glPauseTransformFeedback = fn ()
comptime glPixelStoref = fn (pname: PixelStoreParameter, param: GLfloat)
comptime glPixelStorei = fn (pname: PixelStoreParameter, param: GLint)
comptime glPointParameterf = fn (pname: PointParameterNameARB, param: GLfloat)
comptime glPointParameterfv = fn (pname: PointParameterNameARB, params: Ptr[GLfloat, ImmutAnyOrigin])
comptime glPointParameteri = fn (pname: PointParameterNameARB, param: GLint)
comptime glPointParameteriv = fn (pname: PointParameterNameARB, params: Ptr[GLint, ImmutAnyOrigin])
comptime glPointSize = fn (size: GLfloat)
comptime glPolygonMode = fn (face: TriangleFace, mode: PolygonMode)
comptime glPolygonOffset = fn (factor: GLfloat, units: GLfloat)
comptime glPolygonOffsetClamp = fn (factor: GLfloat, units: GLfloat, clamp: GLfloat)
comptime glPopDebugGroup = fn ()
comptime glPrimitiveRestartIndex = fn (index: GLuint)
comptime glProgramBinary = fn (program: GLuint, binary_format: GLenum, binary: Ptr[NoneType, ImmutAnyOrigin], length: GLsizei)
comptime glProgramParameteri = fn (program: GLuint, pname: ProgramParameterPName, value: GLint)
comptime glProgramUniform1d = fn (program: GLuint, location: GLint, v0: GLdouble)
comptime glProgramUniform1dv = fn (program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLdouble, ImmutAnyOrigin])
comptime glProgramUniform1f = fn (program: GLuint, location: GLint, v0: GLfloat)
comptime glProgramUniform1fv = fn (program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLfloat, ImmutAnyOrigin])
comptime glProgramUniform1i = fn (program: GLuint, location: GLint, v0: GLint)
comptime glProgramUniform1iv = fn (program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLint, ImmutAnyOrigin])
comptime glProgramUniform1ui = fn (program: GLuint, location: GLint, v0: GLuint)
comptime glProgramUniform1uiv = fn (program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLuint, ImmutAnyOrigin])
comptime glProgramUniform2d = fn (program: GLuint, location: GLint, v0: GLdouble, v1: GLdouble)
comptime glProgramUniform2dv = fn (program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLdouble, ImmutAnyOrigin])
comptime glProgramUniform2f = fn (program: GLuint, location: GLint, v0: GLfloat, v1: GLfloat)
comptime glProgramUniform2fv = fn (program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLfloat, ImmutAnyOrigin])
comptime glProgramUniform2i = fn (program: GLuint, location: GLint, v0: GLint, v1: GLint)
comptime glProgramUniform2iv = fn (program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLint, ImmutAnyOrigin])
comptime glProgramUniform2ui = fn (program: GLuint, location: GLint, v0: GLuint, v1: GLuint)
comptime glProgramUniform2uiv = fn (program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLuint, ImmutAnyOrigin])
comptime glProgramUniform3d = fn (program: GLuint, location: GLint, v0: GLdouble, v1: GLdouble, v2: GLdouble)
comptime glProgramUniform3dv = fn (program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLdouble, ImmutAnyOrigin])
comptime glProgramUniform3f = fn (program: GLuint, location: GLint, v0: GLfloat, v1: GLfloat, v2: GLfloat)
comptime glProgramUniform3fv = fn (program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLfloat, ImmutAnyOrigin])
comptime glProgramUniform3i = fn (program: GLuint, location: GLint, v0: GLint, v1: GLint, v2: GLint)
comptime glProgramUniform3iv = fn (program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLint, ImmutAnyOrigin])
comptime glProgramUniform3ui = fn (program: GLuint, location: GLint, v0: GLuint, v1: GLuint, v2: GLuint)
comptime glProgramUniform3uiv = fn (program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLuint, ImmutAnyOrigin])
comptime glProgramUniform4d = fn (program: GLuint, location: GLint, v0: GLdouble, v1: GLdouble, v2: GLdouble, v3: GLdouble)
comptime glProgramUniform4dv = fn (program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLdouble, ImmutAnyOrigin])
comptime glProgramUniform4f = fn (program: GLuint, location: GLint, v0: GLfloat, v1: GLfloat, v2: GLfloat, v3: GLfloat)
comptime glProgramUniform4fv = fn (program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLfloat, ImmutAnyOrigin])
comptime glProgramUniform4i = fn (program: GLuint, location: GLint, v0: GLint, v1: GLint, v2: GLint, v3: GLint)
comptime glProgramUniform4iv = fn (program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLint, ImmutAnyOrigin])
comptime glProgramUniform4ui = fn (program: GLuint, location: GLint, v0: GLuint, v1: GLuint, v2: GLuint, v3: GLuint)
comptime glProgramUniform4uiv = fn (program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLuint, ImmutAnyOrigin])
comptime glProgramUniformMatrix2dv = fn (program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLdouble, ImmutAnyOrigin])
comptime glProgramUniformMatrix2fv = fn (program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLfloat, ImmutAnyOrigin])
comptime glProgramUniformMatrix2x3dv = fn (program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLdouble, ImmutAnyOrigin])
comptime glProgramUniformMatrix2x3fv = fn (program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLfloat, ImmutAnyOrigin])
comptime glProgramUniformMatrix2x4dv = fn (program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLdouble, ImmutAnyOrigin])
comptime glProgramUniformMatrix2x4fv = fn (program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLfloat, ImmutAnyOrigin])
comptime glProgramUniformMatrix3dv = fn (program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLdouble, ImmutAnyOrigin])
comptime glProgramUniformMatrix3fv = fn (program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLfloat, ImmutAnyOrigin])
comptime glProgramUniformMatrix3x2dv = fn (program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLdouble, ImmutAnyOrigin])
comptime glProgramUniformMatrix3x2fv = fn (program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLfloat, ImmutAnyOrigin])
comptime glProgramUniformMatrix3x4dv = fn (program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLdouble, ImmutAnyOrigin])
comptime glProgramUniformMatrix3x4fv = fn (program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLfloat, ImmutAnyOrigin])
comptime glProgramUniformMatrix4dv = fn (program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLdouble, ImmutAnyOrigin])
comptime glProgramUniformMatrix4fv = fn (program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLfloat, ImmutAnyOrigin])
comptime glProgramUniformMatrix4x2dv = fn (program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLdouble, ImmutAnyOrigin])
comptime glProgramUniformMatrix4x2fv = fn (program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLfloat, ImmutAnyOrigin])
comptime glProgramUniformMatrix4x3dv = fn (program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLdouble, ImmutAnyOrigin])
comptime glProgramUniformMatrix4x3fv = fn (program: GLuint, location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLfloat, ImmutAnyOrigin])
comptime glProvokingVertex = fn (mode: VertexProvokingMode)
comptime glPushDebugGroup = fn (source: DebugSource, id: GLuint, length: GLsizei, message: Ptr[GLchar, ImmutAnyOrigin])
comptime glQueryCounter = fn (id: GLuint, target: QueryCounterTarget)
comptime glReadBuffer = fn (src: ReadBufferMode)
comptime glReadPixels = fn (x: GLint, y: GLint, width: GLsizei, height: GLsizei, format: PixelFormat, type: PixelType, pixels: Ptr[NoneType, MutAnyOrigin])
comptime glReadnPixels = fn (x: GLint, y: GLint, width: GLsizei, height: GLsizei, format: PixelFormat, type: PixelType, buf_size: GLsizei, data: Ptr[NoneType, MutAnyOrigin])
comptime glReleaseShaderCompiler = fn ()
comptime glRenderbufferStorage = fn (target: RenderbufferTarget, internalformat: InternalFormat, width: GLsizei, height: GLsizei)
comptime glRenderbufferStorageMultisample = fn (target: RenderbufferTarget, samples: GLsizei, internalformat: InternalFormat, width: GLsizei, height: GLsizei)
comptime glResumeTransformFeedback = fn ()
comptime glSampleCoverage = fn (value: GLfloat, invert: GLboolean)
comptime glSampleMaski = fn (mask_number: GLuint, mask: GLbitfield)
comptime glSamplerParameterIiv = fn (sampler: GLuint, pname: SamplerParameterI, param: Ptr[GLint, ImmutAnyOrigin])
comptime glSamplerParameterIuiv = fn (sampler: GLuint, pname: SamplerParameterI, param: Ptr[GLuint, ImmutAnyOrigin])
comptime glSamplerParameterf = fn (sampler: GLuint, pname: SamplerParameterF, param: GLfloat)
comptime glSamplerParameterfv = fn (sampler: GLuint, pname: SamplerParameterF, param: Ptr[GLfloat, ImmutAnyOrigin])
comptime glSamplerParameteri = fn (sampler: GLuint, pname: SamplerParameterI, param: GLint)
comptime glSamplerParameteriv = fn (sampler: GLuint, pname: SamplerParameterI, param: Ptr[GLint, ImmutAnyOrigin])
comptime glScissor = fn (x: GLint, y: GLint, width: GLsizei, height: GLsizei)
comptime glScissorArrayv = fn (first: GLuint, count: GLsizei, v: Ptr[GLint, ImmutAnyOrigin])
comptime glScissorIndexed = fn (index: GLuint, left: GLint, bottom: GLint, width: GLsizei, height: GLsizei)
comptime glScissorIndexedv = fn (index: GLuint, v: Ptr[GLint, ImmutAnyOrigin])
comptime glSecondaryColorP3ui = fn (type: ColorPointerType, color: GLuint)
comptime glSecondaryColorP3uiv = fn (type: ColorPointerType, color: Ptr[GLuint, ImmutAnyOrigin])
comptime glShaderBinary = fn (count: GLsizei, shaders: Ptr[GLuint, ImmutAnyOrigin], binary_format: ShaderBinaryFormat, binary: Ptr[NoneType, ImmutAnyOrigin], length: GLsizei)
comptime glShaderSource = fn (shader: GLuint, count: GLsizei, string: Ptr[Ptr[GLchar, ImmutAnyOrigin], ImmutAnyOrigin], length: Ptr[GLint, ImmutAnyOrigin])
comptime glShaderStorageBlockBinding = fn (program: GLuint, storage_block_index: GLuint, storage_block_binding: GLuint)
comptime glSpecializeShader = fn (shader: GLuint, p_entry_point: Ptr[GLchar, ImmutAnyOrigin], num_specialization_constants: GLuint, p_constant_index: Ptr[GLuint, ImmutAnyOrigin], p_constant_value: Ptr[GLuint, ImmutAnyOrigin])
comptime glStencilFunc = fn (func: StencilFunction, ref_: GLint, mask: GLuint)
comptime glStencilFuncSeparate = fn (face: TriangleFace, func: StencilFunction, ref_: GLint, mask: GLuint)
comptime glStencilMask = fn (mask: GLuint)
comptime glStencilMaskSeparate = fn (face: TriangleFace, mask: GLuint)
comptime glStencilOp = fn (fail: StencilOp, zfail: StencilOp, zpass: StencilOp)
comptime glStencilOpSeparate = fn (face: TriangleFace, sfail: StencilOp, dpfail: StencilOp, dppass: StencilOp)
comptime glTexBuffer = fn (target: TextureTarget, internalformat: SizedInternalFormat, buffer: GLuint)
comptime glTexBufferRange = fn (target: TextureTarget, internalformat: SizedInternalFormat, buffer: GLuint, offset: GLintptr, size: GLsizeiptr)
comptime glTexCoordP1ui = fn (type: TexCoordPointerType, coords: GLuint)
comptime glTexCoordP1uiv = fn (type: TexCoordPointerType, coords: Ptr[GLuint, ImmutAnyOrigin])
comptime glTexCoordP2ui = fn (type: TexCoordPointerType, coords: GLuint)
comptime glTexCoordP2uiv = fn (type: TexCoordPointerType, coords: Ptr[GLuint, ImmutAnyOrigin])
comptime glTexCoordP3ui = fn (type: TexCoordPointerType, coords: GLuint)
comptime glTexCoordP3uiv = fn (type: TexCoordPointerType, coords: Ptr[GLuint, ImmutAnyOrigin])
comptime glTexCoordP4ui = fn (type: TexCoordPointerType, coords: GLuint)
comptime glTexCoordP4uiv = fn (type: TexCoordPointerType, coords: Ptr[GLuint, ImmutAnyOrigin])
comptime glTexImage1D = fn (target: TextureTarget, level: GLint, internalformat: InternalFormat, width: GLsizei, border: GLint, format: PixelFormat, type: PixelType, pixels: Ptr[NoneType, ImmutAnyOrigin])
comptime glTexImage2D = fn (target: TextureTarget, level: GLint, internalformat: InternalFormat, width: GLsizei, height: GLsizei, border: GLint, format: PixelFormat, type: PixelType, pixels: Ptr[NoneType, ImmutAnyOrigin])
comptime glTexImage2DMultisample = fn (target: TextureTarget, samples: GLsizei, internalformat: InternalFormat, width: GLsizei, height: GLsizei, fixedsamplelocations: GLboolean)
comptime glTexImage3D = fn (target: TextureTarget, level: GLint, internalformat: InternalFormat, width: GLsizei, height: GLsizei, depth: GLsizei, border: GLint, format: PixelFormat, type: PixelType, pixels: Ptr[NoneType, ImmutAnyOrigin])
comptime glTexImage3DMultisample = fn (target: TextureTarget, samples: GLsizei, internalformat: InternalFormat, width: GLsizei, height: GLsizei, depth: GLsizei, fixedsamplelocations: GLboolean)
comptime glTexParameterIiv = fn (target: TextureTarget, pname: TextureParameterName, params: Ptr[GLint, ImmutAnyOrigin])
comptime glTexParameterIuiv = fn (target: TextureTarget, pname: TextureParameterName, params: Ptr[GLuint, ImmutAnyOrigin])
comptime glTexParameterf = fn (target: TextureTarget, pname: TextureParameterName, param: GLfloat)
comptime glTexParameterfv = fn (target: TextureTarget, pname: TextureParameterName, params: Ptr[GLfloat, ImmutAnyOrigin])
comptime glTexParameteri = fn (target: TextureTarget, pname: TextureParameterName, param: GLint)
comptime glTexParameteriv = fn (target: TextureTarget, pname: TextureParameterName, params: Ptr[GLint, ImmutAnyOrigin])
comptime glTexStorage1D = fn (target: TextureTarget, levels: GLsizei, internalformat: SizedInternalFormat, width: GLsizei)
comptime glTexStorage2D = fn (target: TextureTarget, levels: GLsizei, internalformat: SizedInternalFormat, width: GLsizei, height: GLsizei)
comptime glTexStorage2DMultisample = fn (target: TextureTarget, samples: GLsizei, internalformat: SizedInternalFormat, width: GLsizei, height: GLsizei, fixedsamplelocations: GLboolean)
comptime glTexStorage3D = fn (target: TextureTarget, levels: GLsizei, internalformat: SizedInternalFormat, width: GLsizei, height: GLsizei, depth: GLsizei)
comptime glTexStorage3DMultisample = fn (target: TextureTarget, samples: GLsizei, internalformat: SizedInternalFormat, width: GLsizei, height: GLsizei, depth: GLsizei, fixedsamplelocations: GLboolean)
comptime glTexSubImage1D = fn (target: TextureTarget, level: GLint, xoffset: GLint, width: GLsizei, format: PixelFormat, type: PixelType, pixels: Ptr[NoneType, ImmutAnyOrigin])
comptime glTexSubImage2D = fn (target: TextureTarget, level: GLint, xoffset: GLint, yoffset: GLint, width: GLsizei, height: GLsizei, format: PixelFormat, type: PixelType, pixels: Ptr[NoneType, ImmutAnyOrigin])
comptime glTexSubImage3D = fn (target: TextureTarget, level: GLint, xoffset: GLint, yoffset: GLint, zoffset: GLint, width: GLsizei, height: GLsizei, depth: GLsizei, format: PixelFormat, type: PixelType, pixels: Ptr[NoneType, ImmutAnyOrigin])
comptime glTextureBarrier = fn ()
comptime glTextureBuffer = fn (texture: GLuint, internalformat: SizedInternalFormat, buffer: GLuint)
comptime glTextureBufferRange = fn (texture: GLuint, internalformat: SizedInternalFormat, buffer: GLuint, offset: GLintptr, size: GLsizeiptr)
comptime glTextureParameterIiv = fn (texture: GLuint, pname: TextureParameterName, params: Ptr[GLint, ImmutAnyOrigin])
comptime glTextureParameterIuiv = fn (texture: GLuint, pname: TextureParameterName, params: Ptr[GLuint, ImmutAnyOrigin])
comptime glTextureParameterf = fn (texture: GLuint, pname: TextureParameterName, param: GLfloat)
comptime glTextureParameterfv = fn (texture: GLuint, pname: TextureParameterName, param: Ptr[GLfloat, ImmutAnyOrigin])
comptime glTextureParameteri = fn (texture: GLuint, pname: TextureParameterName, param: GLint)
comptime glTextureParameteriv = fn (texture: GLuint, pname: TextureParameterName, param: Ptr[GLint, ImmutAnyOrigin])
comptime glTextureStorage1D = fn (texture: GLuint, levels: GLsizei, internalformat: SizedInternalFormat, width: GLsizei)
comptime glTextureStorage2D = fn (texture: GLuint, levels: GLsizei, internalformat: SizedInternalFormat, width: GLsizei, height: GLsizei)
comptime glTextureStorage2DMultisample = fn (texture: GLuint, samples: GLsizei, internalformat: SizedInternalFormat, width: GLsizei, height: GLsizei, fixedsamplelocations: GLboolean)
comptime glTextureStorage3D = fn (texture: GLuint, levels: GLsizei, internalformat: SizedInternalFormat, width: GLsizei, height: GLsizei, depth: GLsizei)
comptime glTextureStorage3DMultisample = fn (texture: GLuint, samples: GLsizei, internalformat: SizedInternalFormat, width: GLsizei, height: GLsizei, depth: GLsizei, fixedsamplelocations: GLboolean)
comptime glTextureSubImage1D = fn (texture: GLuint, level: GLint, xoffset: GLint, width: GLsizei, format: PixelFormat, type: PixelType, pixels: Ptr[NoneType, ImmutAnyOrigin])
comptime glTextureSubImage2D = fn (texture: GLuint, level: GLint, xoffset: GLint, yoffset: GLint, width: GLsizei, height: GLsizei, format: PixelFormat, type: PixelType, pixels: Ptr[NoneType, ImmutAnyOrigin])
comptime glTextureSubImage3D = fn (texture: GLuint, level: GLint, xoffset: GLint, yoffset: GLint, zoffset: GLint, width: GLsizei, height: GLsizei, depth: GLsizei, format: PixelFormat, type: PixelType, pixels: Ptr[NoneType, ImmutAnyOrigin])
comptime glTextureView = fn (texture: GLuint, target: TextureTarget, origtexture: GLuint, internalformat: SizedInternalFormat, minlevel: GLuint, numlevels: GLuint, minlayer: GLuint, numlayers: GLuint)
comptime glTransformFeedbackBufferBase = fn (xfb: GLuint, index: GLuint, buffer: GLuint)
comptime glTransformFeedbackBufferRange = fn (xfb: GLuint, index: GLuint, buffer: GLuint, offset: GLintptr, size: GLsizeiptr)
comptime glTransformFeedbackVaryings = fn (program: GLuint, count: GLsizei, varyings: Ptr[Ptr[GLchar, ImmutAnyOrigin], ImmutAnyOrigin], buffer_mode: TransformFeedbackBufferMode)
comptime glUniform1d = fn (location: GLint, x: GLdouble)
comptime glUniform1dv = fn (location: GLint, count: GLsizei, value: Ptr[GLdouble, ImmutAnyOrigin])
comptime glUniform1f = fn (location: GLint, v0: GLfloat)
comptime glUniform1fv = fn (location: GLint, count: GLsizei, value: Ptr[GLfloat, ImmutAnyOrigin])
comptime glUniform1i = fn (location: GLint, v0: GLint)
comptime glUniform1iv = fn (location: GLint, count: GLsizei, value: Ptr[GLint, ImmutAnyOrigin])
comptime glUniform1ui = fn (location: GLint, v0: GLuint)
comptime glUniform1uiv = fn (location: GLint, count: GLsizei, value: Ptr[GLuint, ImmutAnyOrigin])
comptime glUniform2d = fn (location: GLint, x: GLdouble, y: GLdouble)
comptime glUniform2dv = fn (location: GLint, count: GLsizei, value: Ptr[GLdouble, ImmutAnyOrigin])
comptime glUniform2f = fn (location: GLint, v0: GLfloat, v1: GLfloat)
comptime glUniform2fv = fn (location: GLint, count: GLsizei, value: Ptr[GLfloat, ImmutAnyOrigin])
comptime glUniform2i = fn (location: GLint, v0: GLint, v1: GLint)
comptime glUniform2iv = fn (location: GLint, count: GLsizei, value: Ptr[GLint, ImmutAnyOrigin])
comptime glUniform2ui = fn (location: GLint, v0: GLuint, v1: GLuint)
comptime glUniform2uiv = fn (location: GLint, count: GLsizei, value: Ptr[GLuint, ImmutAnyOrigin])
comptime glUniform3d = fn (location: GLint, x: GLdouble, y: GLdouble, z: GLdouble)
comptime glUniform3dv = fn (location: GLint, count: GLsizei, value: Ptr[GLdouble, ImmutAnyOrigin])
comptime glUniform3f = fn (location: GLint, v0: GLfloat, v1: GLfloat, v2: GLfloat)
comptime glUniform3fv = fn (location: GLint, count: GLsizei, value: Ptr[GLfloat, ImmutAnyOrigin])
comptime glUniform3i = fn (location: GLint, v0: GLint, v1: GLint, v2: GLint)
comptime glUniform3iv = fn (location: GLint, count: GLsizei, value: Ptr[GLint, ImmutAnyOrigin])
comptime glUniform3ui = fn (location: GLint, v0: GLuint, v1: GLuint, v2: GLuint)
comptime glUniform3uiv = fn (location: GLint, count: GLsizei, value: Ptr[GLuint, ImmutAnyOrigin])
comptime glUniform4d = fn (location: GLint, x: GLdouble, y: GLdouble, z: GLdouble, w: GLdouble)
comptime glUniform4dv = fn (location: GLint, count: GLsizei, value: Ptr[GLdouble, ImmutAnyOrigin])
comptime glUniform4f = fn (location: GLint, v0: GLfloat, v1: GLfloat, v2: GLfloat, v3: GLfloat)
comptime glUniform4fv = fn (location: GLint, count: GLsizei, value: Ptr[GLfloat, ImmutAnyOrigin])
comptime glUniform4i = fn (location: GLint, v0: GLint, v1: GLint, v2: GLint, v3: GLint)
comptime glUniform4iv = fn (location: GLint, count: GLsizei, value: Ptr[GLint, ImmutAnyOrigin])
comptime glUniform4ui = fn (location: GLint, v0: GLuint, v1: GLuint, v2: GLuint, v3: GLuint)
comptime glUniform4uiv = fn (location: GLint, count: GLsizei, value: Ptr[GLuint, ImmutAnyOrigin])
comptime glUniformBlockBinding = fn (program: GLuint, uniform_block_index: GLuint, uniform_block_binding: GLuint)
comptime glUniformMatrix2dv = fn (location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLdouble, ImmutAnyOrigin])
comptime glUniformMatrix2fv = fn (location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLfloat, ImmutAnyOrigin])
comptime glUniformMatrix2x3dv = fn (location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLdouble, ImmutAnyOrigin])
comptime glUniformMatrix2x3fv = fn (location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLfloat, ImmutAnyOrigin])
comptime glUniformMatrix2x4dv = fn (location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLdouble, ImmutAnyOrigin])
comptime glUniformMatrix2x4fv = fn (location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLfloat, ImmutAnyOrigin])
comptime glUniformMatrix3dv = fn (location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLdouble, ImmutAnyOrigin])
comptime glUniformMatrix3fv = fn (location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLfloat, ImmutAnyOrigin])
comptime glUniformMatrix3x2dv = fn (location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLdouble, ImmutAnyOrigin])
comptime glUniformMatrix3x2fv = fn (location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLfloat, ImmutAnyOrigin])
comptime glUniformMatrix3x4dv = fn (location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLdouble, ImmutAnyOrigin])
comptime glUniformMatrix3x4fv = fn (location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLfloat, ImmutAnyOrigin])
comptime glUniformMatrix4dv = fn (location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLdouble, ImmutAnyOrigin])
comptime glUniformMatrix4fv = fn (location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLfloat, ImmutAnyOrigin])
comptime glUniformMatrix4x2dv = fn (location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLdouble, ImmutAnyOrigin])
comptime glUniformMatrix4x2fv = fn (location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLfloat, ImmutAnyOrigin])
comptime glUniformMatrix4x3dv = fn (location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLdouble, ImmutAnyOrigin])
comptime glUniformMatrix4x3fv = fn (location: GLint, count: GLsizei, transpose: GLboolean, value: Ptr[GLfloat, ImmutAnyOrigin])
comptime glUniformSubroutinesuiv = fn (shadertype: ShaderType, count: GLsizei, indices: Ptr[GLuint, ImmutAnyOrigin])
comptime glUnmapBuffer = fn (target: BufferTargetARB) -> GLboolean
comptime glUnmapNamedBuffer = fn (buffer: GLuint) -> GLboolean
comptime glUseProgram = fn (program: GLuint)
comptime glUseProgramStages = fn (pipeline: GLuint, stages: UseProgramStageMask, program: GLuint)
comptime glValidateProgram = fn (program: GLuint)
comptime glValidateProgramPipeline = fn (pipeline: GLuint)
comptime glVertexArrayAttribBinding = fn (vaobj: GLuint, attribindex: GLuint, bindingindex: GLuint)
comptime glVertexArrayAttribFormat = fn (vaobj: GLuint, attribindex: GLuint, size: GLint, type: VertexAttribType, normalized: GLboolean, relativeoffset: GLuint)
comptime glVertexArrayAttribIFormat = fn (vaobj: GLuint, attribindex: GLuint, size: GLint, type: VertexAttribIType, relativeoffset: GLuint)
comptime glVertexArrayAttribLFormat = fn (vaobj: GLuint, attribindex: GLuint, size: GLint, type: VertexAttribLType, relativeoffset: GLuint)
comptime glVertexArrayBindingDivisor = fn (vaobj: GLuint, bindingindex: GLuint, divisor: GLuint)
comptime glVertexArrayElementBuffer = fn (vaobj: GLuint, buffer: GLuint)
comptime glVertexArrayVertexBuffer = fn (vaobj: GLuint, bindingindex: GLuint, buffer: GLuint, offset: GLintptr, stride: GLsizei)
comptime glVertexArrayVertexBuffers = fn (vaobj: GLuint, first: GLuint, count: GLsizei, buffers: Ptr[GLuint, ImmutAnyOrigin], offsets: Ptr[GLintptr, ImmutAnyOrigin], strides: Ptr[GLsizei, ImmutAnyOrigin])
comptime glVertexAttrib1d = fn (index: GLuint, x: GLdouble)
comptime glVertexAttrib1dv = fn (index: GLuint, v: Ptr[GLdouble, ImmutAnyOrigin])
comptime glVertexAttrib1f = fn (index: GLuint, x: GLfloat)
comptime glVertexAttrib1fv = fn (index: GLuint, v: Ptr[GLfloat, ImmutAnyOrigin])
comptime glVertexAttrib1s = fn (index: GLuint, x: GLshort)
comptime glVertexAttrib1sv = fn (index: GLuint, v: Ptr[GLshort, ImmutAnyOrigin])
comptime glVertexAttrib2d = fn (index: GLuint, x: GLdouble, y: GLdouble)
comptime glVertexAttrib2dv = fn (index: GLuint, v: Ptr[GLdouble, ImmutAnyOrigin])
comptime glVertexAttrib2f = fn (index: GLuint, x: GLfloat, y: GLfloat)
comptime glVertexAttrib2fv = fn (index: GLuint, v: Ptr[GLfloat, ImmutAnyOrigin])
comptime glVertexAttrib2s = fn (index: GLuint, x: GLshort, y: GLshort)
comptime glVertexAttrib2sv = fn (index: GLuint, v: Ptr[GLshort, ImmutAnyOrigin])
comptime glVertexAttrib3d = fn (index: GLuint, x: GLdouble, y: GLdouble, z: GLdouble)
comptime glVertexAttrib3dv = fn (index: GLuint, v: Ptr[GLdouble, ImmutAnyOrigin])
comptime glVertexAttrib3f = fn (index: GLuint, x: GLfloat, y: GLfloat, z: GLfloat)
comptime glVertexAttrib3fv = fn (index: GLuint, v: Ptr[GLfloat, ImmutAnyOrigin])
comptime glVertexAttrib3s = fn (index: GLuint, x: GLshort, y: GLshort, z: GLshort)
comptime glVertexAttrib3sv = fn (index: GLuint, v: Ptr[GLshort, ImmutAnyOrigin])
comptime glVertexAttrib4Nbv = fn (index: GLuint, v: Ptr[GLbyte, ImmutAnyOrigin])
comptime glVertexAttrib4Niv = fn (index: GLuint, v: Ptr[GLint, ImmutAnyOrigin])
comptime glVertexAttrib4Nsv = fn (index: GLuint, v: Ptr[GLshort, ImmutAnyOrigin])
comptime glVertexAttrib4Nub = fn (index: GLuint, x: GLubyte, y: GLubyte, z: GLubyte, w: GLubyte)
comptime glVertexAttrib4Nubv = fn (index: GLuint, v: Ptr[GLubyte, ImmutAnyOrigin])
comptime glVertexAttrib4Nuiv = fn (index: GLuint, v: Ptr[GLuint, ImmutAnyOrigin])
comptime glVertexAttrib4Nusv = fn (index: GLuint, v: Ptr[GLushort, ImmutAnyOrigin])
comptime glVertexAttrib4bv = fn (index: GLuint, v: Ptr[GLbyte, ImmutAnyOrigin])
comptime glVertexAttrib4d = fn (index: GLuint, x: GLdouble, y: GLdouble, z: GLdouble, w: GLdouble)
comptime glVertexAttrib4dv = fn (index: GLuint, v: Ptr[GLdouble, ImmutAnyOrigin])
comptime glVertexAttrib4f = fn (index: GLuint, x: GLfloat, y: GLfloat, z: GLfloat, w: GLfloat)
comptime glVertexAttrib4fv = fn (index: GLuint, v: Ptr[GLfloat, ImmutAnyOrigin])
comptime glVertexAttrib4iv = fn (index: GLuint, v: Ptr[GLint, ImmutAnyOrigin])
comptime glVertexAttrib4s = fn (index: GLuint, x: GLshort, y: GLshort, z: GLshort, w: GLshort)
comptime glVertexAttrib4sv = fn (index: GLuint, v: Ptr[GLshort, ImmutAnyOrigin])
comptime glVertexAttrib4ubv = fn (index: GLuint, v: Ptr[GLubyte, ImmutAnyOrigin])
comptime glVertexAttrib4uiv = fn (index: GLuint, v: Ptr[GLuint, ImmutAnyOrigin])
comptime glVertexAttrib4usv = fn (index: GLuint, v: Ptr[GLushort, ImmutAnyOrigin])
comptime glVertexAttribBinding = fn (attribindex: GLuint, bindingindex: GLuint)
comptime glVertexAttribDivisor = fn (index: GLuint, divisor: GLuint)
comptime glVertexAttribFormat = fn (attribindex: GLuint, size: GLint, type: VertexAttribType, normalized: GLboolean, relativeoffset: GLuint)
comptime glVertexAttribI1i = fn (index: GLuint, x: GLint)
comptime glVertexAttribI1iv = fn (index: GLuint, v: Ptr[GLint, ImmutAnyOrigin])
comptime glVertexAttribI1ui = fn (index: GLuint, x: GLuint)
comptime glVertexAttribI1uiv = fn (index: GLuint, v: Ptr[GLuint, ImmutAnyOrigin])
comptime glVertexAttribI2i = fn (index: GLuint, x: GLint, y: GLint)
comptime glVertexAttribI2iv = fn (index: GLuint, v: Ptr[GLint, ImmutAnyOrigin])
comptime glVertexAttribI2ui = fn (index: GLuint, x: GLuint, y: GLuint)
comptime glVertexAttribI2uiv = fn (index: GLuint, v: Ptr[GLuint, ImmutAnyOrigin])
comptime glVertexAttribI3i = fn (index: GLuint, x: GLint, y: GLint, z: GLint)
comptime glVertexAttribI3iv = fn (index: GLuint, v: Ptr[GLint, ImmutAnyOrigin])
comptime glVertexAttribI3ui = fn (index: GLuint, x: GLuint, y: GLuint, z: GLuint)
comptime glVertexAttribI3uiv = fn (index: GLuint, v: Ptr[GLuint, ImmutAnyOrigin])
comptime glVertexAttribI4bv = fn (index: GLuint, v: Ptr[GLbyte, ImmutAnyOrigin])
comptime glVertexAttribI4i = fn (index: GLuint, x: GLint, y: GLint, z: GLint, w: GLint)
comptime glVertexAttribI4iv = fn (index: GLuint, v: Ptr[GLint, ImmutAnyOrigin])
comptime glVertexAttribI4sv = fn (index: GLuint, v: Ptr[GLshort, ImmutAnyOrigin])
comptime glVertexAttribI4ubv = fn (index: GLuint, v: Ptr[GLubyte, ImmutAnyOrigin])
comptime glVertexAttribI4ui = fn (index: GLuint, x: GLuint, y: GLuint, z: GLuint, w: GLuint)
comptime glVertexAttribI4uiv = fn (index: GLuint, v: Ptr[GLuint, ImmutAnyOrigin])
comptime glVertexAttribI4usv = fn (index: GLuint, v: Ptr[GLushort, ImmutAnyOrigin])
comptime glVertexAttribIFormat = fn (attribindex: GLuint, size: GLint, type: VertexAttribIType, relativeoffset: GLuint)
comptime glVertexAttribIPointer = fn (index: GLuint, size: GLint, type: VertexAttribIType, stride: GLsizei, pointer: Ptr[NoneType, ImmutAnyOrigin])
comptime glVertexAttribL1d = fn (index: GLuint, x: GLdouble)
comptime glVertexAttribL1dv = fn (index: GLuint, v: Ptr[GLdouble, ImmutAnyOrigin])
comptime glVertexAttribL2d = fn (index: GLuint, x: GLdouble, y: GLdouble)
comptime glVertexAttribL2dv = fn (index: GLuint, v: Ptr[GLdouble, ImmutAnyOrigin])
comptime glVertexAttribL3d = fn (index: GLuint, x: GLdouble, y: GLdouble, z: GLdouble)
comptime glVertexAttribL3dv = fn (index: GLuint, v: Ptr[GLdouble, ImmutAnyOrigin])
comptime glVertexAttribL4d = fn (index: GLuint, x: GLdouble, y: GLdouble, z: GLdouble, w: GLdouble)
comptime glVertexAttribL4dv = fn (index: GLuint, v: Ptr[GLdouble, ImmutAnyOrigin])
comptime glVertexAttribLFormat = fn (attribindex: GLuint, size: GLint, type: VertexAttribLType, relativeoffset: GLuint)
comptime glVertexAttribLPointer = fn (index: GLuint, size: GLint, type: VertexAttribLType, stride: GLsizei, pointer: Ptr[NoneType, ImmutAnyOrigin])
comptime glVertexAttribP1ui = fn (index: GLuint, type: VertexAttribPointerType, normalized: GLboolean, value: GLuint)
comptime glVertexAttribP1uiv = fn (index: GLuint, type: VertexAttribPointerType, normalized: GLboolean, value: Ptr[GLuint, ImmutAnyOrigin])
comptime glVertexAttribP2ui = fn (index: GLuint, type: VertexAttribPointerType, normalized: GLboolean, value: GLuint)
comptime glVertexAttribP2uiv = fn (index: GLuint, type: VertexAttribPointerType, normalized: GLboolean, value: Ptr[GLuint, ImmutAnyOrigin])
comptime glVertexAttribP3ui = fn (index: GLuint, type: VertexAttribPointerType, normalized: GLboolean, value: GLuint)
comptime glVertexAttribP3uiv = fn (index: GLuint, type: VertexAttribPointerType, normalized: GLboolean, value: Ptr[GLuint, ImmutAnyOrigin])
comptime glVertexAttribP4ui = fn (index: GLuint, type: VertexAttribPointerType, normalized: GLboolean, value: GLuint)
comptime glVertexAttribP4uiv = fn (index: GLuint, type: VertexAttribPointerType, normalized: GLboolean, value: Ptr[GLuint, ImmutAnyOrigin])
comptime glVertexAttribPointer = fn (index: GLuint, size: GLint, type: VertexAttribPointerType, normalized: GLboolean, stride: GLsizei, pointer: Ptr[NoneType, ImmutAnyOrigin])
comptime glVertexBindingDivisor = fn (bindingindex: GLuint, divisor: GLuint)
comptime glVertexP2ui = fn (type: VertexPointerType, value: GLuint)
comptime glVertexP2uiv = fn (type: VertexPointerType, value: Ptr[GLuint, ImmutAnyOrigin])
comptime glVertexP3ui = fn (type: VertexPointerType, value: GLuint)
comptime glVertexP3uiv = fn (type: VertexPointerType, value: Ptr[GLuint, ImmutAnyOrigin])
comptime glVertexP4ui = fn (type: VertexPointerType, value: GLuint)
comptime glVertexP4uiv = fn (type: VertexPointerType, value: Ptr[GLuint, ImmutAnyOrigin])
comptime glViewport = fn (x: GLint, y: GLint, width: GLsizei, height: GLsizei)
comptime glViewportArrayv = fn (first: GLuint, count: GLsizei, v: Ptr[GLfloat, ImmutAnyOrigin])
comptime glViewportIndexedf = fn (index: GLuint, x: GLfloat, y: GLfloat, w: GLfloat, h: GLfloat)
comptime glViewportIndexedfv = fn (index: GLuint, v: Ptr[GLfloat, ImmutAnyOrigin])
comptime glWaitSync = fn (sync: GLsync, flags: SyncBehaviorFlags, timeout: GLuint64)


fn active_shader_program(pipeline: GLuint, program: GLuint) raises:
    return get_fn[glActiveShaderProgram, "glActiveShaderProgram"]()(pipeline, program)


fn active_texture(texture: TextureUnit) raises:
    return get_fn[glActiveTexture, "glActiveTexture"]()(texture)


fn attach_shader(program: GLuint, shader: GLuint) raises:
    return get_fn[glAttachShader, "glAttachShader"]()(program, shader)


fn begin_conditional_render(id: GLuint, mode: ConditionalRenderMode) raises:
    return get_fn[glBeginConditionalRender, "glBeginConditionalRender"]()(id, mode)


fn begin_query(target: QueryTarget, id: GLuint) raises:
    return get_fn[glBeginQuery, "glBeginQuery"]()(target, id)


fn begin_query_indexed(target: QueryTarget, index: GLuint, id: GLuint) raises:
    return get_fn[glBeginQueryIndexed, "glBeginQueryIndexed"]()(target, index, id)


fn begin_transform_feedback(primitive_mode: PrimitiveType) raises:
    return get_fn[glBeginTransformFeedback, "glBeginTransformFeedback"]()(primitive_mode)


fn bind_attrib_location(program: GLuint, index: GLuint, var name: String) raises:
    return get_fn[glBindAttribLocation, "glBindAttribLocation"]()(program, index, name.as_c_string_slice().unsafe_ptr().as_any_origin())


fn bind_buffer(target: BufferTargetARB, buffer: GLuint) raises:
    return get_fn[glBindBuffer, "glBindBuffer"]()(target, buffer)


fn bind_buffer_base(target: BufferTargetARB, index: GLuint, buffer: GLuint) raises:
    return get_fn[glBindBufferBase, "glBindBufferBase"]()(target, index, buffer)


fn bind_buffer_range(target: BufferTargetARB, index: GLuint, buffer: GLuint, offset: GLintptr, size: GLsizeiptr) raises:
    return get_fn[glBindBufferRange, "glBindBufferRange"]()(target, index, buffer, offset, size)


fn bind_buffers_base(target: BufferTargetARB, first: GLuint, count: GLsizei, buffers: Ptr[GLuint, ImmutAnyOrigin]) raises:
    return get_fn[glBindBuffersBase, "glBindBuffersBase"]()(target, first, count, buffers)


fn bind_buffers_range(target: BufferTargetARB, first: GLuint, count: GLsizei, buffers: Ptr[GLuint, ImmutAnyOrigin], offsets: Ptr[GLintptr, ImmutAnyOrigin], sizes: Ptr[GLsizeiptr, ImmutAnyOrigin]) raises:
    return get_fn[glBindBuffersRange, "glBindBuffersRange"]()(target, first, count, buffers, offsets, sizes)


fn bind_frag_data_location(program: GLuint, color: GLuint, var name: String) raises:
    return get_fn[glBindFragDataLocation, "glBindFragDataLocation"]()(program, color, name.as_c_string_slice().unsafe_ptr().as_any_origin())


fn bind_frag_data_location_indexed(program: GLuint, color_number: GLuint, index: GLuint, var name: String) raises:
    return get_fn[glBindFragDataLocationIndexed, "glBindFragDataLocationIndexed"]()(program, color_number, index, name.as_c_string_slice().unsafe_ptr().as_any_origin())


fn bind_framebuffer(target: FramebufferTarget, framebuffer: GLuint) raises:
    return get_fn[glBindFramebuffer, "glBindFramebuffer"]()(target, framebuffer)


fn bind_image_texture(unit: GLuint, texture: GLuint, level: GLint, layered: Bool, layer: GLint, access: BufferAccessARB, format: InternalFormat) raises:
    return get_fn[glBindImageTexture, "glBindImageTexture"]()(unit, texture, level, GLboolean(Int(layered)), layer, access, format)


fn bind_image_textures(first: GLuint, count: GLsizei, textures: Ptr[GLuint, ImmutAnyOrigin]) raises:
    return get_fn[glBindImageTextures, "glBindImageTextures"]()(first, count, textures)


fn bind_program_pipeline(pipeline: GLuint) raises:
    return get_fn[glBindProgramPipeline, "glBindProgramPipeline"]()(pipeline)


fn bind_renderbuffer(target: RenderbufferTarget, renderbuffer: GLuint) raises:
    return get_fn[glBindRenderbuffer, "glBindRenderbuffer"]()(target, renderbuffer)


fn bind_sampler(unit: GLuint, sampler: GLuint) raises:
    return get_fn[glBindSampler, "glBindSampler"]()(unit, sampler)


fn bind_samplers(first: GLuint, count: GLsizei, samplers: Ptr[GLuint, ImmutAnyOrigin]) raises:
    return get_fn[glBindSamplers, "glBindSamplers"]()(first, count, samplers)


fn bind_texture(target: TextureTarget, texture: GLuint) raises:
    return get_fn[glBindTexture, "glBindTexture"]()(target, texture)


fn bind_texture_unit(unit: GLuint, texture: GLuint) raises:
    return get_fn[glBindTextureUnit, "glBindTextureUnit"]()(unit, texture)


fn bind_textures(first: GLuint, count: GLsizei, textures: Ptr[GLuint, ImmutAnyOrigin]) raises:
    return get_fn[glBindTextures, "glBindTextures"]()(first, count, textures)


fn bind_transform_feedback(target: BindTransformFeedbackTarget, id: GLuint) raises:
    return get_fn[glBindTransformFeedback, "glBindTransformFeedback"]()(target, id)


fn bind_vertex_array(array: GLuint) raises:
    return get_fn[glBindVertexArray, "glBindVertexArray"]()(array)


fn bind_vertex_buffer(bindingindex: GLuint, buffer: GLuint, offset: GLintptr, stride: GLsizei) raises:
    return get_fn[glBindVertexBuffer, "glBindVertexBuffer"]()(bindingindex, buffer, offset, stride)


fn bind_vertex_buffers(first: GLuint, count: GLsizei, buffers: Ptr[GLuint, ImmutAnyOrigin], offsets: Ptr[GLintptr, ImmutAnyOrigin], strides: Ptr[GLsizei, ImmutAnyOrigin]) raises:
    return get_fn[glBindVertexBuffers, "glBindVertexBuffers"]()(first, count, buffers, offsets, strides)


fn blend_color(red: GLfloat, green: GLfloat, blue: GLfloat, alpha: GLfloat) raises:
    return get_fn[glBlendColor, "glBlendColor"]()(red, green, blue, alpha)


fn blend_equation(mode: BlendEquationModeEXT) raises:
    return get_fn[glBlendEquation, "glBlendEquation"]()(mode)


fn blend_equation_separate(mode_rgb: BlendEquationModeEXT, mode_alpha: BlendEquationModeEXT) raises:
    return get_fn[glBlendEquationSeparate, "glBlendEquationSeparate"]()(mode_rgb, mode_alpha)


fn blend_equation_separatei(buf: GLuint, mode_rgb: BlendEquationModeEXT, mode_alpha: BlendEquationModeEXT) raises:
    return get_fn[glBlendEquationSeparatei, "glBlendEquationSeparatei"]()(buf, mode_rgb, mode_alpha)


fn blend_equationi(buf: GLuint, mode: BlendEquationModeEXT) raises:
    return get_fn[glBlendEquationi, "glBlendEquationi"]()(buf, mode)


fn blend_func(sfactor: BlendingFactor, dfactor: BlendingFactor) raises:
    return get_fn[glBlendFunc, "glBlendFunc"]()(sfactor, dfactor)


fn blend_func_separate(sfactor_rgb: BlendingFactor, dfactor_rgb: BlendingFactor, sfactor_alpha: BlendingFactor, dfactor_alpha: BlendingFactor) raises:
    return get_fn[glBlendFuncSeparate, "glBlendFuncSeparate"]()(sfactor_rgb, dfactor_rgb, sfactor_alpha, dfactor_alpha)


fn blend_func_separatei(buf: GLuint, src_rgb: BlendingFactor, dst_rgb: BlendingFactor, src_alpha: BlendingFactor, dst_alpha: BlendingFactor) raises:
    return get_fn[glBlendFuncSeparatei, "glBlendFuncSeparatei"]()(buf, src_rgb, dst_rgb, src_alpha, dst_alpha)


fn blend_funci(buf: GLuint, src: BlendingFactor, dst: BlendingFactor) raises:
    return get_fn[glBlendFunci, "glBlendFunci"]()(buf, src, dst)


fn blit_framebuffer(src_x0: GLint, src_y0: GLint, src_x1: GLint, src_y1: GLint, dst_x0: GLint, dst_y0: GLint, dst_x1: GLint, dst_y1: GLint, mask: ClearBufferMask, filter: BlitFramebufferFilter) raises:
    return get_fn[glBlitFramebuffer, "glBlitFramebuffer"]()(src_x0, src_y0, src_x1, src_y1, dst_x0, dst_y0, dst_x1, dst_y1, mask, filter)


fn blit_named_framebuffer(read_framebuffer: GLuint, draw_framebuffer: GLuint, src_x0: GLint, src_y0: GLint, src_x1: GLint, src_y1: GLint, dst_x0: GLint, dst_y0: GLint, dst_x1: GLint, dst_y1: GLint, mask: ClearBufferMask, filter: BlitFramebufferFilter) raises:
    return get_fn[glBlitNamedFramebuffer, "glBlitNamedFramebuffer"]()(read_framebuffer, draw_framebuffer, src_x0, src_y0, src_x1, src_y1, dst_x0, dst_y0, dst_x1, dst_y1, mask, filter)


fn buffer_data(target: BufferTargetARB, size: GLsizeiptr, data: Ptr[NoneType, ImmutAnyOrigin], usage: BufferUsageARB) raises:
    return get_fn[glBufferData, "glBufferData"]()(target, size, data, usage)


fn buffer_storage(target: BufferStorageTarget, size: GLsizeiptr, data: Ptr[NoneType, ImmutAnyOrigin], flags: BufferStorageMask) raises:
    return get_fn[glBufferStorage, "glBufferStorage"]()(target, size, data, flags)


fn buffer_sub_data(target: BufferTargetARB, offset: GLintptr, size: GLsizeiptr, data: Ptr[NoneType, ImmutAnyOrigin]) raises:
    return get_fn[glBufferSubData, "glBufferSubData"]()(target, offset, size, data)


fn check_framebuffer_status(target: FramebufferTarget) raises -> FramebufferStatus:
    return get_fn[glCheckFramebufferStatus, "glCheckFramebufferStatus"]()(target)


fn check_named_framebuffer_status(framebuffer: GLuint, target: FramebufferTarget) raises -> FramebufferStatus:
    return get_fn[glCheckNamedFramebufferStatus, "glCheckNamedFramebufferStatus"]()(framebuffer, target)


fn clamp_color(target: ClampColorTargetARB, clamp: ClampColorModeARB) raises:
    return get_fn[glClampColor, "glClampColor"]()(target, clamp)


fn clear(mask: ClearBufferMask) raises:
    return get_fn[glClear, "glClear"]()(mask)


fn clear_buffer_data(target: BufferStorageTarget, internalformat: SizedInternalFormat, format: PixelFormat, type: PixelType, data: Ptr[NoneType, ImmutAnyOrigin]) raises:
    return get_fn[glClearBufferData, "glClearBufferData"]()(target, internalformat, format, type, data)


fn clear_buffer_sub_data(target: BufferTargetARB, internalformat: SizedInternalFormat, offset: GLintptr, size: GLsizeiptr, format: PixelFormat, type: PixelType, data: Ptr[NoneType, ImmutAnyOrigin]) raises:
    return get_fn[glClearBufferSubData, "glClearBufferSubData"]()(target, internalformat, offset, size, format, type, data)


fn clear_bufferfi(buffer: Buffer, drawbuffer: GLint, depth: GLfloat, stencil: GLint) raises:
    return get_fn[glClearBufferfi, "glClearBufferfi"]()(buffer, drawbuffer, depth, stencil)


fn clear_bufferfv(buffer: Buffer, drawbuffer: GLint, value: Ptr[GLfloat, ImmutAnyOrigin]) raises:
    return get_fn[glClearBufferfv, "glClearBufferfv"]()(buffer, drawbuffer, value)


fn clear_bufferiv(buffer: Buffer, drawbuffer: GLint, value: Ptr[GLint, ImmutAnyOrigin]) raises:
    return get_fn[glClearBufferiv, "glClearBufferiv"]()(buffer, drawbuffer, value)


fn clear_bufferuiv(buffer: Buffer, drawbuffer: GLint, value: Ptr[GLuint, ImmutAnyOrigin]) raises:
    return get_fn[glClearBufferuiv, "glClearBufferuiv"]()(buffer, drawbuffer, value)


fn clear_color(red: GLfloat, green: GLfloat, blue: GLfloat, alpha: GLfloat) raises:
    return get_fn[glClearColor, "glClearColor"]()(red, green, blue, alpha)


fn clear_depth(depth: GLdouble) raises:
    return get_fn[glClearDepth, "glClearDepth"]()(depth)


fn clear_depthf(d: GLfloat) raises:
    return get_fn[glClearDepthf, "glClearDepthf"]()(d)


fn clear_named_buffer_data(buffer: GLuint, internalformat: SizedInternalFormat, format: PixelFormat, type: PixelType, data: Ptr[NoneType, ImmutAnyOrigin]) raises:
    return get_fn[glClearNamedBufferData, "glClearNamedBufferData"]()(buffer, internalformat, format, type, data)


fn clear_named_buffer_sub_data(buffer: GLuint, internalformat: SizedInternalFormat, offset: GLintptr, size: GLsizeiptr, format: PixelFormat, type: PixelType, data: Ptr[NoneType, ImmutAnyOrigin]) raises:
    return get_fn[glClearNamedBufferSubData, "glClearNamedBufferSubData"]()(buffer, internalformat, offset, size, format, type, data)


fn clear_named_framebufferfi(framebuffer: GLuint, buffer: Buffer, drawbuffer: GLint, depth: GLfloat, stencil: GLint) raises:
    return get_fn[glClearNamedFramebufferfi, "glClearNamedFramebufferfi"]()(framebuffer, buffer, drawbuffer, depth, stencil)


fn clear_named_framebufferfv(framebuffer: GLuint, buffer: Buffer, drawbuffer: GLint, value: Ptr[GLfloat, ImmutAnyOrigin]) raises:
    return get_fn[glClearNamedFramebufferfv, "glClearNamedFramebufferfv"]()(framebuffer, buffer, drawbuffer, value)


fn clear_named_framebufferiv(framebuffer: GLuint, buffer: Buffer, drawbuffer: GLint, value: Ptr[GLint, ImmutAnyOrigin]) raises:
    return get_fn[glClearNamedFramebufferiv, "glClearNamedFramebufferiv"]()(framebuffer, buffer, drawbuffer, value)


fn clear_named_framebufferuiv(framebuffer: GLuint, buffer: Buffer, drawbuffer: GLint, value: Ptr[GLuint, ImmutAnyOrigin]) raises:
    return get_fn[glClearNamedFramebufferuiv, "glClearNamedFramebufferuiv"]()(framebuffer, buffer, drawbuffer, value)


fn clear_stencil(s: GLint) raises:
    return get_fn[glClearStencil, "glClearStencil"]()(s)


fn clear_tex_image(texture: GLuint, level: GLint, format: PixelFormat, type: PixelType, data: Ptr[NoneType, ImmutAnyOrigin]) raises:
    return get_fn[glClearTexImage, "glClearTexImage"]()(texture, level, format, type, data)


fn clear_tex_sub_image(texture: GLuint, level: GLint, xoffset: GLint, yoffset: GLint, zoffset: GLint, width: GLsizei, height: GLsizei, depth: GLsizei, format: PixelFormat, type: PixelType, data: Ptr[NoneType, ImmutAnyOrigin]) raises:
    return get_fn[glClearTexSubImage, "glClearTexSubImage"]()(texture, level, xoffset, yoffset, zoffset, width, height, depth, format, type, data)


fn client_wait_sync(sync: GLsync, flags: SyncObjectMask, timeout: GLuint64) raises -> SyncStatus:
    return get_fn[glClientWaitSync, "glClientWaitSync"]()(sync, flags, timeout)


fn clip_control(origin: ClipControlOrigin, depth: ClipControlDepth) raises:
    return get_fn[glClipControl, "glClipControl"]()(origin, depth)


fn color_mask(red: Bool, green: Bool, blue: Bool, alpha: Bool) raises:
    return get_fn[glColorMask, "glColorMask"]()(GLboolean(Int(red)), GLboolean(Int(green)), GLboolean(Int(blue)), GLboolean(Int(alpha)))


fn color_maski(index: GLuint, r: Bool, g: Bool, b: Bool, a: Bool) raises:
    return get_fn[glColorMaski, "glColorMaski"]()(index, GLboolean(Int(r)), GLboolean(Int(g)), GLboolean(Int(b)), GLboolean(Int(a)))


fn color_p3ui(type: ColorPointerType, color: GLuint) raises:
    return get_fn[glColorP3ui, "glColorP3ui"]()(type, color)


fn color_p3uiv(type: ColorPointerType, color: Ptr[GLuint, ImmutAnyOrigin]) raises:
    return get_fn[glColorP3uiv, "glColorP3uiv"]()(type, color)


fn color_p4ui(type: ColorPointerType, color: GLuint) raises:
    return get_fn[glColorP4ui, "glColorP4ui"]()(type, color)


fn color_p4uiv(type: ColorPointerType, color: Ptr[GLuint, ImmutAnyOrigin]) raises:
    return get_fn[glColorP4uiv, "glColorP4uiv"]()(type, color)


fn compile_shader(shader: GLuint) raises:
    return get_fn[glCompileShader, "glCompileShader"]()(shader)


fn compressed_tex_image_1d(target: TextureTarget, level: GLint, internalformat: InternalFormat, width: GLsizei, border: GLint, image_size: GLsizei, data: Ptr[NoneType, ImmutAnyOrigin]) raises:
    return get_fn[glCompressedTexImage1D, "glCompressedTexImage1D"]()(target, level, internalformat, width, border, image_size, data)


fn compressed_tex_image_2d(target: TextureTarget, level: GLint, internalformat: InternalFormat, width: GLsizei, height: GLsizei, border: GLint, image_size: GLsizei, data: Ptr[NoneType, ImmutAnyOrigin]) raises:
    return get_fn[glCompressedTexImage2D, "glCompressedTexImage2D"]()(target, level, internalformat, width, height, border, image_size, data)


fn compressed_tex_image_3d(target: TextureTarget, level: GLint, internalformat: InternalFormat, width: GLsizei, height: GLsizei, depth: GLsizei, border: GLint, image_size: GLsizei, data: Ptr[NoneType, ImmutAnyOrigin]) raises:
    return get_fn[glCompressedTexImage3D, "glCompressedTexImage3D"]()(target, level, internalformat, width, height, depth, border, image_size, data)


fn compressed_tex_sub_image_1d(target: TextureTarget, level: GLint, xoffset: GLint, width: GLsizei, format: InternalFormat, image_size: GLsizei, data: Ptr[NoneType, ImmutAnyOrigin]) raises:
    return get_fn[glCompressedTexSubImage1D, "glCompressedTexSubImage1D"]()(target, level, xoffset, width, format, image_size, data)


fn compressed_tex_sub_image_2d(target: TextureTarget, level: GLint, xoffset: GLint, yoffset: GLint, width: GLsizei, height: GLsizei, format: InternalFormat, image_size: GLsizei, data: Ptr[NoneType, ImmutAnyOrigin]) raises:
    return get_fn[glCompressedTexSubImage2D, "glCompressedTexSubImage2D"]()(target, level, xoffset, yoffset, width, height, format, image_size, data)


fn compressed_tex_sub_image_3d(target: TextureTarget, level: GLint, xoffset: GLint, yoffset: GLint, zoffset: GLint, width: GLsizei, height: GLsizei, depth: GLsizei, format: InternalFormat, image_size: GLsizei, data: Ptr[NoneType, ImmutAnyOrigin]) raises:
    return get_fn[glCompressedTexSubImage3D, "glCompressedTexSubImage3D"]()(target, level, xoffset, yoffset, zoffset, width, height, depth, format, image_size, data)


fn compressed_texture_sub_image_1d(texture: GLuint, level: GLint, xoffset: GLint, width: GLsizei, format: InternalFormat, image_size: GLsizei, data: Ptr[NoneType, ImmutAnyOrigin]) raises:
    return get_fn[glCompressedTextureSubImage1D, "glCompressedTextureSubImage1D"]()(texture, level, xoffset, width, format, image_size, data)


fn compressed_texture_sub_image_2d(texture: GLuint, level: GLint, xoffset: GLint, yoffset: GLint, width: GLsizei, height: GLsizei, format: InternalFormat, image_size: GLsizei, data: Ptr[NoneType, ImmutAnyOrigin]) raises:
    return get_fn[glCompressedTextureSubImage2D, "glCompressedTextureSubImage2D"]()(texture, level, xoffset, yoffset, width, height, format, image_size, data)


fn compressed_texture_sub_image_3d(texture: GLuint, level: GLint, xoffset: GLint, yoffset: GLint, zoffset: GLint, width: GLsizei, height: GLsizei, depth: GLsizei, format: InternalFormat, image_size: GLsizei, data: Ptr[NoneType, ImmutAnyOrigin]) raises:
    return get_fn[glCompressedTextureSubImage3D, "glCompressedTextureSubImage3D"]()(texture, level, xoffset, yoffset, zoffset, width, height, depth, format, image_size, data)


fn copy_buffer_sub_data(read_target: CopyBufferSubDataTarget, write_target: CopyBufferSubDataTarget, read_offset: GLintptr, write_offset: GLintptr, size: GLsizeiptr) raises:
    return get_fn[glCopyBufferSubData, "glCopyBufferSubData"]()(read_target, write_target, read_offset, write_offset, size)


fn copy_image_sub_data(src_name: GLuint, src_target: CopyImageSubDataTarget, src_level: GLint, src_x: GLint, src_y: GLint, src_z: GLint, dst_name: GLuint, dst_target: CopyImageSubDataTarget, dst_level: GLint, dst_x: GLint, dst_y: GLint, dst_z: GLint, src_width: GLsizei, src_height: GLsizei, src_depth: GLsizei) raises:
    return get_fn[glCopyImageSubData, "glCopyImageSubData"]()(src_name, src_target, src_level, src_x, src_y, src_z, dst_name, dst_target, dst_level, dst_x, dst_y, dst_z, src_width, src_height, src_depth)


fn copy_named_buffer_sub_data(read_buffer: GLuint, write_buffer: GLuint, read_offset: GLintptr, write_offset: GLintptr, size: GLsizeiptr) raises:
    return get_fn[glCopyNamedBufferSubData, "glCopyNamedBufferSubData"]()(read_buffer, write_buffer, read_offset, write_offset, size)


fn copy_tex_image_1d(target: TextureTarget, level: GLint, internalformat: InternalFormat, x: GLint, y: GLint, width: GLsizei, border: GLint) raises:
    return get_fn[glCopyTexImage1D, "glCopyTexImage1D"]()(target, level, internalformat, x, y, width, border)


fn copy_tex_image_2d(target: TextureTarget, level: GLint, internalformat: InternalFormat, x: GLint, y: GLint, width: GLsizei, height: GLsizei, border: GLint) raises:
    return get_fn[glCopyTexImage2D, "glCopyTexImage2D"]()(target, level, internalformat, x, y, width, height, border)


fn copy_tex_sub_image_1d(target: TextureTarget, level: GLint, xoffset: GLint, x: GLint, y: GLint, width: GLsizei) raises:
    return get_fn[glCopyTexSubImage1D, "glCopyTexSubImage1D"]()(target, level, xoffset, x, y, width)


fn copy_tex_sub_image_2d(target: TextureTarget, level: GLint, xoffset: GLint, yoffset: GLint, x: GLint, y: GLint, width: GLsizei, height: GLsizei) raises:
    return get_fn[glCopyTexSubImage2D, "glCopyTexSubImage2D"]()(target, level, xoffset, yoffset, x, y, width, height)


fn copy_tex_sub_image_3d(target: TextureTarget, level: GLint, xoffset: GLint, yoffset: GLint, zoffset: GLint, x: GLint, y: GLint, width: GLsizei, height: GLsizei) raises:
    return get_fn[glCopyTexSubImage3D, "glCopyTexSubImage3D"]()(target, level, xoffset, yoffset, zoffset, x, y, width, height)


fn copy_texture_sub_image_1d(texture: GLuint, level: GLint, xoffset: GLint, x: GLint, y: GLint, width: GLsizei) raises:
    return get_fn[glCopyTextureSubImage1D, "glCopyTextureSubImage1D"]()(texture, level, xoffset, x, y, width)


fn copy_texture_sub_image_2d(texture: GLuint, level: GLint, xoffset: GLint, yoffset: GLint, x: GLint, y: GLint, width: GLsizei, height: GLsizei) raises:
    return get_fn[glCopyTextureSubImage2D, "glCopyTextureSubImage2D"]()(texture, level, xoffset, yoffset, x, y, width, height)


fn copy_texture_sub_image_3d(texture: GLuint, level: GLint, xoffset: GLint, yoffset: GLint, zoffset: GLint, x: GLint, y: GLint, width: GLsizei, height: GLsizei) raises:
    return get_fn[glCopyTextureSubImage3D, "glCopyTextureSubImage3D"]()(texture, level, xoffset, yoffset, zoffset, x, y, width, height)


fn create_buffers(n: GLsizei, buffers: Ptr[GLuint, MutAnyOrigin]) raises:
    return get_fn[glCreateBuffers, "glCreateBuffers"]()(n, buffers)


fn create_framebuffers(n: GLsizei, framebuffers: Ptr[GLuint, MutAnyOrigin]) raises:
    return get_fn[glCreateFramebuffers, "glCreateFramebuffers"]()(n, framebuffers)


fn create_program() raises -> GLuint:
    return get_fn[glCreateProgram, "glCreateProgram"]()()


fn create_program_pipelines(n: GLsizei, pipelines: Ptr[GLuint, MutAnyOrigin]) raises:
    return get_fn[glCreateProgramPipelines, "glCreateProgramPipelines"]()(n, pipelines)


fn create_queries(target: QueryTarget, n: GLsizei, ids: Ptr[GLuint, MutAnyOrigin]) raises:
    return get_fn[glCreateQueries, "glCreateQueries"]()(target, n, ids)


fn create_renderbuffers(n: GLsizei, renderbuffers: Ptr[GLuint, MutAnyOrigin]) raises:
    return get_fn[glCreateRenderbuffers, "glCreateRenderbuffers"]()(n, renderbuffers)


fn create_samplers(n: GLsizei, samplers: Ptr[GLuint, MutAnyOrigin]) raises:
    return get_fn[glCreateSamplers, "glCreateSamplers"]()(n, samplers)


fn create_shader(type: ShaderType) raises -> GLuint:
    return get_fn[glCreateShader, "glCreateShader"]()(type)


fn create_shader_programv(type: ShaderType, count: GLsizei, var strings: List[String]) raises -> GLuint:
    var c_list = [str.as_c_string_slice().unsafe_ptr().as_any_origin() for ref str in strings]
    return get_fn[glCreateShaderProgramv, "glCreateShaderProgramv"]()(type, count, c_list.steal_data())


fn create_textures(target: TextureTarget, n: GLsizei, textures: Ptr[GLuint, MutAnyOrigin]) raises:
    return get_fn[glCreateTextures, "glCreateTextures"]()(target, n, textures)


fn create_transform_feedbacks(n: GLsizei, ids: Ptr[GLuint, MutAnyOrigin]) raises:
    return get_fn[glCreateTransformFeedbacks, "glCreateTransformFeedbacks"]()(n, ids)


fn create_vertex_arrays(n: GLsizei, arrays: Ptr[GLuint, MutAnyOrigin]) raises:
    return get_fn[glCreateVertexArrays, "glCreateVertexArrays"]()(n, arrays)


fn cull_face(mode: TriangleFace) raises:
    return get_fn[glCullFace, "glCullFace"]()(mode)


fn debug_message_callback(callback: GLDEBUGPROC, user_param: Ptr[NoneType, ImmutAnyOrigin]) raises:
    return get_fn[glDebugMessageCallback, "glDebugMessageCallback"]()(callback, user_param)


fn debug_message_control(source: DebugSource, type: DebugType, severity: DebugSeverity, count: GLsizei, ids: Ptr[GLuint, ImmutAnyOrigin], enabled: Bool) raises:
    return get_fn[glDebugMessageControl, "glDebugMessageControl"]()(source, type, severity, count, ids, GLboolean(Int(enabled)))


fn debug_message_insert(source: DebugSource, type: DebugType, id: GLuint, severity: DebugSeverity, length: GLsizei, var buf: String) raises:
    return get_fn[glDebugMessageInsert, "glDebugMessageInsert"]()(source, type, id, severity, length, buf.as_c_string_slice().unsafe_ptr().as_any_origin())


fn delete_buffers(n: GLsizei, buffers: Ptr[GLuint, ImmutAnyOrigin]) raises:
    return get_fn[glDeleteBuffers, "glDeleteBuffers"]()(n, buffers)


fn delete_framebuffers(n: GLsizei, framebuffers: Ptr[GLuint, ImmutAnyOrigin]) raises:
    return get_fn[glDeleteFramebuffers, "glDeleteFramebuffers"]()(n, framebuffers)


fn delete_program(program: GLuint) raises:
    return get_fn[glDeleteProgram, "glDeleteProgram"]()(program)


fn delete_program_pipelines(n: GLsizei, pipelines: Ptr[GLuint, ImmutAnyOrigin]) raises:
    return get_fn[glDeleteProgramPipelines, "glDeleteProgramPipelines"]()(n, pipelines)


fn delete_queries(n: GLsizei, ids: Ptr[GLuint, ImmutAnyOrigin]) raises:
    return get_fn[glDeleteQueries, "glDeleteQueries"]()(n, ids)


fn delete_renderbuffers(n: GLsizei, renderbuffers: Ptr[GLuint, ImmutAnyOrigin]) raises:
    return get_fn[glDeleteRenderbuffers, "glDeleteRenderbuffers"]()(n, renderbuffers)


fn delete_samplers(count: GLsizei, samplers: Ptr[GLuint, ImmutAnyOrigin]) raises:
    return get_fn[glDeleteSamplers, "glDeleteSamplers"]()(count, samplers)


fn delete_shader(shader: GLuint) raises:
    return get_fn[glDeleteShader, "glDeleteShader"]()(shader)


fn delete_sync(sync: GLsync) raises:
    return get_fn[glDeleteSync, "glDeleteSync"]()(sync)


fn delete_textures(n: GLsizei, textures: Ptr[GLuint, ImmutAnyOrigin]) raises:
    return get_fn[glDeleteTextures, "glDeleteTextures"]()(n, textures)


fn delete_transform_feedbacks(n: GLsizei, ids: Ptr[GLuint, ImmutAnyOrigin]) raises:
    return get_fn[glDeleteTransformFeedbacks, "glDeleteTransformFeedbacks"]()(n, ids)


fn delete_vertex_arrays(n: GLsizei, arrays: Ptr[GLuint, ImmutAnyOrigin]) raises:
    return get_fn[glDeleteVertexArrays, "glDeleteVertexArrays"]()(n, arrays)


fn depth_func(func: DepthFunction) raises:
    return get_fn[glDepthFunc, "glDepthFunc"]()(func)


fn depth_mask(flag: Bool) raises:
    return get_fn[glDepthMask, "glDepthMask"]()(GLboolean(Int(flag)))


fn depth_range(n: GLdouble, f: GLdouble) raises:
    return get_fn[glDepthRange, "glDepthRange"]()(n, f)


fn depth_range_arrayv(first: GLuint, count: GLsizei, v: Ptr[GLdouble, ImmutAnyOrigin]) raises:
    return get_fn[glDepthRangeArrayv, "glDepthRangeArrayv"]()(first, count, v)


fn depth_range_indexed(index: GLuint, n: GLdouble, f: GLdouble) raises:
    return get_fn[glDepthRangeIndexed, "glDepthRangeIndexed"]()(index, n, f)


fn depth_rangef(n: GLfloat, f: GLfloat) raises:
    return get_fn[glDepthRangef, "glDepthRangef"]()(n, f)


fn detach_shader(program: GLuint, shader: GLuint) raises:
    return get_fn[glDetachShader, "glDetachShader"]()(program, shader)


fn disable(cap: EnableCap) raises:
    return get_fn[glDisable, "glDisable"]()(cap)


fn disable_vertex_array_attrib(vaobj: GLuint, index: GLuint) raises:
    return get_fn[glDisableVertexArrayAttrib, "glDisableVertexArrayAttrib"]()(vaobj, index)


fn disable_vertex_attrib_array(index: GLuint) raises:
    return get_fn[glDisableVertexAttribArray, "glDisableVertexAttribArray"]()(index)


fn disablei(target: EnableCap, index: GLuint) raises:
    return get_fn[glDisablei, "glDisablei"]()(target, index)


fn dispatch_compute(num_groups_x: GLuint, num_groups_y: GLuint, num_groups_z: GLuint) raises:
    return get_fn[glDispatchCompute, "glDispatchCompute"]()(num_groups_x, num_groups_y, num_groups_z)


fn dispatch_compute_indirect(indirect: GLintptr) raises:
    return get_fn[glDispatchComputeIndirect, "glDispatchComputeIndirect"]()(indirect)


fn draw_arrays(mode: PrimitiveType, first: GLint, count: GLsizei) raises:
    return get_fn[glDrawArrays, "glDrawArrays"]()(mode, first, count)


fn draw_arrays_indirect(mode: PrimitiveType, indirect: Ptr[NoneType, ImmutAnyOrigin]) raises:
    return get_fn[glDrawArraysIndirect, "glDrawArraysIndirect"]()(mode, indirect)


fn draw_arrays_instanced(mode: PrimitiveType, first: GLint, count: GLsizei, instancecount: GLsizei) raises:
    return get_fn[glDrawArraysInstanced, "glDrawArraysInstanced"]()(mode, first, count, instancecount)


fn draw_arrays_instanced_base_instance(mode: PrimitiveType, first: GLint, count: GLsizei, instancecount: GLsizei, baseinstance: GLuint) raises:
    return get_fn[glDrawArraysInstancedBaseInstance, "glDrawArraysInstancedBaseInstance"]()(mode, first, count, instancecount, baseinstance)


fn draw_buffer(buf: DrawBufferMode) raises:
    return get_fn[glDrawBuffer, "glDrawBuffer"]()(buf)


fn draw_buffers(n: GLsizei, bufs: Ptr[DrawBufferMode, ImmutAnyOrigin]) raises:
    return get_fn[glDrawBuffers, "glDrawBuffers"]()(n, bufs)


fn draw_elements(mode: PrimitiveType, count: GLsizei, type: DrawElementsType, indices: Ptr[NoneType, ImmutAnyOrigin]) raises:
    return get_fn[glDrawElements, "glDrawElements"]()(mode, count, type, indices)


fn draw_elements_base_vertex(mode: PrimitiveType, count: GLsizei, type: DrawElementsType, indices: Ptr[NoneType, ImmutAnyOrigin], basevertex: GLint) raises:
    return get_fn[glDrawElementsBaseVertex, "glDrawElementsBaseVertex"]()(mode, count, type, indices, basevertex)


fn draw_elements_indirect(mode: PrimitiveType, type: DrawElementsType, indirect: Ptr[NoneType, ImmutAnyOrigin]) raises:
    return get_fn[glDrawElementsIndirect, "glDrawElementsIndirect"]()(mode, type, indirect)


fn draw_elements_instanced(mode: PrimitiveType, count: GLsizei, type: DrawElementsType, indices: Ptr[NoneType, ImmutAnyOrigin], instancecount: GLsizei) raises:
    return get_fn[glDrawElementsInstanced, "glDrawElementsInstanced"]()(mode, count, type, indices, instancecount)


fn draw_elements_instanced_base_instance(mode: PrimitiveType, count: GLsizei, type: DrawElementsType, indices: Ptr[NoneType, ImmutAnyOrigin], instancecount: GLsizei, baseinstance: GLuint) raises:
    return get_fn[glDrawElementsInstancedBaseInstance, "glDrawElementsInstancedBaseInstance"]()(mode, count, type, indices, instancecount, baseinstance)


fn draw_elements_instanced_base_vertex(mode: PrimitiveType, count: GLsizei, type: DrawElementsType, indices: Ptr[NoneType, ImmutAnyOrigin], instancecount: GLsizei, basevertex: GLint) raises:
    return get_fn[glDrawElementsInstancedBaseVertex, "glDrawElementsInstancedBaseVertex"]()(mode, count, type, indices, instancecount, basevertex)


fn draw_elements_instanced_base_vertex_base_instance(mode: PrimitiveType, count: GLsizei, type: DrawElementsType, indices: Ptr[NoneType, ImmutAnyOrigin], instancecount: GLsizei, basevertex: GLint, baseinstance: GLuint) raises:
    return get_fn[glDrawElementsInstancedBaseVertexBaseInstance, "glDrawElementsInstancedBaseVertexBaseInstance"]()(mode, count, type, indices, instancecount, basevertex, baseinstance)


fn draw_range_elements(mode: PrimitiveType, start: GLuint, end: GLuint, count: GLsizei, type: DrawElementsType, indices: Ptr[NoneType, ImmutAnyOrigin]) raises:
    return get_fn[glDrawRangeElements, "glDrawRangeElements"]()(mode, start, end, count, type, indices)


fn draw_range_elements_base_vertex(mode: PrimitiveType, start: GLuint, end: GLuint, count: GLsizei, type: DrawElementsType, indices: Ptr[NoneType, ImmutAnyOrigin], basevertex: GLint) raises:
    return get_fn[glDrawRangeElementsBaseVertex, "glDrawRangeElementsBaseVertex"]()(mode, start, end, count, type, indices, basevertex)


fn draw_transform_feedback(mode: PrimitiveType, id: GLuint) raises:
    return get_fn[glDrawTransformFeedback, "glDrawTransformFeedback"]()(mode, id)


fn draw_transform_feedback_instanced(mode: PrimitiveType, id: GLuint, instancecount: GLsizei) raises:
    return get_fn[glDrawTransformFeedbackInstanced, "glDrawTransformFeedbackInstanced"]()(mode, id, instancecount)


fn draw_transform_feedback_stream(mode: PrimitiveType, id: GLuint, stream: GLuint) raises:
    return get_fn[glDrawTransformFeedbackStream, "glDrawTransformFeedbackStream"]()(mode, id, stream)


fn draw_transform_feedback_stream_instanced(mode: PrimitiveType, id: GLuint, stream: GLuint, instancecount: GLsizei) raises:
    return get_fn[glDrawTransformFeedbackStreamInstanced, "glDrawTransformFeedbackStreamInstanced"]()(mode, id, stream, instancecount)


fn enable(cap: EnableCap) raises:
    return get_fn[glEnable, "glEnable"]()(cap)


fn enable_vertex_array_attrib(vaobj: GLuint, index: GLuint) raises:
    return get_fn[glEnableVertexArrayAttrib, "glEnableVertexArrayAttrib"]()(vaobj, index)


fn enable_vertex_attrib_array(index: GLuint) raises:
    return get_fn[glEnableVertexAttribArray, "glEnableVertexAttribArray"]()(index)


fn enablei(target: EnableCap, index: GLuint) raises:
    return get_fn[glEnablei, "glEnablei"]()(target, index)


fn end_conditional_render() raises:
    return get_fn[glEndConditionalRender, "glEndConditionalRender"]()()


fn end_query(target: QueryTarget) raises:
    return get_fn[glEndQuery, "glEndQuery"]()(target)


fn end_query_indexed(target: QueryTarget, index: GLuint) raises:
    return get_fn[glEndQueryIndexed, "glEndQueryIndexed"]()(target, index)


fn end_transform_feedback() raises:
    return get_fn[glEndTransformFeedback, "glEndTransformFeedback"]()()


fn fence_sync(condition: SyncCondition, flags: SyncBehaviorFlags) raises -> GLsync:
    return get_fn[glFenceSync, "glFenceSync"]()(condition, flags)


fn finish() raises:
    return get_fn[glFinish, "glFinish"]()()


fn flush() raises:
    return get_fn[glFlush, "glFlush"]()()


fn flush_mapped_buffer_range(target: BufferTargetARB, offset: GLintptr, length: GLsizeiptr) raises:
    return get_fn[glFlushMappedBufferRange, "glFlushMappedBufferRange"]()(target, offset, length)


fn flush_mapped_named_buffer_range(buffer: GLuint, offset: GLintptr, length: GLsizeiptr) raises:
    return get_fn[glFlushMappedNamedBufferRange, "glFlushMappedNamedBufferRange"]()(buffer, offset, length)


fn framebuffer_parameteri(target: FramebufferTarget, pname: FramebufferParameterName, param: GLint) raises:
    return get_fn[glFramebufferParameteri, "glFramebufferParameteri"]()(target, pname, param)


fn framebuffer_renderbuffer(target: FramebufferTarget, attachment: FramebufferAttachment, renderbuffertarget: RenderbufferTarget, renderbuffer: GLuint) raises:
    return get_fn[glFramebufferRenderbuffer, "glFramebufferRenderbuffer"]()(target, attachment, renderbuffertarget, renderbuffer)


fn framebuffer_texture(target: FramebufferTarget, attachment: FramebufferAttachment, texture: GLuint, level: GLint) raises:
    return get_fn[glFramebufferTexture, "glFramebufferTexture"]()(target, attachment, texture, level)


fn framebuffer_texture_1d(target: FramebufferTarget, attachment: FramebufferAttachment, textarget: TextureTarget, texture: GLuint, level: GLint) raises:
    return get_fn[glFramebufferTexture1D, "glFramebufferTexture1D"]()(target, attachment, textarget, texture, level)


fn framebuffer_texture_2d(target: FramebufferTarget, attachment: FramebufferAttachment, textarget: TextureTarget, texture: GLuint, level: GLint) raises:
    return get_fn[glFramebufferTexture2D, "glFramebufferTexture2D"]()(target, attachment, textarget, texture, level)


fn framebuffer_texture_3d(target: FramebufferTarget, attachment: FramebufferAttachment, textarget: TextureTarget, texture: GLuint, level: GLint, zoffset: GLint) raises:
    return get_fn[glFramebufferTexture3D, "glFramebufferTexture3D"]()(target, attachment, textarget, texture, level, zoffset)


fn framebuffer_texture_layer(target: FramebufferTarget, attachment: FramebufferAttachment, texture: GLuint, level: GLint, layer: GLint) raises:
    return get_fn[glFramebufferTextureLayer, "glFramebufferTextureLayer"]()(target, attachment, texture, level, layer)


fn front_face(mode: FrontFaceDirection) raises:
    return get_fn[glFrontFace, "glFrontFace"]()(mode)


fn gen_buffers(n: GLsizei, buffers: Ptr[GLuint, MutAnyOrigin]) raises:
    return get_fn[glGenBuffers, "glGenBuffers"]()(n, buffers)


fn gen_framebuffers(n: GLsizei, framebuffers: Ptr[GLuint, MutAnyOrigin]) raises:
    return get_fn[glGenFramebuffers, "glGenFramebuffers"]()(n, framebuffers)


fn gen_program_pipelines(n: GLsizei, pipelines: Ptr[GLuint, MutAnyOrigin]) raises:
    return get_fn[glGenProgramPipelines, "glGenProgramPipelines"]()(n, pipelines)


fn gen_queries(n: GLsizei, ids: Ptr[GLuint, MutAnyOrigin]) raises:
    return get_fn[glGenQueries, "glGenQueries"]()(n, ids)


fn gen_renderbuffers(n: GLsizei, renderbuffers: Ptr[GLuint, MutAnyOrigin]) raises:
    return get_fn[glGenRenderbuffers, "glGenRenderbuffers"]()(n, renderbuffers)


fn gen_samplers(count: GLsizei, samplers: Ptr[GLuint, MutAnyOrigin]) raises:
    return get_fn[glGenSamplers, "glGenSamplers"]()(count, samplers)


fn gen_textures(n: GLsizei, textures: Ptr[GLuint, MutAnyOrigin]) raises:
    return get_fn[glGenTextures, "glGenTextures"]()(n, textures)


fn gen_transform_feedbacks(n: GLsizei, ids: Ptr[GLuint, MutAnyOrigin]) raises:
    return get_fn[glGenTransformFeedbacks, "glGenTransformFeedbacks"]()(n, ids)


fn gen_vertex_arrays(n: GLsizei, arrays: Ptr[GLuint, MutAnyOrigin]) raises:
    return get_fn[glGenVertexArrays, "glGenVertexArrays"]()(n, arrays)


fn generate_mipmap(target: TextureTarget) raises:
    return get_fn[glGenerateMipmap, "glGenerateMipmap"]()(target)


fn generate_texture_mipmap(texture: GLuint) raises:
    return get_fn[glGenerateTextureMipmap, "glGenerateTextureMipmap"]()(texture)


fn get_active_atomic_counter_bufferiv(program: GLuint, buffer_index: GLuint, pname: AtomicCounterBufferPName, params: Ptr[GLint, MutAnyOrigin]) raises:
    return get_fn[glGetActiveAtomicCounterBufferiv, "glGetActiveAtomicCounterBufferiv"]()(program, buffer_index, pname, params)


fn get_active_attrib(program: GLuint, index: GLuint, buf_size: GLsizei, length: Ptr[GLsizei, MutAnyOrigin], size: Ptr[GLint, MutAnyOrigin], type: Ptr[AttributeType, MutAnyOrigin], var name: String) raises:
    return get_fn[glGetActiveAttrib, "glGetActiveAttrib"]()(program, index, buf_size, length, size, type, name.as_c_string_slice().unsafe_ptr().as_any_origin())


fn get_active_subroutine_name(program: GLuint, shadertype: ShaderType, index: GLuint, buf_size: GLsizei, length: Ptr[GLsizei, MutAnyOrigin], var name: String) raises:
    return get_fn[glGetActiveSubroutineName, "glGetActiveSubroutineName"]()(program, shadertype, index, buf_size, length, name.as_c_string_slice().unsafe_ptr().as_any_origin())


fn get_active_subroutine_uniform_name(program: GLuint, shadertype: ShaderType, index: GLuint, buf_size: GLsizei, length: Ptr[GLsizei, MutAnyOrigin], var name: String) raises:
    return get_fn[glGetActiveSubroutineUniformName, "glGetActiveSubroutineUniformName"]()(program, shadertype, index, buf_size, length, name.as_c_string_slice().unsafe_ptr().as_any_origin())


fn get_active_subroutine_uniformiv(program: GLuint, shadertype: ShaderType, index: GLuint, pname: SubroutineParameterName, values: Ptr[GLint, MutAnyOrigin]) raises:
    return get_fn[glGetActiveSubroutineUniformiv, "glGetActiveSubroutineUniformiv"]()(program, shadertype, index, pname, values)


fn get_active_uniform(program: GLuint, index: GLuint, buf_size: GLsizei, length: Ptr[GLsizei, MutAnyOrigin], size: Ptr[GLint, MutAnyOrigin], type: Ptr[UniformType, MutAnyOrigin], var name: String) raises:
    return get_fn[glGetActiveUniform, "glGetActiveUniform"]()(program, index, buf_size, length, size, type, name.as_c_string_slice().unsafe_ptr().as_any_origin())


fn get_active_uniform_block_name(program: GLuint, uniform_block_index: GLuint, buf_size: GLsizei, length: Ptr[GLsizei, MutAnyOrigin], var uniform_block_name: String) raises:
    return get_fn[glGetActiveUniformBlockName, "glGetActiveUniformBlockName"]()(program, uniform_block_index, buf_size, length, uniform_block_name.as_c_string_slice().unsafe_ptr().as_any_origin())


fn get_active_uniform_blockiv(program: GLuint, uniform_block_index: GLuint, pname: UniformBlockPName, params: Ptr[GLint, MutAnyOrigin]) raises:
    return get_fn[glGetActiveUniformBlockiv, "glGetActiveUniformBlockiv"]()(program, uniform_block_index, pname, params)


fn get_active_uniform_name(program: GLuint, uniform_index: GLuint, buf_size: GLsizei, length: Ptr[GLsizei, MutAnyOrigin], var uniform_name: String) raises:
    return get_fn[glGetActiveUniformName, "glGetActiveUniformName"]()(program, uniform_index, buf_size, length, uniform_name.as_c_string_slice().unsafe_ptr().as_any_origin())


fn get_active_uniformsiv(program: GLuint, uniform_count: GLsizei, uniform_indices: Ptr[GLuint, ImmutAnyOrigin], pname: UniformPName, params: Ptr[GLint, MutAnyOrigin]) raises:
    return get_fn[glGetActiveUniformsiv, "glGetActiveUniformsiv"]()(program, uniform_count, uniform_indices, pname, params)


fn get_attached_shaders(program: GLuint, max_count: GLsizei, count: Ptr[GLsizei, MutAnyOrigin], shaders: Ptr[GLuint, MutAnyOrigin]) raises:
    return get_fn[glGetAttachedShaders, "glGetAttachedShaders"]()(program, max_count, count, shaders)


fn get_attrib_location(program: GLuint, var name: String) raises -> GLint:
    return get_fn[glGetAttribLocation, "glGetAttribLocation"]()(program, name.as_c_string_slice().unsafe_ptr().as_any_origin())


fn get_booleani_v(target: BufferTargetARB, index: GLuint, data: Ptr[GLboolean, MutAnyOrigin]) raises:
    return get_fn[glGetBooleani_v, "glGetBooleani_v"]()(target, index, data)


fn get_booleanv(pname: GetPName, data: Ptr[GLboolean, MutAnyOrigin]) raises:
    return get_fn[glGetBooleanv, "glGetBooleanv"]()(pname, data)


fn get_buffer_parameteri64v(target: BufferTargetARB, pname: BufferPNameARB, params: Ptr[GLint64, MutAnyOrigin]) raises:
    return get_fn[glGetBufferParameteri64v, "glGetBufferParameteri64v"]()(target, pname, params)


fn get_buffer_parameteriv(target: BufferTargetARB, pname: BufferPNameARB, params: Ptr[GLint, MutAnyOrigin]) raises:
    return get_fn[glGetBufferParameteriv, "glGetBufferParameteriv"]()(target, pname, params)


fn get_buffer_pointerv(target: BufferTargetARB, pname: BufferPointerNameARB, params: Ptr[Ptr[NoneType, MutAnyOrigin], MutAnyOrigin]) raises:
    return get_fn[glGetBufferPointerv, "glGetBufferPointerv"]()(target, pname, params)


fn get_buffer_sub_data(target: BufferTargetARB, offset: GLintptr, size: GLsizeiptr, data: Ptr[NoneType, MutAnyOrigin]) raises:
    return get_fn[glGetBufferSubData, "glGetBufferSubData"]()(target, offset, size, data)


fn get_compressed_tex_image(target: TextureTarget, level: GLint, img: Ptr[NoneType, MutAnyOrigin]) raises:
    return get_fn[glGetCompressedTexImage, "glGetCompressedTexImage"]()(target, level, img)


fn get_compressed_texture_image(texture: GLuint, level: GLint, buf_size: GLsizei, pixels: Ptr[NoneType, MutAnyOrigin]) raises:
    return get_fn[glGetCompressedTextureImage, "glGetCompressedTextureImage"]()(texture, level, buf_size, pixels)


fn get_compressed_texture_sub_image(texture: GLuint, level: GLint, xoffset: GLint, yoffset: GLint, zoffset: GLint, width: GLsizei, height: GLsizei, depth: GLsizei, buf_size: GLsizei, pixels: Ptr[NoneType, MutAnyOrigin]) raises:
    return get_fn[glGetCompressedTextureSubImage, "glGetCompressedTextureSubImage"]()(texture, level, xoffset, yoffset, zoffset, width, height, depth, buf_size, pixels)


fn get_debug_message_log(count: GLuint, buf_size: GLsizei, sources: Ptr[DebugSource, MutAnyOrigin], types: Ptr[DebugType, MutAnyOrigin], ids: Ptr[GLuint, MutAnyOrigin], severities: Ptr[DebugSeverity, MutAnyOrigin], lengths: Ptr[GLsizei, MutAnyOrigin], var message_log: String) raises -> GLuint:
    return get_fn[glGetDebugMessageLog, "glGetDebugMessageLog"]()(count, buf_size, sources, types, ids, severities, lengths, message_log.as_c_string_slice().unsafe_ptr().as_any_origin())


fn get_doublei_v(target: GetPName, index: GLuint, data: Ptr[GLdouble, MutAnyOrigin]) raises:
    return get_fn[glGetDoublei_v, "glGetDoublei_v"]()(target, index, data)


fn get_doublev(pname: GetPName, data: Ptr[GLdouble, MutAnyOrigin]) raises:
    return get_fn[glGetDoublev, "glGetDoublev"]()(pname, data)


fn get_error() raises -> ErrorCode:
    return get_fn[glGetError, "glGetError"]()()


fn get_floati_v(target: GetPName, index: GLuint, data: Ptr[GLfloat, MutAnyOrigin]) raises:
    return get_fn[glGetFloati_v, "glGetFloati_v"]()(target, index, data)


fn get_floatv(pname: GetPName, data: Ptr[GLfloat, MutAnyOrigin]) raises:
    return get_fn[glGetFloatv, "glGetFloatv"]()(pname, data)


fn get_frag_data_index(program: GLuint, var name: String) raises -> GLint:
    return get_fn[glGetFragDataIndex, "glGetFragDataIndex"]()(program, name.as_c_string_slice().unsafe_ptr().as_any_origin())


fn get_frag_data_location(program: GLuint, var name: String) raises -> GLint:
    return get_fn[glGetFragDataLocation, "glGetFragDataLocation"]()(program, name.as_c_string_slice().unsafe_ptr().as_any_origin())


fn get_framebuffer_attachment_parameteriv(target: FramebufferTarget, attachment: FramebufferAttachment, pname: FramebufferAttachmentParameterName, params: Ptr[GLint, MutAnyOrigin]) raises:
    return get_fn[glGetFramebufferAttachmentParameteriv, "glGetFramebufferAttachmentParameteriv"]()(target, attachment, pname, params)


fn get_framebuffer_parameteriv(target: FramebufferTarget, pname: FramebufferAttachmentParameterName, params: Ptr[GLint, MutAnyOrigin]) raises:
    return get_fn[glGetFramebufferParameteriv, "glGetFramebufferParameteriv"]()(target, pname, params)


fn get_graphics_reset_status() raises -> GraphicsResetStatus:
    return get_fn[glGetGraphicsResetStatus, "glGetGraphicsResetStatus"]()()


fn get_integer64i_v(target: GetPName, index: GLuint, data: Ptr[GLint64, MutAnyOrigin]) raises:
    return get_fn[glGetInteger64i_v, "glGetInteger64i_v"]()(target, index, data)


fn get_integer64v(pname: GetPName, data: Ptr[GLint64, MutAnyOrigin]) raises:
    return get_fn[glGetInteger64v, "glGetInteger64v"]()(pname, data)


fn get_integeri_v(target: GetPName, index: GLuint, data: Ptr[GLint, MutAnyOrigin]) raises:
    return get_fn[glGetIntegeri_v, "glGetIntegeri_v"]()(target, index, data)


fn get_integerv(pname: GetPName, data: Ptr[GLint, MutAnyOrigin]) raises:
    return get_fn[glGetIntegerv, "glGetIntegerv"]()(pname, data)


fn get_internalformati64v(target: TextureTarget, internalformat: InternalFormat, pname: InternalFormatPName, count: GLsizei, params: Ptr[GLint64, MutAnyOrigin]) raises:
    return get_fn[glGetInternalformati64v, "glGetInternalformati64v"]()(target, internalformat, pname, count, params)


fn get_internalformativ(target: TextureTarget, internalformat: InternalFormat, pname: InternalFormatPName, count: GLsizei, params: Ptr[GLint, MutAnyOrigin]) raises:
    return get_fn[glGetInternalformativ, "glGetInternalformativ"]()(target, internalformat, pname, count, params)


fn get_multisamplefv(pname: GetMultisamplePNameNV, index: GLuint, val: Ptr[GLfloat, MutAnyOrigin]) raises:
    return get_fn[glGetMultisamplefv, "glGetMultisamplefv"]()(pname, index, val)


fn get_named_buffer_parameteri64v(buffer: GLuint, pname: BufferPNameARB, params: Ptr[GLint64, MutAnyOrigin]) raises:
    return get_fn[glGetNamedBufferParameteri64v, "glGetNamedBufferParameteri64v"]()(buffer, pname, params)


fn get_named_buffer_parameteriv(buffer: GLuint, pname: BufferPNameARB, params: Ptr[GLint, MutAnyOrigin]) raises:
    return get_fn[glGetNamedBufferParameteriv, "glGetNamedBufferParameteriv"]()(buffer, pname, params)


fn get_named_buffer_pointerv(buffer: GLuint, pname: BufferPointerNameARB, params: Ptr[Ptr[NoneType, MutAnyOrigin], MutAnyOrigin]) raises:
    return get_fn[glGetNamedBufferPointerv, "glGetNamedBufferPointerv"]()(buffer, pname, params)


fn get_named_buffer_sub_data(buffer: GLuint, offset: GLintptr, size: GLsizeiptr, data: Ptr[NoneType, MutAnyOrigin]) raises:
    return get_fn[glGetNamedBufferSubData, "glGetNamedBufferSubData"]()(buffer, offset, size, data)


fn get_named_framebuffer_attachment_parameteriv(framebuffer: GLuint, attachment: FramebufferAttachment, pname: FramebufferAttachmentParameterName, params: Ptr[GLint, MutAnyOrigin]) raises:
    return get_fn[glGetNamedFramebufferAttachmentParameteriv, "glGetNamedFramebufferAttachmentParameteriv"]()(framebuffer, attachment, pname, params)


fn get_named_framebuffer_parameteriv(framebuffer: GLuint, pname: GetFramebufferParameter, param: Ptr[GLint, MutAnyOrigin]) raises:
    return get_fn[glGetNamedFramebufferParameteriv, "glGetNamedFramebufferParameteriv"]()(framebuffer, pname, param)


fn get_named_renderbuffer_parameteriv(renderbuffer: GLuint, pname: RenderbufferParameterName, params: Ptr[GLint, MutAnyOrigin]) raises:
    return get_fn[glGetNamedRenderbufferParameteriv, "glGetNamedRenderbufferParameteriv"]()(renderbuffer, pname, params)


fn get_object_label(identifier: ObjectIdentifier, name: GLuint, buf_size: GLsizei, length: Ptr[GLsizei, MutAnyOrigin], var label: String) raises:
    return get_fn[glGetObjectLabel, "glGetObjectLabel"]()(identifier, name, buf_size, length, label.as_c_string_slice().unsafe_ptr().as_any_origin())


fn get_object_ptr_label(ptr: Ptr[NoneType, ImmutAnyOrigin], buf_size: GLsizei, length: Ptr[GLsizei, MutAnyOrigin], var label: String) raises:
    return get_fn[glGetObjectPtrLabel, "glGetObjectPtrLabel"]()(ptr, buf_size, length, label.as_c_string_slice().unsafe_ptr().as_any_origin())


fn get_program_binary(program: GLuint, buf_size: GLsizei, length: Ptr[GLsizei, MutAnyOrigin], binary_format: Ptr[GLenum, MutAnyOrigin], binary: Ptr[NoneType, MutAnyOrigin]) raises:
    return get_fn[glGetProgramBinary, "glGetProgramBinary"]()(program, buf_size, length, binary_format, binary)


fn get_program_info_log(program: GLuint, buf_size: GLsizei, length: Ptr[GLsizei, MutAnyOrigin], var info_log: String) raises:
    return get_fn[glGetProgramInfoLog, "glGetProgramInfoLog"]()(program, buf_size, length, info_log.as_c_string_slice().unsafe_ptr().as_any_origin())


fn get_program_interfaceiv(program: GLuint, program_interface: ProgramInterface, pname: ProgramInterfacePName, params: Ptr[GLint, MutAnyOrigin]) raises:
    return get_fn[glGetProgramInterfaceiv, "glGetProgramInterfaceiv"]()(program, program_interface, pname, params)


fn get_program_pipeline_info_log(pipeline: GLuint, buf_size: GLsizei, length: Ptr[GLsizei, MutAnyOrigin], var info_log: String) raises:
    return get_fn[glGetProgramPipelineInfoLog, "glGetProgramPipelineInfoLog"]()(pipeline, buf_size, length, info_log.as_c_string_slice().unsafe_ptr().as_any_origin())


fn get_program_pipelineiv(pipeline: GLuint, pname: PipelineParameterName, params: Ptr[GLint, MutAnyOrigin]) raises:
    return get_fn[glGetProgramPipelineiv, "glGetProgramPipelineiv"]()(pipeline, pname, params)


fn get_program_resource_index(program: GLuint, program_interface: ProgramInterface, var name: String) raises -> GLuint:
    return get_fn[glGetProgramResourceIndex, "glGetProgramResourceIndex"]()(program, program_interface, name.as_c_string_slice().unsafe_ptr().as_any_origin())


fn get_program_resource_location(program: GLuint, program_interface: ProgramInterface, var name: String) raises -> GLint:
    return get_fn[glGetProgramResourceLocation, "glGetProgramResourceLocation"]()(program, program_interface, name.as_c_string_slice().unsafe_ptr().as_any_origin())


fn get_program_resource_location_index(program: GLuint, program_interface: ProgramInterface, var name: String) raises -> GLint:
    return get_fn[glGetProgramResourceLocationIndex, "glGetProgramResourceLocationIndex"]()(program, program_interface, name.as_c_string_slice().unsafe_ptr().as_any_origin())


fn get_program_resource_name(program: GLuint, program_interface: ProgramInterface, index: GLuint, buf_size: GLsizei, length: Ptr[GLsizei, MutAnyOrigin], var name: String) raises:
    return get_fn[glGetProgramResourceName, "glGetProgramResourceName"]()(program, program_interface, index, buf_size, length, name.as_c_string_slice().unsafe_ptr().as_any_origin())


fn get_program_resourceiv(program: GLuint, program_interface: ProgramInterface, index: GLuint, prop_count: GLsizei, props: Ptr[ProgramResourceProperty, ImmutAnyOrigin], count: GLsizei, length: Ptr[GLsizei, MutAnyOrigin], params: Ptr[GLint, MutAnyOrigin]) raises:
    return get_fn[glGetProgramResourceiv, "glGetProgramResourceiv"]()(program, program_interface, index, prop_count, props, count, length, params)


fn get_program_stageiv(program: GLuint, shadertype: ShaderType, pname: ProgramStagePName, values: Ptr[GLint, MutAnyOrigin]) raises:
    return get_fn[glGetProgramStageiv, "glGetProgramStageiv"]()(program, shadertype, pname, values)


fn get_programiv(program: GLuint, pname: ProgramPropertyARB, params: Ptr[GLint, MutAnyOrigin]) raises:
    return get_fn[glGetProgramiv, "glGetProgramiv"]()(program, pname, params)


fn get_query_buffer_objecti64v(id: GLuint, buffer: GLuint, pname: QueryObjectParameterName, offset: GLintptr) raises:
    return get_fn[glGetQueryBufferObjecti64v, "glGetQueryBufferObjecti64v"]()(id, buffer, pname, offset)


fn get_query_buffer_objectiv(id: GLuint, buffer: GLuint, pname: QueryObjectParameterName, offset: GLintptr) raises:
    return get_fn[glGetQueryBufferObjectiv, "glGetQueryBufferObjectiv"]()(id, buffer, pname, offset)


fn get_query_buffer_objectui64v(id: GLuint, buffer: GLuint, pname: QueryObjectParameterName, offset: GLintptr) raises:
    return get_fn[glGetQueryBufferObjectui64v, "glGetQueryBufferObjectui64v"]()(id, buffer, pname, offset)


fn get_query_buffer_objectuiv(id: GLuint, buffer: GLuint, pname: QueryObjectParameterName, offset: GLintptr) raises:
    return get_fn[glGetQueryBufferObjectuiv, "glGetQueryBufferObjectuiv"]()(id, buffer, pname, offset)


fn get_query_indexediv(target: QueryTarget, index: GLuint, pname: QueryParameterName, params: Ptr[GLint, MutAnyOrigin]) raises:
    return get_fn[glGetQueryIndexediv, "glGetQueryIndexediv"]()(target, index, pname, params)


fn get_query_objecti64v(id: GLuint, pname: QueryObjectParameterName, params: Ptr[GLint64, MutAnyOrigin]) raises:
    return get_fn[glGetQueryObjecti64v, "glGetQueryObjecti64v"]()(id, pname, params)


fn get_query_objectiv(id: GLuint, pname: QueryObjectParameterName, params: Ptr[GLint, MutAnyOrigin]) raises:
    return get_fn[glGetQueryObjectiv, "glGetQueryObjectiv"]()(id, pname, params)


fn get_query_objectui64v(id: GLuint, pname: QueryObjectParameterName, params: Ptr[GLuint64, MutAnyOrigin]) raises:
    return get_fn[glGetQueryObjectui64v, "glGetQueryObjectui64v"]()(id, pname, params)


fn get_query_objectuiv(id: GLuint, pname: QueryObjectParameterName, params: Ptr[GLuint, MutAnyOrigin]) raises:
    return get_fn[glGetQueryObjectuiv, "glGetQueryObjectuiv"]()(id, pname, params)


fn get_queryiv(target: QueryTarget, pname: QueryParameterName, params: Ptr[GLint, MutAnyOrigin]) raises:
    return get_fn[glGetQueryiv, "glGetQueryiv"]()(target, pname, params)


fn get_renderbuffer_parameteriv(target: RenderbufferTarget, pname: RenderbufferParameterName, params: Ptr[GLint, MutAnyOrigin]) raises:
    return get_fn[glGetRenderbufferParameteriv, "glGetRenderbufferParameteriv"]()(target, pname, params)


fn get_sampler_parameter_iiv(sampler: GLuint, pname: SamplerParameterI, params: Ptr[GLint, MutAnyOrigin]) raises:
    return get_fn[glGetSamplerParameterIiv, "glGetSamplerParameterIiv"]()(sampler, pname, params)


fn get_sampler_parameter_iuiv(sampler: GLuint, pname: SamplerParameterI, params: Ptr[GLuint, MutAnyOrigin]) raises:
    return get_fn[glGetSamplerParameterIuiv, "glGetSamplerParameterIuiv"]()(sampler, pname, params)


fn get_sampler_parameterfv(sampler: GLuint, pname: SamplerParameterF, params: Ptr[GLfloat, MutAnyOrigin]) raises:
    return get_fn[glGetSamplerParameterfv, "glGetSamplerParameterfv"]()(sampler, pname, params)


fn get_sampler_parameteriv(sampler: GLuint, pname: SamplerParameterI, params: Ptr[GLint, MutAnyOrigin]) raises:
    return get_fn[glGetSamplerParameteriv, "glGetSamplerParameteriv"]()(sampler, pname, params)


fn get_shader_info_log(shader: GLuint, buf_size: GLsizei, length: Ptr[GLsizei, MutAnyOrigin], var info_log: String) raises:
    return get_fn[glGetShaderInfoLog, "glGetShaderInfoLog"]()(shader, buf_size, length, info_log.as_c_string_slice().unsafe_ptr().as_any_origin())


fn get_shader_precision_format(shadertype: ShaderType, precisiontype: PrecisionType, range: Ptr[GLint, MutAnyOrigin], precision: Ptr[GLint, MutAnyOrigin]) raises:
    return get_fn[glGetShaderPrecisionFormat, "glGetShaderPrecisionFormat"]()(shadertype, precisiontype, range, precision)


fn get_shader_source(shader: GLuint, buf_size: GLsizei, length: Ptr[GLsizei, MutAnyOrigin], var source: String) raises:
    return get_fn[glGetShaderSource, "glGetShaderSource"]()(shader, buf_size, length, source.as_c_string_slice().unsafe_ptr().as_any_origin())


fn get_shaderiv(shader: GLuint, pname: ShaderParameterName, params: Ptr[GLint, MutAnyOrigin]) raises:
    return get_fn[glGetShaderiv, "glGetShaderiv"]()(shader, pname, params)


fn get_string(name: StringName) raises -> GLubyte:
    return get_fn[glGetString, "glGetString"]()(name)


fn get_stringi(name: StringName, index: GLuint) raises -> GLubyte:
    return get_fn[glGetStringi, "glGetStringi"]()(name, index)


fn get_subroutine_index(program: GLuint, shadertype: ShaderType, var name: String) raises -> GLuint:
    return get_fn[glGetSubroutineIndex, "glGetSubroutineIndex"]()(program, shadertype, name.as_c_string_slice().unsafe_ptr().as_any_origin())


fn get_subroutine_uniform_location(program: GLuint, shadertype: ShaderType, var name: String) raises -> GLint:
    return get_fn[glGetSubroutineUniformLocation, "glGetSubroutineUniformLocation"]()(program, shadertype, name.as_c_string_slice().unsafe_ptr().as_any_origin())


fn get_synciv(sync: GLsync, pname: SyncParameterName, count: GLsizei, length: Ptr[GLsizei, MutAnyOrigin], values: Ptr[GLint, MutAnyOrigin]) raises:
    return get_fn[glGetSynciv, "glGetSynciv"]()(sync, pname, count, length, values)


fn get_tex_image(target: TextureTarget, level: GLint, format: PixelFormat, type: PixelType, pixels: Ptr[NoneType, MutAnyOrigin]) raises:
    return get_fn[glGetTexImage, "glGetTexImage"]()(target, level, format, type, pixels)


fn get_tex_level_parameterfv(target: TextureTarget, level: GLint, pname: GetTextureParameter, params: Ptr[GLfloat, MutAnyOrigin]) raises:
    return get_fn[glGetTexLevelParameterfv, "glGetTexLevelParameterfv"]()(target, level, pname, params)


fn get_tex_level_parameteriv(target: TextureTarget, level: GLint, pname: GetTextureParameter, params: Ptr[GLint, MutAnyOrigin]) raises:
    return get_fn[glGetTexLevelParameteriv, "glGetTexLevelParameteriv"]()(target, level, pname, params)


fn get_tex_parameter_iiv(target: TextureTarget, pname: GetTextureParameter, params: Ptr[GLint, MutAnyOrigin]) raises:
    return get_fn[glGetTexParameterIiv, "glGetTexParameterIiv"]()(target, pname, params)


fn get_tex_parameter_iuiv(target: TextureTarget, pname: GetTextureParameter, params: Ptr[GLuint, MutAnyOrigin]) raises:
    return get_fn[glGetTexParameterIuiv, "glGetTexParameterIuiv"]()(target, pname, params)


fn get_tex_parameterfv(target: TextureTarget, pname: GetTextureParameter, params: Ptr[GLfloat, MutAnyOrigin]) raises:
    return get_fn[glGetTexParameterfv, "glGetTexParameterfv"]()(target, pname, params)


fn get_tex_parameteriv(target: TextureTarget, pname: GetTextureParameter, params: Ptr[GLint, MutAnyOrigin]) raises:
    return get_fn[glGetTexParameteriv, "glGetTexParameteriv"]()(target, pname, params)


fn get_texture_image(texture: GLuint, level: GLint, format: PixelFormat, type: PixelType, buf_size: GLsizei, pixels: Ptr[NoneType, MutAnyOrigin]) raises:
    return get_fn[glGetTextureImage, "glGetTextureImage"]()(texture, level, format, type, buf_size, pixels)


fn get_texture_level_parameterfv(texture: GLuint, level: GLint, pname: GetTextureParameter, params: Ptr[GLfloat, MutAnyOrigin]) raises:
    return get_fn[glGetTextureLevelParameterfv, "glGetTextureLevelParameterfv"]()(texture, level, pname, params)


fn get_texture_level_parameteriv(texture: GLuint, level: GLint, pname: GetTextureParameter, params: Ptr[GLint, MutAnyOrigin]) raises:
    return get_fn[glGetTextureLevelParameteriv, "glGetTextureLevelParameteriv"]()(texture, level, pname, params)


fn get_texture_parameter_iiv(texture: GLuint, pname: GetTextureParameter, params: Ptr[GLint, MutAnyOrigin]) raises:
    return get_fn[glGetTextureParameterIiv, "glGetTextureParameterIiv"]()(texture, pname, params)


fn get_texture_parameter_iuiv(texture: GLuint, pname: GetTextureParameter, params: Ptr[GLuint, MutAnyOrigin]) raises:
    return get_fn[glGetTextureParameterIuiv, "glGetTextureParameterIuiv"]()(texture, pname, params)


fn get_texture_parameterfv(texture: GLuint, pname: GetTextureParameter, params: Ptr[GLfloat, MutAnyOrigin]) raises:
    return get_fn[glGetTextureParameterfv, "glGetTextureParameterfv"]()(texture, pname, params)


fn get_texture_parameteriv(texture: GLuint, pname: GetTextureParameter, params: Ptr[GLint, MutAnyOrigin]) raises:
    return get_fn[glGetTextureParameteriv, "glGetTextureParameteriv"]()(texture, pname, params)


fn get_texture_sub_image(texture: GLuint, level: GLint, xoffset: GLint, yoffset: GLint, zoffset: GLint, width: GLsizei, height: GLsizei, depth: GLsizei, format: PixelFormat, type: PixelType, buf_size: GLsizei, pixels: Ptr[NoneType, MutAnyOrigin]) raises:
    return get_fn[glGetTextureSubImage, "glGetTextureSubImage"]()(texture, level, xoffset, yoffset, zoffset, width, height, depth, format, type, buf_size, pixels)


fn get_transform_feedback_varying(program: GLuint, index: GLuint, buf_size: GLsizei, length: Ptr[GLsizei, MutAnyOrigin], size: Ptr[GLsizei, MutAnyOrigin], type: Ptr[AttributeType, MutAnyOrigin], var name: String) raises:
    return get_fn[glGetTransformFeedbackVarying, "glGetTransformFeedbackVarying"]()(program, index, buf_size, length, size, type, name.as_c_string_slice().unsafe_ptr().as_any_origin())


fn get_transform_feedbacki64_v(xfb: GLuint, pname: TransformFeedbackPName, index: GLuint, param: Ptr[GLint64, MutAnyOrigin]) raises:
    return get_fn[glGetTransformFeedbacki64_v, "glGetTransformFeedbacki64_v"]()(xfb, pname, index, param)


fn get_transform_feedbacki_v(xfb: GLuint, pname: TransformFeedbackPName, index: GLuint, param: Ptr[GLint, MutAnyOrigin]) raises:
    return get_fn[glGetTransformFeedbacki_v, "glGetTransformFeedbacki_v"]()(xfb, pname, index, param)


fn get_transform_feedbackiv(xfb: GLuint, pname: TransformFeedbackPName, param: Ptr[GLint, MutAnyOrigin]) raises:
    return get_fn[glGetTransformFeedbackiv, "glGetTransformFeedbackiv"]()(xfb, pname, param)


fn get_uniform_block_index(program: GLuint, var uniform_block_name: String) raises -> GLuint:
    return get_fn[glGetUniformBlockIndex, "glGetUniformBlockIndex"]()(program, uniform_block_name.as_c_string_slice().unsafe_ptr().as_any_origin())


fn get_uniform_indices(program: GLuint, uniform_count: GLsizei, var uniform_names: List[String], uniform_indices: Ptr[GLuint, MutAnyOrigin]) raises:
    var c_list = [str.as_c_string_slice().unsafe_ptr().as_any_origin() for ref str in uniform_names]
    return get_fn[glGetUniformIndices, "glGetUniformIndices"]()(program, uniform_count, c_list.steal_data(), uniform_indices)


fn get_uniform_location(program: GLuint, var name: String) raises -> GLint:
    return get_fn[glGetUniformLocation, "glGetUniformLocation"]()(program, name.as_c_string_slice().unsafe_ptr().as_any_origin())


fn get_uniform_subroutineuiv(shadertype: ShaderType, location: GLint, params: Ptr[GLuint, MutAnyOrigin]) raises:
    return get_fn[glGetUniformSubroutineuiv, "glGetUniformSubroutineuiv"]()(shadertype, location, params)


fn get_uniformdv(program: GLuint, location: GLint, params: Ptr[GLdouble, MutAnyOrigin]) raises:
    return get_fn[glGetUniformdv, "glGetUniformdv"]()(program, location, params)


fn get_uniformfv(program: GLuint, location: GLint, params: Ptr[GLfloat, MutAnyOrigin]) raises:
    return get_fn[glGetUniformfv, "glGetUniformfv"]()(program, location, params)


fn get_uniformiv(program: GLuint, location: GLint, params: Ptr[GLint, MutAnyOrigin]) raises:
    return get_fn[glGetUniformiv, "glGetUniformiv"]()(program, location, params)


fn get_uniformuiv(program: GLuint, location: GLint, params: Ptr[GLuint, MutAnyOrigin]) raises:
    return get_fn[glGetUniformuiv, "glGetUniformuiv"]()(program, location, params)


fn get_vertex_array_indexed64iv(vaobj: GLuint, index: GLuint, pname: VertexArrayPName, param: Ptr[GLint64, MutAnyOrigin]) raises:
    return get_fn[glGetVertexArrayIndexed64iv, "glGetVertexArrayIndexed64iv"]()(vaobj, index, pname, param)


fn get_vertex_array_indexediv(vaobj: GLuint, index: GLuint, pname: VertexArrayPName, param: Ptr[GLint, MutAnyOrigin]) raises:
    return get_fn[glGetVertexArrayIndexediv, "glGetVertexArrayIndexediv"]()(vaobj, index, pname, param)


fn get_vertex_arrayiv(vaobj: GLuint, pname: VertexArrayPName, param: Ptr[GLint, MutAnyOrigin]) raises:
    return get_fn[glGetVertexArrayiv, "glGetVertexArrayiv"]()(vaobj, pname, param)


fn get_vertex_attrib_iiv(index: GLuint, pname: VertexAttribEnum, params: Ptr[GLint, MutAnyOrigin]) raises:
    return get_fn[glGetVertexAttribIiv, "glGetVertexAttribIiv"]()(index, pname, params)


fn get_vertex_attrib_iuiv(index: GLuint, pname: VertexAttribEnum, params: Ptr[GLuint, MutAnyOrigin]) raises:
    return get_fn[glGetVertexAttribIuiv, "glGetVertexAttribIuiv"]()(index, pname, params)


fn get_vertex_attrib_ldv(index: GLuint, pname: VertexAttribEnum, params: Ptr[GLdouble, MutAnyOrigin]) raises:
    return get_fn[glGetVertexAttribLdv, "glGetVertexAttribLdv"]()(index, pname, params)


fn get_vertex_attrib_pointerv(index: GLuint, pname: VertexAttribPointerPropertyARB, pointer: Ptr[Ptr[NoneType, MutAnyOrigin], MutAnyOrigin]) raises:
    return get_fn[glGetVertexAttribPointerv, "glGetVertexAttribPointerv"]()(index, pname, pointer)


fn get_vertex_attribdv(index: GLuint, pname: VertexAttribPropertyARB, params: Ptr[GLdouble, MutAnyOrigin]) raises:
    return get_fn[glGetVertexAttribdv, "glGetVertexAttribdv"]()(index, pname, params)


fn get_vertex_attribfv(index: GLuint, pname: VertexAttribPropertyARB, params: Ptr[GLfloat, MutAnyOrigin]) raises:
    return get_fn[glGetVertexAttribfv, "glGetVertexAttribfv"]()(index, pname, params)


fn get_vertex_attribiv(index: GLuint, pname: VertexAttribPropertyARB, params: Ptr[GLint, MutAnyOrigin]) raises:
    return get_fn[glGetVertexAttribiv, "glGetVertexAttribiv"]()(index, pname, params)


fn getn_color_table(target: ColorTableTarget, format: PixelFormat, type: PixelType, buf_size: GLsizei, table: Ptr[NoneType, MutAnyOrigin]) raises:
    return get_fn[glGetnColorTable, "glGetnColorTable"]()(target, format, type, buf_size, table)


fn getn_compressed_tex_image(target: TextureTarget, lod: GLint, buf_size: GLsizei, pixels: Ptr[NoneType, MutAnyOrigin]) raises:
    return get_fn[glGetnCompressedTexImage, "glGetnCompressedTexImage"]()(target, lod, buf_size, pixels)


fn getn_convolution_filter(target: ConvolutionTarget, format: PixelFormat, type: PixelType, buf_size: GLsizei, image: Ptr[NoneType, MutAnyOrigin]) raises:
    return get_fn[glGetnConvolutionFilter, "glGetnConvolutionFilter"]()(target, format, type, buf_size, image)


fn getn_histogram(target: HistogramTarget, reset: Bool, format: PixelFormat, type: PixelType, buf_size: GLsizei, values: Ptr[NoneType, MutAnyOrigin]) raises:
    return get_fn[glGetnHistogram, "glGetnHistogram"]()(target, GLboolean(Int(reset)), format, type, buf_size, values)


fn getn_mapdv(target: MapTarget, query: MapQuery, buf_size: GLsizei, v: Ptr[GLdouble, MutAnyOrigin]) raises:
    return get_fn[glGetnMapdv, "glGetnMapdv"]()(target, query, buf_size, v)


fn getn_mapfv(target: MapTarget, query: MapQuery, buf_size: GLsizei, v: Ptr[GLfloat, MutAnyOrigin]) raises:
    return get_fn[glGetnMapfv, "glGetnMapfv"]()(target, query, buf_size, v)


fn getn_mapiv(target: MapTarget, query: MapQuery, buf_size: GLsizei, v: Ptr[GLint, MutAnyOrigin]) raises:
    return get_fn[glGetnMapiv, "glGetnMapiv"]()(target, query, buf_size, v)


fn getn_minmax(target: MinmaxTarget, reset: Bool, format: PixelFormat, type: PixelType, buf_size: GLsizei, values: Ptr[NoneType, MutAnyOrigin]) raises:
    return get_fn[glGetnMinmax, "glGetnMinmax"]()(target, GLboolean(Int(reset)), format, type, buf_size, values)


fn getn_pixel_mapfv(map: PixelMap, buf_size: GLsizei, values: Ptr[GLfloat, MutAnyOrigin]) raises:
    return get_fn[glGetnPixelMapfv, "glGetnPixelMapfv"]()(map, buf_size, values)


fn getn_pixel_mapuiv(map: PixelMap, buf_size: GLsizei, values: Ptr[GLuint, MutAnyOrigin]) raises:
    return get_fn[glGetnPixelMapuiv, "glGetnPixelMapuiv"]()(map, buf_size, values)


fn getn_pixel_mapusv(map: PixelMap, buf_size: GLsizei, values: Ptr[GLushort, MutAnyOrigin]) raises:
    return get_fn[glGetnPixelMapusv, "glGetnPixelMapusv"]()(map, buf_size, values)


fn getn_polygon_stipple(buf_size: GLsizei, pattern: Ptr[GLubyte, MutAnyOrigin]) raises:
    return get_fn[glGetnPolygonStipple, "glGetnPolygonStipple"]()(buf_size, pattern)


fn getn_separable_filter(target: SeparableTarget, format: PixelFormat, type: PixelType, row_buf_size: GLsizei, row: Ptr[NoneType, MutAnyOrigin], column_buf_size: GLsizei, column: Ptr[NoneType, MutAnyOrigin], span: Ptr[NoneType, MutAnyOrigin]) raises:
    return get_fn[glGetnSeparableFilter, "glGetnSeparableFilter"]()(target, format, type, row_buf_size, row, column_buf_size, column, span)


fn getn_tex_image(target: TextureTarget, level: GLint, format: PixelFormat, type: PixelType, buf_size: GLsizei, pixels: Ptr[NoneType, MutAnyOrigin]) raises:
    return get_fn[glGetnTexImage, "glGetnTexImage"]()(target, level, format, type, buf_size, pixels)


fn getn_uniformdv(program: GLuint, location: GLint, buf_size: GLsizei, params: Ptr[GLdouble, MutAnyOrigin]) raises:
    return get_fn[glGetnUniformdv, "glGetnUniformdv"]()(program, location, buf_size, params)


fn getn_uniformfv(program: GLuint, location: GLint, buf_size: GLsizei, params: Ptr[GLfloat, MutAnyOrigin]) raises:
    return get_fn[glGetnUniformfv, "glGetnUniformfv"]()(program, location, buf_size, params)


fn getn_uniformiv(program: GLuint, location: GLint, buf_size: GLsizei, params: Ptr[GLint, MutAnyOrigin]) raises:
    return get_fn[glGetnUniformiv, "glGetnUniformiv"]()(program, location, buf_size, params)


fn getn_uniformuiv(program: GLuint, location: GLint, buf_size: GLsizei, params: Ptr[GLuint, MutAnyOrigin]) raises:
    return get_fn[glGetnUniformuiv, "glGetnUniformuiv"]()(program, location, buf_size, params)


fn hint(target: HintTarget, mode: HintMode) raises:
    return get_fn[glHint, "glHint"]()(target, mode)


fn invalidate_buffer_data(buffer: GLuint) raises:
    return get_fn[glInvalidateBufferData, "glInvalidateBufferData"]()(buffer)


fn invalidate_buffer_sub_data(buffer: GLuint, offset: GLintptr, length: GLsizeiptr) raises:
    return get_fn[glInvalidateBufferSubData, "glInvalidateBufferSubData"]()(buffer, offset, length)


fn invalidate_framebuffer(target: FramebufferTarget, num_attachments: GLsizei, attachments: Ptr[InvalidateFramebufferAttachment, ImmutAnyOrigin]) raises:
    return get_fn[glInvalidateFramebuffer, "glInvalidateFramebuffer"]()(target, num_attachments, attachments)


fn invalidate_named_framebuffer_data(framebuffer: GLuint, num_attachments: GLsizei, attachments: Ptr[FramebufferAttachment, ImmutAnyOrigin]) raises:
    return get_fn[glInvalidateNamedFramebufferData, "glInvalidateNamedFramebufferData"]()(framebuffer, num_attachments, attachments)


fn invalidate_named_framebuffer_sub_data(framebuffer: GLuint, num_attachments: GLsizei, attachments: Ptr[FramebufferAttachment, ImmutAnyOrigin], x: GLint, y: GLint, width: GLsizei, height: GLsizei) raises:
    return get_fn[glInvalidateNamedFramebufferSubData, "glInvalidateNamedFramebufferSubData"]()(framebuffer, num_attachments, attachments, x, y, width, height)


fn invalidate_sub_framebuffer(target: FramebufferTarget, num_attachments: GLsizei, attachments: Ptr[InvalidateFramebufferAttachment, ImmutAnyOrigin], x: GLint, y: GLint, width: GLsizei, height: GLsizei) raises:
    return get_fn[glInvalidateSubFramebuffer, "glInvalidateSubFramebuffer"]()(target, num_attachments, attachments, x, y, width, height)


fn invalidate_tex_image(texture: GLuint, level: GLint) raises:
    return get_fn[glInvalidateTexImage, "glInvalidateTexImage"]()(texture, level)


fn invalidate_tex_sub_image(texture: GLuint, level: GLint, xoffset: GLint, yoffset: GLint, zoffset: GLint, width: GLsizei, height: GLsizei, depth: GLsizei) raises:
    return get_fn[glInvalidateTexSubImage, "glInvalidateTexSubImage"]()(texture, level, xoffset, yoffset, zoffset, width, height, depth)


fn is_buffer(buffer: GLuint) raises -> GLboolean:
    return get_fn[glIsBuffer, "glIsBuffer"]()(buffer)


fn is_enabled(cap: EnableCap) raises -> GLboolean:
    return get_fn[glIsEnabled, "glIsEnabled"]()(cap)


fn is_enabledi(target: EnableCap, index: GLuint) raises -> GLboolean:
    return get_fn[glIsEnabledi, "glIsEnabledi"]()(target, index)


fn is_framebuffer(framebuffer: GLuint) raises -> GLboolean:
    return get_fn[glIsFramebuffer, "glIsFramebuffer"]()(framebuffer)


fn is_program(program: GLuint) raises -> GLboolean:
    return get_fn[glIsProgram, "glIsProgram"]()(program)


fn is_program_pipeline(pipeline: GLuint) raises -> GLboolean:
    return get_fn[glIsProgramPipeline, "glIsProgramPipeline"]()(pipeline)


fn is_query(id: GLuint) raises -> GLboolean:
    return get_fn[glIsQuery, "glIsQuery"]()(id)


fn is_renderbuffer(renderbuffer: GLuint) raises -> GLboolean:
    return get_fn[glIsRenderbuffer, "glIsRenderbuffer"]()(renderbuffer)


fn is_sampler(sampler: GLuint) raises -> GLboolean:
    return get_fn[glIsSampler, "glIsSampler"]()(sampler)


fn is_shader(shader: GLuint) raises -> GLboolean:
    return get_fn[glIsShader, "glIsShader"]()(shader)


fn is_sync(sync: GLsync) raises -> GLboolean:
    return get_fn[glIsSync, "glIsSync"]()(sync)


fn is_texture(texture: GLuint) raises -> GLboolean:
    return get_fn[glIsTexture, "glIsTexture"]()(texture)


fn is_transform_feedback(id: GLuint) raises -> GLboolean:
    return get_fn[glIsTransformFeedback, "glIsTransformFeedback"]()(id)


fn is_vertex_array(array: GLuint) raises -> GLboolean:
    return get_fn[glIsVertexArray, "glIsVertexArray"]()(array)


fn line_width(width: GLfloat) raises:
    return get_fn[glLineWidth, "glLineWidth"]()(width)


fn link_program(program: GLuint) raises:
    return get_fn[glLinkProgram, "glLinkProgram"]()(program)


fn logic_op(opcode: LogicOp) raises:
    return get_fn[glLogicOp, "glLogicOp"]()(opcode)


fn map_buffer(target: BufferTargetARB, access: BufferAccessARB) raises:
    return get_fn[glMapBuffer, "glMapBuffer"]()(target, access)


fn map_buffer_range(target: BufferTargetARB, offset: GLintptr, length: GLsizeiptr, access: MapBufferAccessMask) raises:
    return get_fn[glMapBufferRange, "glMapBufferRange"]()(target, offset, length, access)


fn map_named_buffer(buffer: GLuint, access: BufferAccessARB) raises:
    return get_fn[glMapNamedBuffer, "glMapNamedBuffer"]()(buffer, access)


fn map_named_buffer_range(buffer: GLuint, offset: GLintptr, length: GLsizeiptr, access: MapBufferAccessMask) raises:
    return get_fn[glMapNamedBufferRange, "glMapNamedBufferRange"]()(buffer, offset, length, access)


fn memory_barrier(barriers: MemoryBarrierMask) raises:
    return get_fn[glMemoryBarrier, "glMemoryBarrier"]()(barriers)


fn memory_barrier_by_region(barriers: MemoryBarrierMask) raises:
    return get_fn[glMemoryBarrierByRegion, "glMemoryBarrierByRegion"]()(barriers)


fn min_sample_shading(value: GLfloat) raises:
    return get_fn[glMinSampleShading, "glMinSampleShading"]()(value)


fn multi_draw_arrays(mode: PrimitiveType, first: Ptr[GLint, ImmutAnyOrigin], count: Ptr[GLsizei, ImmutAnyOrigin], drawcount: GLsizei) raises:
    return get_fn[glMultiDrawArrays, "glMultiDrawArrays"]()(mode, first, count, drawcount)


fn multi_draw_arrays_indirect(mode: PrimitiveType, indirect: Ptr[NoneType, ImmutAnyOrigin], drawcount: GLsizei, stride: GLsizei) raises:
    return get_fn[glMultiDrawArraysIndirect, "glMultiDrawArraysIndirect"]()(mode, indirect, drawcount, stride)


fn multi_draw_arrays_indirect_count(mode: PrimitiveType, indirect: Ptr[NoneType, ImmutAnyOrigin], drawcount: GLintptr, maxdrawcount: GLsizei, stride: GLsizei) raises:
    return get_fn[glMultiDrawArraysIndirectCount, "glMultiDrawArraysIndirectCount"]()(mode, indirect, drawcount, maxdrawcount, stride)


fn multi_draw_elements(mode: PrimitiveType, count: Ptr[GLsizei, ImmutAnyOrigin], type: DrawElementsType, indices: Ptr[Ptr[NoneType, ImmutAnyOrigin], ImmutAnyOrigin], drawcount: GLsizei) raises:
    return get_fn[glMultiDrawElements, "glMultiDrawElements"]()(mode, count, type, indices, drawcount)


fn multi_draw_elements_base_vertex(mode: PrimitiveType, count: Ptr[GLsizei, ImmutAnyOrigin], type: DrawElementsType, indices: Ptr[Ptr[NoneType, ImmutAnyOrigin], ImmutAnyOrigin], drawcount: GLsizei, basevertex: Ptr[GLint, ImmutAnyOrigin]) raises:
    return get_fn[glMultiDrawElementsBaseVertex, "glMultiDrawElementsBaseVertex"]()(mode, count, type, indices, drawcount, basevertex)


fn multi_draw_elements_indirect(mode: PrimitiveType, type: DrawElementsType, indirect: Ptr[NoneType, ImmutAnyOrigin], drawcount: GLsizei, stride: GLsizei) raises:
    return get_fn[glMultiDrawElementsIndirect, "glMultiDrawElementsIndirect"]()(mode, type, indirect, drawcount, stride)


fn multi_draw_elements_indirect_count(mode: PrimitiveType, type: DrawElementsType, indirect: Ptr[NoneType, ImmutAnyOrigin], drawcount: GLintptr, maxdrawcount: GLsizei, stride: GLsizei) raises:
    return get_fn[glMultiDrawElementsIndirectCount, "glMultiDrawElementsIndirectCount"]()(mode, type, indirect, drawcount, maxdrawcount, stride)


fn multi_tex_coord_p1ui(texture: TextureUnit, type: TexCoordPointerType, coords: GLuint) raises:
    return get_fn[glMultiTexCoordP1ui, "glMultiTexCoordP1ui"]()(texture, type, coords)


fn multi_tex_coord_p1uiv(texture: TextureUnit, type: TexCoordPointerType, coords: Ptr[GLuint, ImmutAnyOrigin]) raises:
    return get_fn[glMultiTexCoordP1uiv, "glMultiTexCoordP1uiv"]()(texture, type, coords)


fn multi_tex_coord_p2ui(texture: TextureUnit, type: TexCoordPointerType, coords: GLuint) raises:
    return get_fn[glMultiTexCoordP2ui, "glMultiTexCoordP2ui"]()(texture, type, coords)


fn multi_tex_coord_p2uiv(texture: TextureUnit, type: TexCoordPointerType, coords: Ptr[GLuint, ImmutAnyOrigin]) raises:
    return get_fn[glMultiTexCoordP2uiv, "glMultiTexCoordP2uiv"]()(texture, type, coords)


fn multi_tex_coord_p3ui(texture: TextureUnit, type: TexCoordPointerType, coords: GLuint) raises:
    return get_fn[glMultiTexCoordP3ui, "glMultiTexCoordP3ui"]()(texture, type, coords)


fn multi_tex_coord_p3uiv(texture: TextureUnit, type: TexCoordPointerType, coords: Ptr[GLuint, ImmutAnyOrigin]) raises:
    return get_fn[glMultiTexCoordP3uiv, "glMultiTexCoordP3uiv"]()(texture, type, coords)


fn multi_tex_coord_p4ui(texture: TextureUnit, type: TexCoordPointerType, coords: GLuint) raises:
    return get_fn[glMultiTexCoordP4ui, "glMultiTexCoordP4ui"]()(texture, type, coords)


fn multi_tex_coord_p4uiv(texture: TextureUnit, type: TexCoordPointerType, coords: Ptr[GLuint, ImmutAnyOrigin]) raises:
    return get_fn[glMultiTexCoordP4uiv, "glMultiTexCoordP4uiv"]()(texture, type, coords)


fn named_buffer_data(buffer: GLuint, size: GLsizeiptr, data: Ptr[NoneType, ImmutAnyOrigin], usage: BufferUsageARB) raises:
    return get_fn[glNamedBufferData, "glNamedBufferData"]()(buffer, size, data, usage)


fn named_buffer_storage(buffer: GLuint, size: GLsizeiptr, data: Ptr[NoneType, ImmutAnyOrigin], flags: BufferStorageMask) raises:
    return get_fn[glNamedBufferStorage, "glNamedBufferStorage"]()(buffer, size, data, flags)


fn named_buffer_sub_data(buffer: GLuint, offset: GLintptr, size: GLsizeiptr, data: Ptr[NoneType, ImmutAnyOrigin]) raises:
    return get_fn[glNamedBufferSubData, "glNamedBufferSubData"]()(buffer, offset, size, data)


fn named_framebuffer_draw_buffer(framebuffer: GLuint, buf: ColorBuffer) raises:
    return get_fn[glNamedFramebufferDrawBuffer, "glNamedFramebufferDrawBuffer"]()(framebuffer, buf)


fn named_framebuffer_draw_buffers(framebuffer: GLuint, n: GLsizei, bufs: Ptr[ColorBuffer, ImmutAnyOrigin]) raises:
    return get_fn[glNamedFramebufferDrawBuffers, "glNamedFramebufferDrawBuffers"]()(framebuffer, n, bufs)


fn named_framebuffer_parameteri(framebuffer: GLuint, pname: FramebufferParameterName, param: GLint) raises:
    return get_fn[glNamedFramebufferParameteri, "glNamedFramebufferParameteri"]()(framebuffer, pname, param)


fn named_framebuffer_read_buffer(framebuffer: GLuint, src: ColorBuffer) raises:
    return get_fn[glNamedFramebufferReadBuffer, "glNamedFramebufferReadBuffer"]()(framebuffer, src)


fn named_framebuffer_renderbuffer(framebuffer: GLuint, attachment: FramebufferAttachment, renderbuffertarget: RenderbufferTarget, renderbuffer: GLuint) raises:
    return get_fn[glNamedFramebufferRenderbuffer, "glNamedFramebufferRenderbuffer"]()(framebuffer, attachment, renderbuffertarget, renderbuffer)


fn named_framebuffer_texture(framebuffer: GLuint, attachment: FramebufferAttachment, texture: GLuint, level: GLint) raises:
    return get_fn[glNamedFramebufferTexture, "glNamedFramebufferTexture"]()(framebuffer, attachment, texture, level)


fn named_framebuffer_texture_layer(framebuffer: GLuint, attachment: FramebufferAttachment, texture: GLuint, level: GLint, layer: GLint) raises:
    return get_fn[glNamedFramebufferTextureLayer, "glNamedFramebufferTextureLayer"]()(framebuffer, attachment, texture, level, layer)


fn named_renderbuffer_storage(renderbuffer: GLuint, internalformat: InternalFormat, width: GLsizei, height: GLsizei) raises:
    return get_fn[glNamedRenderbufferStorage, "glNamedRenderbufferStorage"]()(renderbuffer, internalformat, width, height)


fn named_renderbuffer_storage_multisample(renderbuffer: GLuint, samples: GLsizei, internalformat: InternalFormat, width: GLsizei, height: GLsizei) raises:
    return get_fn[glNamedRenderbufferStorageMultisample, "glNamedRenderbufferStorageMultisample"]()(renderbuffer, samples, internalformat, width, height)


fn normal_p3ui(type: NormalPointerType, coords: GLuint) raises:
    return get_fn[glNormalP3ui, "glNormalP3ui"]()(type, coords)


fn normal_p3uiv(type: NormalPointerType, coords: Ptr[GLuint, ImmutAnyOrigin]) raises:
    return get_fn[glNormalP3uiv, "glNormalP3uiv"]()(type, coords)


fn object_label(identifier: ObjectIdentifier, name: GLuint, length: GLsizei, var label: String) raises:
    return get_fn[glObjectLabel, "glObjectLabel"]()(identifier, name, length, label.as_c_string_slice().unsafe_ptr().as_any_origin())


fn object_ptr_label(ptr: Ptr[NoneType, ImmutAnyOrigin], length: GLsizei, var label: String) raises:
    return get_fn[glObjectPtrLabel, "glObjectPtrLabel"]()(ptr, length, label.as_c_string_slice().unsafe_ptr().as_any_origin())


fn patch_parameterfv(pname: PatchParameterName, values: Ptr[GLfloat, ImmutAnyOrigin]) raises:
    return get_fn[glPatchParameterfv, "glPatchParameterfv"]()(pname, values)


fn patch_parameteri(pname: PatchParameterName, value: GLint) raises:
    return get_fn[glPatchParameteri, "glPatchParameteri"]()(pname, value)


fn pause_transform_feedback() raises:
    return get_fn[glPauseTransformFeedback, "glPauseTransformFeedback"]()()


fn pixel_storef(pname: PixelStoreParameter, param: GLfloat) raises:
    return get_fn[glPixelStoref, "glPixelStoref"]()(pname, param)


fn pixel_storei(pname: PixelStoreParameter, param: GLint) raises:
    return get_fn[glPixelStorei, "glPixelStorei"]()(pname, param)


fn point_parameterf(pname: PointParameterNameARB, param: GLfloat) raises:
    return get_fn[glPointParameterf, "glPointParameterf"]()(pname, param)


fn point_parameterfv(pname: PointParameterNameARB, params: Ptr[GLfloat, ImmutAnyOrigin]) raises:
    return get_fn[glPointParameterfv, "glPointParameterfv"]()(pname, params)


fn point_parameteri(pname: PointParameterNameARB, param: GLint) raises:
    return get_fn[glPointParameteri, "glPointParameteri"]()(pname, param)


fn point_parameteriv(pname: PointParameterNameARB, params: Ptr[GLint, ImmutAnyOrigin]) raises:
    return get_fn[glPointParameteriv, "glPointParameteriv"]()(pname, params)


fn point_size(size: GLfloat) raises:
    return get_fn[glPointSize, "glPointSize"]()(size)


fn polygon_mode(face: TriangleFace, mode: PolygonMode) raises:
    return get_fn[glPolygonMode, "glPolygonMode"]()(face, mode)


fn polygon_offset(factor: GLfloat, units: GLfloat) raises:
    return get_fn[glPolygonOffset, "glPolygonOffset"]()(factor, units)


fn polygon_offset_clamp(factor: GLfloat, units: GLfloat, clamp: GLfloat) raises:
    return get_fn[glPolygonOffsetClamp, "glPolygonOffsetClamp"]()(factor, units, clamp)


fn pop_debug_group() raises:
    return get_fn[glPopDebugGroup, "glPopDebugGroup"]()()


fn primitive_restart_index(index: GLuint) raises:
    return get_fn[glPrimitiveRestartIndex, "glPrimitiveRestartIndex"]()(index)


fn program_binary(program: GLuint, binary_format: GLenum, binary: Ptr[NoneType, ImmutAnyOrigin], length: GLsizei) raises:
    return get_fn[glProgramBinary, "glProgramBinary"]()(program, binary_format, binary, length)


fn program_parameteri(program: GLuint, pname: ProgramParameterPName, value: GLint) raises:
    return get_fn[glProgramParameteri, "glProgramParameteri"]()(program, pname, value)


fn program_uniform1d(program: GLuint, location: GLint, v0: GLdouble) raises:
    return get_fn[glProgramUniform1d, "glProgramUniform1d"]()(program, location, v0)


fn program_uniform1dv(program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLdouble, ImmutAnyOrigin]) raises:
    return get_fn[glProgramUniform1dv, "glProgramUniform1dv"]()(program, location, count, value)


fn program_uniform1f(program: GLuint, location: GLint, v0: GLfloat) raises:
    return get_fn[glProgramUniform1f, "glProgramUniform1f"]()(program, location, v0)


fn program_uniform1fv(program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLfloat, ImmutAnyOrigin]) raises:
    return get_fn[glProgramUniform1fv, "glProgramUniform1fv"]()(program, location, count, value)


fn program_uniform1i(program: GLuint, location: GLint, v0: GLint) raises:
    return get_fn[glProgramUniform1i, "glProgramUniform1i"]()(program, location, v0)


fn program_uniform1iv(program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLint, ImmutAnyOrigin]) raises:
    return get_fn[glProgramUniform1iv, "glProgramUniform1iv"]()(program, location, count, value)


fn program_uniform1ui(program: GLuint, location: GLint, v0: GLuint) raises:
    return get_fn[glProgramUniform1ui, "glProgramUniform1ui"]()(program, location, v0)


fn program_uniform1uiv(program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLuint, ImmutAnyOrigin]) raises:
    return get_fn[glProgramUniform1uiv, "glProgramUniform1uiv"]()(program, location, count, value)


fn program_uniform2d(program: GLuint, location: GLint, v0: GLdouble, v1: GLdouble) raises:
    return get_fn[glProgramUniform2d, "glProgramUniform2d"]()(program, location, v0, v1)


fn program_uniform2dv(program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLdouble, ImmutAnyOrigin]) raises:
    return get_fn[glProgramUniform2dv, "glProgramUniform2dv"]()(program, location, count, value)


fn program_uniform2f(program: GLuint, location: GLint, v0: GLfloat, v1: GLfloat) raises:
    return get_fn[glProgramUniform2f, "glProgramUniform2f"]()(program, location, v0, v1)


fn program_uniform2fv(program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLfloat, ImmutAnyOrigin]) raises:
    return get_fn[glProgramUniform2fv, "glProgramUniform2fv"]()(program, location, count, value)


fn program_uniform2i(program: GLuint, location: GLint, v0: GLint, v1: GLint) raises:
    return get_fn[glProgramUniform2i, "glProgramUniform2i"]()(program, location, v0, v1)


fn program_uniform2iv(program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLint, ImmutAnyOrigin]) raises:
    return get_fn[glProgramUniform2iv, "glProgramUniform2iv"]()(program, location, count, value)


fn program_uniform2ui(program: GLuint, location: GLint, v0: GLuint, v1: GLuint) raises:
    return get_fn[glProgramUniform2ui, "glProgramUniform2ui"]()(program, location, v0, v1)


fn program_uniform2uiv(program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLuint, ImmutAnyOrigin]) raises:
    return get_fn[glProgramUniform2uiv, "glProgramUniform2uiv"]()(program, location, count, value)


fn program_uniform3d(program: GLuint, location: GLint, v0: GLdouble, v1: GLdouble, v2: GLdouble) raises:
    return get_fn[glProgramUniform3d, "glProgramUniform3d"]()(program, location, v0, v1, v2)


fn program_uniform3dv(program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLdouble, ImmutAnyOrigin]) raises:
    return get_fn[glProgramUniform3dv, "glProgramUniform3dv"]()(program, location, count, value)


fn program_uniform3f(program: GLuint, location: GLint, v0: GLfloat, v1: GLfloat, v2: GLfloat) raises:
    return get_fn[glProgramUniform3f, "glProgramUniform3f"]()(program, location, v0, v1, v2)


fn program_uniform3fv(program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLfloat, ImmutAnyOrigin]) raises:
    return get_fn[glProgramUniform3fv, "glProgramUniform3fv"]()(program, location, count, value)


fn program_uniform3i(program: GLuint, location: GLint, v0: GLint, v1: GLint, v2: GLint) raises:
    return get_fn[glProgramUniform3i, "glProgramUniform3i"]()(program, location, v0, v1, v2)


fn program_uniform3iv(program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLint, ImmutAnyOrigin]) raises:
    return get_fn[glProgramUniform3iv, "glProgramUniform3iv"]()(program, location, count, value)


fn program_uniform3ui(program: GLuint, location: GLint, v0: GLuint, v1: GLuint, v2: GLuint) raises:
    return get_fn[glProgramUniform3ui, "glProgramUniform3ui"]()(program, location, v0, v1, v2)


fn program_uniform3uiv(program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLuint, ImmutAnyOrigin]) raises:
    return get_fn[glProgramUniform3uiv, "glProgramUniform3uiv"]()(program, location, count, value)


fn program_uniform4d(program: GLuint, location: GLint, v0: GLdouble, v1: GLdouble, v2: GLdouble, v3: GLdouble) raises:
    return get_fn[glProgramUniform4d, "glProgramUniform4d"]()(program, location, v0, v1, v2, v3)


fn program_uniform4dv(program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLdouble, ImmutAnyOrigin]) raises:
    return get_fn[glProgramUniform4dv, "glProgramUniform4dv"]()(program, location, count, value)


fn program_uniform4f(program: GLuint, location: GLint, v0: GLfloat, v1: GLfloat, v2: GLfloat, v3: GLfloat) raises:
    return get_fn[glProgramUniform4f, "glProgramUniform4f"]()(program, location, v0, v1, v2, v3)


fn program_uniform4fv(program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLfloat, ImmutAnyOrigin]) raises:
    return get_fn[glProgramUniform4fv, "glProgramUniform4fv"]()(program, location, count, value)


fn program_uniform4i(program: GLuint, location: GLint, v0: GLint, v1: GLint, v2: GLint, v3: GLint) raises:
    return get_fn[glProgramUniform4i, "glProgramUniform4i"]()(program, location, v0, v1, v2, v3)


fn program_uniform4iv(program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLint, ImmutAnyOrigin]) raises:
    return get_fn[glProgramUniform4iv, "glProgramUniform4iv"]()(program, location, count, value)


fn program_uniform4ui(program: GLuint, location: GLint, v0: GLuint, v1: GLuint, v2: GLuint, v3: GLuint) raises:
    return get_fn[glProgramUniform4ui, "glProgramUniform4ui"]()(program, location, v0, v1, v2, v3)


fn program_uniform4uiv(program: GLuint, location: GLint, count: GLsizei, value: Ptr[GLuint, ImmutAnyOrigin]) raises:
    return get_fn[glProgramUniform4uiv, "glProgramUniform4uiv"]()(program, location, count, value)


fn program_uniform_matrix2dv(program: GLuint, location: GLint, count: GLsizei, transpose: Bool, value: Ptr[GLdouble, ImmutAnyOrigin]) raises:
    return get_fn[glProgramUniformMatrix2dv, "glProgramUniformMatrix2dv"]()(program, location, count, GLboolean(Int(transpose)), value)


fn program_uniform_matrix2fv(program: GLuint, location: GLint, count: GLsizei, transpose: Bool, value: Ptr[GLfloat, ImmutAnyOrigin]) raises:
    return get_fn[glProgramUniformMatrix2fv, "glProgramUniformMatrix2fv"]()(program, location, count, GLboolean(Int(transpose)), value)


fn program_uniform_matrix2x3dv(program: GLuint, location: GLint, count: GLsizei, transpose: Bool, value: Ptr[GLdouble, ImmutAnyOrigin]) raises:
    return get_fn[glProgramUniformMatrix2x3dv, "glProgramUniformMatrix2x3dv"]()(program, location, count, GLboolean(Int(transpose)), value)


fn program_uniform_matrix2x3fv(program: GLuint, location: GLint, count: GLsizei, transpose: Bool, value: Ptr[GLfloat, ImmutAnyOrigin]) raises:
    return get_fn[glProgramUniformMatrix2x3fv, "glProgramUniformMatrix2x3fv"]()(program, location, count, GLboolean(Int(transpose)), value)


fn program_uniform_matrix2x4dv(program: GLuint, location: GLint, count: GLsizei, transpose: Bool, value: Ptr[GLdouble, ImmutAnyOrigin]) raises:
    return get_fn[glProgramUniformMatrix2x4dv, "glProgramUniformMatrix2x4dv"]()(program, location, count, GLboolean(Int(transpose)), value)


fn program_uniform_matrix2x4fv(program: GLuint, location: GLint, count: GLsizei, transpose: Bool, value: Ptr[GLfloat, ImmutAnyOrigin]) raises:
    return get_fn[glProgramUniformMatrix2x4fv, "glProgramUniformMatrix2x4fv"]()(program, location, count, GLboolean(Int(transpose)), value)


fn program_uniform_matrix3dv(program: GLuint, location: GLint, count: GLsizei, transpose: Bool, value: Ptr[GLdouble, ImmutAnyOrigin]) raises:
    return get_fn[glProgramUniformMatrix3dv, "glProgramUniformMatrix3dv"]()(program, location, count, GLboolean(Int(transpose)), value)


fn program_uniform_matrix3fv(program: GLuint, location: GLint, count: GLsizei, transpose: Bool, value: Ptr[GLfloat, ImmutAnyOrigin]) raises:
    return get_fn[glProgramUniformMatrix3fv, "glProgramUniformMatrix3fv"]()(program, location, count, GLboolean(Int(transpose)), value)


fn program_uniform_matrix3x2dv(program: GLuint, location: GLint, count: GLsizei, transpose: Bool, value: Ptr[GLdouble, ImmutAnyOrigin]) raises:
    return get_fn[glProgramUniformMatrix3x2dv, "glProgramUniformMatrix3x2dv"]()(program, location, count, GLboolean(Int(transpose)), value)


fn program_uniform_matrix3x2fv(program: GLuint, location: GLint, count: GLsizei, transpose: Bool, value: Ptr[GLfloat, ImmutAnyOrigin]) raises:
    return get_fn[glProgramUniformMatrix3x2fv, "glProgramUniformMatrix3x2fv"]()(program, location, count, GLboolean(Int(transpose)), value)


fn program_uniform_matrix3x4dv(program: GLuint, location: GLint, count: GLsizei, transpose: Bool, value: Ptr[GLdouble, ImmutAnyOrigin]) raises:
    return get_fn[glProgramUniformMatrix3x4dv, "glProgramUniformMatrix3x4dv"]()(program, location, count, GLboolean(Int(transpose)), value)


fn program_uniform_matrix3x4fv(program: GLuint, location: GLint, count: GLsizei, transpose: Bool, value: Ptr[GLfloat, ImmutAnyOrigin]) raises:
    return get_fn[glProgramUniformMatrix3x4fv, "glProgramUniformMatrix3x4fv"]()(program, location, count, GLboolean(Int(transpose)), value)


fn program_uniform_matrix4dv(program: GLuint, location: GLint, count: GLsizei, transpose: Bool, value: Ptr[GLdouble, ImmutAnyOrigin]) raises:
    return get_fn[glProgramUniformMatrix4dv, "glProgramUniformMatrix4dv"]()(program, location, count, GLboolean(Int(transpose)), value)


fn program_uniform_matrix4fv(program: GLuint, location: GLint, count: GLsizei, transpose: Bool, value: Ptr[GLfloat, ImmutAnyOrigin]) raises:
    return get_fn[glProgramUniformMatrix4fv, "glProgramUniformMatrix4fv"]()(program, location, count, GLboolean(Int(transpose)), value)


fn program_uniform_matrix4x2dv(program: GLuint, location: GLint, count: GLsizei, transpose: Bool, value: Ptr[GLdouble, ImmutAnyOrigin]) raises:
    return get_fn[glProgramUniformMatrix4x2dv, "glProgramUniformMatrix4x2dv"]()(program, location, count, GLboolean(Int(transpose)), value)


fn program_uniform_matrix4x2fv(program: GLuint, location: GLint, count: GLsizei, transpose: Bool, value: Ptr[GLfloat, ImmutAnyOrigin]) raises:
    return get_fn[glProgramUniformMatrix4x2fv, "glProgramUniformMatrix4x2fv"]()(program, location, count, GLboolean(Int(transpose)), value)


fn program_uniform_matrix4x3dv(program: GLuint, location: GLint, count: GLsizei, transpose: Bool, value: Ptr[GLdouble, ImmutAnyOrigin]) raises:
    return get_fn[glProgramUniformMatrix4x3dv, "glProgramUniformMatrix4x3dv"]()(program, location, count, GLboolean(Int(transpose)), value)


fn program_uniform_matrix4x3fv(program: GLuint, location: GLint, count: GLsizei, transpose: Bool, value: Ptr[GLfloat, ImmutAnyOrigin]) raises:
    return get_fn[glProgramUniformMatrix4x3fv, "glProgramUniformMatrix4x3fv"]()(program, location, count, GLboolean(Int(transpose)), value)


fn provoking_vertex(mode: VertexProvokingMode) raises:
    return get_fn[glProvokingVertex, "glProvokingVertex"]()(mode)


fn push_debug_group(source: DebugSource, id: GLuint, length: GLsizei, var message: String) raises:
    return get_fn[glPushDebugGroup, "glPushDebugGroup"]()(source, id, length, message.as_c_string_slice().unsafe_ptr().as_any_origin())


fn query_counter(id: GLuint, target: QueryCounterTarget) raises:
    return get_fn[glQueryCounter, "glQueryCounter"]()(id, target)


fn read_buffer(src: ReadBufferMode) raises:
    return get_fn[glReadBuffer, "glReadBuffer"]()(src)


fn read_pixels(x: GLint, y: GLint, width: GLsizei, height: GLsizei, format: PixelFormat, type: PixelType, pixels: Ptr[NoneType, MutAnyOrigin]) raises:
    return get_fn[glReadPixels, "glReadPixels"]()(x, y, width, height, format, type, pixels)


fn readn_pixels(x: GLint, y: GLint, width: GLsizei, height: GLsizei, format: PixelFormat, type: PixelType, buf_size: GLsizei, data: Ptr[NoneType, MutAnyOrigin]) raises:
    return get_fn[glReadnPixels, "glReadnPixels"]()(x, y, width, height, format, type, buf_size, data)


fn release_shader_compiler() raises:
    return get_fn[glReleaseShaderCompiler, "glReleaseShaderCompiler"]()()


fn renderbuffer_storage(target: RenderbufferTarget, internalformat: InternalFormat, width: GLsizei, height: GLsizei) raises:
    return get_fn[glRenderbufferStorage, "glRenderbufferStorage"]()(target, internalformat, width, height)


fn renderbuffer_storage_multisample(target: RenderbufferTarget, samples: GLsizei, internalformat: InternalFormat, width: GLsizei, height: GLsizei) raises:
    return get_fn[glRenderbufferStorageMultisample, "glRenderbufferStorageMultisample"]()(target, samples, internalformat, width, height)


fn resume_transform_feedback() raises:
    return get_fn[glResumeTransformFeedback, "glResumeTransformFeedback"]()()


fn sample_coverage(value: GLfloat, invert: Bool) raises:
    return get_fn[glSampleCoverage, "glSampleCoverage"]()(value, GLboolean(Int(invert)))


fn sample_maski(mask_number: GLuint, mask: GLbitfield) raises:
    return get_fn[glSampleMaski, "glSampleMaski"]()(mask_number, mask)


fn sampler_parameter_iiv(sampler: GLuint, pname: SamplerParameterI, param: Ptr[GLint, ImmutAnyOrigin]) raises:
    return get_fn[glSamplerParameterIiv, "glSamplerParameterIiv"]()(sampler, pname, param)


fn sampler_parameter_iuiv(sampler: GLuint, pname: SamplerParameterI, param: Ptr[GLuint, ImmutAnyOrigin]) raises:
    return get_fn[glSamplerParameterIuiv, "glSamplerParameterIuiv"]()(sampler, pname, param)


fn sampler_parameterf(sampler: GLuint, pname: SamplerParameterF, param: GLfloat) raises:
    return get_fn[glSamplerParameterf, "glSamplerParameterf"]()(sampler, pname, param)


fn sampler_parameterfv(sampler: GLuint, pname: SamplerParameterF, param: Ptr[GLfloat, ImmutAnyOrigin]) raises:
    return get_fn[glSamplerParameterfv, "glSamplerParameterfv"]()(sampler, pname, param)


fn sampler_parameteri(sampler: GLuint, pname: SamplerParameterI, param: GLint) raises:
    return get_fn[glSamplerParameteri, "glSamplerParameteri"]()(sampler, pname, param)


fn sampler_parameteriv(sampler: GLuint, pname: SamplerParameterI, param: Ptr[GLint, ImmutAnyOrigin]) raises:
    return get_fn[glSamplerParameteriv, "glSamplerParameteriv"]()(sampler, pname, param)


fn scissor(x: GLint, y: GLint, width: GLsizei, height: GLsizei) raises:
    return get_fn[glScissor, "glScissor"]()(x, y, width, height)


fn scissor_arrayv(first: GLuint, count: GLsizei, v: Ptr[GLint, ImmutAnyOrigin]) raises:
    return get_fn[glScissorArrayv, "glScissorArrayv"]()(first, count, v)


fn scissor_indexed(index: GLuint, left: GLint, bottom: GLint, width: GLsizei, height: GLsizei) raises:
    return get_fn[glScissorIndexed, "glScissorIndexed"]()(index, left, bottom, width, height)


fn scissor_indexedv(index: GLuint, v: Ptr[GLint, ImmutAnyOrigin]) raises:
    return get_fn[glScissorIndexedv, "glScissorIndexedv"]()(index, v)


fn secondary_color_p3ui(type: ColorPointerType, color: GLuint) raises:
    return get_fn[glSecondaryColorP3ui, "glSecondaryColorP3ui"]()(type, color)


fn secondary_color_p3uiv(type: ColorPointerType, color: Ptr[GLuint, ImmutAnyOrigin]) raises:
    return get_fn[glSecondaryColorP3uiv, "glSecondaryColorP3uiv"]()(type, color)


fn shader_binary(count: GLsizei, shaders: Ptr[GLuint, ImmutAnyOrigin], binary_format: ShaderBinaryFormat, binary: Ptr[NoneType, ImmutAnyOrigin], length: GLsizei) raises:
    return get_fn[glShaderBinary, "glShaderBinary"]()(count, shaders, binary_format, binary, length)


fn shader_source(shader: GLuint, count: GLsizei, var string: List[String], length: Ptr[GLint, ImmutAnyOrigin]) raises:
    var c_list = [str.as_c_string_slice().unsafe_ptr().as_any_origin() for ref str in string]
    return get_fn[glShaderSource, "glShaderSource"]()(shader, count, c_list.steal_data(), length)


fn shader_storage_block_binding(program: GLuint, storage_block_index: GLuint, storage_block_binding: GLuint) raises:
    return get_fn[glShaderStorageBlockBinding, "glShaderStorageBlockBinding"]()(program, storage_block_index, storage_block_binding)


fn specialize_shader(shader: GLuint, var p_entry_point: String, num_specialization_constants: GLuint, p_constant_index: Ptr[GLuint, ImmutAnyOrigin], p_constant_value: Ptr[GLuint, ImmutAnyOrigin]) raises:
    return get_fn[glSpecializeShader, "glSpecializeShader"]()(shader, p_entry_point.as_c_string_slice().unsafe_ptr().as_any_origin(), num_specialization_constants, p_constant_index, p_constant_value)


fn stencil_func(func: StencilFunction, ref_: GLint, mask: GLuint) raises:
    return get_fn[glStencilFunc, "glStencilFunc"]()(func, ref_, mask)


fn stencil_func_separate(face: TriangleFace, func: StencilFunction, ref_: GLint, mask: GLuint) raises:
    return get_fn[glStencilFuncSeparate, "glStencilFuncSeparate"]()(face, func, ref_, mask)


fn stencil_mask(mask: GLuint) raises:
    return get_fn[glStencilMask, "glStencilMask"]()(mask)


fn stencil_mask_separate(face: TriangleFace, mask: GLuint) raises:
    return get_fn[glStencilMaskSeparate, "glStencilMaskSeparate"]()(face, mask)


fn stencil_op(fail: StencilOp, zfail: StencilOp, zpass: StencilOp) raises:
    return get_fn[glStencilOp, "glStencilOp"]()(fail, zfail, zpass)


fn stencil_op_separate(face: TriangleFace, sfail: StencilOp, dpfail: StencilOp, dppass: StencilOp) raises:
    return get_fn[glStencilOpSeparate, "glStencilOpSeparate"]()(face, sfail, dpfail, dppass)


fn tex_buffer(target: TextureTarget, internalformat: SizedInternalFormat, buffer: GLuint) raises:
    return get_fn[glTexBuffer, "glTexBuffer"]()(target, internalformat, buffer)


fn tex_buffer_range(target: TextureTarget, internalformat: SizedInternalFormat, buffer: GLuint, offset: GLintptr, size: GLsizeiptr) raises:
    return get_fn[glTexBufferRange, "glTexBufferRange"]()(target, internalformat, buffer, offset, size)


fn tex_coord_p1ui(type: TexCoordPointerType, coords: GLuint) raises:
    return get_fn[glTexCoordP1ui, "glTexCoordP1ui"]()(type, coords)


fn tex_coord_p1uiv(type: TexCoordPointerType, coords: Ptr[GLuint, ImmutAnyOrigin]) raises:
    return get_fn[glTexCoordP1uiv, "glTexCoordP1uiv"]()(type, coords)


fn tex_coord_p2ui(type: TexCoordPointerType, coords: GLuint) raises:
    return get_fn[glTexCoordP2ui, "glTexCoordP2ui"]()(type, coords)


fn tex_coord_p2uiv(type: TexCoordPointerType, coords: Ptr[GLuint, ImmutAnyOrigin]) raises:
    return get_fn[glTexCoordP2uiv, "glTexCoordP2uiv"]()(type, coords)


fn tex_coord_p3ui(type: TexCoordPointerType, coords: GLuint) raises:
    return get_fn[glTexCoordP3ui, "glTexCoordP3ui"]()(type, coords)


fn tex_coord_p3uiv(type: TexCoordPointerType, coords: Ptr[GLuint, ImmutAnyOrigin]) raises:
    return get_fn[glTexCoordP3uiv, "glTexCoordP3uiv"]()(type, coords)


fn tex_coord_p4ui(type: TexCoordPointerType, coords: GLuint) raises:
    return get_fn[glTexCoordP4ui, "glTexCoordP4ui"]()(type, coords)


fn tex_coord_p4uiv(type: TexCoordPointerType, coords: Ptr[GLuint, ImmutAnyOrigin]) raises:
    return get_fn[glTexCoordP4uiv, "glTexCoordP4uiv"]()(type, coords)


fn tex_image_1d(target: TextureTarget, level: GLint, internalformat: InternalFormat, width: GLsizei, border: GLint, format: PixelFormat, type: PixelType, pixels: Ptr[NoneType, ImmutAnyOrigin]) raises:
    return get_fn[glTexImage1D, "glTexImage1D"]()(target, level, internalformat, width, border, format, type, pixels)


fn tex_image_2d(target: TextureTarget, level: GLint, internalformat: InternalFormat, width: GLsizei, height: GLsizei, border: GLint, format: PixelFormat, type: PixelType, pixels: Ptr[NoneType, ImmutAnyOrigin]) raises:
    return get_fn[glTexImage2D, "glTexImage2D"]()(target, level, internalformat, width, height, border, format, type, pixels)


fn tex_image2_d_multisample(target: TextureTarget, samples: GLsizei, internalformat: InternalFormat, width: GLsizei, height: GLsizei, fixedsamplelocations: Bool) raises:
    return get_fn[glTexImage2DMultisample, "glTexImage2DMultisample"]()(target, samples, internalformat, width, height, GLboolean(Int(fixedsamplelocations)))


fn tex_image_3d(target: TextureTarget, level: GLint, internalformat: InternalFormat, width: GLsizei, height: GLsizei, depth: GLsizei, border: GLint, format: PixelFormat, type: PixelType, pixels: Ptr[NoneType, ImmutAnyOrigin]) raises:
    return get_fn[glTexImage3D, "glTexImage3D"]()(target, level, internalformat, width, height, depth, border, format, type, pixels)


fn tex_image3_d_multisample(target: TextureTarget, samples: GLsizei, internalformat: InternalFormat, width: GLsizei, height: GLsizei, depth: GLsizei, fixedsamplelocations: Bool) raises:
    return get_fn[glTexImage3DMultisample, "glTexImage3DMultisample"]()(target, samples, internalformat, width, height, depth, GLboolean(Int(fixedsamplelocations)))


fn tex_parameter_iiv(target: TextureTarget, pname: TextureParameterName, params: Ptr[GLint, ImmutAnyOrigin]) raises:
    return get_fn[glTexParameterIiv, "glTexParameterIiv"]()(target, pname, params)


fn tex_parameter_iuiv(target: TextureTarget, pname: TextureParameterName, params: Ptr[GLuint, ImmutAnyOrigin]) raises:
    return get_fn[glTexParameterIuiv, "glTexParameterIuiv"]()(target, pname, params)


fn tex_parameterf(target: TextureTarget, pname: TextureParameterName, param: GLfloat) raises:
    return get_fn[glTexParameterf, "glTexParameterf"]()(target, pname, param)


fn tex_parameterfv(target: TextureTarget, pname: TextureParameterName, params: Ptr[GLfloat, ImmutAnyOrigin]) raises:
    return get_fn[glTexParameterfv, "glTexParameterfv"]()(target, pname, params)


fn tex_parameteri(target: TextureTarget, pname: TextureParameterName, param: GLint) raises:
    return get_fn[glTexParameteri, "glTexParameteri"]()(target, pname, param)


fn tex_parameteriv(target: TextureTarget, pname: TextureParameterName, params: Ptr[GLint, ImmutAnyOrigin]) raises:
    return get_fn[glTexParameteriv, "glTexParameteriv"]()(target, pname, params)


fn tex_storage_1d(target: TextureTarget, levels: GLsizei, internalformat: SizedInternalFormat, width: GLsizei) raises:
    return get_fn[glTexStorage1D, "glTexStorage1D"]()(target, levels, internalformat, width)


fn tex_storage_2d(target: TextureTarget, levels: GLsizei, internalformat: SizedInternalFormat, width: GLsizei, height: GLsizei) raises:
    return get_fn[glTexStorage2D, "glTexStorage2D"]()(target, levels, internalformat, width, height)


fn tex_storage2_d_multisample(target: TextureTarget, samples: GLsizei, internalformat: SizedInternalFormat, width: GLsizei, height: GLsizei, fixedsamplelocations: Bool) raises:
    return get_fn[glTexStorage2DMultisample, "glTexStorage2DMultisample"]()(target, samples, internalformat, width, height, GLboolean(Int(fixedsamplelocations)))


fn tex_storage_3d(target: TextureTarget, levels: GLsizei, internalformat: SizedInternalFormat, width: GLsizei, height: GLsizei, depth: GLsizei) raises:
    return get_fn[glTexStorage3D, "glTexStorage3D"]()(target, levels, internalformat, width, height, depth)


fn tex_storage3_d_multisample(target: TextureTarget, samples: GLsizei, internalformat: SizedInternalFormat, width: GLsizei, height: GLsizei, depth: GLsizei, fixedsamplelocations: Bool) raises:
    return get_fn[glTexStorage3DMultisample, "glTexStorage3DMultisample"]()(target, samples, internalformat, width, height, depth, GLboolean(Int(fixedsamplelocations)))


fn tex_sub_image_1d(target: TextureTarget, level: GLint, xoffset: GLint, width: GLsizei, format: PixelFormat, type: PixelType, pixels: Ptr[NoneType, ImmutAnyOrigin]) raises:
    return get_fn[glTexSubImage1D, "glTexSubImage1D"]()(target, level, xoffset, width, format, type, pixels)


fn tex_sub_image_2d(target: TextureTarget, level: GLint, xoffset: GLint, yoffset: GLint, width: GLsizei, height: GLsizei, format: PixelFormat, type: PixelType, pixels: Ptr[NoneType, ImmutAnyOrigin]) raises:
    return get_fn[glTexSubImage2D, "glTexSubImage2D"]()(target, level, xoffset, yoffset, width, height, format, type, pixels)


fn tex_sub_image_3d(target: TextureTarget, level: GLint, xoffset: GLint, yoffset: GLint, zoffset: GLint, width: GLsizei, height: GLsizei, depth: GLsizei, format: PixelFormat, type: PixelType, pixels: Ptr[NoneType, ImmutAnyOrigin]) raises:
    return get_fn[glTexSubImage3D, "glTexSubImage3D"]()(target, level, xoffset, yoffset, zoffset, width, height, depth, format, type, pixels)


fn texture_barrier() raises:
    return get_fn[glTextureBarrier, "glTextureBarrier"]()()


fn texture_buffer(texture: GLuint, internalformat: SizedInternalFormat, buffer: GLuint) raises:
    return get_fn[glTextureBuffer, "glTextureBuffer"]()(texture, internalformat, buffer)


fn texture_buffer_range(texture: GLuint, internalformat: SizedInternalFormat, buffer: GLuint, offset: GLintptr, size: GLsizeiptr) raises:
    return get_fn[glTextureBufferRange, "glTextureBufferRange"]()(texture, internalformat, buffer, offset, size)


fn texture_parameter_iiv(texture: GLuint, pname: TextureParameterName, params: Ptr[GLint, ImmutAnyOrigin]) raises:
    return get_fn[glTextureParameterIiv, "glTextureParameterIiv"]()(texture, pname, params)


fn texture_parameter_iuiv(texture: GLuint, pname: TextureParameterName, params: Ptr[GLuint, ImmutAnyOrigin]) raises:
    return get_fn[glTextureParameterIuiv, "glTextureParameterIuiv"]()(texture, pname, params)


fn texture_parameterf(texture: GLuint, pname: TextureParameterName, param: GLfloat) raises:
    return get_fn[glTextureParameterf, "glTextureParameterf"]()(texture, pname, param)


fn texture_parameterfv(texture: GLuint, pname: TextureParameterName, param: Ptr[GLfloat, ImmutAnyOrigin]) raises:
    return get_fn[glTextureParameterfv, "glTextureParameterfv"]()(texture, pname, param)


fn texture_parameteri(texture: GLuint, pname: TextureParameterName, param: GLint) raises:
    return get_fn[glTextureParameteri, "glTextureParameteri"]()(texture, pname, param)


fn texture_parameteriv(texture: GLuint, pname: TextureParameterName, param: Ptr[GLint, ImmutAnyOrigin]) raises:
    return get_fn[glTextureParameteriv, "glTextureParameteriv"]()(texture, pname, param)


fn texture_storage_1d(texture: GLuint, levels: GLsizei, internalformat: SizedInternalFormat, width: GLsizei) raises:
    return get_fn[glTextureStorage1D, "glTextureStorage1D"]()(texture, levels, internalformat, width)


fn texture_storage_2d(texture: GLuint, levels: GLsizei, internalformat: SizedInternalFormat, width: GLsizei, height: GLsizei) raises:
    return get_fn[glTextureStorage2D, "glTextureStorage2D"]()(texture, levels, internalformat, width, height)


fn texture_storage2_d_multisample(texture: GLuint, samples: GLsizei, internalformat: SizedInternalFormat, width: GLsizei, height: GLsizei, fixedsamplelocations: Bool) raises:
    return get_fn[glTextureStorage2DMultisample, "glTextureStorage2DMultisample"]()(texture, samples, internalformat, width, height, GLboolean(Int(fixedsamplelocations)))


fn texture_storage_3d(texture: GLuint, levels: GLsizei, internalformat: SizedInternalFormat, width: GLsizei, height: GLsizei, depth: GLsizei) raises:
    return get_fn[glTextureStorage3D, "glTextureStorage3D"]()(texture, levels, internalformat, width, height, depth)


fn texture_storage3_d_multisample(texture: GLuint, samples: GLsizei, internalformat: SizedInternalFormat, width: GLsizei, height: GLsizei, depth: GLsizei, fixedsamplelocations: Bool) raises:
    return get_fn[glTextureStorage3DMultisample, "glTextureStorage3DMultisample"]()(texture, samples, internalformat, width, height, depth, GLboolean(Int(fixedsamplelocations)))


fn texture_sub_image_1d(texture: GLuint, level: GLint, xoffset: GLint, width: GLsizei, format: PixelFormat, type: PixelType, pixels: Ptr[NoneType, ImmutAnyOrigin]) raises:
    return get_fn[glTextureSubImage1D, "glTextureSubImage1D"]()(texture, level, xoffset, width, format, type, pixels)


fn texture_sub_image_2d(texture: GLuint, level: GLint, xoffset: GLint, yoffset: GLint, width: GLsizei, height: GLsizei, format: PixelFormat, type: PixelType, pixels: Ptr[NoneType, ImmutAnyOrigin]) raises:
    return get_fn[glTextureSubImage2D, "glTextureSubImage2D"]()(texture, level, xoffset, yoffset, width, height, format, type, pixels)


fn texture_sub_image_3d(texture: GLuint, level: GLint, xoffset: GLint, yoffset: GLint, zoffset: GLint, width: GLsizei, height: GLsizei, depth: GLsizei, format: PixelFormat, type: PixelType, pixels: Ptr[NoneType, ImmutAnyOrigin]) raises:
    return get_fn[glTextureSubImage3D, "glTextureSubImage3D"]()(texture, level, xoffset, yoffset, zoffset, width, height, depth, format, type, pixels)


fn texture_view(texture: GLuint, target: TextureTarget, origtexture: GLuint, internalformat: SizedInternalFormat, minlevel: GLuint, numlevels: GLuint, minlayer: GLuint, numlayers: GLuint) raises:
    return get_fn[glTextureView, "glTextureView"]()(texture, target, origtexture, internalformat, minlevel, numlevels, minlayer, numlayers)


fn transform_feedback_buffer_base(xfb: GLuint, index: GLuint, buffer: GLuint) raises:
    return get_fn[glTransformFeedbackBufferBase, "glTransformFeedbackBufferBase"]()(xfb, index, buffer)


fn transform_feedback_buffer_range(xfb: GLuint, index: GLuint, buffer: GLuint, offset: GLintptr, size: GLsizeiptr) raises:
    return get_fn[glTransformFeedbackBufferRange, "glTransformFeedbackBufferRange"]()(xfb, index, buffer, offset, size)


fn transform_feedback_varyings(program: GLuint, count: GLsizei, var varyings: List[String], buffer_mode: TransformFeedbackBufferMode) raises:
    var c_list = [str.as_c_string_slice().unsafe_ptr().as_any_origin() for ref str in varyings]
    return get_fn[glTransformFeedbackVaryings, "glTransformFeedbackVaryings"]()(program, count, c_list.steal_data(), buffer_mode)


fn uniform1d(location: GLint, x: GLdouble) raises:
    return get_fn[glUniform1d, "glUniform1d"]()(location, x)


fn uniform1dv(location: GLint, count: GLsizei, value: Ptr[GLdouble, ImmutAnyOrigin]) raises:
    return get_fn[glUniform1dv, "glUniform1dv"]()(location, count, value)


fn uniform1f(location: GLint, v0: GLfloat) raises:
    return get_fn[glUniform1f, "glUniform1f"]()(location, v0)


fn uniform1fv(location: GLint, count: GLsizei, value: Ptr[GLfloat, ImmutAnyOrigin]) raises:
    return get_fn[glUniform1fv, "glUniform1fv"]()(location, count, value)


fn uniform1i(location: GLint, v0: GLint) raises:
    return get_fn[glUniform1i, "glUniform1i"]()(location, v0)


fn uniform1iv(location: GLint, count: GLsizei, value: Ptr[GLint, ImmutAnyOrigin]) raises:
    return get_fn[glUniform1iv, "glUniform1iv"]()(location, count, value)


fn uniform1ui(location: GLint, v0: GLuint) raises:
    return get_fn[glUniform1ui, "glUniform1ui"]()(location, v0)


fn uniform1uiv(location: GLint, count: GLsizei, value: Ptr[GLuint, ImmutAnyOrigin]) raises:
    return get_fn[glUniform1uiv, "glUniform1uiv"]()(location, count, value)


fn uniform2d(location: GLint, x: GLdouble, y: GLdouble) raises:
    return get_fn[glUniform2d, "glUniform2d"]()(location, x, y)


fn uniform2dv(location: GLint, count: GLsizei, value: Ptr[GLdouble, ImmutAnyOrigin]) raises:
    return get_fn[glUniform2dv, "glUniform2dv"]()(location, count, value)


fn uniform2f(location: GLint, v0: GLfloat, v1: GLfloat) raises:
    return get_fn[glUniform2f, "glUniform2f"]()(location, v0, v1)


fn uniform2fv(location: GLint, count: GLsizei, value: Ptr[GLfloat, ImmutAnyOrigin]) raises:
    return get_fn[glUniform2fv, "glUniform2fv"]()(location, count, value)


fn uniform2i(location: GLint, v0: GLint, v1: GLint) raises:
    return get_fn[glUniform2i, "glUniform2i"]()(location, v0, v1)


fn uniform2iv(location: GLint, count: GLsizei, value: Ptr[GLint, ImmutAnyOrigin]) raises:
    return get_fn[glUniform2iv, "glUniform2iv"]()(location, count, value)


fn uniform2ui(location: GLint, v0: GLuint, v1: GLuint) raises:
    return get_fn[glUniform2ui, "glUniform2ui"]()(location, v0, v1)


fn uniform2uiv(location: GLint, count: GLsizei, value: Ptr[GLuint, ImmutAnyOrigin]) raises:
    return get_fn[glUniform2uiv, "glUniform2uiv"]()(location, count, value)


fn uniform3d(location: GLint, x: GLdouble, y: GLdouble, z: GLdouble) raises:
    return get_fn[glUniform3d, "glUniform3d"]()(location, x, y, z)


fn uniform3dv(location: GLint, count: GLsizei, value: Ptr[GLdouble, ImmutAnyOrigin]) raises:
    return get_fn[glUniform3dv, "glUniform3dv"]()(location, count, value)


fn uniform3f(location: GLint, v0: GLfloat, v1: GLfloat, v2: GLfloat) raises:
    return get_fn[glUniform3f, "glUniform3f"]()(location, v0, v1, v2)


fn uniform3fv(location: GLint, count: GLsizei, value: Ptr[GLfloat, ImmutAnyOrigin]) raises:
    return get_fn[glUniform3fv, "glUniform3fv"]()(location, count, value)


fn uniform3i(location: GLint, v0: GLint, v1: GLint, v2: GLint) raises:
    return get_fn[glUniform3i, "glUniform3i"]()(location, v0, v1, v2)


fn uniform3iv(location: GLint, count: GLsizei, value: Ptr[GLint, ImmutAnyOrigin]) raises:
    return get_fn[glUniform3iv, "glUniform3iv"]()(location, count, value)


fn uniform3ui(location: GLint, v0: GLuint, v1: GLuint, v2: GLuint) raises:
    return get_fn[glUniform3ui, "glUniform3ui"]()(location, v0, v1, v2)


fn uniform3uiv(location: GLint, count: GLsizei, value: Ptr[GLuint, ImmutAnyOrigin]) raises:
    return get_fn[glUniform3uiv, "glUniform3uiv"]()(location, count, value)


fn uniform4d(location: GLint, x: GLdouble, y: GLdouble, z: GLdouble, w: GLdouble) raises:
    return get_fn[glUniform4d, "glUniform4d"]()(location, x, y, z, w)


fn uniform4dv(location: GLint, count: GLsizei, value: Ptr[GLdouble, ImmutAnyOrigin]) raises:
    return get_fn[glUniform4dv, "glUniform4dv"]()(location, count, value)


fn uniform4f(location: GLint, v0: GLfloat, v1: GLfloat, v2: GLfloat, v3: GLfloat) raises:
    return get_fn[glUniform4f, "glUniform4f"]()(location, v0, v1, v2, v3)


fn uniform4fv(location: GLint, count: GLsizei, value: Ptr[GLfloat, ImmutAnyOrigin]) raises:
    return get_fn[glUniform4fv, "glUniform4fv"]()(location, count, value)


fn uniform4i(location: GLint, v0: GLint, v1: GLint, v2: GLint, v3: GLint) raises:
    return get_fn[glUniform4i, "glUniform4i"]()(location, v0, v1, v2, v3)


fn uniform4iv(location: GLint, count: GLsizei, value: Ptr[GLint, ImmutAnyOrigin]) raises:
    return get_fn[glUniform4iv, "glUniform4iv"]()(location, count, value)


fn uniform4ui(location: GLint, v0: GLuint, v1: GLuint, v2: GLuint, v3: GLuint) raises:
    return get_fn[glUniform4ui, "glUniform4ui"]()(location, v0, v1, v2, v3)


fn uniform4uiv(location: GLint, count: GLsizei, value: Ptr[GLuint, ImmutAnyOrigin]) raises:
    return get_fn[glUniform4uiv, "glUniform4uiv"]()(location, count, value)


fn uniform_block_binding(program: GLuint, uniform_block_index: GLuint, uniform_block_binding: GLuint) raises:
    return get_fn[glUniformBlockBinding, "glUniformBlockBinding"]()(program, uniform_block_index, uniform_block_binding)


fn uniform_matrix2dv(location: GLint, count: GLsizei, transpose: Bool, value: Ptr[GLdouble, ImmutAnyOrigin]) raises:
    return get_fn[glUniformMatrix2dv, "glUniformMatrix2dv"]()(location, count, GLboolean(Int(transpose)), value)


fn uniform_matrix2fv(location: GLint, count: GLsizei, transpose: Bool, value: Ptr[GLfloat, ImmutAnyOrigin]) raises:
    return get_fn[glUniformMatrix2fv, "glUniformMatrix2fv"]()(location, count, GLboolean(Int(transpose)), value)


fn uniform_matrix2x3dv(location: GLint, count: GLsizei, transpose: Bool, value: Ptr[GLdouble, ImmutAnyOrigin]) raises:
    return get_fn[glUniformMatrix2x3dv, "glUniformMatrix2x3dv"]()(location, count, GLboolean(Int(transpose)), value)


fn uniform_matrix2x3fv(location: GLint, count: GLsizei, transpose: Bool, value: Ptr[GLfloat, ImmutAnyOrigin]) raises:
    return get_fn[glUniformMatrix2x3fv, "glUniformMatrix2x3fv"]()(location, count, GLboolean(Int(transpose)), value)


fn uniform_matrix2x4dv(location: GLint, count: GLsizei, transpose: Bool, value: Ptr[GLdouble, ImmutAnyOrigin]) raises:
    return get_fn[glUniformMatrix2x4dv, "glUniformMatrix2x4dv"]()(location, count, GLboolean(Int(transpose)), value)


fn uniform_matrix2x4fv(location: GLint, count: GLsizei, transpose: Bool, value: Ptr[GLfloat, ImmutAnyOrigin]) raises:
    return get_fn[glUniformMatrix2x4fv, "glUniformMatrix2x4fv"]()(location, count, GLboolean(Int(transpose)), value)


fn uniform_matrix3dv(location: GLint, count: GLsizei, transpose: Bool, value: Ptr[GLdouble, ImmutAnyOrigin]) raises:
    return get_fn[glUniformMatrix3dv, "glUniformMatrix3dv"]()(location, count, GLboolean(Int(transpose)), value)


fn uniform_matrix3fv(location: GLint, count: GLsizei, transpose: Bool, value: Ptr[GLfloat, ImmutAnyOrigin]) raises:
    return get_fn[glUniformMatrix3fv, "glUniformMatrix3fv"]()(location, count, GLboolean(Int(transpose)), value)


fn uniform_matrix3x2dv(location: GLint, count: GLsizei, transpose: Bool, value: Ptr[GLdouble, ImmutAnyOrigin]) raises:
    return get_fn[glUniformMatrix3x2dv, "glUniformMatrix3x2dv"]()(location, count, GLboolean(Int(transpose)), value)


fn uniform_matrix3x2fv(location: GLint, count: GLsizei, transpose: Bool, value: Ptr[GLfloat, ImmutAnyOrigin]) raises:
    return get_fn[glUniformMatrix3x2fv, "glUniformMatrix3x2fv"]()(location, count, GLboolean(Int(transpose)), value)


fn uniform_matrix3x4dv(location: GLint, count: GLsizei, transpose: Bool, value: Ptr[GLdouble, ImmutAnyOrigin]) raises:
    return get_fn[glUniformMatrix3x4dv, "glUniformMatrix3x4dv"]()(location, count, GLboolean(Int(transpose)), value)


fn uniform_matrix3x4fv(location: GLint, count: GLsizei, transpose: Bool, value: Ptr[GLfloat, ImmutAnyOrigin]) raises:
    return get_fn[glUniformMatrix3x4fv, "glUniformMatrix3x4fv"]()(location, count, GLboolean(Int(transpose)), value)


fn uniform_matrix4dv(location: GLint, count: GLsizei, transpose: Bool, value: Ptr[GLdouble, ImmutAnyOrigin]) raises:
    return get_fn[glUniformMatrix4dv, "glUniformMatrix4dv"]()(location, count, GLboolean(Int(transpose)), value)


fn uniform_matrix4fv(location: GLint, count: GLsizei, transpose: Bool, value: Ptr[GLfloat, ImmutAnyOrigin]) raises:
    return get_fn[glUniformMatrix4fv, "glUniformMatrix4fv"]()(location, count, GLboolean(Int(transpose)), value)


fn uniform_matrix4x2dv(location: GLint, count: GLsizei, transpose: Bool, value: Ptr[GLdouble, ImmutAnyOrigin]) raises:
    return get_fn[glUniformMatrix4x2dv, "glUniformMatrix4x2dv"]()(location, count, GLboolean(Int(transpose)), value)


fn uniform_matrix4x2fv(location: GLint, count: GLsizei, transpose: Bool, value: Ptr[GLfloat, ImmutAnyOrigin]) raises:
    return get_fn[glUniformMatrix4x2fv, "glUniformMatrix4x2fv"]()(location, count, GLboolean(Int(transpose)), value)


fn uniform_matrix4x3dv(location: GLint, count: GLsizei, transpose: Bool, value: Ptr[GLdouble, ImmutAnyOrigin]) raises:
    return get_fn[glUniformMatrix4x3dv, "glUniformMatrix4x3dv"]()(location, count, GLboolean(Int(transpose)), value)


fn uniform_matrix4x3fv(location: GLint, count: GLsizei, transpose: Bool, value: Ptr[GLfloat, ImmutAnyOrigin]) raises:
    return get_fn[glUniformMatrix4x3fv, "glUniformMatrix4x3fv"]()(location, count, GLboolean(Int(transpose)), value)


fn uniform_subroutinesuiv(shadertype: ShaderType, count: GLsizei, indices: Ptr[GLuint, ImmutAnyOrigin]) raises:
    return get_fn[glUniformSubroutinesuiv, "glUniformSubroutinesuiv"]()(shadertype, count, indices)


fn unmap_buffer(target: BufferTargetARB) raises -> GLboolean:
    return get_fn[glUnmapBuffer, "glUnmapBuffer"]()(target)


fn unmap_named_buffer(buffer: GLuint) raises -> GLboolean:
    return get_fn[glUnmapNamedBuffer, "glUnmapNamedBuffer"]()(buffer)


fn use_program(program: GLuint) raises:
    return get_fn[glUseProgram, "glUseProgram"]()(program)


fn use_program_stages(pipeline: GLuint, stages: UseProgramStageMask, program: GLuint) raises:
    return get_fn[glUseProgramStages, "glUseProgramStages"]()(pipeline, stages, program)


fn validate_program(program: GLuint) raises:
    return get_fn[glValidateProgram, "glValidateProgram"]()(program)


fn validate_program_pipeline(pipeline: GLuint) raises:
    return get_fn[glValidateProgramPipeline, "glValidateProgramPipeline"]()(pipeline)


fn vertex_array_attrib_binding(vaobj: GLuint, attribindex: GLuint, bindingindex: GLuint) raises:
    return get_fn[glVertexArrayAttribBinding, "glVertexArrayAttribBinding"]()(vaobj, attribindex, bindingindex)


fn vertex_array_attrib_format(vaobj: GLuint, attribindex: GLuint, size: GLint, type: VertexAttribType, normalized: Bool, relativeoffset: GLuint) raises:
    return get_fn[glVertexArrayAttribFormat, "glVertexArrayAttribFormat"]()(vaobj, attribindex, size, type, GLboolean(Int(normalized)), relativeoffset)


fn vertex_array_attrib_i_format(vaobj: GLuint, attribindex: GLuint, size: GLint, type: VertexAttribIType, relativeoffset: GLuint) raises:
    return get_fn[glVertexArrayAttribIFormat, "glVertexArrayAttribIFormat"]()(vaobj, attribindex, size, type, relativeoffset)


fn vertex_array_attrib_l_format(vaobj: GLuint, attribindex: GLuint, size: GLint, type: VertexAttribLType, relativeoffset: GLuint) raises:
    return get_fn[glVertexArrayAttribLFormat, "glVertexArrayAttribLFormat"]()(vaobj, attribindex, size, type, relativeoffset)


fn vertex_array_binding_divisor(vaobj: GLuint, bindingindex: GLuint, divisor: GLuint) raises:
    return get_fn[glVertexArrayBindingDivisor, "glVertexArrayBindingDivisor"]()(vaobj, bindingindex, divisor)


fn vertex_array_element_buffer(vaobj: GLuint, buffer: GLuint) raises:
    return get_fn[glVertexArrayElementBuffer, "glVertexArrayElementBuffer"]()(vaobj, buffer)


fn vertex_array_vertex_buffer(vaobj: GLuint, bindingindex: GLuint, buffer: GLuint, offset: GLintptr, stride: GLsizei) raises:
    return get_fn[glVertexArrayVertexBuffer, "glVertexArrayVertexBuffer"]()(vaobj, bindingindex, buffer, offset, stride)


fn vertex_array_vertex_buffers(vaobj: GLuint, first: GLuint, count: GLsizei, buffers: Ptr[GLuint, ImmutAnyOrigin], offsets: Ptr[GLintptr, ImmutAnyOrigin], strides: Ptr[GLsizei, ImmutAnyOrigin]) raises:
    return get_fn[glVertexArrayVertexBuffers, "glVertexArrayVertexBuffers"]()(vaobj, first, count, buffers, offsets, strides)


fn vertex_attrib1d(index: GLuint, x: GLdouble) raises:
    return get_fn[glVertexAttrib1d, "glVertexAttrib1d"]()(index, x)


fn vertex_attrib1dv(index: GLuint, v: Ptr[GLdouble, ImmutAnyOrigin]) raises:
    return get_fn[glVertexAttrib1dv, "glVertexAttrib1dv"]()(index, v)


fn vertex_attrib1f(index: GLuint, x: GLfloat) raises:
    return get_fn[glVertexAttrib1f, "glVertexAttrib1f"]()(index, x)


fn vertex_attrib1fv(index: GLuint, v: Ptr[GLfloat, ImmutAnyOrigin]) raises:
    return get_fn[glVertexAttrib1fv, "glVertexAttrib1fv"]()(index, v)


fn vertex_attrib1s(index: GLuint, x: GLshort) raises:
    return get_fn[glVertexAttrib1s, "glVertexAttrib1s"]()(index, x)


fn vertex_attrib1sv(index: GLuint, v: Ptr[GLshort, ImmutAnyOrigin]) raises:
    return get_fn[glVertexAttrib1sv, "glVertexAttrib1sv"]()(index, v)


fn vertex_attrib2d(index: GLuint, x: GLdouble, y: GLdouble) raises:
    return get_fn[glVertexAttrib2d, "glVertexAttrib2d"]()(index, x, y)


fn vertex_attrib2dv(index: GLuint, v: Ptr[GLdouble, ImmutAnyOrigin]) raises:
    return get_fn[glVertexAttrib2dv, "glVertexAttrib2dv"]()(index, v)


fn vertex_attrib2f(index: GLuint, x: GLfloat, y: GLfloat) raises:
    return get_fn[glVertexAttrib2f, "glVertexAttrib2f"]()(index, x, y)


fn vertex_attrib2fv(index: GLuint, v: Ptr[GLfloat, ImmutAnyOrigin]) raises:
    return get_fn[glVertexAttrib2fv, "glVertexAttrib2fv"]()(index, v)


fn vertex_attrib2s(index: GLuint, x: GLshort, y: GLshort) raises:
    return get_fn[glVertexAttrib2s, "glVertexAttrib2s"]()(index, x, y)


fn vertex_attrib2sv(index: GLuint, v: Ptr[GLshort, ImmutAnyOrigin]) raises:
    return get_fn[glVertexAttrib2sv, "glVertexAttrib2sv"]()(index, v)


fn vertex_attrib3d(index: GLuint, x: GLdouble, y: GLdouble, z: GLdouble) raises:
    return get_fn[glVertexAttrib3d, "glVertexAttrib3d"]()(index, x, y, z)


fn vertex_attrib3dv(index: GLuint, v: Ptr[GLdouble, ImmutAnyOrigin]) raises:
    return get_fn[glVertexAttrib3dv, "glVertexAttrib3dv"]()(index, v)


fn vertex_attrib3f(index: GLuint, x: GLfloat, y: GLfloat, z: GLfloat) raises:
    return get_fn[glVertexAttrib3f, "glVertexAttrib3f"]()(index, x, y, z)


fn vertex_attrib3fv(index: GLuint, v: Ptr[GLfloat, ImmutAnyOrigin]) raises:
    return get_fn[glVertexAttrib3fv, "glVertexAttrib3fv"]()(index, v)


fn vertex_attrib3s(index: GLuint, x: GLshort, y: GLshort, z: GLshort) raises:
    return get_fn[glVertexAttrib3s, "glVertexAttrib3s"]()(index, x, y, z)


fn vertex_attrib3sv(index: GLuint, v: Ptr[GLshort, ImmutAnyOrigin]) raises:
    return get_fn[glVertexAttrib3sv, "glVertexAttrib3sv"]()(index, v)


fn vertex_attrib4_nbv(index: GLuint, v: Ptr[GLbyte, ImmutAnyOrigin]) raises:
    return get_fn[glVertexAttrib4Nbv, "glVertexAttrib4Nbv"]()(index, v)


fn vertex_attrib4_niv(index: GLuint, v: Ptr[GLint, ImmutAnyOrigin]) raises:
    return get_fn[glVertexAttrib4Niv, "glVertexAttrib4Niv"]()(index, v)


fn vertex_attrib4_nsv(index: GLuint, v: Ptr[GLshort, ImmutAnyOrigin]) raises:
    return get_fn[glVertexAttrib4Nsv, "glVertexAttrib4Nsv"]()(index, v)


fn vertex_attrib4_nub(index: GLuint, x: GLubyte, y: GLubyte, z: GLubyte, w: GLubyte) raises:
    return get_fn[glVertexAttrib4Nub, "glVertexAttrib4Nub"]()(index, x, y, z, w)


fn vertex_attrib4_nubv(index: GLuint, v: Ptr[GLubyte, ImmutAnyOrigin]) raises:
    return get_fn[glVertexAttrib4Nubv, "glVertexAttrib4Nubv"]()(index, v)


fn vertex_attrib4_nuiv(index: GLuint, v: Ptr[GLuint, ImmutAnyOrigin]) raises:
    return get_fn[glVertexAttrib4Nuiv, "glVertexAttrib4Nuiv"]()(index, v)


fn vertex_attrib4_nusv(index: GLuint, v: Ptr[GLushort, ImmutAnyOrigin]) raises:
    return get_fn[glVertexAttrib4Nusv, "glVertexAttrib4Nusv"]()(index, v)


fn vertex_attrib4bv(index: GLuint, v: Ptr[GLbyte, ImmutAnyOrigin]) raises:
    return get_fn[glVertexAttrib4bv, "glVertexAttrib4bv"]()(index, v)


fn vertex_attrib4d(index: GLuint, x: GLdouble, y: GLdouble, z: GLdouble, w: GLdouble) raises:
    return get_fn[glVertexAttrib4d, "glVertexAttrib4d"]()(index, x, y, z, w)


fn vertex_attrib4dv(index: GLuint, v: Ptr[GLdouble, ImmutAnyOrigin]) raises:
    return get_fn[glVertexAttrib4dv, "glVertexAttrib4dv"]()(index, v)


fn vertex_attrib4f(index: GLuint, x: GLfloat, y: GLfloat, z: GLfloat, w: GLfloat) raises:
    return get_fn[glVertexAttrib4f, "glVertexAttrib4f"]()(index, x, y, z, w)


fn vertex_attrib4fv(index: GLuint, v: Ptr[GLfloat, ImmutAnyOrigin]) raises:
    return get_fn[glVertexAttrib4fv, "glVertexAttrib4fv"]()(index, v)


fn vertex_attrib4iv(index: GLuint, v: Ptr[GLint, ImmutAnyOrigin]) raises:
    return get_fn[glVertexAttrib4iv, "glVertexAttrib4iv"]()(index, v)


fn vertex_attrib4s(index: GLuint, x: GLshort, y: GLshort, z: GLshort, w: GLshort) raises:
    return get_fn[glVertexAttrib4s, "glVertexAttrib4s"]()(index, x, y, z, w)


fn vertex_attrib4sv(index: GLuint, v: Ptr[GLshort, ImmutAnyOrigin]) raises:
    return get_fn[glVertexAttrib4sv, "glVertexAttrib4sv"]()(index, v)


fn vertex_attrib4ubv(index: GLuint, v: Ptr[GLubyte, ImmutAnyOrigin]) raises:
    return get_fn[glVertexAttrib4ubv, "glVertexAttrib4ubv"]()(index, v)


fn vertex_attrib4uiv(index: GLuint, v: Ptr[GLuint, ImmutAnyOrigin]) raises:
    return get_fn[glVertexAttrib4uiv, "glVertexAttrib4uiv"]()(index, v)


fn vertex_attrib4usv(index: GLuint, v: Ptr[GLushort, ImmutAnyOrigin]) raises:
    return get_fn[glVertexAttrib4usv, "glVertexAttrib4usv"]()(index, v)


fn vertex_attrib_binding(attribindex: GLuint, bindingindex: GLuint) raises:
    return get_fn[glVertexAttribBinding, "glVertexAttribBinding"]()(attribindex, bindingindex)


fn vertex_attrib_divisor(index: GLuint, divisor: GLuint) raises:
    return get_fn[glVertexAttribDivisor, "glVertexAttribDivisor"]()(index, divisor)


fn vertex_attrib_format(attribindex: GLuint, size: GLint, type: VertexAttribType, normalized: Bool, relativeoffset: GLuint) raises:
    return get_fn[glVertexAttribFormat, "glVertexAttribFormat"]()(attribindex, size, type, GLboolean(Int(normalized)), relativeoffset)


fn vertex_attrib_i1i(index: GLuint, x: GLint) raises:
    return get_fn[glVertexAttribI1i, "glVertexAttribI1i"]()(index, x)


fn vertex_attrib_i1iv(index: GLuint, v: Ptr[GLint, ImmutAnyOrigin]) raises:
    return get_fn[glVertexAttribI1iv, "glVertexAttribI1iv"]()(index, v)


fn vertex_attrib_i1ui(index: GLuint, x: GLuint) raises:
    return get_fn[glVertexAttribI1ui, "glVertexAttribI1ui"]()(index, x)


fn vertex_attrib_i1uiv(index: GLuint, v: Ptr[GLuint, ImmutAnyOrigin]) raises:
    return get_fn[glVertexAttribI1uiv, "glVertexAttribI1uiv"]()(index, v)


fn vertex_attrib_i2i(index: GLuint, x: GLint, y: GLint) raises:
    return get_fn[glVertexAttribI2i, "glVertexAttribI2i"]()(index, x, y)


fn vertex_attrib_i2iv(index: GLuint, v: Ptr[GLint, ImmutAnyOrigin]) raises:
    return get_fn[glVertexAttribI2iv, "glVertexAttribI2iv"]()(index, v)


fn vertex_attrib_i2ui(index: GLuint, x: GLuint, y: GLuint) raises:
    return get_fn[glVertexAttribI2ui, "glVertexAttribI2ui"]()(index, x, y)


fn vertex_attrib_i2uiv(index: GLuint, v: Ptr[GLuint, ImmutAnyOrigin]) raises:
    return get_fn[glVertexAttribI2uiv, "glVertexAttribI2uiv"]()(index, v)


fn vertex_attrib_i3i(index: GLuint, x: GLint, y: GLint, z: GLint) raises:
    return get_fn[glVertexAttribI3i, "glVertexAttribI3i"]()(index, x, y, z)


fn vertex_attrib_i3iv(index: GLuint, v: Ptr[GLint, ImmutAnyOrigin]) raises:
    return get_fn[glVertexAttribI3iv, "glVertexAttribI3iv"]()(index, v)


fn vertex_attrib_i3ui(index: GLuint, x: GLuint, y: GLuint, z: GLuint) raises:
    return get_fn[glVertexAttribI3ui, "glVertexAttribI3ui"]()(index, x, y, z)


fn vertex_attrib_i3uiv(index: GLuint, v: Ptr[GLuint, ImmutAnyOrigin]) raises:
    return get_fn[glVertexAttribI3uiv, "glVertexAttribI3uiv"]()(index, v)


fn vertex_attrib_i4bv(index: GLuint, v: Ptr[GLbyte, ImmutAnyOrigin]) raises:
    return get_fn[glVertexAttribI4bv, "glVertexAttribI4bv"]()(index, v)


fn vertex_attrib_i4i(index: GLuint, x: GLint, y: GLint, z: GLint, w: GLint) raises:
    return get_fn[glVertexAttribI4i, "glVertexAttribI4i"]()(index, x, y, z, w)


fn vertex_attrib_i4iv(index: GLuint, v: Ptr[GLint, ImmutAnyOrigin]) raises:
    return get_fn[glVertexAttribI4iv, "glVertexAttribI4iv"]()(index, v)


fn vertex_attrib_i4sv(index: GLuint, v: Ptr[GLshort, ImmutAnyOrigin]) raises:
    return get_fn[glVertexAttribI4sv, "glVertexAttribI4sv"]()(index, v)


fn vertex_attrib_i4ubv(index: GLuint, v: Ptr[GLubyte, ImmutAnyOrigin]) raises:
    return get_fn[glVertexAttribI4ubv, "glVertexAttribI4ubv"]()(index, v)


fn vertex_attrib_i4ui(index: GLuint, x: GLuint, y: GLuint, z: GLuint, w: GLuint) raises:
    return get_fn[glVertexAttribI4ui, "glVertexAttribI4ui"]()(index, x, y, z, w)


fn vertex_attrib_i4uiv(index: GLuint, v: Ptr[GLuint, ImmutAnyOrigin]) raises:
    return get_fn[glVertexAttribI4uiv, "glVertexAttribI4uiv"]()(index, v)


fn vertex_attrib_i4usv(index: GLuint, v: Ptr[GLushort, ImmutAnyOrigin]) raises:
    return get_fn[glVertexAttribI4usv, "glVertexAttribI4usv"]()(index, v)


fn vertex_attrib_i_format(attribindex: GLuint, size: GLint, type: VertexAttribIType, relativeoffset: GLuint) raises:
    return get_fn[glVertexAttribIFormat, "glVertexAttribIFormat"]()(attribindex, size, type, relativeoffset)


fn vertex_attrib_i_pointer(index: GLuint, size: GLint, type: VertexAttribIType, stride: GLsizei, pointer: Ptr[NoneType, ImmutAnyOrigin]) raises:
    return get_fn[glVertexAttribIPointer, "glVertexAttribIPointer"]()(index, size, type, stride, pointer)


fn vertex_attrib_l1d(index: GLuint, x: GLdouble) raises:
    return get_fn[glVertexAttribL1d, "glVertexAttribL1d"]()(index, x)


fn vertex_attrib_l1dv(index: GLuint, v: Ptr[GLdouble, ImmutAnyOrigin]) raises:
    return get_fn[glVertexAttribL1dv, "glVertexAttribL1dv"]()(index, v)


fn vertex_attrib_l2d(index: GLuint, x: GLdouble, y: GLdouble) raises:
    return get_fn[glVertexAttribL2d, "glVertexAttribL2d"]()(index, x, y)


fn vertex_attrib_l2dv(index: GLuint, v: Ptr[GLdouble, ImmutAnyOrigin]) raises:
    return get_fn[glVertexAttribL2dv, "glVertexAttribL2dv"]()(index, v)


fn vertex_attrib_l3d(index: GLuint, x: GLdouble, y: GLdouble, z: GLdouble) raises:
    return get_fn[glVertexAttribL3d, "glVertexAttribL3d"]()(index, x, y, z)


fn vertex_attrib_l3dv(index: GLuint, v: Ptr[GLdouble, ImmutAnyOrigin]) raises:
    return get_fn[glVertexAttribL3dv, "glVertexAttribL3dv"]()(index, v)


fn vertex_attrib_l4d(index: GLuint, x: GLdouble, y: GLdouble, z: GLdouble, w: GLdouble) raises:
    return get_fn[glVertexAttribL4d, "glVertexAttribL4d"]()(index, x, y, z, w)


fn vertex_attrib_l4dv(index: GLuint, v: Ptr[GLdouble, ImmutAnyOrigin]) raises:
    return get_fn[glVertexAttribL4dv, "glVertexAttribL4dv"]()(index, v)


fn vertex_attrib_l_format(attribindex: GLuint, size: GLint, type: VertexAttribLType, relativeoffset: GLuint) raises:
    return get_fn[glVertexAttribLFormat, "glVertexAttribLFormat"]()(attribindex, size, type, relativeoffset)


fn vertex_attrib_l_pointer(index: GLuint, size: GLint, type: VertexAttribLType, stride: GLsizei, pointer: Ptr[NoneType, ImmutAnyOrigin]) raises:
    return get_fn[glVertexAttribLPointer, "glVertexAttribLPointer"]()(index, size, type, stride, pointer)


fn vertex_attrib_p1ui(index: GLuint, type: VertexAttribPointerType, normalized: Bool, value: GLuint) raises:
    return get_fn[glVertexAttribP1ui, "glVertexAttribP1ui"]()(index, type, GLboolean(Int(normalized)), value)


fn vertex_attrib_p1uiv(index: GLuint, type: VertexAttribPointerType, normalized: Bool, value: Ptr[GLuint, ImmutAnyOrigin]) raises:
    return get_fn[glVertexAttribP1uiv, "glVertexAttribP1uiv"]()(index, type, GLboolean(Int(normalized)), value)


fn vertex_attrib_p2ui(index: GLuint, type: VertexAttribPointerType, normalized: Bool, value: GLuint) raises:
    return get_fn[glVertexAttribP2ui, "glVertexAttribP2ui"]()(index, type, GLboolean(Int(normalized)), value)


fn vertex_attrib_p2uiv(index: GLuint, type: VertexAttribPointerType, normalized: Bool, value: Ptr[GLuint, ImmutAnyOrigin]) raises:
    return get_fn[glVertexAttribP2uiv, "glVertexAttribP2uiv"]()(index, type, GLboolean(Int(normalized)), value)


fn vertex_attrib_p3ui(index: GLuint, type: VertexAttribPointerType, normalized: Bool, value: GLuint) raises:
    return get_fn[glVertexAttribP3ui, "glVertexAttribP3ui"]()(index, type, GLboolean(Int(normalized)), value)


fn vertex_attrib_p3uiv(index: GLuint, type: VertexAttribPointerType, normalized: Bool, value: Ptr[GLuint, ImmutAnyOrigin]) raises:
    return get_fn[glVertexAttribP3uiv, "glVertexAttribP3uiv"]()(index, type, GLboolean(Int(normalized)), value)


fn vertex_attrib_p4ui(index: GLuint, type: VertexAttribPointerType, normalized: Bool, value: GLuint) raises:
    return get_fn[glVertexAttribP4ui, "glVertexAttribP4ui"]()(index, type, GLboolean(Int(normalized)), value)


fn vertex_attrib_p4uiv(index: GLuint, type: VertexAttribPointerType, normalized: Bool, value: Ptr[GLuint, ImmutAnyOrigin]) raises:
    return get_fn[glVertexAttribP4uiv, "glVertexAttribP4uiv"]()(index, type, GLboolean(Int(normalized)), value)


fn vertex_attrib_pointer(index: GLuint, size: GLint, type: VertexAttribPointerType, normalized: Bool, stride: GLsizei, pointer: Ptr[NoneType, ImmutAnyOrigin]) raises:
    return get_fn[glVertexAttribPointer, "glVertexAttribPointer"]()(index, size, type, GLboolean(Int(normalized)), stride, pointer)


fn vertex_binding_divisor(bindingindex: GLuint, divisor: GLuint) raises:
    return get_fn[glVertexBindingDivisor, "glVertexBindingDivisor"]()(bindingindex, divisor)


fn vertex_p2ui(type: VertexPointerType, value: GLuint) raises:
    return get_fn[glVertexP2ui, "glVertexP2ui"]()(type, value)


fn vertex_p2uiv(type: VertexPointerType, value: Ptr[GLuint, ImmutAnyOrigin]) raises:
    return get_fn[glVertexP2uiv, "glVertexP2uiv"]()(type, value)


fn vertex_p3ui(type: VertexPointerType, value: GLuint) raises:
    return get_fn[glVertexP3ui, "glVertexP3ui"]()(type, value)


fn vertex_p3uiv(type: VertexPointerType, value: Ptr[GLuint, ImmutAnyOrigin]) raises:
    return get_fn[glVertexP3uiv, "glVertexP3uiv"]()(type, value)


fn vertex_p4ui(type: VertexPointerType, value: GLuint) raises:
    return get_fn[glVertexP4ui, "glVertexP4ui"]()(type, value)


fn vertex_p4uiv(type: VertexPointerType, value: Ptr[GLuint, ImmutAnyOrigin]) raises:
    return get_fn[glVertexP4uiv, "glVertexP4uiv"]()(type, value)


fn viewport(x: GLint, y: GLint, width: GLsizei, height: GLsizei) raises:
    return get_fn[glViewport, "glViewport"]()(x, y, width, height)


fn viewport_arrayv(first: GLuint, count: GLsizei, v: Ptr[GLfloat, ImmutAnyOrigin]) raises:
    return get_fn[glViewportArrayv, "glViewportArrayv"]()(first, count, v)


fn viewport_indexedf(index: GLuint, x: GLfloat, y: GLfloat, w: GLfloat, h: GLfloat) raises:
    return get_fn[glViewportIndexedf, "glViewportIndexedf"]()(index, x, y, w, h)


fn viewport_indexedfv(index: GLuint, v: Ptr[GLfloat, ImmutAnyOrigin]) raises:
    return get_fn[glViewportIndexedfv, "glViewportIndexedfv"]()(index, v)


fn wait_sync(sync: GLsync, flags: SyncBehaviorFlags, timeout: GLuint64) raises:
    return get_fn[glWaitSync, "glWaitSync"]()(sync, flags, timeout)


fn init_gl_version_1_0(load: LoadProc) raises:
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


fn init_gl_version_1_1(load: LoadProc) raises:
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


fn init_gl_version_1_2(load: LoadProc) raises:
    table = func_table.get_or_create_ptr()
    table[]["glCopyTexSubImage3D"] = load_fn_ptr("glCopyTexSubImage3D", load)
    table[]["glDrawRangeElements"] = load_fn_ptr("glDrawRangeElements", load)
    table[]["glTexImage3D"] = load_fn_ptr("glTexImage3D", load)
    table[]["glTexSubImage3D"] = load_fn_ptr("glTexSubImage3D", load)


fn init_gl_version_1_3(load: LoadProc) raises:
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


fn init_gl_version_1_4(load: LoadProc) raises:
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


fn init_gl_version_1_5(load: LoadProc) raises:
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


fn init_gl_version_2_0(load: LoadProc) raises:
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


fn init_gl_version_2_1(load: LoadProc) raises:
    table = func_table.get_or_create_ptr()
    table[]["glUniformMatrix2x3fv"] = load_fn_ptr("glUniformMatrix2x3fv", load)
    table[]["glUniformMatrix2x4fv"] = load_fn_ptr("glUniformMatrix2x4fv", load)
    table[]["glUniformMatrix3x2fv"] = load_fn_ptr("glUniformMatrix3x2fv", load)
    table[]["glUniformMatrix3x4fv"] = load_fn_ptr("glUniformMatrix3x4fv", load)
    table[]["glUniformMatrix4x2fv"] = load_fn_ptr("glUniformMatrix4x2fv", load)
    table[]["glUniformMatrix4x3fv"] = load_fn_ptr("glUniformMatrix4x3fv", load)


fn init_gl_version_3_0(load: LoadProc) raises:
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


fn init_gl_version_3_1(load: LoadProc) raises:
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


fn init_gl_version_3_2(load: LoadProc) raises:
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


fn init_gl_version_3_3(load: LoadProc) raises:
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


fn init_gl_version_4_0(load: LoadProc) raises:
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


fn init_gl_version_4_1(load: LoadProc) raises:
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


fn init_gl_version_4_2(load: LoadProc) raises:
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


fn init_gl_version_4_3(load: LoadProc) raises:
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


fn init_gl_version_4_4(load: LoadProc) raises:
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


fn init_gl_version_4_5(load: LoadProc) raises:
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


fn init_gl_version_4_6(load: LoadProc) raises:
    table = func_table.get_or_create_ptr()
    table[]["glMultiDrawArraysIndirectCount"] = load_fn_ptr("glMultiDrawArraysIndirectCount", load)
    table[]["glMultiDrawElementsIndirectCount"] = load_fn_ptr("glMultiDrawElementsIndirectCount", load)
    table[]["glPolygonOffsetClamp"] = load_fn_ptr("glPolygonOffsetClamp", load)
    table[]["glSpecializeShader"] = load_fn_ptr("glSpecializeShader", load)


# ========= INIT =========
fn init_opengl(load: LoadProc) raises:
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
