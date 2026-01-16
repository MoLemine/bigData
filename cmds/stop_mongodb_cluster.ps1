# stop_mongodb_cluster.ps1
# Script pour arreter le cluster MongoDB

Write-Host "Arret du cluster MongoDB..." -ForegroundColor Red

# Arreter tous les processus mongod et mongos
Get-Process mongod,mongos -ErrorAction SilentlyContinue | Stop-Process -Force

Write-Host "" -ForegroundColor Green
Write-Host "======================================" -ForegroundColor Green
Write-Host "Cluster MongoDB arrete avec succes!" -ForegroundColor Green
Write-Host "======================================" -ForegroundColor Green