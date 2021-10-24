#!/bin/bash
cd /usr/src/koyuos
cp .config/rofi/themes/koyu.rasi ~/.config/rofi/themes/koyu.rasi
sudo cp issue /etc/issue
sudo git pull
sudo cp upgrade.sh /usr/bin/koyuos-upgrade
yay -Syu --noconfirm --needed
