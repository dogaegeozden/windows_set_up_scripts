# Update the chocolatey package manager.
choco upgrade chocolatey
# An array for list of softwares
$softwares = @("atom", "androidstudio", "flameshot", "protonvpn", "vlc", "obs-studio", "brave", "blender", "shotcut", "inkscape", "krita", "libreoffice-fresh", "okular", "gimp", "xmind", "veracrypt", "virtualbox", "adobereader", "python3", "wsl-ubuntu-2204", "everything")

# Loop through the array to install each one of these softwares.
For ($s=0; $s -lt $softwares.Length; $s++){
	choco install $softwares[$s] -y
}
