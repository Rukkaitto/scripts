#!/bin/bash

makepkg -si
cd ..
rm -rf yay

yay -S gohufont gohufont-powerline google-chrome

echo "Setup is done! Please reboot."
