@echo off

:: This script simply copies the necessary files to the module's install location under
:: the user's "\My Documents\WindowsPowerShell\Modules\" directory.
:: It is not required to run the module and is included only as a convenience.

set ModuleName=CodeGlue.Imdb

:: Get the My Documents path
for /f "tokens=3 delims= " %%a in ('reg query "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders" /v "Personal"') do (set MyDocs=%%a)
if %ErrorLevel% neq 0 echo(Failed to retrieve 'My Documents' path. && exit /b %ErrorLevel%

:: Create the module directory
SetLocal EnableExtensions
set InstallDir=%MyDocs%\WindowsPowerShell\Modules\%ModuleName%\
if not exist "%InstallDir%" mkdir "%InstallDir%"

:: Copy all the files except this script to the module directory
attrib "%~f0" -a
xcopy "%~dp0*" "%InstallDir%" /e /q /i /y /a > nul
attrib "%~f0" +a

:: Open the file explorer to the module directory
explorer "%InstallDir%"
