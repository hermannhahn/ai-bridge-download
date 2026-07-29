@echo off
:: Script de Instalação Automática do Certificado Digital do AI Bridge
setlocal enabledelayedexpansion

net session >nul 2>&1
if %errorLevel% neq 0 (
    echo ======================================================================
    echo 🔐 INSTALAÇÃO DO CERTIFICADO DIGITAL DO AI BRIDGE
    echo ======================================================================
    echo Solicitando permissão de Administrador para registrar o certificado...
    echo.
    powershell -Command "Start-Process '%~f0' -Verb RunAs"
    exit /b
)

echo ======================================================================
echo 🔐 INSTALANDO CERTIFICADO DIGITAL DO AI BRIDGE NO WINDOWS
echo ======================================================================
echo.

set CERT_FILE=%~dp0AIBridgeDevCert.crt
if not exist "%CERT_FILE%" set CERT_FILE=%~dp0certs\AIBridgeDevCert.crt

if not exist "%CERT_FILE%" (
    echo ❌ Erro: O arquivo AIBridgeDevCert.crt nao foi encontrado nesta pasta.
    echo Certifique-se de que o certificado esteja na mesma pasta deste script.
    echo.
    pause
    exit /b 1
)

echo 📥 1. Registrando em "Autoridades de Certificacao Raiz Confiaveis"...
certutil -addstore -f "Root" "%CERT_FILE%" >nul 2>&1

echo 📥 2. Registrando em "Publicadores Confiaveis"...
certutil -addstore -f "TrustedPublisher" "%CERT_FILE%" >nul 2>&1

echo.
echo ======================================================================
echo ✔ CERTIFICADO REGISTRADO COM SUCESSO!
echo ======================================================================
echo O Windows reconhecera o AI Bridge como um aplicativo assinado e confiável.
echo.
pause
