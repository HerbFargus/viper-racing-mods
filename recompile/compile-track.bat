@echo off

::                                                INSTRUCTIONS
::        REPLACE THE "trackname" BELOW TO THE NAME OF THE TRACK
::  YOU ARE PUTTING TOGETHER.
::
:: ONCE YOU HAVE DONE THAT, YOU CAN RE-START THIS  compile-track.bat 
echo.
color 0a
mkres trackname.tra @reslist.txt
echo.
echo.
echo.
echo.
echo TRACK MAKING COMPLETE
echo.
echo.
echo.
echo.
pause
exit /b