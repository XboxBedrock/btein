@ECHO off
ECHO would you like to add the bte india mods and update mods if so press any key when the prompt comes
pause
cd /d C:
cd "%userprofile%\AppData\Roaming\.buildtheearth"
if exist "%userprofile%\AppData\Roaming\.buildtheearth\old_mods" (echo "all good atm") else (mkdir old_mods)
cd .
cd "%userprofile%\AppData\Roaming\.buildtheearth\mods"
if exist "%userprofile%\AppData\Roaming\.buildtheearth\mods\forgeessentials.jar" copy "%userprofile%\AppData\Roaming\.buildtheearth\mods\forgeessentials.jar" "%userprofile%\AppData\Roaming\.buildtheearth\old_mods"
if exist "%userprofile%\AppData\Roaming\.buildtheearth\mods\terramap.jar" copy "%userprofile%\AppData\Roaming\.buildtheearth\mods\terramap.jar" "%userprofile%\AppData\Roaming\.buildtheearth\old_mods"
if exist "%userprofile%\AppData\Roaming\.buildtheearth\mods\forgeessentials.jar" del /f forgeessentials.jar
if exist "%userprofile%\AppData\Roaming\.buildtheearth\mods\terramap.jar" del /f terramap.jar
ECHO old mod versions gone    
powershell -command "import-module bitstransfer"
powershell -command "Start-BitsTransfer https://github.com/XboxBedrock/btein/raw/master/mods/terramap.jar "%userprofile%\AppData\Roaming\.buildtheearth\mods""
powershell -command "Start-BitsTransfer https://github.com/XboxBedrock/btein/raw/master/mods/forgeessentials.jar "%userprofile%\AppData\Roaming\.buildtheearth\mods""
ECHO new mods installed
ECHO Installation done :)
pause
