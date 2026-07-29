# ==============================================================================
# AI Bridge - Automated Installation Script (install-ai-bridge.ps1)
# ==============================================================================
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

# 1. Define and ensure official Windows temporary directory
$winTemp = [System.IO.Path]::GetTempPath()
$tempFolder = Join-Path $winTemp "AIBridgeInstaller"

if (-not (Test-Path $tempFolder)) {
    New-Item -Path $tempFolder -ItemType Directory -Force | Out-Null
}

$scriptPath = Join-Path $tempFolder "install-ai-bridge.ps1"
if ($MyInvocation.MyCommand.Path -and (Test-Path $MyInvocation.MyCommand.Path)) {
    Copy-Item -Path $MyInvocation.MyCommand.Path -Destination $scriptPath -Force | Out-Null
}

# 2. Ensure Administrator Privilege Elevation via explicit powershell.exe
if (-not ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
    Write-Host "[!] Requesting Administrator privileges for AI Bridge installation..." -ForegroundColor Yellow
    if (-not (Test-Path $scriptPath)) {
        Invoke-WebRequest -Uri "https://github.com/hermannhahn/ai-bridge-download/releases/latest/download/install-ai-bridge.ps1" -OutFile $scriptPath -UseBasicParsing
    }
    Start-Process powershell.exe -ArgumentList "-NoProfile -ExecutionPolicy Bypass -File `"$scriptPath`"" -Verb RunAs
    exit
}

Write-Host "======================================================================" -ForegroundColor Cyan
Write-Host "AI BRIDGE - AUTOMATED INSTALLER" -ForegroundColor Cyan
Write-Host "======================================================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "Temporary download folder: $tempFolder" -ForegroundColor Gray

$baseUrl = "https://github.com/hermannhahn/ai-bridge-download/releases/latest/download"
$certFile = Join-Path $tempFolder "AIBridgeDevCert.crt"
$batFile = Join-Path $tempFolder "install-cert.bat"
$exeFile = Join-Path $tempFolder "AI-Bridge-Setup.exe"

Write-Host "Downloading temporary installation files from GitHub..." -ForegroundColor Green

try {
    Write-Host "   * Downloading AIBridgeDevCert.crt..." -ForegroundColor Gray
    Invoke-WebRequest -Uri "$baseUrl/AIBridgeDevCert.crt" -OutFile $certFile -UseBasicParsing

    Write-Host "   * Downloading install-cert.bat..." -ForegroundColor Gray
    Invoke-WebRequest -Uri "$baseUrl/install-cert.bat" -OutFile $batFile -UseBasicParsing

    Write-Host "   * Downloading AI-Bridge-Setup.exe..." -ForegroundColor Gray
    Invoke-WebRequest -Uri "$baseUrl/AI-Bridge-Setup.exe" -OutFile $exeFile -UseBasicParsing
} catch {
    Write-Host "[X] Error downloading files from GitHub: $_" -ForegroundColor Red
    Pause
    exit 1
}

# 3. Execute install-cert.bat from TEMP directory
Write-Host ""
Write-Host "Installing digital certificate into Windows Trusted Authorities..." -ForegroundColor Yellow
$proc = Start-Process -FilePath $batFile -WorkingDirectory $tempFolder -Wait -PassThru

# 4. Launch official installer from TEMP directory
Write-Host ""
Write-Host "Launching AI Bridge Setup..." -ForegroundColor Green
Start-Process -FilePath $exeFile -WorkingDirectory $tempFolder

Write-Host ""
Write-Host "[V] Temporary download and installation setup completed successfully!" -ForegroundColor Cyan
