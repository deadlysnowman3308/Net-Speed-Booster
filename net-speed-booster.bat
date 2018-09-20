@echo off
CLS
ECHO.
ECHO =============================
ECHO     Running Admin shell
ECHO =============================

:init
setlocal DisableDelayedExpansion
set "batchPath=%~0"
for %%k in (%0) do set batchName=%%~nk
set "vbsGetPrivileges=%temp%\OEgetPriv_%batchName%.vbs"
setlocal EnableDelayedExpansion

:checkPrivileges
NET FILE 1>NUL 2>NUL
if '%errorlevel%' == '0' ( goto gotPrivileges ) else ( goto getPrivileges )

:getPrivileges
if '%1'=='ELEV' (echo ELEV & shift /1 & goto gotPrivileges)
ECHO.
ECHO **************************************
ECHO          MADE BY Admin ANIKET
ECHO **************************************

ECHO Set UAC = CreateObject^("Shell.Application"^) > "%vbsGetPrivileges%"
ECHO args = "ELEV " >> "%vbsGetPrivileges%"
ECHO For Each strArg in WScript.Arguments >> "%vbsGetPrivileges%"
ECHO args = args ^& strArg ^& " "  >> "%vbsGetPrivileges%"
ECHO Next >> "%vbsGetPrivileges%"
ECHO UAC.ShellExecute "!batchPath!", args, "", "runas", 1 >> "%vbsGetPrivileges%"
"%SystemRoot%\System32\WScript.exe" "%vbsGetPrivileges%" %*
exit /B

:gotPrivileges
setlocal & pushd .
cd /d %~dp0
if '%1'=='ELEV' (del "%vbsGetPrivileges%" 1>nul 2>nul  &  shift /1)
rem This Code made by Aniket
::::::::::::::::::::::::::::
::
title Internet speed Booster by Aniket Dinda
@echo off
echo It takes about 1 minute
timeout 5
ipconfig /release
color 1
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo Please wait ...
timeout 5 > nul 
cls

ipconfig /renew > nul
color 3
echo.
echo .......
echo.
echo.
echo.
echo.
echo.
echo Successful
echo Processing next step ....
timeout 3 > nul
cls

ipconfig /flushdns > nul
color 4
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo Successful
echo Processing next step
timeout 5 > nul
cls

cd/
netsh int tcp set global chimney=enabled
color c4
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo Almost Done ... Please wait
timeout 5 > nul 
cls

netsh int tcp set global autotuninglevel=normal
color c4
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo wait little bit
echo Processing next task 
timeout 5 > nul 
cls

netsh int tcp set global congestionprovider=ctcp
color e7
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo connecting your computer to the fastest internet
timeout 3
cls

netsh int ip reset c:\resetlog.txt
color e7
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo Connection True
timeout 3 > nul
cls

netsh interface tcp set heuristics disabled
color e
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo boosting your net speed.....
timeout 3 > nul
cls

netsh winsock reset > nul

echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
regsvr32 actxprxy
echo.
echo.
color 2
echo YOUR NET CONNECTION IS BOOSTED
timeout 3
cls

echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                   "Please Restart the PC"
set /p user="press any key"
timeout 4 > nul
cls
::::::::::::::::::::::::::::

::: Aniket Dinda:::
exit
cmd /k