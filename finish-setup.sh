#!/bin/bash

echo "exec i3" > .xinitrc
git clone https://github.com/Rukkaitto/myrcs
mkdir -p .config/i3
mkdir -p .config/i3blocks

cd myrcs

cp bashrc ../.bashrc
cp i3config ../.config/i3/config
cp i3blocksconfig ../.config/i3blocks/config
cp Xresources ../.Xresources
cp xprofile ../.xprofile
cp zshrc ../.zshrc

cd ..

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ..
rm -rf yay

yay -S gohufont gohufont-powerline google-chrome

echo "Setup is done! Please reboot."
