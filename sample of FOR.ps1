### This powershell script is used to describe FOR ###
### Supported distribution/Software:    ###
### Maintainer: @ThiagoNosch - tnosch@hotmail.com ###

Clear-Host
for ($var=1; $var -le 254; $var++) {Test-Connection 192.168.0.$var} 