#!/bin/bash
##################
## Quick Script ##
## ############ ##
## This Script  ##
## Will Setup   ##
## The Necessary##
## Packages for ##
## Yaourt-git   ##
##################

echo "Beginning Pre-setup"
echo ""
echo ""
echo ""
cd /tmp
if [ -e build-dir ]; then 
rm -r build-dir
fi
mkdir build-dir
cd build-dir
git clone https://aur.archlinux.org/yaourt-git.git
git clone https://aur.archlinux.org/package-query-git.git
pacman --noconfirm --force -S base-devel
cd package-query-git 
makepkg -s && sudo pacman -U *.xz
cd ..
cd yaourt-git
makepkg -s && sudo pacman -U *.xz
##exit
