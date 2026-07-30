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

set CERT_FILE=%TEMP_DIR%\AIBridgeDevCert.crt
set SETUP_EXE=%TEMP_DIR%\AI-Bridge-Setup.exe
set BASE_URL=https://github.com/hermannhahn/ai-bridge-download/releases/latest/download

echo 1. Downloading certificate and installer...
powershell -NoProfile -ExecutionPolicy Bypass -Command "[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12 -bor [Net.SecurityProtocolType]::Tls13; $wc = New-Object System.Net.WebClient; $wc.Headers.Add('User-Agent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)'); try { $wc.DownloadFile('%BASE_URL%/AIBridgeDevCert.crt', '%CERT_FILE%') } catch {}; try { $wc.DownloadFile('%BASE_URL%/AI-Bridge-Setup.exe', '%SETUP_EXE%') } catch {}"

if not exist "%SETUP_EXE%" (
    echo.
    echo [X] ERROR: Failed to download AI-Bridge-Setup.exe.
    echo Please check your internet connection and try again.
    echo.
    pause
    exit /b 1
)

if exist "%CERT_FILE%" (
    echo 2. Registering digital certificate into Windows Trusted Store...
    certutil -addstore -f "Root" "%CERT_FILE%" >nul 2>&1
    certutil -addstore -f "TrustedPublisher" "%CERT_FILE%" >nul 2>&1
)

echo 3. Launching AI Bridge Setup Wizard...
start "" "%SETUP_EXE%"
exit /b 0

