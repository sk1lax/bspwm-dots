# Preview 
## Rounded
![Didnt loaded ):](https://github.com/sk1lax/bspwm-dots/blob/main/assets/screenshot2.png)
![Didnt loaded ):](https://github.com/sk1lax/bspwm-dots/blob/main/assets/rounded2.png)

## Squared
![Didnt loaded ):](https://github.com/sk1lax/bspwm-dots/blob/main/assets/squared1.png)
![Didnt loaded ):](https://github.com/sk1lax/bspwm-dots/blob/main/assets/squared2.png)

# Info
| | Software |
| ------------- | ------------- |
| Distro  | Cachy OS (Arch)  |
| Dock  | Plank  |
| Bar  | Polybar  |
| Launcher  | Rofi  |
| WM  | Bspwm  |
| FM  | yazi, Nemo  |
| Shell  | Fish (stock cachy os config)  |
| Term  | Alacritty  |
| Notification  | Dunst  |
| Compositor  | Picom  |


| | Theming |
| ------------- | ------------- |
| Font  |  Roboto Mono & Roboto Mono Nerd & Roboto  |
| Icons  | [Papirus](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme)  |
| ------------- | ------------- |
| Rounded GTK theme  | [Graphite](https://github.com/vinceliuice/Graphite-gtk-theme)  |
| Rounded Kvantum theme  | [Colors & blackness fork of Graphite-kde](https://github.com/KF-Art/Graphite-kvantum-colors)  |
| ------------- | ------------- |
| Squared GTK theme  | [Flat Remix Blue Darkest](https://github.com/daniruiz/flat-remix-gtk)  |
| Squared Kvantum theme  | [Materia](https://github.com/PapirusDevelopmentTeam/materia-kde)  |


> Took some inspiration & configs from [gh0stzk](https://github.com/gh0stzk/dotfiles),  [adi1090x](https://github.com/adi1090x/)
> 
# Setup
```
sudo pacman -S flameshot kvantum kvantum-qt5 qt5ct qt6ct picom bspwm sxhkd polybar rofi dunst brightnessctl feh imagemagick redshift plank nwg-look ttf-roboto nemo nemo-fileroller file-roller pavucontrol pamixer lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings vlc viewnior nvtop btop blueman yazi ueberzugpp chafa geany network-manager-applet micro 
```
## 
```
sudo pacman -S timeshift steam-native-runtime steam wine wine-mono lutris qbittorrent s-tui linux-headers dkms bc ntfs-3g memtester switcheroo-control tmux flatpak throttled
```
## Personal notes
```
paru -S envycontrol simplescreenrecorder rtl8821ce-dkms-git
```
```
sudo nano /etc/modprobe.d/nvidia.conf
```
```
options nvidia-drm modeset=1
options nvidia NVreg_UsePageAttributeTable=1 NVreg_InitializeSystemMemoryAllocations=0

options nvidia "NVreg_DynamicPowerManagement=0x02"
options nvidia "NVreg_PreserveVideoMemoryAllocations=1"
```
```
sudo nano /etc/environment
```
```
QT_STYLE_OVERRIDE=kvantum
QT_QTA_PLATFORMTHEME=qt6ct;qt5ct
XCURSOR_THEME=Bibata-Modern-Classic
```
```
sudo systemctl enable nvidia-powerd && sudo systemctl disable avahi-daemon && sudo systemctl enable throttled.service
```
```
sudo nano /etc/X11/xorg.conf.d/40-libinput.conf
```
```
 Section "InputClass"
  Identifier "libinput pointer catchall"
  MatchIsPointer "on"
  MatchDevicePath "/dev/input/event*"
  Driver "libinput"
  Option "AccelProfile" "flat"
 EndSection
```
## To do:
| | |
| ------------- | ------------- |
| ❌  | relocate wm related configs (maybe) |
| ❌  | add info links  |
| ❌  | setup info  |
| ❌  | emoji  |
| ❌  | gestures (maybe) |
| ❌  | clipboard  |
| ❌  | rewrite animations (not happening) |
| ❌  | fish theme/config  (maybe) |
| ❌  | Add more screenshots of my beatiful setup! |
| ❌  | Add keybinds info (maybe) |
| ❌  | Find better bluetooth & network methods |
| ❌  | Make this rice squared |
| ❌  | Write normal picom cfg |





