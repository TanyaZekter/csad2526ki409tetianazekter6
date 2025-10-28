@echo off
setlocal enabledelayedexpansion

REM Створити каталог білдування
if not exist build (
    mkdir build
)
cd /d build || (echo Failed to enter build directory & exit /b 1)

REM Конфігурування проекту за допомогою CMake
cmake ..
if errorlevel 1 (
    echo CMake configuration failed.
    exit /b 1
)

REM Білдування проєкту
cmake --build .
if errorlevel 1 (
    echo Build failed.
    exit /b 1
)

REM Запустити тести за допомогою CTest
ctest --output-on-failure
if errorlevel 1 (
    echo Some tests failed.
    exit /b 1
)

REM Перевірити, що створено виконуваний файл hello.exe
if exist Debug\hello.exe (
    echo Executable 'hello.exe' generated successfully.
) else (
    echo Executable 'hello.exe' not found!
    exit /b 1
)

echo CI script completed successfully.
exit /b 0
