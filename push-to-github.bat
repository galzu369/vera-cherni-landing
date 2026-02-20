@echo off
echo Pushing to GitHub...
cd /d "c:\Users\HP\Desktop\Vera Cherni Catalao"
powershell -ExecutionPolicy Bypass -File "push-to-github.ps1"
pause
