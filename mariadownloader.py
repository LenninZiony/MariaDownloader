#!/usr/bin/env python3

import wget,zipfile

print("""
   __  ___         _      ___                  __             __
  /  |/  /__ _____(_)__ _/ _ \___ _    _____  / /__  ___ ____/ /__ ____
 / /|_/ / _ `/ __/ / _ `/ // / _ \ |/|/ / _ \/ / _ \/ _ `/ _  / -_) __/
/_/  /_/\_,_/_/ /_/\_,_/____/\___/__,__/_//_/_/\___/\_,_/\_,_/\__/_/
                                    by @LenninZiony and @playermushroom
""")

mdurl = input("File URL: ")
mdfile = input("File name: ")
mdzip = input("Unzip the file? [y/N] ")

if (mdzip == "y" or mdzip == "Y" or mdzip == "yes" or mdzip == "YES"):

    mddir = input("Directory to extract: ")
    print("Mariadownloading...")
    wget.download(mdurl, mdfile)
    print()
    print("Mariadownloaded!")

    print("Unzipping...")
    with zipfile.ZipFile(mdfile, 'r') as zip_ref:
        zip_ref.extractall(mddir)
    print("Unzipped")

    print("Saved under " + mddir + "/")

else:

    print("Mariadownloading...")
    wget.download(mdurl, mdfile)
    print()
    print("Mariadownloaded!")
    print("Saved as " + mdfile)
