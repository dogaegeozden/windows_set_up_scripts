# Create a variable for the active user's name.
$userName = [System.Environment]::UserName
# Add the profile to operating systems records
netsh wlan add profile filename="C:\Users\$userName\Desktop\windows_set_scripts\wifi_profiles\wifi_profile.xml"
# Connnect to the internet
netsh wlan connect name="Humbleheart" ssid="Humbleheart"
# Sleep the application for 5 seconds so your connection request can be processed for the next script.
Start-Sleep 5
