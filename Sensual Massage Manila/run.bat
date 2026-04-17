@echo off
setlocal

set "PORT=8082"
set "URL=http://localhost:%PORT%/index.html"

cd /d "%~dp0"

powershell -NoProfile -Command "try { $response = Invoke-WebRequest -Uri '%URL%' -UseBasicParsing -TimeoutSec 2; exit 0 } catch { exit 1 }"
if errorlevel 1 (
  start "Manila Website Server" cmd /c "cd /d %~dp0 && python -m http.server %PORT%"
  timeout /t 2 /nobreak >nul
)

start "" "%URL%"
