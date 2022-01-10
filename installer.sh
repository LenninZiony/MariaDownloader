echo '
   __  ___         _      ___                  __             __
  /  |/  /__ _____(_)__ _/ _ \___ _    _____  / /__  ___ ____/ /__ ____
 / /|_/ / _ `/ __/ / _ `/ // / _ \ |/|/ / _ \/ / _ \/ _ `/ _  / -_) __/
/_/  /_/\_,_/_/ /_/\_,_/____/\___/__,__/_//_/_/\___/\_,_/\_,_/\__/_/
   _          __       ____
  (_)__  ___ / /____ _/ / /__ ____
 / / _ \(_-</ __/ _ `/ / / -_) __/
/_/_//_/___/\__/\_,_/_/_/\__/_/'

echo "What MariaDownloader version would you like to install?
>Python (RECOMMENDED) [1]
>Shell [2]"

read -p "1 or 2? " mdver

if [[ "$mdver" =~ (1|python|PYTHON) ]]
then
  echo "Installing dependencies..."
  sudo apt install python3 pip -y
  sudo pacman -S python3 python-pip --noconfirm
  pip install wget
  echo "All dependencies are now installed"

  echo "Downloading MariaDownloader..."
  sudo rm -rf /tmp/mariadownloader
  wget https://raw.githubusercontent.com/LenninZiony/MariaDownloader/main/mariadownloader.py -O /tmp/mariadownloader
  sudo chown root:root /tmp/mariadownloader
  sudo chmod 755 /tmp/mariadownloader
  sudo rm -rf /bin/mariadownloader
  sudo cp /tmp/mariadownloader /bin/mariadownloader
  sudo rm /tmp/mariadownloader
  echo "The python version of MariaDownloader was installed"
  

elif [[ "$mdver" =~ (2|shell|SHELL) ]]
then

  echo "Installing dependencies..."
  sudo apt install bash wget unzip -y &>/dev/null
  sudo pacman -S bash wget unzip --noconfirm &>/dev/null
  echo "All dependencies are now installed"

  echo "Downloading MariaDownloader..."
  sudo rm -rf /tmp/mariadownloader >/dev/null
  wget https://raw.githubusercontent.com/LenninZiony/MariaDownloader/main/mariadownloader.sh -O /tmp/mariadownloader &>/dev/null
  sudo chown root:root /tmp/mariadownloader
  sudo chmod 755 /tmp/mariadownloader
  sudo rm -rf /bin/mariadownloader >/dev/null
  sudo cp /tmp/mariadownloader /bin/mariadownloader
  sudo rm /tmp/mariadownloader
  echo "MariaDownloader was installed"
  
else
  echo "Error"
fi
