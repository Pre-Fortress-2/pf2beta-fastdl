## SO VERY IMPORTANT PLEASE READ ME
Maps **must** be uploaded as .bz2 files.
- Please download 7zip in order to compress them.

Right click on the map > 7zip > add to archive > BZip2.

- THEN upload the map!

### Add this in your server.cfg
```
sv_allowdownload 1 
sv_allowupload 1
sv_downloadurl "https://github.com/Pre-Fortress-2/pf2beta-fastdl/pf2beta"
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
        "maps/some_file.vtf"	"file"
}
```