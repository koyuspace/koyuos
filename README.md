# koyu's dotfiles

## Dependencies

Install [paru](https://aur.archlinux.org/packages/paru) and run `paru -S --needed $(cat deps)` in the cloned repository. This will install polybar and other fancy stuff needed for it to work.

## Poweroff/Reboot

Add yourself to the power and video groups and add the following lines to the `/etc/sudoers` file:

```
%power ALL=(ALL) NOPASSWD: /sbin/poweroff, /sbin/reboot, /sbin/shutdown
%video ALL=(ALL) NOPASSWD: /bin/light
```
