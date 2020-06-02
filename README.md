# koyu's dotfiles

## Dependencies

Install [yay](https://aur.archlinux.org/packages/yay) and run `yay -S --needed $(cat deps)` in the cloned repository. This will install polybar and other fancy shit needed for it to work. Please make sure you have the spaceship prompt installed as well.

## Poweroff/Reboot

Add yourself to the power group and add the following line to the `/etc/sudoers` file:
```
%power ALL=(ALL) NOPASSWD: /sbin/poweroff, /sbin/reboot, /sbin/shutdown
```
