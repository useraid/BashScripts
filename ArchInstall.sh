#!/bin/bash
timedatectl set-ntp true
cfdisk /dev/sda
mkfs.ext4 /dev/sda1
mkswap /dev/sda2
mount /dev/sda1 /mnt
swapon /dev/sda2
pacman -S archlinux-keyring -y
pacstrap /mnt base linux linux-firmware -y
genfstab -U /mnt >> /mnt/etc/fstab
arch-chroot /mnt
pacman -S networkmanager -y
systemctl enable NetworkManager
timedatectl set-timezone Asia/Kolkata
echo en_US.UTF-8 > /etc/locale.gen
echo en_US.UTF-8 > /etc/locale.conf
echo archvm > /etc/hostname
touch /etc/hosts
echo "
127.0.0.1	localhost
::1		localhost
127.0.1.1	archvm " > /etc/hosts
pacman -S archlinux-keyring
pacman -S grub os-prober
grub-install /dev/sda
grub-mkconfig -o /boot/grub/grub.cfg
echo "Create Password (Note : password is not visible for security reasons)"
passwd
exit
reboot now
