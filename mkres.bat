@echo off
color 0a
echo.
echo.
echo.
echo.
echo.
PING 1.1.1.1 -n 1 -w 1000 >NUL
mkres carname.car @reslist.txt
echo.
echo.
echo.
echo.
echo.
pause
cls
color 2F
echo.
echo.
echo.
echo.
echo.
echo IF YOU GOT ERRORS - FIX THE PROBLEMS FIRST
echo                   OTHERWISE THE CAR MAKING IS COMPLETE
echo         NOW JUST COPY AND PASTE THE CAR INTO YOUR Viper Racing / Data FOLDER
echo.
echo.
echo.
echo.
echo.
pause
exit /b