#!bin/bash

#Made by: github.com/fury999io

user=$(whoami)
wget https://dist.torproject.org/torbrowser/11.5.2/tor-browser-linux64-11.5.2_en-US.tar.xz
tar -xf tor-browser-linux64-11.5.2_en-US.tar.xz
sudo mv tor-browser_en-US /opt
cd /opt/tor-browser_en-US
./start-tor-browser.desktop --register-app

echo "Do you want to create a desktop shortcut? (Y/n)"
read resp
if [[ "$resp" == "y" || "$resp" == "Y" ]]; then
	sudo cp start-tor-browser.desktop /home/$user/Desktop
fi
