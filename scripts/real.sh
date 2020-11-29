#!/bin/bash
# -------------------------------
# Variables
# -------------------------------
device='/dev/nvme0n1'
efi_id='p1'
root_id='p2'
home_id='p3'
kernel='-lts' # '-zen'/'-lts'/'-hardened' or empty if kernel is stanard
net_dev='enp34s0'
#use_wifi = true/false # TODO

packages="base base-devel linux$kernel linux$kernel-headers linux-firmware xf86-input-libinput ansible neovim"
# -------------------------------
#TODO
#wifi-menu -o
#Install the wpa_supplicant package, which includes the main program wpa_supplicant, the passphrase tool wpa_passphrase, and the text front-end wpa_cli.

# Wipe fs (insecure, but fast)
wipefs -af $device

# Full wipe
#shred --verbose --random-source=/dev/urandom -z $device

# Fast full wipe (less secure)
#shred --verbose --random-source=/dev/zero -n 1 $device

# Create partitions
sgdisk --new 1::+512M --typecode 1:ef00 --change-name 1:"EFI System" "$device"
sgdisk --new 2::+40G  --typecode 2:8304 --change-name 2:"MazaHaKa Linux root" "$device"
sgdisk --new 3::: --typecode 3:8302 --change-name 3:"MazaHaKa Linux home" "$device"

# Create filesystem on /boot
mkfs.fat -F32 "$device""$efi_id"

# Create filesystem on / (also check device for bad blocks)
mkfs.xfs -f "$device""$root_id"

# Mount partitions
mount "$device""$root_id" /mnt
mkdir /mnt/boot
mount "$device""$efi_id" /mnt/boot

# Set up fast DNS
echo 'nameserver 1.1.1.1' > /etc/resolv.conf

# Instal software
pacstrap /mnt $packages

# Set up keymap
echo KEYMAP=us > /mnt/etc/vconsole.conf

# Generate fstab
genfstab -U /mnt > /mnt/etc/fstab

# Enable DHCP
cat > /mnt/etc/systemd/network/1-wired.network << EOL_network
[Match]
Name=$net_dev
[Network]
DHCP=ipv4
EOL_network

# Enable network autostart
arch-chroot /mnt /bin/bash -c 'systemctl enable systemd-networkd'

# Configure DNS 
echo 'nameserver 1.1.1.1' > /mnt/etc/resolv.conf

# Create bootctl config
read PARTUUID <<< $(lsblk -n -o PATH,PARTUUID "$device""$root_id" | grep "$device""$root_id" | awk '{print $2}')
arch-chroot /mnt /bin/bash -c 'bootctl --path=/boot install'
echo 'default arch'  > /mnt/boot/loader/loader.conf
echo 'timeout 0'    >> /mnt/boot/loader/loader.conf
echo 'title MazaHaKa Linux' > /mnt/boot/loader/entries/arch.conf
echo "linux /vmlinuz-linux$kernel" >> /mnt/boot/loader/entries/arch.conf
echo "initrd /initramfs-linux$kernel.img" >> /mnt/boot/loader/entries/arch.conf
echo "options root=PARTUUID=$PARTUUID" >> /mnt/boot/loader/entries/arch.conf

# Set up root password
arch-chroot /mnt /bin/bash -c 'passwd'

# Unmount and reboot
cd ~
umount -R /mnt
reboot
