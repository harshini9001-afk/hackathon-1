# Elevate AI Platform Dev Starter Script
# Prepend local portable Node.js path to PATH environment variable and start services

$env:PATH = "c:\Users\HARSHINI REDDY\OneDrive\Desktop\hackathon\nodejs;" + $env:PATH

Write-Host "=============================================" -ForegroundColor Cyan
Write-Host "       Launching Elevate AI Platform         " -ForegroundColor Cyan
Write-Host "=============================================" -ForegroundColor Cyan

Write-Host "1. Starting Backend Express Server (Port 5000)..." -ForegroundColor Yellow
Start-Process powershell -ArgumentList "-NoExit", "-Command", "`$env:PATH = 'c:\Users\HARSHINI REDDY\OneDrive\Desktop\hackathon\nodejs;' + `$env:PATH; cd backend; npm run dev"

Write-Host "2. Starting Frontend Vite Server (Port 5173)..." -ForegroundColor Yellow
Start-Process powershell -ArgumentList "-NoExit", "-Command", "`$env:PATH = 'c:\Users\HARSHINI REDDY\OneDrive\Desktop\hackathon\nodejs;' + `$env:PATH; cd frontend; npm run dev"

Write-Host "Both servers initialized in background windows!" -ForegroundColor Green
Write-Host "Please visit: http://localhost:5173" -ForegroundColor Green
Write-Host "=============================================" -ForegroundColor Cyan
