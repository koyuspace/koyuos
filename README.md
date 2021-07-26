# koyuOS

## x86_64 Installation instructions

Install a fully working vanilla Arch Linux and do the steps below to get koyuOS running on your machine.

### Dependencies

Install [paru](https://aur.archlinux.org/packages/paru) and run `paru -S --needed $(cat deps)` in the cloned repository. This will install polybar and other fancy stuff needed for it to work.

### Installation

If you have installed all dependencies you can continue running the installation script by executing `./install.sh`. If you recently installed koyuOS you have to rebuild your initramfs by running `mkinitcpio -p linux`. Replace `linux` with your kernel of choice. Reboot your machine and you are now booting into koyuOS.

#### Spotify

To get Spotify create a config file at `/etc/spotifyd-config` with the following line:

`-u yourusername -p password`

Please note that your Spotify username is your username found on your account settings at spotify.com. Your password can't contain hashtags, because everything after a hashtag would count as comment and is therefore invalid.

#### YouTube

koyuOS already includes a YouTube client called `mps-youtube`. This allows you to watch YouTube without having to load up the bloated YouTube.com site and save some CPU cycles for more important stuff like [compiling koyu.space](https://docs.joinmastodon.org/dev/setup/) or playing [TF2](https://store.steampowered.com/app/440/Team_Fortress_2/).

### First boot

You may want to take a look at the `.config/i3/config` file and change your default browser, media player and keyboard layout. If you want to tweak the polybar (perhaps your network adapters are named differently or your device doesn't have a battery) you can do so by checking out the `.config/polybar/config` file. If you got the terminal open make sure to hide the menu bar, set your theme to Solarized (dark) and change the background color to `#223` to make it not solarized.

### Poweroff/Reboot

Add yourself to the power and video groups and add the following lines to the `/etc/sudoers` file:

```
%power ALL=(ALL) NOPASSWD: /sbin/poweroff, /sbin/reboot, /sbin/shutdown
```

## Raspberry Pi

Just flash the SD card with the image and resize it with a tool like GParted. The username and password for the user account is `alarm` and the username and password for root is `root`.

**Download:** *Images coming soon!*

## Screenshot

This is how koyuOS looks like when fully installed

![Screenshot of koyuOS](https://i.imgur.com/Ie1PFWv.jpg)
