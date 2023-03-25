#!bin/bash

#created by: github.com/fury999io

user=$(whoami)
wget https://dist.torproject.org/torbrowser/12.0.4/tor-browser-linux64-12.0.4_ALL.tar.xz
tar -xf tor-browser-linux64-12.0.1_ALL.tar.xz
sudo mv tor-browser /opt
cd /opt/tor-browser
./start-tor-browser.desktop --register-app

echo "Do you want to create a desktop shortcut? (Y/n)"
read resp
if [[ "$resp" == "y" || "$resp" == "Y" ]]; then
	sudo cp start-tor-browser.desktop /home/$user/Desktop
fi
