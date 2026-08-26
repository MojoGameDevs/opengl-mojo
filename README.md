[![License](https://img.shields.io/badge/License-Apache_2.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)
![CodeQL](https://github.com/MojoGameDevs/opengl-mojo/workflows/CodeQL/badge.svg)

# Bindings for OpenGL in Mojo
This library generates and provides bindings for OpenGL in mojo.
This code is far from production ready, so if you find any issues, please open a github issue.

## Building

`pixi run build` - Generate the mojo package with bindings.

## How to run
To run opengl in mojo, you need to have a windowing system.
For example, you can use [SDL3 bindings](https://github.com/MojoGameDevs/sdl-mojo). To reference `sdl` and `opengl` packages, you have to place them into your project like submodules.

To build the bindings and start the example, run 
```sh
pixi run build && pixi run example
```

### Example output for a Basic Triangle Shader
<img src="images/triangle.png" alt="Example Image" width="600">
