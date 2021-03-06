# koyuOS

## x86_64 Installation instructions

Install a fully working vanilla Arch Linux and do the steps below to get koyuOS running on your machine.

### Dependencies

Install [yay](https://aur.archlinux.org/packages/yay) and run `yay -S --needed $(cat deps)` in the cloned repository. This will install polybar and other fancy stuff needed for it to work.

### Installation

If you have installed all dependencies you can continue running the installation script by executing `./install.sh`. If you recently installed koyuOS you have to rebuild your initramfs by running `mkinitcpio -p linux`. Replace `linux` with your kernel of choice. Reboot your machine and you are now booting into koyuOS.

#### Bootloader recommendation

To properly run koyuOS we recommend using Grub for BIOS and efistubmgr for UEFI. Both make it easy to get koyuOS booting quickly and manage multiple kernels efficiently.

#### Spotify

To get Spotify create a config file at `/etc/spotifyd-config` with the following line:

`-u yourusername -p password`

Please note that your Spotify username is your username found on your account settings at spotify.com. Your password can't contain hashtags, because everything after a hashtag would count as comment and is therefore invalid.

#### YouTube

koyuOS already includes a YouTube client called `yt`. This allows you to watch YouTube without having to load up the bloated YouTube.com site and save some CPU cycles for more important stuff like [compiling koyu.space](https://wiki.koyu.space/docs/dev/) or playing [TF2](https://store.steampowered.com/app/440/Team_Fortress_2/).

#### Anime

koyuOS includes a way to watch anime called `ani-cli`. I can recommend watching some Lain ;)

### First boot

You may want to take a look at the `.config/i3/config` file and change your default browser, media player and keyboard layout. If you want to tweak the polybar (perhaps your network adapters are named differently or your device doesn't have a battery) you can do so by checking out the `.config/polybar/config` file. If you got the terminal open make sure to hide the menu bar, set your theme to Solarized (dark) and change the background color to `#223` to make it not solarized.

### Poweroff/Reboot

Add yourself to the power and video groups and add the following lines to the `/etc/sudoers` file:

```
%power ALL=(ALL) NOPASSWD: /sbin/poweroff, /sbin/reboot, /sbin/shutdown
```

## Raspberry Pi

Just flash the SD card with the image you extracted and resize the root partition with a tool like GParted. The username and password for the user account is `alarm` and the username and password for root is `root`. Please note that extracting the 7z archive may take up to an hour, because the resulting image is a little over 6GB uncompressed. Also make sure you have enough space to store the image on your computer.

**[Download](https://drive.google.com/file/d/1Y09HJmWaHH-2z8schwnTcdut0BL4NVad/view?usp=sharing)**

**Note: The Raspberry Pi image is likely to be outdated. We'll update the image as soon as possible.**

## Upgrading

To fully upgrade koyuOS run `koyuos-upgrade`. This will ensure not only all packages are going to be upgraded, but also all files for koyuOS itself.

## Screenshot

This is how koyuOS looks like when fully installed

![Screenshot of koyuOS](https://i.imgur.com/Ie1PFWv.jpg)
