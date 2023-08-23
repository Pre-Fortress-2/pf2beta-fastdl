#!/bin/bash

git pull
git checkout pf2beta/maps
cd pf2beta/maps

for i in *.bz2; do
    [ -f "$i" ] || break
    bzip2 -d $i
done

mv *.bsp *.res *.txt ../../../maps
cd ~

# rcon-cli can be found at https://github.com/itzg/rcon-cli place it in your home directory
./rcon-cli --host ip --password rconpw --port 27015 say "(ATTENTION)"
sleep 1s
./rcon-cli --host ip --password rconpw --port 27015 say "Custom maps have been updated"

cd servers/sdk/
