VR simple Track Maker
=====================
Tool that hopefully help make simple track easier. This tool will need ASE for spline exported from 3dsmax.


This tool assume that:
- ASE path created on clockwise direction. If it isn't then some polygon may need to be reoriented. 
- all path must always go in one direction. A backward path create hole, delete some vertex line in (the end of) ASE file to fix this.
- ASE path is created dense, a normalization of 1.0 is preferred.
- start/finish line is straight
- path never crossed each other or overlap, if it is then fix the model


Parameter:
later.


How to use:
Create ASE from spline in 3DSmax, make a spline, normalize to 50.0 (optional), then normalize to 1.0, export using 4 decimal precision, with dot (.) as decimal symbol. change your regional setting to avoid getting error in application.

Press "Process file", the app will ask for ASE file. After that it will begin creating path. The resulting path and it's angle will be displayed on table. Only bank angle column will be used for the next process. And by all means, DO NOT DELETE THE TABLE RECORD.

Press "Write model". Put attention to the number of wall created, if it exceed 2000, try to redo with higher simplify threshold to get foolandsurface.txt file with lower number of wall object. Keep this foolandsurface.txt, redo again normally to get other thing.

Opening trkaitweaker.exe no longer needed. aipath creation is included in main app now.

you may also change sky*.tex, camera.tab (use extract.exe), aidef.ccs, trackmap.stp (use mkstamp.exe, ???x230 tga) file.

after this run maketrack.bat, preferebly first delete out, tra, and tex directory if exist.

track will be created in tra directory with the name generic.tra.



Note:
- wall in Viper Racing is limited to 2000
- vertex limited to 65000
- polygon limited to 65000
- normal is not calculated
- only create asphalt, wall, side, rumble and small part of grass.
- there is no polygon overlap detection, if exist please fix it or it will create hole
- If you intend to use different density for wall data, the wall compiled use foolandsurface.txt and any .mod file with "wall" suffix.





Sucahyo