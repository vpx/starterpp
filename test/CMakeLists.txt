# - MemorySanitizer false positives
#
# MemorySanitizer requires all dependencies, including system libraries, to be
# compiled with sanitizer instrumentation. While third-party libraries built
# within the project are instrumented, system libraries are not, which makes
# running all tests under MemorySanitizer impractical in CI.
#
# To exclude tests that depend on uninstrumented system libraries from running
# with MemorySanitizer, add the "no-msan" label to their test properties:
#
# set_property(NAME my_test_name LABELS "no-msan")
#
# - Valgrind false positives
#
# Valgrind can produce false positives, especially originating from system
# libraries or complex code paths. To minimize these, create a suppression
# file named valgrind.supp inside the test/ directory that lists known false
# positive patterns.
#
# If false positives persist despite suppressions, you can disable Valgrind on
# specific tests by adding the "no-valgrind" label to their test properties:
#
# set_property(NAME my_test_name LABELS "no-valgrind")

set(MEMORYCHECK_COMMAND valgrind)
set(MEMORYCHECK_COMMAND_OPTIONS
    "--leak-check=full"
    "--exit-on-first-error=yes"
    "--suppressions=${CMAKE_SOURCE_DIR}/test/valgrind.supp"
)
