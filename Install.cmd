@echo off
set "params=%*"
cd /d "%~dp0" && ( if exist "%temp%\getadmin.vbs" del "%temp%\getadmin.vbs" ) && fsutil dirty query %systemdrive% 1>nul 2>nul || (  echo Set UAC = CreateObject^("Shell.Application"^) : UAC.ShellExecute "cmd.exe", "/k cd ""%~sdp0"" && %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs" && "%temp%\getadmin.vbs" && exit /B )
cd installerFiles
echo Installing NoLock...
echo.
echo Made by Lucas Gabriel (lucmsilva)
echo https://github.com/kruct/nolock
reg import /s NoLock.reg
echo.
echo Installed with success! Restarting Windows Explorer...
echo.
taskkill /f /im explorer.exe
explorer
explorer "%~dp0"
echo.
echo Explorer restarted! The script is finished!
echo Press enter to exit.
pause >nul
exit