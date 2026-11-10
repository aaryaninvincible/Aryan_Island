@echo off
title Dynamic Pond (Aryan Island) - Clean Uninstaller
color 0b
echo ===================================================
echo     Dynamic Pond - Complete Uninstaller
echo ===================================================
echo.

echo [1/4] Closing any running instances of AryanIsland.exe...
taskkill /F /IM AryanIsland.exe /T >nul 2>&1
timeout /t 1 /nobreak >nul

echo [2/4] Removing Windows startup registration...
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" /v "Aryan Island" /f >nul 2>&1

echo [3/4] Cleaning local application data...
if exist "%LOCALAPPDATA%\Programs\AryanIsland" (
    rmdir /S /Q "%LOCALAPPDATA%\Programs\AryanIsland" >nul 2>&1
)

echo [4/4] Cleaning working directory configurations...
if exist "aryan_island.ini" del /F /Q "aryan_island.ini" >nul 2>&1
if exist "aryan_island.log" del /F /Q "aryan_island.log" >nul 2>&1
if exist "last_run.txt" del /F /Q "last_run.txt" >nul 2>&1

echo.
echo ===================================================
echo  [SUCCESS] Dynamic Pond has been completely uninstalled!
echo  No background services, tasks, or registry items remain.
echo  You may now delete this folder if you wish.
echo ===================================================
echo.
pause
