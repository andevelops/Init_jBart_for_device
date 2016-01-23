@Echo off
chcp 1251 >nul

set CD=%~dp0
set Dini=%CD%\Dini
set Zip=%Dini%\bin
set LD=%Dini%\all_devices-master\all_devices

echo info: Download Device List...
powershell -executionpolicy bypass -file %Dini%\Dini.ps1

echo info: Unpack Devices inits.
%Zip%\7z.exe x -y -r %Dini%\Dini.zip -o%Dini%

cls
 
:m1
Echo Выберите свой девайс:
Echo.
Echo 1 - Evo Energy 1
Echo 2 - Evo Tech 3
Echo 3 - A536
 
echo.
Set /p choice="Ваш выбор: "
if not defined choice goto m1
if "%choice%"=="1" (copy %LD%\fly\evo_energy_1.* %CD%
start %CD%\evo_energy_1.bat)
if "%choice%"=="2" (copy %LD%\fly\evo_tech_3.* %CD%
start %CD%\evo_tech_3.bat)
if "%choice%"=="3" (copy %LD%\lenovo\a536.* %CD%
start %CD%\a536.bat)