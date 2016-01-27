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

:mbrand

echo - fly
echo - lenovo

Set /p brand="¬ведите свой бренд из списка: "
if not defined brand goto mbrand
if "%brand%"=="fly" (goto m%brand%)
if "%brand%"=="lenovo" (goto m%brand%)
cls
goto mbrand

:mfly
cls
echo - evo_energy_1
echo - evo_tech_3
echo - evo_tech_4

Set /p model="¬ведите свой девайс из списка: "
if not defined model goto mfly
if "%model%"=="evo_energy_1" (goto mfinish)
if "%model%"=="evo_tech_3" (goto mfinish)
if "%model%"=="evo_tech_4" (goto mfinish)
goto mfly

:mlenovo
cls
echo - A536

Set /p model="¬ведите свой девайс из списка: "
if not defined model goto mlenovo
if "%model%"=="A536" (goto mfinish)
goto mlenovo

:mfinish
cls
copy %LD%\%brand%\%model%.* %CD%
call %CD%\%model%.bat

