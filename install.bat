@echo off
set Here=%~dp0

for /f "tokens=3 delims= " %%a in ('reg query "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders" /v "Personal"') do (set MyDocs=%%a)
if %ErrorLevel% neq 0   echo(Failed to retrieve 'My Documents' path. && exit /b %ErrorLevel%
if not exist "%MyDocs%" echo(Failed to retrieve 'My Documents' path. && exit /b 1

set moduleDir=%MyDocs%\WindowsPowerShell\Modules\CodeGlue.Imdb\

SetLocal EnableExtensions
if not exist "%moduleDir%" mkdir "%moduleDir%"

copy "%Here%CodeGlue.Imdb.*" "%moduleDir%" /y > nul
copy "%Here%ReadMe.md"       "%moduleDir%" /y > nul
copy "%Here%License.txt"     "%moduleDir%" /y > nul

explorer "%moduleDir%"
