#!/bin/bash
#▗▖    ▄▄▄ ▄    ▐▌    ■  ▄▄▄▄  ▗▞▀▚▖ ▄▄▄  ▄▄▄      ▄▄▄ ▗▞▀▘ ▄▄▄ ▄ ▄▄▄▄     ■
#▐▌   █    ▄    ▐▌ ▗▄▟▙▄▖█   █ ▐▛▀▀▘▀▄▄  ▀▄▄      ▀▄▄  ▝▚▄▖█    ▄ █   █ ▗▄▟▙▄▖
#▐▛▀▚▖█    █    ▐▛▀▚▖▐▌  █   █ ▝▚▄▄▖▄▄▄▀ ▄▄▄▀     ▄▄▄▀     █    █ █▄▄▄▀   ▐▌
#▐▙▄▞▘     █ ▗▄▖▐▌ ▐▌▐▌                                         █ █       ▐▌
#           ▐▌ ▐▌    ▐▌                                           ▀       ▐▌
#            ▝▀▜▌
#           ▐▙▄▞▘			https://github.com/sk1lax/bspwm-dots
# 								Script to manage brightness
# Get br
get_brightness() {
	brightness=$(echo $(brightnessctl info | grep "%" | cut -d ' ' -f 4))
	echo "$brightness"
}

# Increase br
up_brightness() {
	brightnessctl s 5+% && dunstify -u low --replace=69 -i /usr/share/icons/Papirus/22x22/panel/brightness-high-symbolic.svg "Brightness : $(get_brightness)"
}

# Decrease br
down_brightness() {
	brightnessctl s 5-% && dunstify -u low --replace=69 -i /usr/share/icons/Papirus/22x22/panel/brightness-symbolic.svg "Brightness : $(get_brightness)"
}


# Execute accordingly
if [[ "$1" == "--get" ]]; then
	get_brightness
elif [[ "$1" == "--up" ]]; then
	up_brightness
elif [[ "$1" == "--down" ]]; then
    down_brightness
else
	get_brightness
fi
