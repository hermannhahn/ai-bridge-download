@echo off
:: ==============================================================================
:: AI Bridge - Automated Installation Launcher (.bat)
:: ==============================================================================
title AI Bridge Installer
setlocal enabledelayedexpansion

echo ======================================================================
echo STARTING AI BRIDGE AUTOMATED INSTALLER
echo ======================================================================
echo.

set TEMP_DIR=%TEMP%\AIBridgeInstaller
if not exist "%TEMP_DIR%" mkdir "%TEMP_DIR%"

set PS1_FILE=%TEMP_DIR%\install-ai-bridge.ps1
set ICON_FILE=%TEMP_DIR%\icon.ico

echo Downloading icon and installation script from GitHub...
powershell -NoProfile -ExecutionPolicy Bypass -Command "[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12 -bor [Net.SecurityProtocolType]::Tls13; $wc = New-Object System.Net.WebClient; $wc.Headers.Add('User-Agent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)'); $wc.DownloadFile('https://github.com/hermannhahn/ai-bridge-download/releases/latest/download/install-ai-bridge.ps1', '%PS1_FILE%'); try { $wc.DownloadFile('https://raw.githubusercontent.com/hermannhahn/ai-bridge/main/build/icon.ico', '%ICON_FILE%') } catch {}"

if not exist "%PS1_FILE%" (
    echo.
    echo [X] ERROR: Failed to download install-ai-bridge.ps1 from GitHub.
    echo.
    pause
    exit /b 1
)

echo Executing script in PowerShell...
powershell -NoProfile -ExecutionPolicy Bypass -File "%PS1_FILE%"

if %errorLevel% neq 0 (
    echo.
    echo [X] ERROR: Script execution failed with exit code %errorLevel%.
    echo.
    pause
    exit /b %errorLevel%
)

