# Install the windows update module 
Install-Module PSWindowsUpdate
# Install all the windows updates
Get-WindowsUpdate -AcceptAll -Install