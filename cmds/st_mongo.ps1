# start_mongodb_cluster.ps1
Write-Host "Demarrage du cluster MongoDB..." -ForegroundColor Cyan

# Config Servers
Write-Host "Demarrage des Config Servers..." -ForegroundColor Yellow
Start-Process powershell -ArgumentList "-NoExit", "-Command", "mongod --configsvr --replSet configReplSet --port 27019 --dbpath C:\mongodb_cluster\config\config1 --bind_ip localhost"
Start-Process powershell -ArgumentList "-NoExit", "-Command", "mongod --configsvr --replSet configReplSet --port 27020 --dbpath C:\mongodb_cluster\config\config2 --bind_ip localhost"
Start-Process powershell -ArgumentList "-NoExit", "-Command", "mongod --configsvr --replSet configReplSet --port 27021 --dbpath C:\mongodb_cluster\config\config3 --bind_ip localhost"

Start-Sleep -Seconds 5

# Shard 1 (rs1)
Write-Host "Demarrage Shard 1..." -ForegroundColor Yellow
Start-Process powershell -ArgumentList "-NoExit", "-Command", "mongod --shardsvr --replSet rs1 --port 27030 --dbpath C:\mongodb_cluster\shard1\rs1a --bind_ip localhost"
Start-Process powershell -ArgumentList "-NoExit", "-Command", "mongod --shardsvr --replSet rs1 --port 27031 --dbpath C:\mongodb_cluster\shard1\rs1b --bind_ip localhost"
Start-Process powershell -ArgumentList "-NoExit", "-Command", "mongod --shardsvr --replSet rs1 --port 27032 --dbpath C:\mongodb_cluster\shard1\rs1c --bind_ip localhost"

# Shard 2 (rs2)
Write-Host "Demarrage Shard 2..." -ForegroundColor Yellow
Start-Process powershell -ArgumentList "-NoExit", "-Command", "mongod --shardsvr --replSet rs2 --port 27040 --dbpath C:\mongodb_cluster\shard2\rs2a --bind_ip localhost"
Start-Process powershell -ArgumentList "-NoExit", "-Command", "mongod --shardsvr --replSet rs2 --port 27041 --dbpath C:\mongodb_cluster\shard2\rs2b --bind_ip localhost"
Start-Process powershell -ArgumentList "-NoExit", "-Command", "mongod --shardsvr --replSet rs2 --port 27042 --dbpath C:\mongodb_cluster\shard2\rs2c --bind_ip localhost"

# Shard 3 (rs3)
Write-Host "Demarrage Shard 3..." -ForegroundColor Yellow
Start-Process powershell -ArgumentList "-NoExit", "-Command", "mongod --shardsvr --replSet rs3 --port 27050 --dbpath C:\mongodb_cluster\shard3\rs3a --bind_ip localhost"
Start-Process powershell -ArgumentList "-NoExit", "-Command", "mongod --shardsvr --replSet rs3 --port 27051 --dbpath C:\mongodb_cluster\shard3\rs3b --bind_ip localhost"
Start-Process powershell -ArgumentList "-NoExit", "-Command", "mongod --shardsvr --replSet rs3 --port 27052 --dbpath C:\mongodb_cluster\shard3\rs3c --bind_ip localhost"

Start-Sleep -Seconds 10

# Mongos
Write-Host "Demarrage Mongos..." -ForegroundColor Yellow
Start-Process powershell -ArgumentList "-NoExit", "-Command", "mongos --configdb configReplSet/localhost:27019,localhost:27020,localhost:27021 --port 27018 --bind_ip localhost"

Write-Host "Cluster demarre!" -ForegroundColor Green