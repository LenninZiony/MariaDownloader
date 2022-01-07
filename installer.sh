#!/bin/bash
echo '   __  ___         _      ___                  __             __'
echo '  /  |/  /__ _____(_)__ _/ _ \___ _    _____  / /__  ___ ____/ /__ ____'
echo ' / /|_/ / _ `/ __/ / _ `/ // / _ \ |/|/ / _ \/ / _ \/ _ `/ _  / -_) __/'
echo '/_/  /_/\_,_/_/ /_/\_,_/____/\___/__,__/_//_/_/\___/\_,_/\_,_/\__/_/'
echo '   _          __       ____'
echo '  (_)__  ___ / /____ _/ / /__ ____'
echo ' / / _ \(_-</ __/ _ `/ / / -_) __/'
echo '/_/_//_/___/\__/\_,_/_/_/\__/_/'
echo " "

echo "Installing dependencies..."
sudo apt install wget unzip -y &>/dev/null
sudo pacman -S wget unzip --noconfirm &>/dev/null
echo "All dependencies are now installed"

echo "Downloading MariaDownloader..."
wget https://raw.githubusercontent.com/LenninZiony/MariaDownloader/main/bin/mariadownloader -O /tmp/mariadownloader &>/dev/null
sudo chown root:root /tmp/mariadownloader
sudo chmod 755 /tmp/mariadownloader
sudo rm /bin/mariadownloader
sudo cp /tmp/mariadownloader /bin/mariadownloader
sudo rm /tmp/mariadownloader
echo "MariaDownloader was installed!"
