@echo off
:: ==============================================================================
:: AI Bridge - Launcher de Instalação Automática (.bat)
:: Evita que o arquivo .ps1 seja aberto no Bloco de Notas no Windows
:: ==============================================================================
title Instalador AI Bridge
setlocal enabledelayedexpansion

echo ======================================================================
echo 🚀 INICIANDO INSTALADOR AUTOMÁTICO DO AI BRIDGE
echo ======================================================================
echo.

set TEMP_DIR=%TEMP%\AIBridgeInstaller
if not exist "%TEMP_DIR%" mkdir "%TEMP_DIR%"

set PS1_FILE=%~dp0install-ai-bridge.ps1
if not exist "%PS1_FILE%" set PS1_FILE=%TEMP_DIR%\install-ai-bridge.ps1

if not exist "%PS1_FILE%" (
    echo 📥 Baixando script de instalacao do GitHub...
    powershell -NoProfile -ExecutionPolicy Bypass -Command "[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; Invoke-WebRequest -Uri 'https://github.com/hermannhahn/ai-bridge-download/releases/latest/download/install-ai-bridge.ps1' -OutFile '%PS1_FILE%' -UseBasicParsing"
)

echo ⚙️ Executando script no PowerShell...
powershell -NoProfile -ExecutionPolicy Bypass -File "%PS1_FILE%"

if %errorLevel% neq 0 (
    echo.
    echo ❌ Erro ao executar o instalador.
    pause
)
