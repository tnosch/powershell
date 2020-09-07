#Sample JOBS and SCHEDULED JOBS
# @ThiagoNosch
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

Receive-Job $wfjob
Suspend-Job $wfjob -Force
Stop-Job $wfjob
Resume-Job $wfjob
