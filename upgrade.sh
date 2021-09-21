#!/bin/bash
cd /usr/src/koyuos
sudo git pull
sudo chmod +x install.sh
./install.sh
yay -Syyuu --noconfirm --needed
