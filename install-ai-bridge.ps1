# ==============================================================================
# AI Bridge - Automated Installation Script (install-ai-bridge.ps1)
# ==============================================================================
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12 -bor [Net.SecurityProtocolType]::Tls13

$ProgressPreference = 'SilentlyContinue'

# 1. Define and ensure official Windows temporary directory
$winTemp = [System.IO.Path]::GetTempPath()
$tempFolder = Join-Path $winTemp "AIBridgeInstaller"

if (-not (Test-Path $tempFolder)) {
    New-Item -Path $tempFolder -ItemType Directory -Force | Out-Null
}

$scriptPath = Join-Path $tempFolder "install-ai-bridge.ps1"

# Helper function for reliable file download with User-Agent
function Download-FileWithUserAgent {
    param (
        [string]$Url,
        [string]$OutputFile
    )
    $webClient = New-Object System.Net.WebClient
    $webClient.Headers.Add("User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64)")
    $webClient.DownloadFile($Url, $OutputFile)
}

# 2. Ensure Administrator Privilege Elevation via explicit powershell.exe
if (-not ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
    Write-Host "[!] Requesting Administrator privileges for AI Bridge installation..." -ForegroundColor Yellow
    try {
        Download-FileWithUserAgent -Url "https://github.com/hermannhahn/ai-bridge-download/releases/latest/download/install-ai-bridge.ps1" -OutputFile $scriptPath
    } catch {
        # Silent fallback if elevated script already exists
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

Write-Host "Downloading fresh temporary installation files from GitHub..." -ForegroundColor Green

try {
    Write-Host "   * Downloading AIBridgeDevCert.crt..." -ForegroundColor Gray
    Download-FileWithUserAgent -Url "$baseUrl/AIBridgeDevCert.crt" -OutputFile $certFile

    Write-Host "   * Downloading install-cert.bat..." -ForegroundColor Gray
    Download-FileWithUserAgent -Url "$baseUrl/install-cert.bat" -OutputFile $batFile

    Write-Host "   * Downloading AI-Bridge-Setup.exe..." -ForegroundColor Gray
    Download-FileWithUserAgent -Url "$baseUrl/AI-Bridge-Setup.exe" -OutputFile $exeFile
} catch {
    Write-Host ""
    Write-Host "[X] ERROR downloading files from GitHub: $_" -ForegroundColor Red
    Write-Host "URL: $baseUrl" -ForegroundColor Red
    Write-Host ""
    Read-Host "Press ENTER to exit..."
    exit 1
}

# 3. Execute install-cert.bat from TEMP directory to register certificate for Setup and Installed Executables
Write-Host ""
Write-Host "Installing digital certificate into Windows Trusted Authorities..." -ForegroundColor Yellow
$proc = Start-Process -FilePath $batFile -ArgumentList "/silent" -WorkingDirectory $tempFolder -Wait -PassThru

# 4. Launch official Inno Setup installer wizard from TEMP directory
Write-Host ""
Write-Host "Launching AI Bridge Setup Wizard..." -ForegroundColor Green
$setupProc = Start-Process -FilePath $exeFile -WorkingDirectory $tempFolder -Wait -PassThru

Write-Host ""
Write-Host "[V] AI Bridge installation completed successfully!" -ForegroundColor Cyan
