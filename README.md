# starterpp

A modern, cross-platform C++ template that uses modules, continuous integration, CMake, unit tests, clang-format, clang-tidy, and includes a custom style guide. 

## Building

### Requirements

In order to build modules is required CMake version `3.28` or higher.

The list of generators which support scanning sources for C++ modules include:
 - Ninja
 - Ninja Multi-Config
 - Visual Studio 17 2022

Compilers which CMake natively supports module dependency scanning include:
 - MSVC toolset `14.34` and newer (provided with Visual  Studio  `17.4`  and newer)
 - LLVM/Clang `16.0` and newer
 - GCC `14` (for the in-development branch, after 2023-09-20) and newer

### Building with Ninja

```bash
cmake -G Ninja -B build -DCMAKE_BUILD_TYPE=<Debug|Release|RelWithDebInfo|MinSizeRel>
```

```bash
cmake --build build
```

### Building with Visual Studio (MSVC)

```bash
cmake -G "Visual Studio 17 2022" -B build
```

```bash
cmake --build build --config <Debug|Release|RelWithDebInfo|MinSizeRel>
```
