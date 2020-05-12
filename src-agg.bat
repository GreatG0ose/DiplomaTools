@ECHO OFF
if "%1"=="" GOTO USAGE
if "%2"=="" GOTO USAGE

set out=%1
set ext=%2
echo %ext%
setlocal enabledelayedexpansion
for /R . %%f in (*.%ext%) do (
	set B=%%f
	echo !B:%CD%\=!
	echo !B:%CD%\=! >> %out%
	type "%%f" >> %out%
	echo. >> %out%
	echo. >> %out%
)
echo.
echo Bundled: %out%
goto EXIT
@ECHO ON

:USAGE
echo Usage: %0 ^<output^> ^<extension^>
echo Example: %0 output.txt js* 
echo,         combines all .js and .jsx files to output.txt
:EXIT
