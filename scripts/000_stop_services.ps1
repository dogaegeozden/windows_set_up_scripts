# An array for list of services.
$services = @("spooler","alg","ajrouter","bthavctpsvc","bthserv","certpropsvc","dps","wdiservicehost","wdiservicehost","wdisystemhost","trkwks","EntAppSvc","fax","lfsvc","iphlpsvc","SEMgrSvc","WbioSrvc","OneSyncSvc","SessionEnv","TermService","wisvc","RemoteRegistry","SCardSvr","WMPNetworkSvc")

# Loop through the array and stop each one of these services, if they are running.
For ($s=0; $s -lt $services.Length; $s++){
	$serviceStatus = (Get-Service -Name $services[$s]).status
	if ($serviceStatus -eq "Running") {
		sc stop $services[$s]
		net stop $services[$s]
	}
}
