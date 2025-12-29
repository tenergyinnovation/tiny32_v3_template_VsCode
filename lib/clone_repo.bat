@echo off
chcp 65001 >nul
REM ==============================================================================
REM 📦 Library Installation Script for tiny32_v3 Project (Windows)
REM ==============================================================================
REM This script clones required libraries for the tiny32_v3 development
REM ==============================================================================

setlocal enabledelayedexpansion

REM Define the repository URLs
set REPO_URL_TINY32=https://github.com/tenergyinnovation/tiny32_v3.git
set REPO_URL_DEBOUNCE=https://github.com/wkoch/Debounce.git

echo.
echo ╔════════════════════════════════════════════════════════════════╗
echo ║  🚀 Starting Library Installation for tiny32_v3 Project       ║
echo ╚════════════════════════════════════════════════════════════════╝
echo.

REM ==============================================================================
REM Clone tiny32_v3 Library
REM ==============================================================================
echo 📚 [1/2] Cloning tiny32_v3 library...
echo    Repository: %REPO_URL_TINY32%
echo.

if exist "tiny32_v3" (
    echo ⚠️  Warning: tiny32_v3 directory already exists. Skipping...
) else (
    git clone %REPO_URL_TINY32%
    if errorlevel 1 (
        echo ❌ Failed to clone tiny32_v3 library
        pause
        exit /b 1
    )
    echo ✅ tiny32_v3 library cloned successfully!
)
echo.

REM ==============================================================================
REM Clone Debounce Library
REM ==============================================================================
echo 🎯 [2/2] Cloning Debounce library...
echo    Repository: %REPO_URL_DEBOUNCE%
echo    Target: tiny32_v3\src\Debounce\
echo.

cd tiny32_v3\src
if errorlevel 1 (
    echo ❌ Failed to access tiny32_v3\src directory
    cd ..\..
    pause
    exit /b 1
)

if exist "Debounce" (
    echo ⚠️  Warning: Debounce directory already exists. Skipping...
) else (
    git clone %REPO_URL_DEBOUNCE%
    if errorlevel 1 (
        echo ❌ Failed to clone Debounce library
        cd ..\..
        pause
        exit /b 1
    )
    echo ✅ Debounce library cloned successfully!
)

cd ..\..

REM ==============================================================================
REM Installation Complete
REM ==============================================================================
echo.
echo ╔════════════════════════════════════════════════════════════════╗
echo ║  🎉 Installation Complete! All libraries ready to use! 🎊    ║
echo ╚════════════════════════════════════════════════════════════════╝
echo.
echo 📦 Installed Libraries:
echo    ✨ tiny32_v3 - Main hardware library
echo    ✨ Debounce - Button debouncing library
echo.
echo 📝 Next Steps:
echo    1. Open your project in VS Code
echo    2. Build with PlatformIO: platformio run
echo    3. Upload to board: platformio run --target upload
echo.
echo    Happy Coding! 💻✨
echo.

pause
