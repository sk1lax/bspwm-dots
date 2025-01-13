# Preview 
![Didnt loaded ):](https://github.com/sk1lax/bspwm-dots/blob/main/assets/screenshot2.png)

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
| GTK theme  | [Graphite](https://github.com/vinceliuice/Graphite-gtk-theme)  |
|  Kvantum theme  | [Colors & blackness fork of Graphite-kde](https://github.com/KF-Art/Graphite-kvantum-colors)  |
| Icons  | [Papirus](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme)  |

> Took some inspiration & configs from [gh0stzk](https://github.com/gh0stzk/dotfiles),  [adi1090x](https://github.com/adi1090x/)
> 
## Notes
```
sudo pacman -S flameshot kvantum kvantum-qt5 qt5ct qt6ct picom bspwm sxhkd polybar rofi nitrogen brightnessctl feh imagemagick redshift plank nwg-look ttf-roboto nemo nemo-fileroller file-roller pavucontrol pamixer lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings vlc viewnior
```
```
paru -S envycontrol simplescreenrecorder rtl8821ce
```
```
sudo pacman -S geany vlc flatpak timeshift
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
git clone https://github.com/vinceliuice/Graphite-gtk-theme.git
cd Graphite-gtk-theme/
./install.sh --tweaks black normal -t blue
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
| ❌  | rewrite animations  |
| ❌  | fish theme/config  (maybe) |
| ❌  | Add more screenshots of my beatiful setup! |
| ❌  | Add keybinds info (maybe) |




