# Modern Calculator

A beautiful, modern calculator application built with C++ and Qt6, featuring a sleek dark theme and intuitive user interface.

## Features

- **Modern Dark Theme**: Sleek, eye-friendly dark interface
- **Full Calculator Functionality**: Addition, subtraction, multiplication, division
- **Additional Functions**: Percentage, plus/minus toggle, clear functions
- **Responsive Design**: Clean, modern button layout with hover effects
- **Keyboard Support**: Full keyboard input support
- **Error Handling**: Proper error handling for division by zero

## Screenshots

The calculator features:
- Large, easy-to-read display
- Color-coded buttons (gray for functions, orange for operators, dark for numbers)
- Smooth hover effects and animations
- Professional appearance inspired by modern mobile calculators

## Requirements

- **Qt6**: Qt6 Widgets module
- **CMake**: Version 3.16 or higher
- **C++17**: Compatible compiler (GCC, Clang, MSVC)

## Building the Project

### Prerequisites

1. **Install Qt6**: Download and install Qt6 from [qt.io](https://www.qt.io/download)
2. **Install CMake**: Download from [cmake.org](https://cmake.org/download/)

### Build Instructions

1. **Clone or download the project files**

2. **Create a build directory**:
   ```bash
   mkdir build
   cd build
   ```

3. **Configure with CMake**:
   ```bash
   cmake ..
   ```

4. **Build the project**:
   ```bash
   cmake --build .
   ```

5. **Run the calculator**:
   ```bash
   ./bin/Calculator  # On Linux/macOS
   .\bin\Calculator.exe  # On Windows
   ```

### Alternative: Using Qt Creator

1. Open Qt Creator
2. Open the `CMakeLists.txt` file as a project
3. Configure the project with your Qt6 installation
4. Build and run

## Running the Project

### Method 1: Using Build Scripts (Recommended)

#### Windows
1. **Double-click** `build.bat` or run it from Command Prompt
2. Wait for the build to complete
3. Navigate to the output directory:
   ```cmd
   cd build\bin\Release
   ```
4. **Run the calculator**:
   ```cmd
   Calculator.exe
   ```

#### Linux/macOS
1. **Make the script executable** (if needed):
   ```bash
   chmod +x build.sh
   ```
2. **Run the build script**:
   ```bash
   ./build.sh
   ```
3. **Run the calculator**:
   ```bash
   ./build/bin/Calculator
   ```

### Method 2: Manual Build and Run

#### Step-by-step Instructions

1. **Open Terminal/Command Prompt** in the project directory

2. **Create and enter build directory**:
   ```bash
   mkdir build
   cd build
   ```

3. **Configure the project**:
   ```bash
   cmake ..
   ```

4. **Build the project**:
   ```bash
   cmake --build . --config Release
   ```

5. **Navigate to the executable location**:
   - **Windows**: `build\bin\Release\`
   - **Linux/macOS**: `build\bin\`

6. **Run the calculator**:
   - **Windows**: `Calculator.exe`
   - **Linux/macOS**: `./Calculator`

### Method 3: Using Qt Creator IDE

1. **Open Qt Creator**
2. **Open Project**: File → Open File or Project → Select `CMakeLists.txt`
3. **Configure Project**: Choose your Qt6 kit and compiler
4. **Build Project**: Click the hammer icon or press Ctrl+B
5. **Run Project**: Click the play button or press Ctrl+R

### Method 4: Using Visual Studio (Windows)

1. **Open Visual Studio**
2. **Open Folder**: File → Open → Folder → Select project directory
3. **Configure**: Select CMake configuration when prompted
4. **Build**: Build → Build All (Ctrl+Shift+B)
5. **Run**: Debug → Start Debugging (F5) or Start Without Debugging (Ctrl+F5)

### Method 5: Using VS Code

1. **Install Extensions**: C/C++, CMake Tools
2. **Open Project**: File → Open Folder → Select project directory
3. **Configure**: Press Ctrl+Shift+P → "CMake: Configure"
4. **Build**: Press Ctrl+Shift+P → "CMake: Build"
5. **Run**: Press F5 or Ctrl+Shift+P → "CMake: Run Without Debugging"

## Usage

### Mouse/Touch Input
- Click number buttons (0-9) to input numbers
- Click operator buttons (+, -, ×, ÷) to perform calculations
- Click "=" to see the result
- Click "AC" to clear all
- Click "+/-" to toggle between positive and negative
- Click "%" to convert to percentage

### Keyboard Input
- **Numbers**: 0-9 keys
- **Operators**: +, -, *, / keys
- **Equals**: Enter or Return key
- **Clear**: Escape key
- **Decimal**: Period key
- **Backspace**: Backspace key

## Project Structure

```
Calculator/
├── CMakeLists.txt      # Build configuration
├── main.cpp           # Application entry point
├── calculator.h       # Calculator class header
├── calculator.cpp     # Calculator class implementation
├── calculator.ui      # UI file (minimal, UI built programmatically)
├── build.bat         # Windows build script
├── build.sh          # Linux/macOS build script
└── README.md         # This file
```

## Customization

The calculator uses CSS-like styling through Qt's stylesheet system. You can customize:

- **Colors**: Modify the color values in the button styles
- **Sizes**: Change button sizes and window dimensions
- **Fonts**: Adjust font sizes and families
- **Layout**: Modify spacing and margins

## Troubleshooting

### Common Issues

1. **Qt6 not found**: Ensure Qt6 is properly installed and CMake can find it
2. **Build errors**: Make sure you have a C++17 compatible compiler
3. **Runtime errors**: Ensure Qt6 runtime libraries are in your PATH

### Windows-specific Notes

- Use Visual Studio or MinGW-w64 as your compiler
- Ensure Qt6 binaries are in your system PATH
- Consider using Qt's official installer for easier setup

### Linux-specific Notes

- Install Qt6 development packages: `sudo apt install qt6-base-dev` (Ubuntu/Debian)
- Install CMake: `sudo apt install cmake` (Ubuntu/Debian)
- Ensure you have a C++ compiler: `sudo apt install build-essential`

### macOS-specific Notes

- Install Qt6 via Homebrew: `brew install qt6`
- Install CMake: `brew install cmake`
- Install Xcode Command Line Tools: `xcode-select --install`

### Runtime Issues

**"Application failed to start" (Windows)**
- Ensure Qt6 runtime DLLs are in your PATH
- Copy Qt6 DLLs to the executable directory
- Use Qt's `windeployqt` tool to package dependencies

**"Library not found" (Linux/macOS)**
- Install Qt6 runtime libraries
- Set `LD_LIBRARY_PATH` (Linux) or `DYLD_LIBRARY_PATH` (macOS)
- Use Qt's `macdeployqt` tool (macOS)

**"Permission denied" (Linux/macOS)**
- Make the executable file executable: `chmod +x Calculator`

## License

This project is open source and available under the MIT License.

## Contributing

Feel free to submit issues, feature requests, or pull requests to improve the calculator! 