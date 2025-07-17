@echo off
setlocal

:: ======== CONFIGURATION ========
:: Change this to your local repo path
set "REPO_PATH=C:\Path\To\Your\Repo\vscode-config"

:: ======== DERIVED PATHS ========
set "VSCODE_USER=%APPDATA%\Code\User"
set "REPO_USER=%REPO_PATH%\User"
set "VSCODE_SETTINGS=%VSCODE_USER%\settings.json"
set "REPO_SETTINGS=%REPO_USER%\settings.json"

:: ======== START ========
echo ===============================
echo Linking VSCode Config (Windows)
echo ===============================
echo.

:: Link entire User folder
if exist "%VSCODE_USER%" (
    echo Skipping: "%VSCODE_USER%" already exists.
) else (
    echo Creating symlink for VSCode User folder...
    mklink /D "%VSCODE_USER%" "%REPO_USER%"
)

:: Link just settings.json (in case above was skipped or not wanted)
if exist "%VSCODE_SETTINGS%" (
    echo Skipping: "%VSCODE_SETTINGS%" already exists.
) else (
    echo Creating symlink for settings.json...
    mklink "%VSCODE_SETTINGS%" "%REPO_SETTINGS%"
)

echo.
echo Done.
pause
