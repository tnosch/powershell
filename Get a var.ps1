### This powershell is used to ask for a var ###
### Supported distribution:  ###
### Maintainer: @ThiagoNosch - tnosch@hotmail.com ###

$username = Read-Host "Please insert your name"
$thanks = "thank you"
$phrase = $thanks, $username
Write-Host $phrase


