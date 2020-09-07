### This powershell script is used to Query for windows specific service ###
### Supported distribution/Software:    ###
### Maintainer: @ThiagoNosch - tnosch@hotmail.com ###

Clear-Host
$service = Get-Service -Name Spooler
if ($service.Status -eq "Running") {
    Write-Host "Service is running man"
}
else {
    Write-Host "Service is stopped"
}