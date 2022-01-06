#!/bin/bash
echo '   ______ __                __             __'
echo '  / __/ // /__ _    _____  / /__  ___ ____/ /__ ____'
echo ' _\ \/ _  / _ \ |/|/ / _ \/ / _ \/ _ `/ _  / -_) __/'
echo '/___/_//_/\___/__,__/_//_/_/\___/\_,_/\_,_/\__/_/'
echo '   _          __       ____'
echo '  (_)__  ___ / /____ _/ / /__ ____'
echo ' / / _ \(_-</ __/ _ `/ / / -_) __/'
echo '/_/_//_/___/\__/\_,_/_/_/\__/_/'
echo " "

echo "Installing dependencies..."
sudo apt install wget unzip -y &>/dev/null
sudo pacman -S wget unzip --noconfirm &>/dev/null
echo "All dependencies are now installed"

echo "Downloading SHownloader"
wget https://raw.githubusercontent.com/LenninZiony/SHownloader/main/bin/shownloader -O /tmp/shownloader
sudo chown root:root /tmp/shownloader
sudo chmod 755 /tmp/shownloader
sudo mv /tmp/shownloader /bin/shownloader
echo "SHownloader was installed"
