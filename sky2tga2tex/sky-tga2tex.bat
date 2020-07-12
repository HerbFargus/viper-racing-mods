@echo off
color 0e
echo.
echo.
echo                                   INSTRUCTIONS
echo.
echo                     DID YOU RUN THE jpg2sky.exe FILE FIRST?
echo.
echo       x out of this if you haven't done that yet and
echo then run this batch file.
echo.
echo       If you ran it already, just click any key to continue
echo converting your sky tga files to tex files.
echo.
pause
if not exist *.tga goto oops
mktex sky1.tga sky1.tex
mktex sky2.tga sky2.tex
mktex sky3.tga sky3.tex
mktex sky4.tga sky4.tex
cls
color 2F
echo.
echo.
echo                                CONVERSION COMPLETE
echo.
echo.
pause
exit /b
:oops
cls
color 4F
echo.
echo.
echo.
echo                 TGA FILES NOT FOUND IN THIS FOLDER - FIND THE CAUSE
echo.
echo.
pause
exit /b

