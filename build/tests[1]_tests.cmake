add_test([=[Add.Simple]=]  [==[/home/veronika/projects/Vega/software engineering/sample_cpp_project/build/tests]==] [==[--gtest_filter=Add.Simple]==] --gtest_also_run_disabled_tests)
set_tests_properties([=[Add.Simple]=]  PROPERTIES WORKING_DIRECTORY [==[/home/veronika/projects/Vega/software engineering/sample_cpp_project/build]==] SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
set(  tests_TESTS Add.Simple)
