#!/bin/bash
# -------------------------------
# Variables
# -------------------------------
device='/dev/sda'
root_id='1'
kernel='-zen' # '-zen'/'-lts'/'-hardened' or empty if ernel is stanard
net_dev='enp0s3'
#use_wifi = true/false # TODO

packages="base base-devel linux$kernel linux$kernel-headers linux-firmware xf86-input-libinput ansible neovim openssh grub grub-btrfs os-prober"
# -------------------------------

# Wipe drive
shred --verbose --random-source=/dev/zero -n 1 $device

# Create partitions (MBR)
(echo o; echo n; echo p; echo 1; echo ; echo ; echo a; echo w) | fdisk "$device"

# Create filesystem on / (also check device for bad blocks)
mkfs.btrfs -f "$device""$root_id"

# Mount partitions
mount "$device""$root_id" /mnt

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

# Enable root login over SSH
sed -ie 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /mnt/etc/ssh/sshd_config
arch-chroot /mnt /bin/bash -c 'systemctl enable sshd'

# Set up root password
arch-chroot /mnt /bin/bash -c 'echo "root:123" | chpasswd'

# Set up grub config
arch-chroot /mnt /bin/bash -c 'mkdir /boot/grub/ && grub-mkconfig -o /boot/grub/grub.cfg && grub-install /dev/sda'

# Unmount and reboot
umount -R /mnt
reboot
