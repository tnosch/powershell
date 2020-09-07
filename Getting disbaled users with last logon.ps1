### This powershell script is used to get aduser information ###
### Supported distribution/Software:    ###
### Maintainer: @ThiagoNosch - tnosch@hotmail.com ###

#Getting all disbaled users on AD with last logon date
Get-ADUser -filter {Enabled -eq $false} -properties sAMAccountName, LastLogonDate | Sort-Object name | Format-Table sAMAccountName, Name, LastLogonDate | ft -a
# All properties from user tnosch
Get-ADUser -identity tnosch -properties *
# Lastlogon properties from user tnosch
Get-ADUser -identity tnosch -properties LastLogonDate | ft -a
# Some properties from user tnosch
Get-ADUser -Identity tnosch -properties sAMAccountName, LastLogonDate | Sort-Object name | Format-Table sAMAccountName, Name, LastLogonDate | ft -a