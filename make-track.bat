@echo off
color 0a
rmdir /s /q out
rmdir /s /q tra
del /s /q track.flt
del  /s /q mtrack.flt
ECHO PAUSING FOR 2 SECONDS
PING 1.1.1.1 -n 1 -w 2000 >NUL
md out
md tra
mkfltoa.exe foolandsurface.txt track.flt -viper
MKWORLD.EXE
echo IF YOU SEE NO ERRORS - CONTINUE
echo IF YOU DO - CAREFULLY READ THE DETAILS CAUSING THE ERROR
echo THEN "x" OUT OF THIS BATCH FILE UNTIL YOU FIX IT
pause
mkilicc -nolat track.ili tra\track.ild
mkilicc -nolat track-ai.ili tra\default.ili
mkilicc -nolat track-ai-reverse.ili tra\rdefault.ili
copy out\track.sol tra\track.sol
copy out\track.obt tra\track.obt
copy out\track.bsp tra\track.bsp
mkfltoa.exe foolandgraphic.txt mtrack.flt
nhmkworld.exe mtrack.flt
echo IF YOU SEE NO ERRORS - CONTINUE
echo IF YOU DO - CAREFULLY READ THE DETAILS CAUSING THE ERROR
echo THEN "x" OUT OF THIS BATCH FILE UNTIL YOU FIX IT
pause
copy out\track.bpp tra\track.bpp
copy out\track.grf tra\track.grf
copy camera.tab tra
copy aidef.ccs tra
copy trackmap.stp tra
xcopy /e /y mkresfiles tra
cd tra
CALL  compile-track.bat
