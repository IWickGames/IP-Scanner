@echo off
REM Created by @IWickGames
set /p ip="Enter Bace IP address: "
set num=0
:1
if %num%==255 goto exit
ping -n 1 -w 1 %ip%.%num%>nul
if %errorlevel%==0 (
echo %ip%.%num% exists on network>>Scan%ip%.txt
echo %ip%.%num% exists on network
) else (
echo %ip%.%num% failed to connect
)
set /a num=%num%+ 1
goto 1
:exit
echo Done!
pause >nul
exit