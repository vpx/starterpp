cmake_minimum_required(VERSION 3.28)

project(MyLibrary LANGUAGES CXX VERSION 0.0.1)

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

add_library(mylibrary STATIC)
add_library(mylib::mylibrary ALIAS mylibrary)
target_compile_features(mylibrary PUBLIC cxx_std_20)
target_compile_options(mylibrary PUBLIC
  $<$<COMPILE_LANG_AND_ID:CXX,Clang,GNU,ARMClang,AppleClang,LLC>:
    $<BUILD_INTERFACE:-Werror;-Wall;-Wextra;-Wshadow;-Wunused;-pedantic>>
  $<$<COMPILE_LANG_AND_ID:CXX,MSVC>:$<BUILD_INTERFACE:/W3>>
)

add_subdirectory(source/)

include(FetchContent)

option(MYLIB_BUILD_TESTS "Enable building tests" ON)
if(MYLIB_BUILD_TESTS)
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

include(CPack)
