@echo off
title Scorpions
chcp 65001>nul
color 0a
:menu
cls
echo ========================================================================================================================
echo.				    			                                                                                                                                                                                                                        																					                   
echo 			███████╗ ██████╗ ██████╗ ██████╗ ██████╗ ██╗ ██████╗ ███╗   ██╗███████╗			   		    
echo 			██╔════╝██╔════╝██╔═══██╗██╔══██╗██╔══██╗██║██╔═══██╗████╗  ██║██╔════╝			           
echo 			███████╗██║     ██║   ██║██████╔╝██████╔╝██║██║   ██║██╔██╗ ██║███████╗		             
echo 			╚════██║██║     ██║   ██║██╔══██╗██╔═══╝ ██║██║   ██║██║╚██╗██║╚════██║			           
echo 			███████║╚██████╗╚██████╔╝██║  ██║██║     ██║╚██████╔╝██║ ╚████║███████║				               
echo 			╚══════╝ ╚═════╝ ╚═════╝ ╚═╝  ╚═╝╚═╝     ╚═╝ ╚═════╝ ╚═╝  ╚═══╝╚══════╝		v1.0                
echo.																					                       																					                      																					        
echo ========================================================================================================================
echo. 
echo	 MultiTool made by Polonium									First release
echo.
echo ========================================================================================================================
echo Hello %username%
echo.
echo Choose the option : 
echo.
echo 1-Credits
echo 2-Gmail me
echo 3-Change color
echo 4-Access tool
echo.
echo ========================================================================================================================
set /p menu= ~/
if %menu%==1 goto credits
if %menu%==2 goto gmail
if %menu%==3 goto color
if %menu%==4 goto tool
:credits
cls
echo ========================================================================================================================
echo Project made by Polonium
echo Start coding 11/09/2025
echo Thanks to the patorjk.com website
echo ========================================================================================================================
echo Project made for educationnal purposes only !
echo I am not responsible for anything that happens due to your use, modification or illegal use of this code.
echo if some bugs happen, let me know by Dm me 
echo ========================================================================================================================
pause
goto menu 
start https://github.com/Polonium32
:gmail
cls 
echo My email is flofiegel57@gmail.com
pause
start https://gmail.com 
goto menu
:color
cls 
echo.
echo ========================================================================================================================
echo	Choose the color : 
echo.
echo 1-Default
echo 2-Blue
echo 3-Red
echo 4-White
echo 5-Pink
echo 6-Cyan
echo 7-Gray
echo 8-Yellow
echo 9-Purple
echo 10-Navy
echo.
echo menu-go to menu
echo.
echo ========================================================================================================================
set /p menu= ~/
if %menu%==1 color 0a
if %menu%==2 color 9
if %menu%==3 color 4
if %menu%==4 color 7
if %menu%==5 color C
if %menu%==6 color B
if %menu%==7 color 8
if %menu%==8 color 6
if %menu%==9 color 5
if %menu%==10 color 1
if %menu%==menu goto menu
goto color
:tool
cls 
echo.
echo ========================================================================================================================
echo 	Choose the option :
echo.
echo 1-Server Test
echo 2-Wifi test
echo 3-Remotely shutdown a PC on LAN  
echo 4-User info 
echo 5-Makes a Rick Roll file, runs at every startup once you run it once
echo 6-IP Geolocation
echo 7-Kali linux, Must have Kali Linux installed
echo.
echo menu-go to menu 
echo ========================================================================================================================
echo.
echo.
set /p menu= ~/
if %menu%==1 goto server
if %menu%==2 goto wifi
if %menu%==3 goto shutdown
if %menu%==4 goto info
if %menu%==5 goto rickroll
if %menu%==6 goto ip
if %menu%==7 goto linux
if %menu%==menu goto menu 

:server
cls
title Multitool - Server test
set /p page= Enter the server you would like to test: 
cls
echo Checking "%page%" (this may take a bit.)
echo This option is still in beta, so it may or may not work, please report issues on the github page:
ping %page%>nul
cls
if errorlevel 1 (
echo The server "%page%" is offline
) else echo The server "%page%" is online
pause
goto tool
:wifi
cls
title Multitool - Wifi test
echo Testing your internet...
ping 8.8.8.8>nul
cls
if errorlevel 1 (
echo Not Connected
) else echo Connected
pause
goto tool

:shutdown
cls
title Multitool - Shutdown
echo Click "Browse" to select computers to shut down.
shutdown -i
goto tool

:info
cls
title Multitool - User info
net user
set /p usr= Please enter the username you want info about: 
cls 
net user %usr%
pause
goto tool
:rickroll
cls
title Multitool - Rickroll
echo start https://www.youtube.com/watch?v=dQw4w9WgXcQ >> assetb.bat
echo copy "assetb.bat" "%USERPROFILE%\Start Menu\Programs\Startup" >> rickroll.bat
echo start assetb.bat >> rickroll.bat
echo attrib %USERPROFILE%\Start Menu\Programs\Startup\assetb.bat +h >> rickroll.bat
cls
echo Created Rick Roll virus!
pause
goto tool

:linux
cls
echo opening kali...
cls
kali
goto tool

:ip 
cls
all powershell exit >nul
color A
cd files
:menu1
set ip=""
cls
echo.
type "banner.txt"
echo.
echo.
echo       PUBLIC IP
echo       ---------
echo     1) Geolocate
echo     2) Trace DNS
echo     3) Port Scan
echo     4) DDOS
echo.
echo        LOCAL IP
echo       ----------
echo     5) Trace Mac Address
echo     6) Port Scan
echo     7) ARP Spoof (DOS)
echo     8) RPC Dump
echo.
set /p input=~/
if /I "%input%" EQU "1" goto geolocate
if /I "%input%" EQU "2" goto tracedns
if /I "%input%" EQU "3" goto portscan
if /I "%input%" EQU "4" goto ddos
if /I "%input%" EQU "5" goto Macaddr
if /I "%input%" EQU "6" goto portscan
if /I "%input%" EQU "7" goto arpspoof
if /I "%input%" EQU "8" goto rpcdump

