#!/bin/bash

echo '   __  ___         _      ___                  __             __'
echo '  /  |/  /__ _____(_)__ _/ _ \___ _    _____  / /__  ___ ____/ /__ ____'
echo ' / /|_/ / _ `/ __/ / _ `/ // / _ \ |/|/ / _ \/ / _ \/ _ `/ _  / -_) __/'
echo '/_/  /_/\_,_/_/ /_/\_,_/____/\___/__,__/_//_/_/\___/\_,_/\_,_/\__/_/'
echo " "

read -p "File URL: " mariadownloader_url
read -p "File name: " mariadownloader_file
read -p "Directory to save: " mariadownloader_directory
read -p "Unzip the file? [Y/n] " mariadownloader_unzip

if [[ "$mariadownloader_unzip" =~ (y|Y|yes|Yes|YES) ]]
then

  mkdir $mariadownloader_directory 2>/dev/null
  cd $mariadownloader_directory

    echo "Mariadownloading..."
    wget "$mariadownloader_url" -O $mariadownloader_file
    echo "Mariadownloaded!"
      echo "Unzipping..."
      unzip $mariadownloader_file &>/dev/null
      echo "Unzipped!"
      echo "Saved under $mariadownloader_directory"

elif [[ "$mariadownloader_unzip" =~ (n|N|no|No|NO) ]]
then

  mkdir $mariadownloader_directory 2>/dev/null
  cd $mariadownloader_directory 2>/dev/null
    
    echo "Mariadownloading..."
    wget "$mariadownloader_url" -O $mariadownloader_file
    echo "Mariadownloaded!"
    echo "Saved under $mariadownloader_directory"
    
else
  echo "Error"
fi
