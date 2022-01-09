#!/bin/bash
echo "This will automate Arch Install"
echo "Setting Time to NTP"
timedatectl set-ntp true
echo "Partition the Disk"
cfdisk /dev/sda
echo "Creating filesystems"
mkfs.ext4 /dev/sda1
mkfs.ext4 /dev/sda2
echo "Mounting"
mount /dev/sda2 /mnt
mkdir /mnt/boot
mount /dev/sda1 /mnt/boot
pacstrap /mnt base base-devel linux linux-firmware
genfstab /mnt
arch-chroot /mnt /bin/bash
pacman -S networkmanager grub -y
systemctl enable NetworkManager
grub-install /dev/sda
grub-mkconfig -o /boot/grub/grub.cfg
nano /etc/locale.gen
locale gen
nano /etc/locale.conf
echo "LANG=en-US.UTF8"
nano /etc/hostname
echo "archvm"
ln -sf /usr/share/zoneinfo/America/New_York /etc/localtime
passwd
exit
umount -R /mnt
reboot
