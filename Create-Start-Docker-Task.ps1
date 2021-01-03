# Start Docker Task. You might need to replace the filepath to the StartDocker script
$trigger = New-JobTrigger -AtStartup -RandomDelay 00:00:30
Register-ScheduledJob -Trigger $trigger -FilePath C:\scripts\Start-Docker.ps1 -Name StartDocker
