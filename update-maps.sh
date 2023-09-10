#!/bin/bash

git pull
git checkout pf2beta/maps
cd pf2beta/maps

for i in *.bz2; do
    [ -f "$i" ] || break
    bzip2 -d $i
done

mv *.bsp *.res *.txt ../../../maps


