#!/usr/bin/env python3

import os,wget
from wget import download

print("""
   __  ___         _      ___                  __             __
  /  |/  /__ _____(_)__ _/ _ \___ _    _____  / /__  ___ ____/ /__ ____
 / /|_/ / _ `/ __/ / _ `/ // / _ \ |/|/ / _ \/ / _ \/ _ `/ _  / -_) __/
/_/  /_/\_,_/_/ /_/\_,_/____/\___/__,__/_//_/_/\___/\_,_/\_,_/\__/_/

""")

mdurl = input("File URL: ")
mdfile = input("File name: ")
mdzip = input("Unzip the file? [Y/n] ")

if (mdzip == "y" or mdzip == "Y" or mdzip == "yes" or mdzip == "YES"):

    print("Mariadownloading...")
    wget.download(mdurl, mdfile)
    print("Mariadownloaded!")

    print("Unzipping")

    print("Unzipped")

    print("Saved as", mdfile)

else:

        print("Mariadownloading...")
        wget.download(mdurl, mdfile)
        print("Mariadownloaded!")
