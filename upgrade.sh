#!/bin/bash
cd /usr/src/koyuos
sudo cp issue /etc/issue
sudo git pull
sudo cp upgrade.sh /usr/bin/koyuos-upgrade
yay -Syu --noconfirm --needed
