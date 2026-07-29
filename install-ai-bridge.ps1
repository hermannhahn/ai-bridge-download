# ==============================================================================
# AI Bridge - Script de Instalação Automatizada (install-ai-bridge.ps1)
# ==============================================================================
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

# 1. Garantir Privilégios de Administrador
if (-not ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
    Write-Host "🔐 Elevando privilégios de Administrador para instalação do AI Bridge..." -ForegroundColor Yellow
    Start-Process powershell.exe -ArgumentList "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`"" -Verb RunAs
    exit
}

Write-Host "======================================================================" -ForegroundColor Cyan
Write-Host "🚀 AI BRIDGE - INSTALADOR AUTOMATIZADO" -ForegroundColor Cyan
Write-Host "======================================================================" -ForegroundColor Cyan
Write-Host ""

# 2. Criar diretório temporário para os arquivos
$tempFolder = Join-Path $env:TEMP "AIBridgeInstaller"
if (-not (Test-Path $tempFolder)) {
    New-Item -Path $tempFolder -ItemType Directory | Out-Null
}

$baseUrl = "https://github.com/hermannhahn/ai-bridge-download/releases/latest/download"
$certFile = Join-Path $tempFolder "AIBridgeDevCert.crt"
$batFile = Join-Path $tempFolder "install-cert.bat"
$exeFile = Join-Path $tempFolder "AI-Bridge-Setup.exe"

Write-Host "📥 Baixando certificado e instalador da última versão (latest)..." -ForegroundColor Green

try {
    Write-Host "   • Baixando AIBridgeDevCert.crt..." -ForegroundColor Gray
    Invoke-WebRequest -Uri "$baseUrl/AIBridgeDevCert.crt" -OutFile $certFile -UseBasicParsing

    Write-Host "   • Baixando install-cert.bat..." -ForegroundColor Gray
    Invoke-WebRequest -Uri "$baseUrl/install-cert.bat" -OutFile $batFile -UseBasicParsing

    Write-Host "   • Baixando AI-Bridge-Setup.exe..." -ForegroundColor Gray
    Invoke-WebRequest -Uri "$baseUrl/AI-Bridge-Setup.exe" -OutFile $exeFile -UseBasicParsing
} catch {
    Write-Host "❌ Erro ao baixar arquivos do GitHub: $_" -ForegroundColor Red
    Pause
    exit 1
}

# 3. Executar o install-cert.bat para registrar o certificado
Write-Host ""
Write-Host "🔐 Instalando certificado digital nas autoridades confiáveis do Windows..." -ForegroundColor Yellow
$proc = Start-Process -FilePath $batFile -WorkingDirectory $tempFolder -Wait -PassThru

# 4. Iniciar o instalador oficial
Write-Host ""
Write-Host "🚀 Iniciando o instalador do AI Bridge..." -ForegroundColor Green
Start-Process -FilePath $exeFile -WorkingDirectory $tempFolder

Write-Host ""
Write-Host "✔ Processo concluído com sucesso!" -ForegroundColor Cyan
