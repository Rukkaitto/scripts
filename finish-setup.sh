#!/bin/bash

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ..
rm -rf yay

yay -S gohufont gohufont-powerline google-chrome

echo "Setup is done! Please reboot."
