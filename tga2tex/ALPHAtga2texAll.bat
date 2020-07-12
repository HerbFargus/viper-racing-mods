@echo off
color 0a
IF NOT EXIST ALPHAtex GOTO makefolder
rmdir /s /q ALPHAtex
echo.
echo.
echo.
echo.
ECHO PAUSING FOR 1 SECOND AS PREVIOUS FOLDER IS DELETED
PING 1.1.1.1 -n 1 -w 1000 >NUL
:makefolder
md ALPHAtex
IF NOT EXIST *.tga GOTO notgas
rem for %%s in (*.tga) do nhmktex %%s ALPHAtex\%%s /p1 /i1 /a 
for %%s in (*.tga) do mktex %%s ALPHAtex\%%s /a 
cd ALPHAtex 
ren *.tga *.tex
GOTO complete
echo.
echo.
echo.
echo.
:complete
echo.
echo.
echo.
echo.
cls
echo.
echo.
echo.
echo.
color 0b
ECHO ALPHA CHANNEL TGA CONVERSION SUCCESSFULL
echo.
echo.
echo.
echo.
pause
exit /b
:notgas
echo.
echo.
echo.
echo.
cls
echo.
echo.
echo.
echo.
color 4c
ECHO YOU FORGOT TO PUT YOUR TGA FILES IN HERE
ECHO SO THEY CAN BE CONVERTED TO filename.tex FILES
ECHO THAT VIPER RACING USES
echo.
echo.
echo.
echo.
ECHO PUT YOUR TGA FILES IN HERE AND RESTART THIS BATCH FILE
echo.
echo.
echo.
echo.
pause
exit /b