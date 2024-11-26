# Modern C++ Template

A cross-platform C++ template using modules, CMake, continuous integration, unit tests, clang-format, clang-tidy, and a custom style guide.

Note: Manual updates to the contact information in the `SECURITY.md` and `CODE_OF_CONDUCT.md` files are required.

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
cmake -G Ninja -B build/ -S . -DCMAKE_BUILD_TYPE=[Debug|Release|RelWithDebInfo|MinSizeRel]
```

```bash
cmake --build build/
```

### Building with Visual Studio (MSVC)

```bash
cmake -G "Visual Studio 17 2022" -B build/ -S .
```

```bash
cmake --build build/ --config [Debug|Release|RelWithDebInfo|MinSizeRel]
```
