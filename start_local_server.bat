@echo off
cd /d "%~dp0"
where py >nul 2>nul
if %errorlevel%==0 (
  start "SAT Practice Lab" http://localhost:8000
  py -m http.server 8000
) else (
  where python >nul 2>nul
  if %errorlevel%==0 (
    start "SAT Practice Lab" http://localhost:8000
    python -m http.server 8000
  ) else (
    echo Python is not installed. Please open index.html directly in Chrome or Edge.
    pause
  )
)
