#!/bin/bash

echo "Building Modern Calculator..."

# Create build directory if it doesn't exist
mkdir -p build
cd build

echo "Configuring with CMake..."
cmake ..
if [ $? -ne 0 ]; then
    echo "Failed to configure project with CMake."
    echo "Please ensure Qt6 and CMake are properly installed."
    exit 1
fi

echo "Building project..."
cmake --build .
if [ $? -ne 0 ]; then
    echo "Build failed."
    exit 1
fi

echo "Build completed successfully!"
echo ""
echo "To run the calculator:"
echo "  ./bin/Calculator"
echo "" 