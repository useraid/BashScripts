#!/bin/bash
echo "Debloat and Update Script for Ubuntu 20.04 LTS"
echo "Debloating First......"
sudo apt remove --purge gnome-mahjongg gnome-mines gnome-sudoku aisleriot thunderbird* rhythmbox* deja-dup libreoffice* totem cheese transmission* usb-creator* shotwell* remmina* gnome-todo gnome-shell-extension-ubuntu-dock -y
sudo apt autoremove -y
sudo apt autoclean -y
echo "Updating Now......"
sudo apt update && sudo apt upgrade -y
echo "Do you want to install your usual programs?(y/n)"
read VAR1
VAR2="y"
if [ "$VAR1" = "$VAR2" ]; then
    echo "Installing Applications"
	sudo apt install vlc gnome-tweak-tool gdebi plank -y
else
	echo "done"
fi




