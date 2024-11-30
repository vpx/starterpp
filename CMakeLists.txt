cmake_minimum_required(VERSION 3.28)

project(MyLibrary LANGUAGES CXX VERSION 0.0.1)

add_library(mylibrary STATIC)
target_compile_features(mylibrary PUBLIC cxx_std_20)
target_sources(mylibrary
    PRIVATE
    ${CMAKE_SOURCE_DIR}/source/mylibrary.cpp
    PUBLIC
    FILE_SET CXX_MODULES
    BASE_DIRS include
    FILES include/mylibrary.cppm
)

include(FetchContent)

FetchContent_Declare(
  googletest
  GIT_REPOSITORY https://github.com/google/googletest.git
  GIT_TAG b514bdc898e2951020cbdca1304b75f5950d1f59 # release-1.15.2
  FIND_PACKAGE_ARGS NAMES GTest
)

option(MYLIB_BUILD_TESTS ON)
if(MYLIB_BUILD_TESTS)
  FetchContent_MakeAvailable(googletest)
  add_subdirectory(tests/)
endif()
