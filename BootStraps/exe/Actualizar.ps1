Write-Host "Presione S para continuar con la Instalacion en modo Administrador..."

do {
$key = [System.Console]::ReadKey($true)
} until ($key.Key -eq "S")

Start-Process powershell -Verb RunAs -ArgumentList '-NoProfile -ExecutionPolicy Bypass -Command "irm https://archlinux.tail9bd2a9.ts.net/Scripts/Win-Tux/ps1-Admin/Actualizar.ps1 | iex" '