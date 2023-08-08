#!/bin/sh

# /dev/nvme0n1 --part 1 is the drive and location of esp
# root UUID is specific to the formated drive. find it in /etc/fstab.
efibootmgr --disk /dev/nvme0n1 --part 1 --create --label "Archimedes" --loader /vmlinuz-linux-zen --unicode 'root=$UUID rw initrd=\amd-ucode.img initrd=\initramfs-linux-zen.img' --verbose
