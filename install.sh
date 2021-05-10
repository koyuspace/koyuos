cp .bashrc ~
cp .bg.png ~
cp -r .config ~
sudo cp i3lock-koyu /usr/bin/i3lock-koyu
sudo cp spotify.sh /usr/bin/spotify-client
sudo chmod +x /usr/bin/i3lock-koyu
sudo cp wakelock.service /lib/systemd/system/wakelock.service
sudo systemctl enable wakelock
sudo systemctl enable ly
sudo systemctl enable bluetooth
sudo systemctl enable haveged
sudo systemctl enable --now ufw
sudo ufw enable > /dev/null
sudo cp *-release /etc
