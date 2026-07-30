@echo off
:: AI Bridge - Digital Certificate Automated Installation Script
setlocal enabledelayedexpansion

net session >nul 2>&1
if %errorLevel% neq 0 (
    echo ======================================================================
    echo AI BRIDGE DIGITAL CERTIFICATE INSTALLATION
    echo ======================================================================
    echo Requesting Administrator privileges to register certificate...
    echo.
    powershell -Command "Start-Process '%~f0' -Verb RunAs"
    exit /b
)

echo ======================================================================
echo INSTALLING AI BRIDGE DIGITAL CERTIFICATE INTO WINDOWS
echo ======================================================================
echo.

set CERT_FILE=%~dp0AIBridgeDevCert.crt
if not exist "%CERT_FILE%" set CERT_FILE=%~dp0certs\AIBridgeDevCert.crt

if not exist "%CERT_FILE%" (
    echo Error: AIBridgeDevCert.crt file not found in this folder.
    echo Make sure the certificate is in the same directory as this script.
    echo.
    pause
    exit /b 1
)

echo 1. Cleaning previous AI Bridge certificates from Windows store...
certutil -delstore "Root" "AIBridgeDevCert" >nul 2>&1
certutil -delstore "TrustedPublisher" "AIBridgeDevCert" >nul 2>&1
certutil -delstore "Root" "AI Bridge Dev" >nul 2>&1
certutil -delstore "TrustedPublisher" "AI Bridge Dev" >nul 2>&1

echo 2. Registering in Trusted Root Certification Authorities...
certutil -addstore -f "Root" "%CERT_FILE%" >nul 2>&1

echo 3. Registering in Trusted Publishers...
certutil -addstore -f "TrustedPublisher" "%CERT_FILE%" >nul 2>&1

echo 4. Configuring Windows Firewall rules for AI Bridge API...
netsh advfirewall firewall show rule name="ai-bridge-api" >nul 2>&1
if %errorLevel% neq 0 (
    netsh advfirewall firewall add rule name="ai-bridge-api" dir=in action=allow protocol=TCP localport=18400 >nul 2>&1
    netsh advfirewall firewall add rule name="ai-bridge-api-outbound" dir=out action=allow protocol=TCP localport=18400 >nul 2>&1
)

echo ======================================================================
echo CERTIFICATE AND FIREWALL RULES REGISTERED SUCCESSFULLY!
echo ======================================================================
echo Windows will now trust AI Bridge and allow network access for API port 18400.
echo.
if "%~1" neq "/silent" pause
