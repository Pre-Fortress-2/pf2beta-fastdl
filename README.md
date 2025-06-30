# IMPORTANT INSTRUCTIONS
## ADDING A MAP
- PLACE MAPS IN `maps` AS `.bsp` OR `.bz2` FILES
- RUN `bs2maker.py` IF `.bsp` WAS ADDED
- RUN `mapcycle.py` 
- RUN `mapcycle.py`
- MAKE SURE NEW FILES ARE SELECTED TO COMMIT
- ADD A COMMIT MESSAGE (DESCRIPTION IS OPTIONAL)

## REMOVING A MAP
- DELETE MAP `.bsp.bz2` FILE
- RUN `mapcycle.py`
- MAKE SURE CHANGES ARE IN COMMIT
- ADD A COMMIT MESSAGE (DESCRIPTION IS OPTIONAL)

## Updating the `default_mapcycle.txt` file
You can *add* or *remove* a default map from rotation by editing the `default_mapcycle.txt` file.
- **Please do not add default maps to the generated `_mapcycle.txt` files or to this repo**

## Manually creating `.bz2` files	
[*Please download 7-Zip*](https://www.7-zip.org/download.html)
Maps **MUST** be converted to `.bz2` files:
- Right click on the `.bsp` file
- Click `7zip`
- Click `Add to archive...`
- Click `Archive format`
- Select `bzip2`
- Click `OK`

## Included Scripts
- `bz2maker.py`
	- Converts `.bsp` files into `.bsp.bz2` files
- `mapcycle.py`
	- Updates the map cycle for the server
	- Updates the MOTD for the server
- `update-map.sh`
	- For Linux server use only
	- Updates the repo and extracts the `.bsp` files
- `update-map.bat`
	- For Windows server use only
	- Updates the repo and extracts the `.bsp` files

## Adding `pf2beta-fastdl` to your server
- Add to your `cfg/server.cfg`:
```json
sv_allowdownload 1 
sv_downloadurl "https://pre-fortress-2.github.io/pf2beta-fastdl"
```
- Clone this repo to your `custom` folder
```bash
git clone https://github.com/Pre-Fortress-2/pf2beta-fastdl
```
- Using the generated `_mapcycle.txt` file is optional

## Adding other files
Make a `.res` that shares same name as your map.
- Example: `ctf_coolestmap.res`

List the files in your `.res` file:
```json
"Resources"
{
	"maps/ctf_coolestmap_particles.txt"	"file"
	"materials/some_file.vtf"	"file"
	"models/balls_heavy.mdl"	"file"
}
```
