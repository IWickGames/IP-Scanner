@echo off
REM Created by @IWickGames
set /p ip="Enter Bace IP address: "
set num=0
:1
if %num%==255 goto exit
start "" /MIN "cmd /r ping -n 1 -w 1 %ip%.%num%>nul && echo %ip%.%num% exists on network>>Scan%ip%.txt"
echo Checking %ip%.%num% ...
ping -n 1 -w 1 127.0.0.1 >nul
ping -n 1 -w 1 127.0.0.1 >nul
ping -n 1 -w 1 127.0.0.1 >nul
set /a num=%num%+ 1
goto 1
:exit
echo Done!
pause >nul
exit