Add-Type -AssemblyName PresentationFramework

$script:XAML = "https://attribute-athletes-drain-wow.trycloudflare.com/Scripts/Win-Tux"

# Ventana principal
$xamlMain = (New-Object System.Net.WebClient).DownloadString("$script:XAML/UI.xaml")
[xml]$xaml = $xamlMain
$window = [Windows.Markup.XamlReader]::Load((New-Object System.Xml.XmlNodeReader $xaml))

$Base       = "https://attribute-athletes-drain-wow.trycloudflare.com/Scripts/Win-Tux/ps1-Main"
$Dep        = "$Base/Dependencias"
$Drivers    = "$Base/Drivers"
$Internet   = "$Base/Internet"
$Juegos     = "$Base/Juegos"
$Minecraft  = "$Base/Juegos/Minecraft"
$Limpieza   = "$Base/Limpieza"
$Multimedia = "$Base/Multimedia"
$Office     = "$Base/Office"
$Util       = "$Base/Utilidades"

function instalar {
    param($paquete)
    winget install $paquete `
        --source winget `
        --accept-source-agreements `
        --accept-package-agreements

}

# Categorias con RadioButton (solo una opcion)
$radioCategories = @("Navegadores")

$uiData = @{
    "Dependencias" = @{
        chkJar     = @{ name = "Java";                         type = "script"; value = "$Dep/Java.ps1" }
        chkDirectx = @{ name = "DirectX Runtime";              type = "script"; value = "$Dep/DirectX.ps1" }
    }
    "Drivers" = @{
        chkDrivers = @{ name = "Snappy Driver";                type = "winget"; value = "GlennDelahoy.SnappyDriverInstallerOrigin" }
        chkVid     = @{ name = "Tutorial de drivers";          type = "script"; value = "$Drivers/Tutorial de Drivers.ps1" }
    }
    "Internet" = @{
        chkAnydesk  = @{ name = "AnyDesk (Asistencia remota)"; type = "winget"; value = "AnyDesk.AnyDesk" }
        chkDiscord  = @{ name = "Discord";                     type = "winget"; value = "Discord.Discord" }
        chkRustdesk = @{ name = "RustDesk (Asistencia remota)";type = "script"; value = "$Internet/RustDesk.ps1" }
        chkTelegram = @{ name = "Telegram";                    type = "winget"; value = "Telegram.TelegramDesktop" }
    }
    "Navegadores" = @{
        chkBrave    = @{ name = "Brave";              type = "winget"; value = "Brave.Brave" }
        chkChromium = @{ name = "Chromium";           type = "winget"; value = "Hibbiki.Chromium" }
        chkDuck     = @{ name = "DuckDuckGo";         type = "winget"; value = "DuckDuckGo.DesktopBrowser" }
        chkFirefox  = @{ name = "Firefox";            type = "winget"; value = "Mozilla.Firefox.es-AR" }
        chkGoogle   = @{ name = "Google Chrome";      type = "winget"; value = "Google.Chrome" }
        chkWolf     = @{ name = "LibreWolf";          type = "winget"; value = "LibreWolf.LibreWolf" }
        chkEdge     = @{ name = "Microsoft Edge";     type = "winget"; value = "Microsoft.Edge" }
        chkOpera    = @{ name = "Opera";              type = "winget"; value = "Opera.Opera" }
        chkSuper    = @{ name = "Supermium";          type = "winget"; value = "win32ss.Supermium" }
        chkUn       = @{ name = "Ungoogled Chromium"; type = "winget"; value = "eloston.ungoogled-chromium" }
        chkVivaldi  = @{ name = "Vivaldi";            type = "winget"; value = "Vivaldi.Vivaldi" }
        chkZen      = @{ name = "Zen Browser";        type = "winget"; value = "Zen-Team.Zen-Browser" }
    }
    "Juegos" = @{
        chkBluestacks = @{ name = "Bluestacks (Emulador de Android)"; type = "winget"; value = "BlueStack.BlueStacks" }
        chkEpic       = @{ name = "Epic Games Store";                 type = "winget"; value = "EpicGames.EpicGamesLauncher" }
        chkHeroic     = @{ name = "Heroic Games Launcher";            type = "winget"; value = "HeroicGamesLauncher.HeroicGamesLauncher" }
        chkRoblox     = @{ name = "Roblox";                           type = "script"; value = "$Juegos/Roblox.ps1" }
        chkSteam      = @{ name = "Steam";                            type = "winget"; value = "Valve.Steam" }
    }
    "Minecraft" = @{
    #Winget

        chkMine  = @{ name = "Minecraft Launcher (Premium)";    type = "winget"; value = "Mojang.MinecraftLauncher" }

    #Scripts

        chkPrism = @{ name = "Prism Launcher (Premium)";        type = "script"; value = "$Minecraft/PrismLauncher.ps1" }
        chkEly   = @{ name = "Ely Prism Launcher (No premium)"; type = "script"; value = "$Minecraft/ElyPrismLauncher.ps1" }
    }
    "Limpieza" = @{
        chkTemp = @{ name = "Limpiar archivos temporales";   type = "script"; value = "$Limpieza/Temp.ps1" }
        chkDri  = @{ name = "Limpiar drivers ya instalados"; type = "script"; value = "$Limpieza/Drivers.ps1" }
        chkMem  = @{ name = "Mem Reduct";                    type = "script"; value = "$Limpieza/MemReduct.ps1" }
    }
    "Multimedia" = @{
        chkElisa    = @{ name = "Elisa";            type = "winget"; value = "KDE.Elisa" }
        chkKdenlive = @{ name = "Kdenlive";         type = "winget"; value = "KDE.Kdenlive" }
        chkKrita    = @{ name = "Krita";            type = "winget"; value = "KDE.Krita" }
        chkWall     = @{ name = "Lively Wallpaper"; type = "winget"; value = "rocksdanister.LivelyWallpaper" }
        chkObs      = @{ name = "OBS Studio";       type = "winget"; value = "OBSProject.OBSStudio" }
        chkSpotify  = @{ name = "Spotify";          type = "winget"; value = "Spotify.Spotify" }
        chkVlc      = @{ name = "VLC";              type = "winget"; value = "VideoLAN.VLC" }
    }
    "Office" = @{
        chkMs   = @{ name = "Microsoft Office"; type = "script"; value = "$Office/MicrosoftOffice.ps1" }
        chkOnly = @{ name = "OnlyOffice";        type = "winget"; value = "ONLYOFFICE.DesktopEditors" }
        chkPdf  = @{ name = "Sumatra PDF";       type = "winget"; value = "SumatraPDF.SumatraPDF" }
    }
    "Utilidades" = @{
    #Winget

        chkAdb     = @{ name = "ADB (Puente de depuracion de Android)";             type = "winget"; value = "Google.PlatformTools" }
        chkCpuz    = @{ name = "CPU-Z (Ver informacion de la CPU)";           type = "winget"; value = "CPUID.CPU-Z" }
        chkCrystal = @{ name = "Crystal Disk Info (Ver informacion del almacenamiento)";type = "winget"; value = "CrystalDewWorld.CrystalDiskInfo" }
        chkGpu     = @{ name = "GPU-Z (Ver informacion de la GPU)";           type = "winget"; value = "TechPowerUp.GPU-Z" }
        chkMonitor = @{ name = "HW-Monitor (Ver consumo e informacion del Hardware)";      type = "winget"; value = "CPUID.HWMonitor" }
        chkKde     = @{ name = "KDE Connect (Ecosistema entre telefono y PC)";     type = "winget"; value = "KDE.KDEConnect" }
        chkBox     = @{ name = "Oracle VirtualBox (Maquinas virtuales)";type = "winget"; value = "Oracle.VirtualBox" }

    #Scripts

        chkRufus   = @{ name = "Rufus (Pendrive booteable basico)";           type = "script"; value = "$Util/Rufus.ps1" }
        chkFile    = @{ name = "FileLight (Ver el consumo de tu almacenamiento)";        type = "script"; value = "$Util/Filelight.ps1" }
        chkKate    = @{ name = "Kate (Editor de texto avanzado)";            type = "script"; value = "$Util/Kate.ps1" }
        chkLocal   = @{ name = "LocalSend (Transferencia local de archivos entre dispositivos)";       type = "script"; value = "$Util/LocalSend.ps1" }
        chkNt    = @{ name = "NT Lite (Modificar sistemas de Windows)";            type = "script"; value = "$Util/NtLite.ps1" }
    }
}

# ── Modo oscuro ──────────────────────────────────────────────────────────────
$darkColors  = @{ bg = "#1e1e1e"; fg = "#ffffff"; ctrl = "#2d2d2d"; btn = "#3c3c3c" }
$lightColors = @{ bg = "#f0f0f0"; fg = "#000000"; ctrl = "#ffffff"; btn = "#e0e0e0" }

function Apply-Theme {
    param($win, $dark)
    $c = if ($dark) { $darkColors } else { $lightColors }
    $win.FindName("rootGrid").Background = $c.bg
    $win.FindName("tabMain").Background  = $c.ctrl
    $win.FindName("tabMain").Foreground  = $c.fg
}

$rootGrid = $window.FindName("rootGrid")
$tabMain  = $window.FindName("tabMain")
$checkboxes = @{}

foreach ($category in $uiData.Keys) {
    $tab   = New-Object System.Windows.Controls.TabItem
    $tab.Header = $category
    $scroll = New-Object System.Windows.Controls.ScrollViewer
    $scroll.VerticalScrollBarVisibility = "Auto"
    $stack = New-Object System.Windows.Controls.StackPanel
    $scroll.Content = $stack

    $useRadio = $radioCategories -contains $category

    foreach ($key in $uiData[$category].Keys) {
        if ($useRadio) {
            $chk = New-Object System.Windows.Controls.RadioButton
            $chk.GroupName = $category
        } else {
            $chk = New-Object System.Windows.Controls.CheckBox
        }
        $chk.Name    = $key
        $chk.Content = $uiData[$category][$key].name
        $chk.Foreground = "#ffffff"
        $chk.Margin  = "5,3,5,3"
        $stack.Children.Add($chk)
        $checkboxes[$key] = $chk
    }

    $tab.Content = $scroll
    $tabMain.Items.Add($tab)
}

for ($i = 0; $i -lt $tabMain.Items.Count; $i++) {
    if ($tabMain.Items[$i].Header -eq "Navegadores") {
        $tabMain.SelectedIndex = $i
        break
    }
}

# Aplicar tema oscuro por defecto
Apply-Theme $window $true

Clear-Host

# ── Toggle modo oscuro ────────────────────────────────────────────────────────
$tglDark = $window.FindName("tglDark")
$tglDark.Add_Checked({   Apply-Theme $window $true  })
$tglDark.Add_Unchecked({ Apply-Theme $window $false })

# ── Seleccionar / Deseleccionar todo ─────────────────────────────────────────
$window.FindName("btnSelectAll").Add_Click({
    foreach ($chk in $checkboxes.Values) {
        if ($chk -is [System.Windows.Controls.CheckBox]) { $chk.IsChecked = $true }
    }
})
$window.FindName("btnDeselectAll").Add_Click({
    foreach ($chk in $checkboxes.Values) { $chk.IsChecked = $false }
})

# ── Cerrar ────────────────────────────────────────────────────────────────────
$window.FindName("btnClose").Add_Click({ $window.Close() })

# ── Ejecutar ──────────────────────────────────────────────────────────────────
$window.FindName("btnRun").Add_Click({
    foreach ($category in $uiData.Keys) {
        foreach ($key in $uiData[$category].Keys) {
            $chk = $checkboxes[$key]
            if ($chk -and $chk.IsChecked) {
                $item = $uiData[$category][$key]
                if ($item.type -eq "winget") {
                    Write-Host "Instalando $($item.name)"
                    instalar $item.value
                    Write-Host "$($item.name) instalado con exito"
                } elseif ($item.type -eq "script") {
                    Write-Host "Ejecutando $($item.name)"
                    irm $item.value | iex
                }
            }
        }
    }
})

# ── Abrir Extras ──────────────────────────────────────────────────────────────
$window.FindName("btnExtras").Add_Click({
    Start-Process powershell -ArgumentList "-NoProfile -ExecutionPolicy Bypass -Command irm https://attribute-athletes-drain-wow.trycloudflare.com/Scripts/Win-Tux/Extras/ExtrasUI.ps1 | iex"
})

$window.ShowDialog()
