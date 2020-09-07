### This powershell script is used to describe FUNCTION / WORKFLOW ###
### Supported distribution/Software:    ###
### Maintainer: @ThiagoNosch - tnosch@hotmail.com ###

Clear-Host
function iniciar-editores 
{
Start-Process Notepad
sleep 5
Start-Process wordpad
}

Clear-Host
workflow start-editores 
{
parallel {
Start-Process Notepad
Start-Sleep 5
Start-Process wordpad        
}   
}