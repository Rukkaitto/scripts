#!/bin/bash

echo "Welcome to the Arch Linux environment setup!"
echo ""
echo "What will be the name of your session?"

read username
useradd -m -g wheel "$username"

echo "What will be your password?"

passwd "$username"

cp finish-setup.sh /home/$username

echo "%wheel ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
echo "Defaults !tty_tickets" >> /etc/sudoers

pacman -S --noconfirm xorg-server xorg-xinit i3-gaps i3blocks rxvt-unicode dmenu network-manager-applet noto-fonts lightdm lightdm-gtk-greeter pulseaudio alsa-utils zsh neovim openssh xorg-xset compton feh man-db man-pages

systemctl enable lightdm.service

# mandb

echo "exec i3" > /home/$username/.xinitrc

git clone https://github.com/Rukkaitto/myrcs
mkdir /home/$username/.config/i3blocks
cd myrcs

cp bashrc /home/$username/.bashrc
cp i3config /home/$username/.config/i3/config
cp i3blocksconfig /home/$username/.config/i3blocks/config
cp Xresources /home/$username/.Xresources
cp xprofile /home/$username/.xprofile
cp zshrc /home/$username/.zshrc
cp keyboard.conf /etc/X11/xorg.conf.d/20-keyboard.conf

git clone https://aur.archlinux.org/yay.git /home/$username/yay
cd /home/$username/yay

echo "Setup is almost over, please source finish-setup.sh."
su $username
