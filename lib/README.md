# 📚 Library Installation Guide

This folder contains the installation scripts for required libraries.

## 🚀 Quick Start

### For macOS/Linux:
Run the following command to install all required libraries:

```bash
cd lib
./clone_repo.sh
```

### For Windows:
Run the following command to install all required libraries:

```cmd
cd lib
clone_repo.bat
```

Or double-click on `clone_repo.bat` file in Windows Explorer.

## 📦 Installed Libraries

### 1. **tiny32_v3** 🔧
- Main hardware library for tiny32_v3 board
- Repository: [tenergyinnovation/tiny32_v3](https://github.com/tenergyinnovation/tiny32_v3)
- Features:
  - Hardware abstraction for ESP32-based tiny32_v3
  - Support for 30+ sensors and modules
  - Modbus RTU communication
  - PWM, GPIO, and peripheral control

### 2. **Debounce** 🎯
- Button debouncing library
- Repository: [wkoch/Debounce](https://github.com/wkoch/Debounce)
- Location: `tiny32_v3/src/Debounce/`
- Features:
  - Software debouncing for buttons and switches
  - Configurable debounce delay
  - Edge detection support
  - Compatible with INPUT and INPUT_PULLUP

## 📝 Manual Installation

If you need to install libraries manually, you can use one of the following methods:

### Method 1: Using Git Clone (Recommended)

#### macOS/Linux:
```bash
# Navigate to lib folder
cd lib

# Clone tiny32_v3 library
git clone https://github.com/tenergyinnovation/tiny32_v3.git

# Clone Debounce library into tiny32_v3/src
cd tiny32_v3/src
git clone https://github.com/wkoch/Debounce.git

# Return to lib folder
cd ../../
```

#### Windows (Command Prompt or PowerShell):
```cmd
REM Navigate to lib folder
cd lib

REM Clone tiny32_v3 library
git clone https://github.com/tenergyinnovation/tiny32_v3.git

REM Clone Debounce library into tiny32_v3\src
cd tiny32_v3\src
git clone https://github.com/wkoch/Debounce.git

REM Return to lib folder
cd ..\..
```

### Method 2: Manual Download (No Git Required)

#### Step 1: Download tiny32_v3 Library

**For all platforms:**

1. Open browser and go to: https://github.com/tenergyinnovation/tiny32_v3
2. Click the green **"Code"** button
3. Click **"Download ZIP"**
4. Extract the downloaded `tiny32_v3-release.zip` file
5. Rename the extracted folder from `tiny32_v3-release` to `tiny32_v3`
6. Move/Copy the `tiny32_v3` folder to your project's `lib` directory

#### Step 2: Download Debounce Library

**For all platforms:**

1. Open browser and go to: https://github.com/wkoch/Debounce
2. Click the green **"Code"** button
3. Click **"Download ZIP"**
4. Extract the downloaded `Debounce-main.zip` or `Debounce-master.zip` file
5. Rename the extracted folder to `Debounce` (remove `-main` or `-master` suffix)
6. Move/Copy the `Debounce` folder to `lib/tiny32_v3/src/Debounce/`

#### Step 3: Verify Installation

After installation, your folder structure should look like this:

```
your_project/
├── lib/
│   ├── tiny32_v3/
│   │   ├── README.md
│   │   ├── library.json
│   │   ├── library.properties
│   │   ├── keywords.txt
│   │   ├── src/
│   │   │   ├── tiny32_v3.h
│   │   │   ├── tiny32_v3.cpp
│   │   │   ├── tiny32_v3_Lib.h
│   │   │   ├── tiny32_SPIFSS.h
│   │   │   └── Debounce/
│   │   │       ├── Debounce.h
│   │   │       ├── Debounce.cpp
│   │   │       ├── keywords.txt
│   │   │       ├── library.json
│   │   │       ├── LICENSE
│   │   │       └── README.md
│   │   └── examples/
│   ├── clone_repo.sh
│   ├── clone_repo.bat
│   └── README.md (this file)
├── src/
│   └── main.cpp
└── platformio.ini
```

### Method 3: Using Submodules (Advanced)

For developers who want to track library versions:

#### macOS/Linux & Windows (Git Bash):
```bash
cd lib

# Add tiny32_v3 as submodule
git submodule add https://github.com/tenergyinnovation/tiny32_v3.git

# Add Debounce as nested submodule
cd tiny32_v3/src
git submodule add https://github.com/wkoch/Debounce.git

# Initialize and update submodules
cd ../../
git submodule update --init --recursive
```

### Verification

After installation, verify by building your project:

**Using PlatformIO:**
```bash
platformio run
```

**Expected output:**
```
...
Dependency Graph
|-- tiny32_v3 @ 3.18.2
Building in release mode
...
```

If you see compilation errors related to Debounce, ensure:
1. ✅ Debounce folder is located at `lib/tiny32_v3/src/Debounce/`
2. ✅ Folder name is exactly `Debounce` (case-sensitive)
3. ✅ Files `Debounce.h` and `Debounce.cpp` exist in the folder

## ✨ Features of Installation Scripts

- ✅ Automatic detection of existing libraries
- ✅ Color-coded output for better readability (shell script)
- ✅ UTF-8 emoji support on both platforms
- ✅ Progress indicators with emojis
- ✅ Error handling and validation
- ✅ Helpful next steps after installation

## 🔧 Troubleshooting

### macOS/Linux

**Problem:** Script permission denied  
**Solution:** 
```bash
chmod +x clone_repo.sh
./clone_repo.sh
```

**Problem:** Libraries already exist  
**Solution:** The script will skip cloning and show a warning message. Delete the existing folders if you want to reinstall:
```bash
rm -rf tiny32_v3
./clone_repo.sh
```

### Windows

**Problem:** Git is not recognized  
**Solution:** Make sure Git is installed and added to PATH. Download from [git-scm.com](https://git-scm.com/download/win)

**Problem:** Libraries already exist  
**Solution:** The script will skip cloning and show a warning message. Delete the existing folders if you want to reinstall:
```cmd
rmdir /s /q tiny32_v3
clone_repo.bat
```

**Problem:** Emoji not displaying correctly  
**Solution:** The script uses UTF-8 encoding (chcp 65001). Make sure your Command Prompt supports UTF-8.

## 📖 Usage Example

After installation, you can use the libraries in your code:

```cpp
#include <tiny32_v3.h>

tiny32_v3 mcu;

void setup() {
  Serial.begin(115200);
  
  // Use debounced button functions
  if (mcu.Sw1()) {
    Serial.println("Button SW1 pressed!");
  }
}
```

## 📧 Support

For issues or questions:
- Email: uten.boonliam@tenergyinnovation.co.th
- Website: http://www.tenergyinnovation.co.th
- Tel: +66 89-140-7205

---

Made with 💙 by Tenergy Innovation Co., Ltd.
