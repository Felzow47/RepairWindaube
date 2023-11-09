@echo off

REM vbs pour plein écran
:VBSDynamicBuild
SET TempVBSFile=%temp%\~tmpSendKeysTemp.vbs
IF EXIST "%TempVBSFile%" DEL /F /Q "%TempVBSFile%"
ECHO Set WshShell = WScript.CreateObject("WScript.Shell") >>"%TempVBSFile%"
ECHO Wscript.Sleep 1                                    >>"%TempVBSFile%"
ECHO WshShell.SendKeys "{F11}"                            >>"%TempVBSFile%
ECHO Wscript.Sleep 1                                    >>"%TempVBSFile%"
 
CSCRIPT //nologo "%TempVBSFile%"
 

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
echo.
echo.
SETLOCAL ENABLEEXTENSIONS
SETLOCAL ENABLEDELAYEDEXPANSION
color 03                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              
::: 							.______       _______ .______      ___      .______           ___   .___________. __    ______   .__   __.         
::: 							|   _  \     |   ____||   _  \    /   \     |   _  \         /   \  |           ||  |  /  __  \  |  \ |  |         
::: 							|  |_)  |    |  |__   |  |_)  |  /  ^  \    |  |_)  |       /  ^  \ `---|  |----`|  | |  |  |  | |   \|  |         
::: 							|      /     |   __|  |   ___/  /  /_\  \   |      /       /  /_\  \    |  |     |  | |  |  |  | |  . `  |         
::: 							|  |\  \----.|  |____ |  |     /  _____  \  |  |\  \----. /  _____  \   |  |     |  | |  `--'  | |  |\   |         
::: 							| _| `._____||_______|| _|    /__/     \__\ | _| `._____|/__/     \__\  |__|     |__|  \______/  |__| \__|         
::: 							.___  ___.  _______ .__   __.      _______. __    __   _______  __       __       _______     _______   _______    
::: 							|   \/   | |   ____||  \ |  |     /       ||  |  |  | |   ____||  |     |  |     |   ____|   |       \ |   ____|   
::: 							|  \  /  | |  |__   |   \|  |    |   (----`|  |  |  | |  |__   |  |     |  |     |  |__      |  .--.  ||  |__      
::: 							|  |\/|  | |   __|  |  . `  |     \   \    |  |  |  | |   __|  |  |     |  |     |   __|     |  |  |  ||   __|     
::: 							|  |  |  | |  |____ |  |\   | .----)   |   |  `--'  | |  |____ |  `----.|  `----.|  |____    |  '--'  ||  |____    
::: 							|__|  |__| |_______||__| \__| |_______/     \______/  |_______||_______||_______||_______|   |_______/ |_______|   
::: 							____    __    ____  __  .__   __.  _______       ___      __    __  .______    _______                             
::: 							\   \  /  \  /   / |  | |  \ |  | |       \     /   \    |  |  |  | |   _  \  |   ____|                            
::: 							 \   \/    \/   /  |  | |   \|  | |  .--.  |   /  ^  \   |  |  |  | |  |_)  | |  |__                               
::: 							  \            /   |  | |  . `  | |  |  |  |  /  /_\  \  |  |  |  | |   _  <  |   __|                              
::: 							   \    /\    /    |  | |  |\   | |  '--'  | /  _____  \ |  `--'  | |  |_)  | |  |____                             
::: 							    \__/  \__/     |__| |__| \__| |_______/ /__/     \__\ \______/  |______/  |_______|                            
for /f "delims=: tokens=*" %%A in ('findstr /b ::: "%~f0"') do @echo(%%A
sfc /scannow
timeout 5 > nul 
Dism /Online /Cleanup-Image /CheckHealth
timeout 5 > nul
Dism /Online /Cleanup-Image /ScanHealth
timeout 5 > nul
Dism /Online /Cleanup-Image /RestoreHealth


echo Reparation terminee
timeout 5 > nul
