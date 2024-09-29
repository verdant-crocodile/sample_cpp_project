cmake_minimum_required(VERSION 3.20)
project(sample_cpp_project)

#set(CMAKE_CXX_STANDARD 14)

include_directories(include)

add_executable(main main.cpp src/my_add.cpp)


include(FetchContent)
FetchContent_Declare(
    benchmark
    GIT_REPOSITORY https://github.com/google/benchmark.git
    GIT_TAG v1.6.0 
)
FetchContent_MakeAvailable(benchmark)

add_executable(benchmarks src/benchmark.cpp src/my_add.cpp)
target_link_libraries(benchmarks benchmark::benchmark)



option(BUILD_WITHOUT_EXTERNALS "Build without external dependencies" OFF)
if(NOT BUILD_WITHOUT_EXTERNALS)
    FetchContent_Declare(
       googletest
        GIT_REPOSITORY https://github.com/google/googletest.git
        GIT_TAG master
    )
    FetchContent_MakeAvailable(googletest)
endif()

enable_testing()
add_executable(tests test_add.cpp src/my_add.cpp) 
target_link_libraries(tests gtest_main)


include(GoogleTest)
gtest_discover_tests(tests)