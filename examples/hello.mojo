import sdl
from opengl import *


def load_gl_proc(proc: String) raises -> def() thin abi("C") -> None:
    return sdl.gl_get_proc_address(proc)


def main() raises:
    sdl.init(sdl.InitFlags.INIT_VIDEO | sdl.InitFlags.INIT_EVENTS)
    sdl.gl_set_attribute(sdl.GLAttr.GL_CONTEXT_PROFILE_MASK, Int32(sdl.GLProfile.GL_CONTEXT_PROFILE_CORE))
    sdl.gl_set_attribute(sdl.GLAttr.GL_CONTEXT_MAJOR_VERSION, 4)
    sdl.gl_set_attribute(sdl.GLAttr.GL_CONTEXT_MINOR_VERSION, 2)
    sdl.gl_set_attribute(sdl.GLAttr.GL_DOUBLEBUFFER, 1)
    
    var window = sdl.create_window("SDL Window", 1024, 768, sdl.WindowFlags.WINDOW_RESIZABLE | sdl.WindowFlags.WINDOW_OPENGL | sdl.WindowFlags.WINDOW_TRANSPARENT)

    var context = sdl.gl_create_context(window)
    sdl.gl_make_current(window, context)

    init_opengl(load_gl_proc)
    
    viewport(0, 0, 1024, 768)
    
    var running = True
    while running:
        var event = sdl.Event(UInt32(0))
        while sdl.poll_event(Ptr(to=event)):
            if event.unsafe_get[sdl.CommonEvent]().type == UInt32(sdl.EventType.EVENT_QUIT):
                running = False
                break
        
        clear_color(0.1, 0.2, 0.5, 1)
        clear(ClearBufferMask.GL_COLOR_BUFFER_BIT)
        sdl.gl_swap_window(window)
    

    sdl.quit()
