#!/bin/bash
# ▄▄▄ ▄▄▄  ▗▞▀▀▘▄     ▄   ▄ ▗▞▀▜▌█ █ ▄▄▄▄  ▗▞▀▜▌▄▄▄▄  ▗▞▀▚▖ ▄▄▄
#█   █   █ ▐▌   ▄     █ ▄ █ ▝▚▄▟▌█ █ █   █ ▝▚▄▟▌█   █ ▐▛▀▀▘█
#█   ▀▄▄▄▀ ▐▛▀▘ █     █▄█▄█      █ █ █▄▄▄▀      █▄▄▄▀ ▝▚▄▄▖█
#          ▐▌   █                █ █ █          █
#                                    ▀          ▀
#
#	originally written by: gh0stzk - https://github.com/gh0stzk/dotfiles
#	rewritten for hyprland by :	 develcooking - https://github.com/develcooking/hyprland-dotfiles
#	rewritten for myself by : skilax - https://github.com/sk1lax/bspwm-dots
# 				i had rofi launcher theme with picture and wanted to sync it with my wallpapers, also heavy images loads long in rofi, so this script compresses setted wallpaper. Now i dont use it, so now this is totally useless ig


# Set some variables
wall_dir="${HOME}/Pictures/Sklxpapers"
cacheDir="${HOME}/Pictures/.cache"
rofi_command="rofi -x11 -dmenu -theme ${HOME}/.config/bspwm/rofi/wallpaper_selector.rasi -theme-str ${rofi_override}"

# Create cache dir if not exists
if [ ! -d "${cacheDir}" ] ; then
        mkdir -p "${cacheDir}"
    fi


monitor_res=$(($(xdpyinfo | awk '/dimensions/{print $2}' | cut -d 'x' -f1) * 14 / $(xdpyinfo | awk '/resolution/{print $2}' | cut -d 'x' -f1)))
rofi_override="element-icon{size:${monitor_res}px;}"

# Convert images in directory and save to cache dir
for imagen in "$wall_dir"/*.{jpg,jpeg,png,webp}; do
	if [ -f "$imagen" ]; then
		nombre_archivo=$(basename "$imagen")
			if [ ! -f "${cacheDir}/${nombre_archivo}" ] ; then
				convert -strip "$imagen" -thumbnail 400x400^ -gravity center -extent 400x400 "${cacheDir}/${nombre_archivo}"
			fi
    fi
done

# Select a picture with rofi
wall_selection=$(find "${wall_dir}" -type f \( -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.png" -o -iname "*.webp" \) -exec basename {} \; | sort | while read -r A ; do  echo -en "$A\x00icon\x1f""${cacheDir}"/"$A\n" ; done | $rofi_command)
# Set the wallpaper
[[ -n "$wall_selection" ]] && feh --no-fehbg --bg-fill "${wall_dir}/${wall_selection}" && cp "${wall_dir}/${wall_selection}" $HOME/Pictures/bg.png && rm $HOME/.config/bspwm/rofi/bg.jpg && convert "${wall_dir}/${wall_selection}" -sampling-factor 2x2 scale 20% -size 24% -quality 25 $HOME/.config/bspwm/rofi/bg.jpg

exit 0
