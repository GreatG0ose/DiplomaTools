@ECHO OFF
if "%1"=="" GOTO USAGE
if "%2"=="" GOTO USAGE
if "%3"=="" GOTO USAGE

set out=%1
set ext=%2
set pre=%3
setlocal enabledelayedexpansion
for /R . %%f in (*.%ext%) do (
	set B=%%f
	echo !B:%CD%\=!
	set C=!B:%CD%\=!
	echo %pre%!C:\=/! >> %out%
	echo. >> %out%
)
echo.
echo Done: %out%
goto EXIT
@ECHO ON

:USAGE
echo Usage: %0 ^<output^> ^<extension^> <prefix-link>
echo Example: %0 links.txt js* https://github.com/Project/test/
echo,         combines all .js and .jsx file names to links.txt
:EXIT
