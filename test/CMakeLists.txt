# ATTENTION!
#
# Tests will not use MemorySanitizer unless specified. To run a test with 
# MemorySanitizer add the "msan" label to the test properties:
#
# set_property(TEST my_test_name LABELS "msan")
#
# MemorySanitizer requires all dependencies including system libraries to be 
# built with sanitizer support. While third-party libraries built as part of the
# project are instrumented by default, system libraries are not, making it 
# impractical to run all tests in CI. By labeling specific tests with "msan", 
# you can limit execution to those that don’t rely on uninstrumented system 
# libraries.

enable_testing()
include(CTest)
