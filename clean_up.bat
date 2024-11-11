@echo off
echo Cleaning temporary files...
del /q /f /s %temp%\*
del /q /f /s C:\Windows\Temp\*

echo Flushing DNS cache...
ipconfig /flushdns

echo Running Disk Cleanup...
cleanmgr /sagerun:1

echo Clearing Clipboard to free up RAM...
echo off | clip

echo Running Disk Check...
chkdsk /f /r

echo Clearing Prefetch folder...
del /q /f /s C:\Windows\Prefetch\*

echo Optimization Complete!
pause
