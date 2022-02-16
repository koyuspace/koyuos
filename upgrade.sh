#!/bin/bash
cd /usr/src/koyuos
sudo cp issue /etc/issue
sudo cp lsb-release /etc/lsb-release
sudo git pull
sudo cp upgrade.sh /usr/bin/koyuos-upgrade
yay -Syu --noconfirm --needed
