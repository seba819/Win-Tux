#Scoop siempre requiere ejecutarse como usuario normal

Clear-Host

$isAdmin = ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)

if ($isAdmin) {
    Add-Type -AssemblyName PresentationFramework
    [System.Windows.MessageBox]::Show("Lo tenes que abrir como usuario normal (Doble Click)")
    exit
}

Write-Host "Ok, sigamos." -ForegroundColor Yellow

#Música

$path = "https://attribute-athletes-drain-wow.trycloudflare.com/Scripts/Win-Tux/Musica"

Write-Host "Te gustaria escuchar musica mientras se instala Win-Tux? (S/N)"
$resp = Read-Host

if ($resp -match "^[sS]") {

Clear-Host

$ffplay = "$env:USERPROFILE\Music\ffplay.exe"

if (!(Test-Path $ffplay)) {
Write-Host "Descargando reproductor..."
curl.exe -s -k --http1.1 -L "$path/ffplay.exe" -o $ffplay
}

# Obtener playlist
$json = curl.exe -s "$path/Musica.json"
$songs = $json | ConvertFrom-Json

Write-Host "`nSeleccione una cancion:`n"

for ($i = 0; $i -lt $songs.Count; $i++) {
Write-Host "$($i+1)) $($songs[$i].name)"
}

$choice = Read-Host "`nNumero"

if ($choice -match '^\d+$') {
$num = [int]$choice

if ($num -ge 1 -and $num -le $songs.Count) {
$selected = $songs[$num - 1]

Write-Host "Reproduciendo: $($selected.name)"

Start-Process $ffplay `
-ArgumentList "-nodisp -autoexit -loglevel quiet `"$($selected.url)`"" `
-WindowStyle Hidden
}

}
echo "Espero que disfrutes de la musica de este instalador :)"
}

#Instalación de Scoop

if (Get-Command scoop -ErrorAction SilentlyContinue) {

} else {
Write-Host "Instalando Scoop..." -ForegroundColor Cyan
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser -Force
Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression
}


#Interacción del usuario para modo Administrador

Clear-Host

Write-Host "Presione S para continuar con la Instalacion en modo Administrador..."

do {
$key = [System.Console]::ReadKey($true)
} until ($key.Key -eq "S")

Start-Process powershell -Verb RunAs -ArgumentList '-NoProfile -ExecutionPolicy Bypass -Command "irm https://attribute-athletes-drain-wow.trycloudflare.com/Scripts/Win-Tux/ps1-Admin/Core2.ps1 | iex"'

exit
