cmake_minimum_required(VERSION 3.28)

project(MyLibrary LANGUAGES CXX VERSION 0.0.1)

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

add_library(mylibrary STATIC)
add_library(mylib::mylibrary ALIAS mylibrary)

target_compile_features(mylibrary PUBLIC cxx_std_20)
target_sources(mylibrary
  PRIVATE
    ${CMAKE_SOURCE_DIR}/source/mylibrary.cpp
  PUBLIC
    FILE_SET CXX_MODULES
    BASE_DIRS source
    FILES source/mylibrary.cppm
)

include(FetchContent)

FetchContent_Declare(
  googletest
  GIT_REPOSITORY https://github.com/google/googletest.git
  GIT_TAG b514bdc898e2951020cbdca1304b75f5950d1f59 # release-1.15.2
  FIND_PACKAGE_ARGS NAMES GTest
)

option(MYLIB_BUILD_TESTS "Enable building tests" ON)
if(MYLIB_BUILD_TESTS)
  FetchContent_MakeAvailable(googletest)
  add_subdirectory(tests/)
endif()

include(CMakePackageConfigHelpers)
include(GNUInstallDirs)

install(
  TARGETS mylibrary
  EXPORT mylibrary-targets
  FILE_SET CXX_MODULES
  DESTINATION ${CMAKE_INSTALL_LIBDIR}/mylibrary
)

install(
  EXPORT mylibrary-targets
  FILE mylibrary-config.cmake
  NAMESPACE mylib::
  DESTINATION ${CMAKE_INSTALL_LIBDIR}/cmake/mylibrary
)

write_basic_package_version_file(
  ${CMAKE_CURRENT_BINARY_DIR}/mylibrary-config-version.cmake
  COMPATIBILITY SameMajorVersion
)

install(
  FILES ${CMAKE_CURRENT_BINARY_DIR}/mylibrary-config-version.cmake
  DESTINATION ${CMAKE_INSTALL_LIBDIR}/cmake/mylibrary
)
