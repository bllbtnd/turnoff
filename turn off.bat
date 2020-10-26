@echo off
set /a q = 0
set /a r = 3

:start
echo      y = yes
echo      n = no
echo      lo = log out and turn off
timeout 1 >nul
echo      -------------------------
timeout 1 >nul
set /p sure=Are you sure? Do you want to turn of your PC? (y/n/lo)

if %sure% == y goto yes
if %sure% == n goto no
if %sure% == lo goto logout

cls

set /a q = %q%+1
set /a r = %r%-1

if %r% EQU 0 goto oft

timeout 1 >nul
echo error No. %q%. You have %r% tryes remaining.

timeout 1 >nul
echo   .

timeout 1 >nul
echo UNKNOWN COMMAND

timeout 1 >nul
echo   .

timeout 1 >nul
echo Try again!

timeout 3 >nul
cls
goto start


:yes

shutdown -s
pouse >nul
:no

cls
timeout 1 >nul
goto quitt


:logout

shutdown -l
shutdown -s
pouse >nul

:oft

echo Something went wrong!
timeout 1 >nul
echo The application will be closed!
timeout 5 >nul
goto quitt

:quitt
quit >nul