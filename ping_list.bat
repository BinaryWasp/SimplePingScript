@echo off
FOR /F "tokens=*" %%I in (list.txt) do call :pinger %%I goto :eof
:pinger
:: echo %TIME% >> ping.txt
:: ping -n 1 %1 >> ping.txt

echo %TIME%  %1
ping -n 1 %1  >nul

if %errorlevel%==0 echo Host %1 is UP!  
if %errorlevel%==0 echo Host %1 is UP!  >> ping.txt
if %errorlevel%==1 echo Host %1 down.  



:: DONE
