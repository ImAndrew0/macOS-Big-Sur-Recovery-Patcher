@echo off
title Free macOS Recovery Patcher
mode 86,30
@echo Welcome to macOS Recovery Patcher!
@echo.
@echo This tool help you with the patching of the original macOS Recovery on your USB Drive.
@echo.
@echo off
pause
cls
@echo What is the letter of USB Drive? (es. E:, D:)
@echo off
set /p usb= %=%
cls
@echo You are secure to format %usb%?
@echo off
pause
cls
format %usb% 
cls
@echo Downloading Need Files...
@echo off
powershell -command "& { (New-Object Net.WebClient).DownloadFile('https://download1079.mediafire.com/4zy0j8lubncg/2osknttuzumsvq5/patch.zip', '%usb%\patch.zip') }"
powershell -command "& { (New-Object Net.WebClient).DownloadFile('https://cdn.discordapp.com/attachments/814484792413651025/814484815826387014/7z.dll', '%usb%\7z.dll') }"
powershell -command "& { (New-Object Net.WebClient).DownloadFile('https://cdn.discordapp.com/attachments/814484792413651025/814484816804315196/7z.exe', '%usb%\7z.exe') }"
cls
@echo Expanding Files....
cd %usb%
7z.exe e patch.zip
del 7z.exe /s /q
del 7z.dll /s /q
md %usb%\com.apple.recovery.boot
cd %usb%\com.apple.recovery.boot
powershell -command "& { (New-Object Net.WebClient).DownloadFile('https://download1324.mediafire.com/ox222hzuwazg/qr233rhv1kp4adj/BaseSystem.dmg', '%usb%\com.apple.recovery.boot\BaseSystem.dmg') }"
powershell -command "& { (New-Object Net.WebClient).DownloadFile('https://download1582.mediafire.com/1clzwl5vqklg/wgw41vwmr4i6nqa/BaseSystem.chunklist', '%usb%\com.apple.recovery.boot\BaseSystem.chunklist') }"
cls
@echo Patch Finished.
@echo.
@echo Code is open-source! Download here the code: https://github.com/ImAndrew0/macOS-Big-Sur-Recovery-Patcher
@echo.
@echo off
pause
exit

