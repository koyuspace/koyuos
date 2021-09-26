#!/bin/bash
cd /usr/src/koyuos
sudo git pull
yay -Syyuu $(cat deps) --needed
yay -Syyuu --noconfirm --needed
