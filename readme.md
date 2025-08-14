# starterpp

## Getting Started

First run the script at `.github/setup.sh` from the root directory.

Next enable GitHub's built-in [vulnerability reports](https://docs.github.com/en/code-security/security-advisories/working-with-repository-security-advisories/configuring-private-vulnerability-reporting-for-a-repository).

The script will automatically delete itself once it finishes running.

If you are on Windows, run the script from Git Bash or WSL.

## Building

### Single-Configuration Generators

Single-configuration generators like Unix Makefiles and Ninja:

```cmake -B build --DCMAKE_BUILD_TYPE=<Debug|Release|RelWithDebInfo|MinSizeRel>```

```cmake --build build```

### Multi-Configuration Generators

Multi-configuration generators like Visual Studio, XCode and Ninja Multi-Config:

```cmake -B build```

```cmake --build build --config <Debug|Release|RelWithDebInfo|MinSizeRel>```

