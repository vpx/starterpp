# starterpp

## Contents

Here is a list of some of the things present in this template:

 - [Custom style guide](doc/style_guide.md)
 - [Custom clang-format](.clang-format)
 - [Custom clang-tidy](.clang-tidy)
 - [Base CMake template](CMakeLists.txt)
 - [Custom contributing instructions](doc/contributing.md)
 - [Code covenant v1.1](doc/code_of_conduct.md)
 - [Continous integration:](.github/workflows/ci.yml)
   - Build and test on Macos
   - Build and test on Windows
   - Run clang-tidy and Valgrind
   - Run Clang address sanitizer
   - Run Clang undefined sanitizer
   - Run Clang leak sanitizer
   - Run Clang thread sanitizer
   - Run Clang memory sanitizer
 - [Issue templates:](.github/ISSUE_TEMPLATES/)
   - [Bug report template](.github/ISSUE_TEMPLATES/bug_report.yml)
   - [Documentation issue template](.github/ISSUE_TEMPLATE/documentation_issue.yml)
   - [Feature request template](.github/ISSUE_TEMPLATE/feature_request.yml)
   - [Question templace](.github/ISSUE_TEMPLATE/question.yml)
 - [Pull request template](.github/pull_request_template.yml)

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

