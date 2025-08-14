#!/bin/bash
git pull
git clean -df
git restore .

cd maps
for i in *.bz2; do
    [ -f "$i" ] || break
    bzip2 -vd $i
done

cd ..