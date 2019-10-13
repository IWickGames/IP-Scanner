@echo off
REM Created by @IWickGames
REM SAVE MODE------[ON/OFF]--------------------
set SAFEMODE=ON
set SAFEMODE_TIMER=2
REM -------------------------------------------
set ran=%random%
set /p enter="Set Start IP[y/n] "
if %enter%==y goto setvars
if %enter%==Y goto setvars
set num1=0
set num2=1
set num3=1
set num4=1
:1
if %num4%==255 goto exit
if %num3%==255 set num3=0 && set /a num4=%num4%+ 1
if %num2%==255 set num2=0 && set /a num3=%num3%+ 1
if %num1%==255 set num1=0 && set /a num2=%num2%+ 1 & if "%SAFEMODE%"=="ON" timeout /nobreak %SAFEMODE_TIMER% >nul
start "" /MIN "cmd /r ping -n 1 -w 1 %num4%.%num3%.%num2%.%num1%>nul && echo [%num4%.%num3%.%num2%.%num1%] PASS>>Scan%ran%.txt"
echo Checking [%num4%.%num3%.%num2%.%num1%] ...
ping -n 1 -w 1 127.0.0.1 >nul
ping -n 1 -w 1 127.0.0.1 >nul
ping -n 1 -w 1 127.0.0.1 >nul
set /a num1=%num1%+ 1
goto 1
:exit
echo.
echo Done!
pause >nul
exit
:setvars
cls
set /p num1="Set IP[192.168.1.SET]: "
set /p num2="Set IP[192.168.SET.%num1%]: "
set /p num3="Set IP[192.SET.%num2%.%num1%]: "
set /p num4="Set IP[SET.%num3%.%num2%.%num1%]: "
set /p enter="Does this look correct[%num4%.%num3%.%num2%.%num1%][y/n] : "
if %enter%==y goto 1
if %enter%==Y goto 1
goto setvars