cmake_minimum_required(VERSION 3.28)

project(starterpp LANGUAGES CXX VERSION 0.0.1)

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

add_executable(starterpp)
add_executable(spp::starterpp ALIAS starterpp)
target_compile_features(starterpp PRIVATE cxx_std_23)
target_compile_options(starterpp PRIVATE
    $<$<CXX_COMPILER_ID:GNU,Clang>:-Wall;-Wextra;-Wshadow;-Walloca;-Wcast-align;-Wcast-function-type;-Wcast-qual;-Wconversion;-Wctad-maybe-unsupported;-Wdeprecated;-Wnull-dereference;-Wunreachable-code;-Wnon-virtual-dtor;-Wold-style-cast;-Wpedantic;>
    $<$<CXX_COMPILER_ID:Clang>:-Warray-bounds-pointer-arithmetic;-Wassign-enum;-Watomic-implicit-seq-cst;-Wbad-function-cast;-Wbind-to-temporary-copy;-Wbitwise-op-parentheses;-Wcompound-token-split-by-space;-Wconditional-uninitialized;-Wdelimited-escape-sequence-extension;-Wduplicate-enum;-Wduplicate-method-arg;-Wmost;>
    $<$<CXX_COMPILER_ID:GNU>:-Wmisleading-indentation;-Wduplicated-cond;-Wduplicated-branches;-Wlogical-op;-Wuseless-cast;>
    $<$<CXX_COMPILER_ID:MSVC>:/W4;/permissive;/w14640;/w14242;/w14254;/w14263;/w14265;/w14287;/we4289;/w14296;/w14311;/w14545;/w14546;/w14547;/w14549;/w14555;/w14619;/w14640;/w14826;/w14905;/w14906;/w14928;>
)

option(STARTERPP_CLANG_TIDY "Enable clang-tidy during the build process" OFF)
if (STARTERPP_CLANG_TIDY)
    set_target_properties(starterpp PROPERTIES CXX_CLANG_TIDY "clang-tidy")
endif()

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
