# starterpp

A modern, cross-platform C++ template that uses modules, continuous integration, CMake, unit tests, clang-format, clang-tidy, and includes a custom style guide. 

## Building

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
