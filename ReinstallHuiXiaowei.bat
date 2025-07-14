@echo off

REM Define the UWP app ID to reinstall
set "AppID=9NXGP82LMGJV"

REM Set this variable to 1 to automatically open the app after installation, 0 to prompt the user
set "OpenAppAfterInstall=1"

REM Check if Winget is installed
where winget >nul 2>nul
if %errorlevel% neq 0 (
    echo Winget is not installed. Please install Winget first!
    pause
    exit /b
)

REM Check if the app is already installed
echo Checking if the app with ID %AppID% is installed...
winget list %AppID% >nul 2>nul
if %errorlevel% equ 0 (
    REM If the app is installed, uninstall it first
    echo Uninstalling the app with ID %AppID%...
    echo Y | winget uninstall --id %AppID% --silent
    if %errorlevel% equ 0 (
        echo The app has been successfully uninstalled!
    ) else (
        echo Failed to uninstall the app. Please check manually!
        pause
        exit /b
    )
) else (
    echo The app is not installed, proceeding with installation...
)

REM Install the app
echo Installing the app with ID %AppID%...
echo Y | winget install --id %AppID% --silent
if %errorlevel% equ 0 (
    echo The app has been successfully installed!
    
    echo Opening the app now...
        start "" "hp-xiaowei-win32:"
) else (
    echo Failed to install the app. Please check manually!
)



pause
