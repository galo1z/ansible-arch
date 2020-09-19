# ansible-arch #

## Usage ##

1. Install Arch linux using scripts/real.sh for bare-metal or scripts/vm.sh for virtual machine (tested on VirtualBox)
2. Start playbooks/arch.yml
3. Reboot
4. Set up user password, login as a new user
5. Start Firefox to create default profile and copy profile's name to firefox.profile in host_vars/localhost.yml
6. Start playbooks/post_reboot_arch.yml
7. Follow instructions on the screen

## Security ##
* Firejail everything that has a default profile
* Apparmor integration
* Firefox hardened profile (https://github.com/pyllyukko/user.js)
* Iptables rules that block connection to potentionally dangerous hosts (using list from https://malwareworld.com)
* Adblocking DNS proxy (https://pi-hole.net/) using Quad9 server
* Locking screen with xsecurelock ("X11 screen lock utility with security in mind")

## Minimalism ##
* i3wm with i3blocks instead of a DE
* boot using systemd-boot
* no display manager used (login using TTY console)
* alacritty as a terminal ("the fastest terminal emulator in existence")
* nnn as a TUI file manager (works faster than GNU ls), with thunar as GUI-fallback
* neovim as a console file editor, with xed as GUI-fallback
* mpd as an audio and internet radio player
* mpv as a video player
* qview as an image viewer
* zathura as a document viewer

# TODO: ##
* Add hardening role (https://github.com/dev-sec/ansible-os-hardening)
* Integrate LKRG (https://openwall.com/lkrg)
* Integrate rkhunter
