#!/bin/bash
echo "Setting time Server"
timedatectl set-ntp true
cfdisk /dev/sda
mkfs.ext4 /dev/sda1
echo "Creating Swap"
mkswap /dev/sda2
echo "Mounting Drives"
mount /dev/sda1 /mnt
swapon /dev/sda2
echo "Updating Arch Keyring"
pacman -S archlinux-keyring -y
echo "Getting Arch Files"
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
echo "Installing Grub"
grub-install /dev/sda
grub-mkconfig -o /boot/grub/grub.cfg
echo "Create Password (Note : password is not visible for security reasons)"
passwd
exit
reboot now
