# ==============================================================================
# AI Bridge - Script de Instalação Automatizada (install-ai-bridge.ps1)
# ==============================================================================
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

# 1. Definir e garantir pasta temporária oficial do Windows
$winTemp = [System.IO.Path]::GetTempPath()
$tempFolder = Join-Path $winTemp "AIBridgeInstaller"

if (-not (Test-Path $tempFolder)) {
    New-Item -Path $tempFolder -ItemType Directory -Force | Out-Null
}

$scriptPath = Join-Path $tempFolder "install-ai-bridge.ps1"
if ($MyInvocation.MyCommand.Path -and (Test-Path $MyInvocation.MyCommand.Path)) {
    Copy-Item -Path $MyInvocation.MyCommand.Path -Destination $scriptPath -Force | Out-Null
}

# 2. Garantir Elevação de Privilégios de Administrador via powershell.exe explícito
if (-not ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
    Write-Host "🔐 Elevando privilégios de Administrador para instalação do AI Bridge..." -ForegroundColor Yellow
    if (-not (Test-Path $scriptPath)) {
        Invoke-WebRequest -Uri "https://github.com/hermannhahn/ai-bridge-download/releases/latest/download/install-ai-bridge.ps1" -OutFile $scriptPath -UseBasicParsing
    }
    Start-Process powershell.exe -ArgumentList "-NoProfile -ExecutionPolicy Bypass -File `"$scriptPath`"" -Verb RunAs
    exit
}

Write-Host "======================================================================" -ForegroundColor Cyan
Write-Host "🚀 AI BRIDGE - INSTALADOR AUTOMATIZADO" -ForegroundColor Cyan
Write-Host "======================================================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "📁 Pasta temporária de download: $tempFolder" -ForegroundColor Gray

$baseUrl = "https://github.com/hermannhahn/ai-bridge-download/releases/latest/download"
$certFile = Join-Path $tempFolder "AIBridgeDevCert.crt"
$batFile = Join-Path $tempFolder "install-cert.bat"
$exeFile = Join-Path $tempFolder "AI-Bridge-Setup.exe"

Write-Host "📥 Baixando arquivos temporários para a pasta TEMP do Windows..." -ForegroundColor Green

try {
    Write-Host "   • Baixando AIBridgeDevCert.crt..." -ForegroundColor Gray
    Invoke-WebRequest -Uri "$baseUrl/AIBridgeDevCert.crt" -OutFile $certFile -UseBasicParsing

    Write-Host "   • Baixando install-cert.bat..." -ForegroundColor Gray
    Invoke-WebRequest -Uri "$baseUrl/install-cert.bat" -OutFile $batFile -UseBasicParsing

    Write-Host "   • Baixando AI-Bridge-Setup.exe..." -ForegroundColor Gray
    Invoke-WebRequest -Uri "$baseUrl/AI-Bridge-Setup.exe" -OutFile $exeFile -UseBasicParsing
} catch {
    Write-Host "❌ Erro ao baixar arquivos temporários do GitHub: $_" -ForegroundColor Red
    Pause
    exit 1
}

# 3. Executar o install-cert.bat a partir da pasta TEMP
Write-Host ""
Write-Host "🔐 Instalando certificado digital nas autoridades confiáveis do Windows..." -ForegroundColor Yellow
$proc = Start-Process -FilePath $batFile -WorkingDirectory $tempFolder -Wait -PassThru

# 4. Iniciar o instalador oficial a partir da pasta TEMP
Write-Host ""
Write-Host "🚀 Iniciando o instalador do AI Bridge a partir da pasta TEMP..." -ForegroundColor Green
Start-Process -FilePath $exeFile -WorkingDirectory $tempFolder

Write-Host ""
Write-Host "✔ Processo de download temporário e instalação concluído com sucesso!" -ForegroundColor Cyan
