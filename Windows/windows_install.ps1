# Install Chocolatey package manager
Set-ExecutionPolicy Bypass -Scope Process -Force
[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072 #TLS 1.2 support
Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

# Install packages
$packages = @(
    "autohotkey",
    "autohotkey.install",
    "chocolatey-compatibility.extension",
    "chocolatey-core.extension",
    "chocolatey-windowsupdate.extension",
    "dotnet-6.0-desktopruntime",
    "dotnet-desktopruntime",
    "DotNet4.5.2",
    "figma",
    "Firefox",
    "flow-launcher",
    "gh",
    "git",
    "GoogleChrome",
    "nmap",
    "nodejs",
    "nodejs.install",
    "notepadplusplus",
    "notepadplusplus.install",
    "powerautomatedesktop",
    "powertoys",
    "python3",
    "rpi-imager",
    "rsync",
    "rufus",
    "Visual Studio Code",
    "sublimetext3",
    "obsidian",
    "googler",
    "handbrake",
    "googlechrome.dev",
    "boxstarter",
    "boxstarter.hyperv",
    "yt-dlp",
    "visualcpp-build-tools",
    "rufus",
    "rsync",
    "ventoy",
    "tabby"
    
)
foreach ($package in $packages) {
    choco install $package -y
}

winget install youtorrent
winget install scoop
winget install "openssh beta"
winget install --id Microsoft.Powershell --source winget
wsl --install

# https://learn.microsoft.com/en-us/windows/wsl/install
# https://learn.microsoft.com/en-gb/powershell/scripting/install/installing-powershell-on-windows?view=powershell-7.4#install-powershell-using-winget-recommended
