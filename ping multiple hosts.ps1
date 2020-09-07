### This powershell script is used to ping multiple hosts ###
### Supported distribution/Software:    ###
### Maintainer: @ThiagoNosch - tnosch@hotmail.com ###


$GoogleDNS = @("8.8.8.8", "8.8.4.4")
$allDNS = $GoogleDNS.Count
write-host Pinging all $allDNS
Test-connection $GoogleDNS -count 1



