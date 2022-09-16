# Uninstall Cortana
Get-AppxPackage -AllUsers Microsoft.549981C3FSF10 | Remove-AppPackage
# Uninstall OneDrive
taskkill /f /im OneDrive.exe
%SystemRoot%\SysWOW64\OneDriveSteup.exe /Uninstall