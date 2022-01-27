#!/usr/bin/env python3

import readline,colorama,wget,zipfile
from colorama import Fore
colorama.init(autoreset=True)

print("""   __  ___         _      ___                  __             __
  /  |/  /__ _____(_)__ _/ _ \___ _    _____  / /__  ___ ____/ /__ ____
 / /|_/ / _ `/ __/ / _ `/ // / _ \ |/|/ / _ \/ / _ \/ _ `/ _  / -_) __/
/_/  /_/\_,_/_/ /_/\_,_/____/\___/__,__/_//_/_/\___/\_,_/\_,_/\__/_/""")
print(Fore.CYAN + "                                    by @LenninZiony and @playermushroom")

try:
    mdurl = input("File URL: ")
    mdfile = input("File name: ")
    mdzip = input("Unzip the file? [y/N] ")

    def mddownload():
        print("Mariadownloading...")
        wget.download(mdurl, mdfile)
        print()
        print("Mariadownloaded!")

    def mdunzip():
        print("Unzipping...")
        with zipfile.ZipFile(mdfile, 'r') as zip_ref:
            zip_ref.extractall(mddir)
        print("Unzipped")
        print("Saved under " + mddir)

    if (mdzip == "y" or mdzip == "Y" or mdzip == "yes" or mdzip == "YES"):
        mddir = input("Directory to extract: ")
        mddownload()
        mdunzip()

    else:
        mddownload()

except KeyboardInterrupt:
    print("")
