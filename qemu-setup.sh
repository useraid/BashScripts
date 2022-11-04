#!/bin/bash

VIRTCHECK=$(egrep -c '(vmx|svm)' /proc/cpuinfo)

if [ $VIRTCHECK -gt 0 ]; then
    sudo apt-get install -y qemu qemu-kvm libvirt-daemon libvirt-clients bridge-utils
    echo "Do you want to install GUI (virt-manager) (y/n)?"
    read choice
    if [[ ! $choice =~ ^[Yy]$ ]]
    then
        exit 1
    else 
        sudo apt-get install -y virt-manager
    fi
    sudo systemctl enable --now libvirtd

fi