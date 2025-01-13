FetchContent_Declare(
  googletest
  GIT_REPOSITORY https://github.com/google/googletest.git
  GIT_TAG b514bdc898e2951020cbdca1304b75f5950d1f59 # release-1.15.2
  FIND_PACKAGE_ARGS NAMES GTest
)

FetchContent_MakeAvailable(googletest)

enable_testing()

include(CTest)

add_executable(test)
target_sources(test PRIVATE ${CMAKE_SOURCE_DIR}/tests/test.cpp)
target_link_libraries(test PRIVATE mylibrary GTest::gtest_main)
add_test(NAME Test COMMAND test)
