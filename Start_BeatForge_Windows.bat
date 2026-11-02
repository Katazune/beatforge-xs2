@echo off
title VORTEX BeatForge XS-2 / XT-2 - BLECHTRIBE Windows Edition
set "APP_URL=file:///%~dp0ios_webapp/index.html"
set "APP_URL=%APP_URL:\=/%"

:: Startet als eigenstaendiges Windows-Desktop-App-Fenster ohne Browser-Leiste
if exist "%ProgramFiles(x86)%\Microsoft\Edge\Application\msedge.exe" (
    start "" "%ProgramFiles(x86)%\Microsoft\Edge\Application\msedge.exe" --app="%APP_URL%" --window-size=1440,860
    exit /b 0
)

if exist "%ProgramFiles%\Microsoft\Edge\Application\msedge.exe" (
    start "" "%ProgramFiles%\Microsoft\Edge\Application\msedge.exe" --app="%APP_URL%" --window-size=1440,860
    exit /b 0
)

if exist "%ProgramFiles%\Google\Chrome\Application\chrome.exe" (
    start "" "%ProgramFiles%\Google\Chrome\Application\chrome.exe" --app="%APP_URL%" --window-size=1440,860
    exit /b 0
)

start "" "%~dp0ios_webapp\index.html"
