### This powershell script is used to create and run asJob ###
### Supported distribution/Software:    ###
### Maintainer: @ThiagoNosch - tnosch@hotmail.com ###

Clear-Host
workflow longworkflow
{
    while (1)
    {
        (Get-Date).ToString() + "Long workflow"
        Start-Sleep 2
    }
} 

#Running as a JOB
$wfjob = longworkflow -AsJob
$wfjob

#Options to manage the job:
Receive-Job $wfjob
Suspend-Job $wfjob -Force
Stop-Job $wfjob
Resume-Job $wfjob
