:: This has been configured for The Stage of History!
@echo off 
echo  -----------------
echo   [MCC]u4pak
echo  -----------------
echo.

echo [!] Any old %~n1.pak files will be overwitten.
echo Close the window to abort or press any key to continue...
echo.
pause >nul

cd %~dp0
echo %1\
xcopy %1 %~dp0 /E /I /y > nul
u4pak.exe pack "pak\%~n1.pak" MCC
::python u4pak.py pack pak/%~n1.pak MCC
rd MCC /s /q
echo.

u4pak.exe list "pak\%~n1.pak"
echo.
u4pak.exe info "pak\%~n1.pak"
echo.
u4pak.exe check "pak\%~n1.pak"

echo.
echo %1 -^> 'pak\%~n1.pak'
echo.
echo Press any key to quit.
pause >nul
::explorer pak