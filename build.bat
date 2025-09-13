@echo off
echo Building Modern Calculator...

if not exist build mkdir build
cd build

echo Configuring with CMake...
cmake .. -G "Visual Studio 17 2022" -A x64
if %errorlevel% neq 0 (
    echo CMake configuration failed. Trying with default generator...
    cmake ..
)

if %errorlevel% neq 0 (
    echo Failed to configure project with CMake.
    echo Please ensure Qt6 and CMake are properly installed.
    pause
    exit /b 1
)

echo Building project...
cmake --build . --config Release

if %errorlevel% neq 0 (
    echo Build failed.
    pause
    exit /b 1
)

echo Build completed successfully!
echo.
echo To run the calculator:
echo   .\bin\Release\Calculator.exe
echo.
pause 