# MariaDownloader

MariaDownloader is a script initially created to download zipped Dropbox files via CLI

![mariadownloader](https://user-images.githubusercontent.com/80495420/148485835-410e886f-3366-43b3-9414-76d8c0589281.png)

## Linux installation
You can install MariaDownloader on linux using:
### Git
```
git clone https://github.com/LenninZiony/MariaDownloader &>/dev/null && chmod +x ./MariaDownloader/installer.sh && ./MariaDownloader/installer.sh
```
### Curl
```
bash -c "$(curl -s https://raw.githubusercontent.com/LenninZiony/MariaDownloader/main/installer.sh)"
```
### Wget
```
bash -c "$(wget -O- https://raw.githubusercontent.com/LenninZiony/MariaDownloader/main/installer.sh)"
```

![installer](https://user-images.githubusercontent.com/80495420/148483269-f35b0eba-1149-4240-9947-ce5d7f3c38f6.png)

###### *Tested on Debian and Arch*

## Windows installation
To install MariaDownloader on windows you will need to:

[Download Python3](https://www.python.org/downloads)

Download the wget module by running `pip install wget`

Download the mariadownloader.py file from this repository

Finally execute MariaDownloader by running `python3 mariadownloader.py` inside the mariadownloader.py directory
