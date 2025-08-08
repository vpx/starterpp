# Resolving false positives:
#
# MemorySanitizer requires all dependencies including system libraries to be 
# built with sanitizer support. While third-party libraries built as part of the
# project are instrumented, system libraries are not, making it impractical to 
# run all tests in CI. To skip MemorySanitizer for tests that depend on system 
# libraries, add the "no-msan" label to their test properties.
#
# Example:
# set_property(TEST my_test_name LABELS "no-msan")

enable_testing()
include(CTest)
