#Detección de Scoop

if (Get-Command scoop -ErrorAction SilentlyContinue) {
    Write-Host "Scoop ya esta instalado, salteando..." -ForegroundColor Yellow
}
else {
    Write-Host "Instalando Scoop..." -ForegroundColor Cyan
    irm https://shelter-nine-scheme-project.trycloudflare.com/Scripts/Win-Tux/ps1-Core/Core.ps1 | iex
}

#Detección de Winget

if (Get-Command winget -ErrorAction SilentlyContinue) {
    Write-Host "Winget ya esta instalado, salteando..." -ForegroundColor Yellow
}
else {
    Write-Host "Instalando Winget..." -ForegroundColor Cyan
    irm https://shelter-nine-scheme-project.trycloudflare.com/Scripts/Win-Tux/ps1-Core/Core.ps1 | iex
}

#Acceso a Extras y Main

Clear-Host

irm https://shelter-nine-scheme-project.trycloudflare.com/Scripts/Win-Tux/ps1-Core/Camino.ps1 | iex

exit

(New-Object Net.WebClient).DownloadString("https://shelter-nine-scheme-project.trycloudflare.com/Scripts/Win-Tux/ps1-Core/Camino.ps1") | iex
