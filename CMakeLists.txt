cmake_minimum_required(VERSION 3.14)
project(csad2526ki409tetianazekter6 VERSION 1.0 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

# Library
add_library(math_operations STATIC math_operations.cpp)
target_include_directories(math_operations PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})

# Option to enable/disable tests
option(BUILD_TESTS "Build unit tests" ON)

if(BUILD_TESTS)
    include(FetchContent)

     # Fetch GoogleTest (release 1.14.0)
    FetchContent_Declare(
        googletest
        URL https://github.com/google/googletest/archive/refs/tags/v1.14.0.zip
    )
    # For Windows: Prevent overriding the parent project's compiler/linker settings
    set(gtest_force_shared_crt ON CACHE BOOL "" FORCE)

    FetchContent_MakeAvailable(googletest)

    enable_testing()

    # Test executable
    add_executable(unit_tests tests/unit_tests.cpp)
    target_link_libraries(unit_tests PRIVATE math_operations gtest_main)
    target_include_directories(unit_tests PRIVATE ${CMAKE_CURRENT_SOURCE_DIR})

    # Register tests with CTest
    include(GoogleTest)
    gtest_discover_tests(unit_tests)
endif()

# Useful build/run instructions:
# mkdir -p build && cd build
# cmake -S .. -B .
# cmake --build . --config Release
# ctest --output-on-failure
