md out
md tra
mkfltoa.exe foolandsurface.txt track.flt -viper
MKWORLD.EXE
pause
mkilicc -nolat track.ili tra\track.ild
mkilicc -nolat track-ai.ili tra\default.ili
mkilicc -nolat track-ai-reverse.ili tra\rdefault.ili
copy out\track.sol tra\track.sol
copy out\track.obt tra\track.obt
copy out\track.bsp tra\track.bsp
mkfltoa.exe foolandgraphic.txt mtrack.flt
nhmkworld.exe mtrack.flt
pause
copy out\track.bpp tra\track.bpp
copy out\track.grf tra\track.grf
md tex
for %%s in (*.tga) do mktex %%s tex\%%s /a
cd tex
ren *.tga *.tex
move *.tex ..\tra
cd ..
copy sky*.tex tra
copy camera.tab tra
copy aidef.ccs tra
copy trackmap.stp tra
dir tra /b > reslist.txt
copy reslist.txt tra
cd tra
..\mkres generic.tra @reslist.txt 
