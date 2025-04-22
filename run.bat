@echo off
color 0A
title Booting System...

echo [System] Initializing...
ping 127.0.0.1 -n 2 >nul
echo [System] Checking Git status...
ping 127.0.0.1 -n 2 >nul

cd /d D:\Sweath\GitHub\data

echo [Git] Adding changes...
git add .

echo [Git] Committing...
git commit -m "Automated daily commit"

echo [Git] Pushing to GitHub...
git push origin main

echo [System] Task completed. Logging entry...
echo [%date% %time%] Git push completed >> D:\Sweath\GitHub\logs\push_log.txt

echo [Done] You may now continue.
ping 127.0.0.1 -n 5 >nul
exit
