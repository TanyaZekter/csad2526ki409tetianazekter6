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