:rpcdump
cls
echo.
set /p ip=Enter IP Address: 
rpcdump %ip%
echo.
pause
cls
goto menu1

:Macaddr
cls
echo.
set /p ip=Enter IP Address: 
ping -w 1 %ip% >nul
for /f "tokens=2 delims= " %%a in ('arp -a ^| find "%ip%"') do set macaddr=%%a
for /f "usebackq delims=" %%I in (`powershell "\"%macaddr%\".toUpper()"`) do set "upper=%%~I"
cls
echo.
echo Mac Address: %upper%
echo.
pause
cls
goto menu1

:arpspoof
cls
echo.
set errorlevel=0
set /p ip=Enter IP Address: 
start cmd /c "mode 87, 10 && title Spoofing %ip%... && echo. && arpspoof.exe %ip%"
goto menu1

:ddos
cls
echo.
echo 1) https://freestresser.so/
echo 2) https://hardstresser.com/
echo 3) https://stresser.net/
echo 4) https://str3ssed.co/
echo 5) https://projectdeltastress.com/
echo 6) Back
echo.
set /p ddosinput=
if /I "%ddosinput%" EQU "1" start https://freestresser.so/
if /I "%ddosinput%" EQU "2" start https://hardstresser.com/
if /I "%ddosinput%" EQU "3" start https://stresser.net/
if /I "%ddosinput%" EQU "4" start https://str3ssed.co/
if /I "%ddosinput%" EQU "5" start https://projectdeltastress.com/
if /I "%ddosinput%" EQU "6" goto menu
goto menu1

:portscan
cls
set errorlevel=0
echo.
set /p ip=IP Address: 
set /p ports=Ports (e.g. 21,22,23): 
start cmd /c "mode 40, 15 && title Scanning Ports... && PortScanner.exe hosts=%ip% ports=%ports%>>portscan.txt"
ping localhost -n 5 >nul
taskkill /im PortScanner.exe /f >nul 2>&1
echo.
type portscan.txt
echo.
ping localhost -n 1 >nul
del portscan.txt
pause
goto menu1

:tracedns
cls
echo.
set /p ip=IP Address: 
cls
for /f "tokens=2 delims= " %%a in ('nslookup %ip% ^| find "Name"') do set dns=%%a
echo.
echo Domain Name: %dns%
echo.
pause
goto menu1

:geolocate
cls
echo.
set /p ip=IP Address: 
cls
setlocal ENABLEDELAYEDEXPANSION
set webclient=webclient
if exist "%temp%\%webclient%.vbs" del "%temp%\%webclient%.vbs" /f /q /s >nul
if exist "%temp%\response.txt" del "%temp%\response.txt" /f /q /s >nul
:iplookup
echo sUrl = "http://ipinfo.io/%ip%/json" > %temp%\%webclient%.vbs
:localip
cls
echo set oHTTP = CreateObject("MSXML2.ServerXMLHTTP.6.0") >> %temp%\%webclient%.vbs
echo oHTTP.open "GET", sUrl,false >> %temp%\%webclient%.vbs
echo oHTTP.setRequestHeader "Content-Type", "application/x-www-form-urlencoded" >> %temp%\%webclient%.vbs
echo oHTTP.setRequestHeader "Content-Length", Len(sRequest) >> %temp%\%webclient%.vbs
echo oHTTP.send sRequest >> %temp%\%webclient%.vbs
echo HTTPGET = oHTTP.responseText >> %temp%\%webclient%.vbs
echo strDirectory = "%temp%\response.txt" >> %temp%\%webclient%.vbs
echo set objFSO = CreateObject("Scripting.FileSystemObject") >> %temp%\%webclient%.vbs
echo set objFile = objFSO.CreateTextFile(strDirectory) >> %temp%\%webclient%.vbs
echo objFile.Write(HTTPGET) >> %temp%\%webclient%.vbs
echo objFile.Close >> %temp%\%webclient%.vbs
echo Wscript.Quit >> %temp%\%webclient%.vbs
start %temp%\%webclient%.vbs
set /a requests=0
:checkresponseexists
set /a requests=%requests% + 1
if %requests% gtr 7 goto failed
IF EXIST "%temp%\response.txt" (
goto response_exist
) ELSE (
ping 127.0.0.1 -n 2 -w 1000 >nul
goto checkresponseexists
)
:failed
taskkill /f /im wscript.exe >nul
del "%temp%\%webclient%.vbs" /f /q /s >nul
echo.
echo Did not receive a response from the API.
echo.
pause
goto menu1
:response_exist
cls
echo.
for /f "delims=     " %%i in ('findstr /i "," %temp%\response.txt') do (
    set data=%%i
    set data=!data:,=!
    set data=!data:""=Not Listed!
    set data=!data:"=!
    set data=!data:ip:=IP:      !
    set data=!data:hostname:=Hostname:  !
    set data=!data:org:=ISP:        !
    set data=!data:city:=City:      !
    set data=!data:region:=State:   !
    set data=!data:country:=Country:    !
    set data=!data:postal:=Postal:  !
    set data=!data:loc:=Location:   !
    set data=!data:timezone:=Timezone:  !
    echo !data!
)
echo.
del "%temp%\%webclient%.vbs" /f /q /s >nul
del "%temp%\response.txt" /f /q /s >nul
if '%ip%'=='' goto menu
pause
goto tool