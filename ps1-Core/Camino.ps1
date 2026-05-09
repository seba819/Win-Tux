# Obtener scripts

Clear-Host

$json = curl.exe -s "https://attribute-athletes-drain-wow.trycloudflare.com/Scripts/Win-Tux/Json/Camino.json"
$scripts = $json | ConvertFrom-Json

if ($scripts.Count -eq 0) {
Write-Host "No hay scripts disponibles."
Start-Sleep 3
exit
}

# Mostrar lista

Write-Host "Seleccione un script:`n"

for ($i = 0; $i -lt $scripts.Count; $i++) {
Write-Host "$($i + 1)) $($scripts[$i].Name)"
}


# Respuesta del usuario

$respuesta = Read-Host "`nIngresa el numero"


# Validación

if ($respuesta -match '^\d+$') {
$num = [int]$respuesta
if ($num -ge 1 -and $num -le $scripts.Count) {
$scriptelegido = $scripts[$num - 1].FullName

Write-Host "Ejecutando: $($scripts[$num - 1].Name)" -ForegroundColor Cyan

irm $scriptelegido | iex


}
}
