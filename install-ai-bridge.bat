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

echo Downloading fresh installation script from GitHub...
powershell -NoProfile -ExecutionPolicy Bypass -Command "[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; Invoke-WebRequest -Uri 'https://github.com/hermannhahn/ai-bridge-download/releases/latest/download/install-ai-bridge.ps1' -OutFile '%PS1_FILE%' -UseBasicParsing"

echo Executing script in PowerShell...
powershell -NoProfile -ExecutionPolicy Bypass -File "%PS1_FILE%"

if %errorLevel% neq 0 (
    echo.
    echo Error executing installer.
    pause
)
