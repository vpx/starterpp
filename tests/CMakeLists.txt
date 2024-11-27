enable_testing()

include(CTest)

add_executable(test)
target_sources(test PRIVATE ${CMAKE_SOURCE_DIR}/tests/test.cpp)
target_link_libraries(test PRIVATE mylibrary GTest::gtest_main)
add_test(NAME Test COMMAND test)
