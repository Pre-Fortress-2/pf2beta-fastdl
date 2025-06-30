@echo off

git pull
git clean -df
git checkout .

cd maps
for /R %%f in (*.bz2) do (
	7z x -y %%f
)	
cd ..