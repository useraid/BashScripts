#!/bin/bash
echo "Realtek rtw89 wifi drivers installer for Debian based distros"
sudo apt-get update
sudo apt-get install make gcc linux-headers-$(uname -r) build-essential git
git clone https://github.com/lwfinger/rtw89.git
cd rtw89
make
clear
echo "Enter password, enroll Key after 5 seconds..."
sleep 5
sudo make sign-install
echo "Reboot the computer and wifi module should be working."