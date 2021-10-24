cp .bashrc ~
cp .bg.jpg ~
cp -r .config ~
cp .gtkrc-2.0 ~
sudo cp i3lock-koyu /usr/bin/i3lock-koyu
sudo cp spotify.sh /usr/bin/spotify-client
sudo chmod +x /usr/bin/i3lock-koyu
sudo cp wakelock.service /lib/systemd/system/wakelock.service
sudo mkdir -p /usr/src/koyuos/
sudo git clone https://github.com/koyuspace/koyuos /usr/src/koyuos/
sudo cp issue /etc/issue
sudo cp upgrade.sh /usr/bin/koyuos-upgrade
sudo chmod +x /usr/bin/koyuos-upgrade
sudo systemctl enable wakelock
sudo systemctl enable ly
sudo systemctl enable bluetooth
sudo systemctl enable haveged
sudo systemctl enable --now ufw
sudo ufw enable > /dev/null
sudo cp *-release /etc
xdg-user-dirs-update
