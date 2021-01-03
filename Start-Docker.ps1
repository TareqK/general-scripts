# A Powershell Script to start docker desktop without a login
Write-Host "Starting Docker"
start "C:\Program Files\Docker\Docker\Docker Desktop.exe"
start-service -Name com.docker.service
Write-Host "Waiting 300 seconds for docker service start"
Start-Sleep 300
