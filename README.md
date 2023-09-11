# 🔮 dotfiles
These are my dotfiles for using i3 on top of XFCE and Xubuntu. i3 is known to be good friends with XFCE, this (article)[https://feeblenerd.blogspot.com/2015/11/pretty-i3-with-xfce.html] is the main inspiration for this setup: 

## 1. Install packages
These are the packages I have installed on my system. To install them run:
```bash
sudo apt-get install $(cat pkglist.txt | awk '{print $1}')
```
## 2. i3 + XFCE
### xfce4-panel
- For the xfce4-panel to switch between i3 workspaces install this [xfce4-i3-workspaces-plugin](https://github.com/denesb/xfce4-i3-workspaces-plugin), but first install [i3ipc-glib](https://github.com/altdesktop/i3ipc-glib). Both of these aren't available for Ubuntu based systems, so we build them from source.
- Import backup from xfce4-panel/*-panel-profile.tar.bz2
- Copy xfce4-panel/panel into ~/.config/xfce4/

## Rofi
- Copy rofi themes into ~/.config/rofi/themes. Themes from [here](https://github.com/newmanls/rofi-themes-collection)
- Select theme in rofi with `rofi-theme-selector`
