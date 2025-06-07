#!/bin/bash

git pull
git checkout pf2beta

cd pf2beta/maps
for i in *.bz2; do
    [ -f "$i" ] || break
    bzip2 -d $i
done

# Goes to pf2beta/download/maps
mv *.bsp ../../../maps

# Has to go to pf2beta/maps for now
cp *.res *.txt ../../../../maps
cd ..

rm -rf ../../materials
cp -r materials/ ../../

rm -rf ../../models
cp -r models/ ../../

cd ..
cp mapcycle.txt motd.txt ../../cfg
