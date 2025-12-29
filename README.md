# Tiny32 V3 Template - VSCode

A PlatformIO project template for developing applications with the Tiny32 V3 board in Visual Studio Code.

## Overview

This template provides a ready-to-use development environment for the Tiny32 V3 microcontroller board. It includes the necessary project structure, configuration files, and library setup for quick project initialization.

## Features

- Pre-configured PlatformIO project structure
- Support for Tiny32 V3 hardware library
- Example code and test cases included
- Easy integration with VSCode
- Wokwi simulation support

## Prerequisites

Before you begin, ensure you have the following installed:

- [Visual Studio Code](https://code.visualstudio.com/)
- [PlatformIO IDE Extension](https://platformio.org/install/ide?install=vscode)
- Git (for cloning the library)

## Getting Started

### 1. Clone or Download This Template

```bash
git clone https://github.com/tenergyinnovation/tiny32_v3_template_VsCode.git
cd tiny32_v3_template_VsCode
```

### 2. Install Tiny32 V3 Library

Before running any examples, you must install the Tiny32 V3 library:

**Option A: Using the provided script (Recommended)**

On Linux/macOS:
```bash
cd lib
./clone_repo.sh
```

On Windows:
```bash
cd lib
clone_repo.bat
```

**Option B: Manual installation**
```bash
cd lib
git clone https://github.com/tenergyinnovation/tiny32_v3.git
```

### 3. Open Project in VSCode

Open the project folder in Visual Studio Code:
- File → Open Folder → Select this project directory

### 4. Build and Upload

- **Build**: Press `Ctrl+Alt+B` (Windows/Linux) or `Cmd+Shift+B` (macOS)
- **Upload**: Use PlatformIO toolbar or press `Ctrl+Alt+U`
- **Serial Monitor**: Press `Ctrl+Alt+S` to open the serial monitor

## Project Structure

```
├── lib/                    # Project libraries
│   └── tiny32_v3/         # Tiny32 V3 hardware library
├── src/                   # Source code
│   └── main.cpp           # Main application file
├── include/               # Header files
├── test/                  # Unit tests
├── platformio.ini         # PlatformIO configuration
├── wokwi.toml            # Wokwi simulator configuration
└── diagram.json          # Circuit diagram
```

## Configuration

The `platformio.ini` file contains the project configuration. Modify it according to your needs:

- Board type
- Upload speed
- Serial monitor settings
- Build flags
- Library dependencies

## Examples

The Tiny32 V3 library includes numerous examples in `lib/tiny32_v3/examples/`:

- **Basic**: LED, Buzzer, Switch tests
- **Communication**: RS485, Modbus RTU
- **Advanced**: OTA updates, PWM control
- **Integration**: Complete interface tests

To use an example, copy the desired `.ino` file content to `src/main.cpp` and adapt it as needed.

## Troubleshooting

### Library Not Found
If you encounter library-related errors:
1. Ensure the tiny32_v3 library is properly installed in the `lib/` folder
2. Check that `lib/tiny32_v3/src/` contains the library files
3. Clean and rebuild the project: PlatformIO → Clean

### Upload Failed
- Check the correct COM port is selected
- Ensure the Tiny32 V3 board is properly connected
- Try pressing the BOOT button during upload if needed

### Build Errors
- Verify PlatformIO is up to date
- Check that all required dependencies are installed
- Review the error messages in the terminal

## Documentation

For detailed information about the Tiny32 V3 board and library:
- [Tiny32 V3 Library Repository](https://github.com/tenergyinnovation/tiny32_v3)
- Check the library's README.md for hardware specifications
- Refer to examples for common use cases

## Contributing

If you'd like to contribute to this template:
1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Submit a pull request

## Support

For issues and questions:
- Open an issue on the [GitHub repository](https://github.com/tenergyinnovation/tiny32_v3_template_VsCode)
- Visit [Tenergy Innovation](https://tenergyinnovation.co.th)

## License

This project template is provided as-is for development with the Tiny32 V3 board.

## Acknowledgments

- Tenergy Innovation for the Tiny32 V3 hardware and library
- PlatformIO for the excellent development platform

---

**Note**: This template is specifically designed for the Tiny32 V3 board. Ensure you're using compatible hardware before proceeding with development.

