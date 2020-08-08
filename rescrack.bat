@echo off
color 0a
rescrack carname.car
echo.
echo.
echo.
echo CAR EXTRACTION COMPLETE
echo.
echo.
echo.
CALL  ResClean.bat
echo RESCLEAN OPERATION COMPLETE
echo.
echo.
echo.
CALL  tex2tga.bat
echo TEX TO TGA CONVERSION COMPLETE
echo.
echo.
echo.
echo ALL REQUESTED OPERATIONS COMPLETE
echo.
echo.
echo.
pause
exit /b