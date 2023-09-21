# 🔮 dotfiles
These are my dotfiles for using i3 on top of XFCE and Xubuntu. i3 is known to be good friends with XFCE, this [article](https://feeblenerd.blogspot.com/2015/11/pretty-i3-with-xfce.html) is the main inspiration for this setup: 
## 0. Backup previous installation
- Backup entire /home dir or use an exclusive /home partition
## 1. Install packages
These are the packages I have installed on my system. To install them run:
```bash
for i in $(cat pkglist.txt | awk '{print $1}'); do sudo apt install -y $i; done
```
## 2. i3 + XFCE
### xfce4-panel
- For the xfce4-panel to switch between i3 workspaces install this [xfce4-i3-workspaces-plugin](https://github.com/denesb/xfce4-i3-workspaces-plugin), but first install [i3ipc-glib](https://github.com/altdesktop/i3ipc-glib). Both of these aren't available for Ubuntu based systems, so we build them from source.
- Import backup from xfce4-panel/*-panel-profile.tar.bz2
- Copy xfce4-panel/panel into ~/.config/xfce4/
## 3. Rofi
- Copy rofi themes into ~/.config/rofi/themes. Themes from [here](https://github.com/newmanls/rofi-themes-collection)
- Select theme in rofi with `rofi-theme-selector`
## 4. GTK Theme
- Clone [matcha](https://github.com/vinceliuice/Matcha-gtk-theme)
- Run `./install.sh -d /home/pablo/.themes
## 5. Install Icon Theme
- Clone [qogir](https://github.com/vinceliuice/Qogir-icon-theme/tree/master)
- Install with `./install.sh -d /home/pablo/.icons`
## 5. Restore .bash_history
- Copy .bash_history from backup
