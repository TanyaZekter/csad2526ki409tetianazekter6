#!/bin/bash
set -e

# Step 1: Create build directory if it does not exist
mkdir -p build

# Step 2: Change to build directory
cd build

# Step 3: Configure the project with CMake
cmake ..

# Step 4: Build the project
cmake --build .

# Step 5: Run all tests with CTest
ctest --output-on-failure

# Step 6: Ensure 'hello' executable is generated (optional check)
if [ -f hello ]; then
    echo "Executable 'hello' generated successfully."
else
    echo "Executable 'hello' not found!"
    exit 1
fi