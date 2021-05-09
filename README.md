# koyuOS

## Dependencies

Install [paru](https://aur.archlinux.org/packages/paru) and run `paru -S --needed $(cat deps)` in the cloned repository. This will install polybar and other fancy stuff needed for it to work.

## Installation

If you have installed all dependencies you can continue running the installation script by executing `./install.sh`. If you recently installed koyuOS you have to rebuild your initramfs by running `mkinitcpio -p linux`. Replace `linux` with your kernel of choice. Reboot your machine and you are now booting into koyuOS.

## First boot

You may want to take a look at the `.config/i3/config` file and change your default browser, media player and keyboard layout. If you want to tweak the polybar (perhaps your network adapters are named differently or your device doesn't have a battery) you can do so by checking out the `.config/polybar/config` file.

## Poweroff/Reboot

Add yourself to the power and video groups and add the following lines to the `/etc/sudoers` file:

```
%power ALL=(ALL) NOPASSWD: /sbin/poweroff, /sbin/reboot, /sbin/shutdown
%video ALL=(ALL) NOPASSWD: /bin/light
```
