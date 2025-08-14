# starterpp

## Getting Started

To get started simply run the script in `.github/setup.sh` from the root directory.

The script will automatically delete itself once it finishes running.

If you are on Windows, you must have Git installed.

## Building

### Single-Configuration Generators

Single-configuration generators like Unix Makefiles and Ninja:

```cmake -B build --DCMAKE_BUILD_TYPE=<Debug|Release|RelWithDebInfo|MinSizeRel>```

```cmake --build build```

### Multi-Configuration Generators

Multi-configuration generators like Visual Studio, XCode and Ninja Multi-Config:

```cmake -B build```

```cmake --build build --config <Debug|Release|RelWithDebInfo|MinSizeRel>```

