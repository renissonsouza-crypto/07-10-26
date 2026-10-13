@echo off
rem Abre o totem em tela cheia (modo quiosque) no Google Chrome
set PASTA=%~dp0
set CHROME="C:\Program Files\Google\Chrome\Application\chrome.exe"
if not exist %CHROME% set CHROME="C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"
start "" %CHROME% --kiosk --autoplay-policy=no-user-gesture-required --disable-pinch --overscroll-history-navigation=0 --no-first-run "file:///%PASTA:\=/%index.html"
