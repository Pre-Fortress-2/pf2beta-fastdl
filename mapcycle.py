# Script by Sour Dani for use with any fast-dl server.
# github.com/Pre-Fortress-2/fastdl-base
from os import listdir, path

def main():
    extension = ".bsp.bz2"
    dir = "maps" 
    server_name = "fdl"
    try:
        with open(f"cfg/{server_name}_mapcycle.txt", "w") as mapcycle, open(f"cfg/{server_name}_motd.txt", "w") as motd:
            motd.write("Map List:\n\n")
            if path.isfile("default_mapcycle.txt"):
                with open("default_mapcycle.txt") as default_maps:
                    mapcycle.write(default_maps.read())
                motd.write("- Includes stock maps\n")
            for file in listdir(dir):
                if file.endswith(extension):
                    mapcycle.write(path.join(file[:-8]) + "\n")
                    motd.write(path.join(file[:-8]) + "\n")
    except Exception as ex:
        print(ex)
if __name__ == "__main__":
    main()
    