@echo off
REM Step 1: Create build directory if not exist
if not exist build mkdir build

REM Step 2: Change to build directory
cd build

REM Step 3: Configure the project with CMake
cmake ..

REM Step 4: Build the project
cmake --build .

REM Step 5: Run all tests with CTest
ctest --output-on-failure

REM Step 6: Ensure hello.exe is generated (optional check)
if exist hello.exe (
    echo Executable 'hello.exe' generated successfully.
) else (
    echo Executable 'hello.exe' not found!
    exit /b 1
)
