#!/bin/bash

echo "Welcome to the Arch Linux environment setup!"
echo "What will be the name of your session?"

read username

echo "What will be your password?"

read password

bash -c "useradd -m -g wheel $username"
chpasswd $username:$password

echo "%wheel ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
echo "Defaults !tty_tickets" >> /etc/sudoers

pacman -S xorg-server xorg-xinit i3-gaps i3blocks rxvt-unicode dmenu network-manager-applet noto-fonts lightdm lightdm-gtk-greeter pulseaudio alsa-utils zsh neovim openssh xorg-xset compton feh man-db man-pages

systemctl enable ligthdm.service

man-db

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ..
rm -rf yay

yay -S gohufont gohufont-powerline google-chrome

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

