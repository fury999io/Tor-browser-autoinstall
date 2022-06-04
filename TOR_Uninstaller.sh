#!bin/bash

#Made by: github.com/fury999io

user=$(whoami)
cd /opt
sudo rm -r tor-browser_en-US
sudo rm /home/$user/.local/share/applications/start-tor-browser.desktop
rm /home/$user/Desktop/start-tor-browser.desktop
