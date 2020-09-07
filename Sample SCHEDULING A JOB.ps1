### This powershell script is used to schedule a backup job ###
### Supported distribution/Software:    ###
### Maintainer: @ThiagoNosch - tnosch@hotmail.com ###

#Get-Command -Module PSScheduledJob | Sort-Object Noun
#Config vars to be used as schedules
$daily = New-JobTrigger -Daily -at 3am
$oneshot = New-JobTrigger -Once -At (get-date).AddHours(1)
$weekly = New-JobTrigger -Weekly -DaysOfWeek Monday -At 9pm

#Creating a scheduled job
Register-ScheduledJob -Name backup_tnosch -Trigger $daily -ScriptBlock {
    Copy-Item c:\utils\*.* c:\onedrive\utils -Recurse -Force
}

#Verifying schudele
Get-ScheduledJob backup_tnosch | Get-JobTrigger

#Removing from schudule
Get-ScheduledJob backup_tnosch | Unregister-ScheduledJob
