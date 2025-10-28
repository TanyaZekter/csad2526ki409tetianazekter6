*Етап 1:
Створи у корені репозиторію https://github.com/TanyaZekter/csad2526ki409tetianazekter6/tree/feature/develop/1-hello-world вихідний файл main.cpp з мінімальною програмою "Hello World":
Copilot said: Чекаю на ваше підтвердження в діалозі, щоб продовжити і створити в корені репозиторію файл main.cpp з мінімальною програмою "Hello World".

Are you sure?
Are you sure you wish to execute the "push_files" tool?

 TanyaZekter accepted the action
main.cpp
#include <iostream>

int main() {
    std::cout << "Hello World\n";
    return 0;
}
Я додав(ла) у корінь гілки feature/develop/1-hello-world репозиторію TanyaZekter/csad2526ki409tetianazekter6 мінімальну програму "Hello World" у файлі main.cpp (коміт у цій гілці створено). Якщо хочете, я можу:

відкрити pull request для злиття цієї гілки в іншу (наприклад, develop або main);
додати файл CMakeLists.txt або інструкцію для збірки;
або внести інші зміни — скажіть, що саме потрібно.

--------------------------------------------------------------------------------------------------------------------------------------

*Етап2
у корені репозиторію https://github.com/TanyaZekter/csad2526ki409tetianazekter6/tree/feature/develop/cmake-setup створи файл  з назвою 
CMakeLists.txt та згенеруй наповнення файлу 
Copilot said: Чекаю на ваше підтвердження, щоб продовжити і
Чекаю на ваше підтвердження, щоб продовжити і створити файл CMakeLists.txt у корені гілки feature/develop/cmake-setup.

Are you sure?
Are you sure you wish to execute the "create_or_update_file" tool?

 TanyaZekter accepted the action
Copilot said: ```name=CMakeLists.txt url=https://github.com/TanyaZekter/csad2526ki409tetianazekter6/blob/feature/develop/cmake-setup/CMakeLists.txt cmake_minimum_required(VERSION 3.10) project(csad2526ki409tetianazekter6 VERSION 1.0 LANGUAGES CXX) #
name=CMakeLists.txt
cmake_minimum_required(VERSION 3.10)

project(csad2526ki409tetianazekter6 VERSION 1.0 LANGUAGES CXX)
# Встановити стандарт C++
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

# Рекомендується збирати поза джерельним деревом
if(CMAKE_SOURCE_DIR STREQUAL CMAKE_BINARY_DIR)
  message(WARNING "It is recommended to build out-of-source.")
endif()

# Додаємо виконуваний файл, якщо main.cpp присутній у корені
add_executable(${PROJECT_NAME} main.cpp)

# Інсталяція
include(GNUInstallDirs)
install(TARGETS ${PROJECT_NAME}
  RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR})

# Опції
option(BUILD_TESTS "Enable building tests" OFF)
------------------------------------------------------------------------------------------------------------------------------------
*Етап 3:
Створи файл math_operations.h та math_operations.cpp у корені 
проекту https://github.com/TanyaZekter/csad2526ki409tetianazekter6/tree/feature/develop/3-unit-testing .У math_operations.h створи функцію int 
add(int a, int b); 
Я додав(ла) у корінь гілки feature/develop/3-unit-testing два файли: math_operations.h і math_operations.cpp з простою функцією add(int a, int b). Коміт створено у гілці feature/develop/3-unit-testing (SHA: 3ec51ef4bee6e282080d41c85e9e21afe1f276b9).


math_operations.h
#ifndef MATH_OPERATIONS_H
#define MATH_OPERATIONS_H

int add(int a, int b);

#endif // MATH_OPERATIONS_H

math_operations.cpp
#include "math_operations.h"

int add(int a, int b) {
    return a + b;
}
Створи новий каталог tests. У ньому створи файл unit_tests.cpp. 
 Напиши юніт тести .
 Copilot said: Я додав(ла) каталог tests і файл tests/unit_tests.cpp
Я додав(ла) каталог tests і файл tests/unit_tests.cpp у корінь гілки feature/develop/3-unit-testing репозиторію TanyaZekter/csad2526ki409tetianazekter6. Коміт у цій гілці: 1f81fc2246217fc102f2624206dc3a5b0d5f2371.


#include <iostream>
#include <string>
#include "math_operations.h"

static bool test_add(const std::string& name, int a, int b, int expected) {
    int r = add(a, b);
    if (r != expected) {
        std::cout << "[FAIL] " << name << ": add(" << a << ", " << b << ") == " << r << " (expected " << expected << ")\n";
        return false;
    }
    std::cout << "[PASS] " << name << "\n";
    return true;
}

int main() {
    bool ok = true;
    ok &= test_add("positive numbers", 2, 3, 5);
    ok &= test_add("negative numbers", -2, -3, -5);
    ok &= test_add("mixed", -5, 10, 5);
    ok &= test_add("zero", 0, 0, 0);
    ok &= test_add("large", 1000000, 2000000, 3000000);

    if (!ok) {
        std::cout << "Some tests failed\n";
        return 1;
    }

    std::cout << "All tests passed\n";
    return 0;
}
Оновлення CMakeLists.txt: 
○ Додай підтримку Google Test у 
CMakeLists.txt. 
○ Далі, додай інструкції для створення тестового 
виконуваного файлу та запуску тестів
Copilot said: Я додав(ла) CMakeLists.txt у гілку feature/develop/3-unit-testing (коміт:
Я додав(ла) CMakeLists.txt у гілку feature/develop/3-unit-testing (коміт: 20241ce5d96e2b65ae4b4722514662481333d84b). Цей CMake-файл підключає Google Test через FetchContent, створює бібліотеку math_operations, додає опцію BUILD_TESTS і конфігурує збірку та запуск тестів через CTest.

Ось файл, який я додав(ла):


CMakeLists.txt
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

    # Fetch GoogleTest (release 1.15.0)
    FetchContent_Declare(
        googletest
        URL https://github.com/google/googletest/archive/refs/tags/release-1.15.0.zip
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
Ось оновлений файл unit_tests.cpp для каталогу tests у гілці feature/develop/3-unit-testing, оформлений для використання з Google Test:
#include "gtest/gtest.h"
#include "math_operations.h"

TEST(AdditionTests, PositiveNumbers) {
    EXPECT_EQ(add(2, 3), 5);
}

TEST(AdditionTests, NegativeNumbers) {
    EXPECT_EQ(add(-2, -3), -5);
}

TEST(AdditionTests, Mixed) {
    EXPECT_EQ(add(-5, 10), 5);
}

TEST(AdditionTests, Zero) {
    EXPECT_EQ(add(0, 0), 0);
}

TEST(AdditionTests, LargeNumbers) {
    EXPECT_EQ(add(1000000, 2000000), 3000000);
}

// main() provided by gtest_main when linked in CMake
