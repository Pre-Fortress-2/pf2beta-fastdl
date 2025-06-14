#!/bin/bash

git pull
git checkout .

cd maps
for i in *.bz2; do
    [ -f "$i" ] || break
    bzip2 -d $i
done

cd ..