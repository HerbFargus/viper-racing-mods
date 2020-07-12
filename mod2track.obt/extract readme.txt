Extract app, application to help track making for Nascar Heat and Viper Racing by Sucahyo.

Functions:
- vertex from ase, convert ASE created from 3dsmax to text supported by mkflt. ( insert the created textfile into fooland.txt )
- ase2ili, for Viper Racing, create an ili from ASE, same function as gcf2ili. File still needs to be converted to proper ili with mkili or mkilicc (if you use more than 255 vertex). Assuming that the track was created with mkfltoa.
- ase2ili for non mkfltoa, for Viper Racing, same as above but for a track created using mkflt or mkfltbh.
- the editbox below ase2ili is the road width of the track, also used to define pipe wall width for ase to pipeline.
- ase to wall quad object, makes a series of wall quad object text for mkflt from ASE. ( insert the created textfile into fooland.txt )
- ase to pipeline, make a series of walls on left and right of road path.( insert the created textfile into fooland.txt )
- mod2quad, makes a wall quad object from MGI .mod file. the editbox below it defines the additional wall height. ( insert the created textfile into fooland.txt )
- bpp2mod, converts NH or VR track.bpp back to .mod. editbox above of this displays the number of polygons per surface id.
- ase2camera.tab, for viper racing, convert ase coordinates to camera file


insert obstacle function:

The four below will extract obstacle data
- Get coordinate from ASE
- Get from track.ild or track ili
- Get from .mod
- from .mod to detect hole


- Inject obstacle to track.obt using the above text data, will insert coordinates in editbox above this into track.obt. data xy coordinate separated by semicolon (;). This function requires the track.obt file to exist in the same directory.


I also posted some explanation of the functions here:
http://www.themodsquad.info/index.php?action=search2
http://www.vrgt.com/forum/


You can contact me from both forums.

Sucahyo.