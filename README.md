## SO VERY IMPORTANT PLEASE READ ME

AFTER YOU FINISH YOUR CHANGES AND BEFORE COMMITTING AND PUSHING CHANGES,

RUN `mapcycle.py` TO UPDATE `mapcycle.txt` AND `motd.txt`

### Add `.bz2` file of map
Maps **must** be uploaded as .bz2 files.
- Please download 7zip in order to compress them.

Right click on the map > 7zip > add to archive > BZip2.

- THEN upload the map!

## Included Scripts
This repo includes
- Mass `.bz2` maker
- Updates maps in rotation
- Updates mapcycle and maplist

### Add this in your server.cfg
```
sv_allowdownload 1 
sv_downloadurl "https://pre-fortress-2.github.io/pf2beta-fastdl"
```

### Adding misc files.
Make a `.res` that shares same name as your map.
`ctf_coolestmap.res`

Then individually add the files you would like to have the server download to the client. This can be anything from a `.mdl` your map uses or a particle `.txt`.
The `.res` must use this format.
```
"Resources"
{
	"maps/ctf_coolestmap_particles.txt"	"file"
        "materials/some_file.vtf"	"file"
	"models/balls_heavy.mdl"	"file"
}
```
