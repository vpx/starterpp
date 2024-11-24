# C++ Modern Template

A C++ modern, cross-platform template that uses modules, continuous integration, cmake, unit tests, clang-format, clang-tidy and includes a custom style guide.

## Getting Started

1. Clone the repository

2. Update contact information in [SECURITY.md](docs/SECURITY.md) and [CODE_OF_CONDUCT.md](docs/CODE_OF_CONDUCT.md) files

## Building

### Single-Configuration Generators

Single-configuration generators like Unix Makefiles and Ninja:

`cmake -B build/ -S . --DCMAKE_BUILD_TYPE=[Debug|Release|RelWithDebInfo|MinSizeRel]`

`cmake --build build/`

### Multi-Configuration Generators

Multi-configuration generators like Visual Studio, XCode and Ninja Multi-Config:

`cmake -B build/ -S .`

`cmake --build build/ --config [Debug|Release|RelWithDebInfo|MinSizeRel]`
