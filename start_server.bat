@echo off
title Craig Nielsen - Academic Website Local Server
cd /d "%~dp0"
echo Starting local web server...
powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0serve.ps1"
if %ERRORLEVEL% neq 0 (
    echo.
    echo Opening index.html directly in your default browser...
    start "" "%~dp0index.html"
)
pause

