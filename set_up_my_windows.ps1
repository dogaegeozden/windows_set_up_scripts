$userName = [System.Environment]::UserName
$scriptFiles = Get-ChildItem "C:\Users\$userName\Desktop\windows_set_up_scripts\scripts"
foreach($file in $scriptFiles) {
	&$file.FullName
}