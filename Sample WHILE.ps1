### This powershell script is used to describe WHILE ###
### Supported distribution/Software:    ###
### Maintainer: @ThiagoNosch - tnosch@hotmail.com ###

Clear-Host
$i = 0
while($true)
{
    $i++
    Write-Host "counting until $i"
    if ($i -ge 1000) {break}
}