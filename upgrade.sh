#!/bin/bash
cp .config/rofi/themes/koyu.rasi ~/.config/rofi/themes/koyu.rasi
sudo cp issue /etc/issue
cd /usr/src/koyuos
sudo git pull
sudo cp upgrade.sh /usr/bin/koyuos-upgrade
yay --noconfirm --needed
