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
