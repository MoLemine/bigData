# stop_mongodb_cluster.ps1
Write-Host "Arret du cluster MongoDB..." -ForegroundColor Red
Get-Process mongod,mongos -ErrorAction SilentlyContinue | Stop-Process -Force
Write-Host "Cluster arrete!" -ForegroundColor Green