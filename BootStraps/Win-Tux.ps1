$servers = @{
    "Servidor propio" = "https://gerald-creation-research-smooth.trycloudflare.com/Scripts/Win-Tux/ps1-Core"
    "GitHub"          = "https://raw.githubusercontent.com/seba819/Win-Tux/refs/heads/main/ps1-Core"
}

$available = $null

foreach ($name in $servers.Keys) {
    try {
        $response = Invoke-WebRequest -Uri $servers[$name] -UseBasicParsing -TimeoutSec 5 -ErrorAction Stop
        Write-Host "$name disponible." -ForegroundColor Green
        $available = $servers[$name]
        break
    } catch {
        Write-Host "$name caido, probando siguiente..." -ForegroundColor Yellow
    }
}

if (-not $available) {
    Add-Type -AssemblyName PresentationFramework
    [System.Windows.MessageBox]::Show("Ambos servidores estan caidos. Intentalo mas tarde.")
    exit
}

# Usar $available como base URL para el resto del script
Write-Host "Usando: $available" -ForegroundColor Cyan

#Detección de Scoop

if (Get-Command scoop -ErrorAction SilentlyContinue) {
    Write-Host "Scoop ya esta instalado, salteando..." -ForegroundColor Yellow
}
else {
    Write-Host "Instalando Scoop..." -ForegroundColor Cyan
    irm $available/Core.ps1 | iex
}

#Detección de Winget

if (Get-Command winget -ErrorAction SilentlyContinue) {
    Write-Host "Winget ya esta instalado, salteando..." -ForegroundColor Yellow
}
else {
    Write-Host "Instalando Winget..." -ForegroundColor Cyan
    irm $available/Core.ps1 | iex
}

#Acceso a Extras y Main

Clear-Host

irm $available/UI.ps1 | iex

# (New-Object Net.WebClient).DownloadString("https://gerald-creation-research-smooth.trycloudflare.com/Scripts/Win-Tux/ps1-Core/Camino}.ps1") | iex



