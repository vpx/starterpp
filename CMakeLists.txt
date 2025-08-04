cmake_minimum_required(VERSION 3.28)

project(starterpp LANGUAGES CXX VERSION 0.0.1)

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

add_executable(starterpp)
add_executable(spp::starterpp ALIAS starterpp)
target_compile_features(starterpp PRIVATE cxx_std_23)
target_compile_options(starterpp PRIVATE
  $<$<COMPILE_LANG_AND_ID:CXX,Clang,GNU,ARMClang,AppleClang,LLC>:
    $<BUILD_INTERFACE:-Werror;-Wall;-Wextra;-Wshadow;-Wunused;-pedantic>>
  $<$<COMPILE_LANG_AND_ID:CXX,MSVC>:$<BUILD_INTERFACE:/W3>>
)

add_subdirectory(src/)

include(FetchContent)

option(STARTERPP_BUILD_TESTS "Enable building tests" ON)
if(STARTERPP_BUILD_TESTS)
  add_subdirectory(test/)
endif()

include(CMakePackageConfigHelpers)
include(GNUInstallDirs)

install(
    TARGETS starterpp
    EXPORT starterpp-targets
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)

install(
  EXPORT starterpp-targets
  FILE starterpp-config.cmake
  NAMESPACE spp::
  DESTINATION ${CMAKE_INSTALL_LIBDIR}/cmake/starterpp
)

write_basic_package_version_file(
  ${CMAKE_CURRENT_BINARY_DIR}/starterpp-config-version.cmake
  COMPATIBILITY SameMajorVersion
)

install(
  FILES ${CMAKE_CURRENT_BINARY_DIR}/starterpp-config-version.cmake
  DESTINATION ${CMAKE_INSTALL_LIBDIR}/cmake/starterpp
)

include(CPack)
