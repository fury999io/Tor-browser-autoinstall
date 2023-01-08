#!bin/bash

#Made by: github.com/fury999io

user=$(whoami)
wget https://www.torproject.org/dist/torbrowser/12.0.1/tor-browser-linux64-12.0.1_ALL.tar.xz
tar -xf tor-browser-linux64-12.0.1_ALL.tar.xz
sudo mv tor-browser /opt
cd /opt/tor-browser
./start-tor-browser.desktop --register-app

echo "Do you want to create a desktop shortcut? (Y/n)"
read resp
if [[ "$resp" == "y" || "$resp" == "Y" ]]; then
	sudo cp start-tor-browser.desktop /home/$user/Desktop
fi
