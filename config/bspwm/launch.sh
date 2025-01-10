#! /bin/bash
#█ ▗▞▀▜▌█  ▐▌▄▄▄▄  ▗▞▀▘▐▌        ▄▄▄ ▗▞▀▘ ▄▄▄ ▄ ▄▄▄▄     ■
#█ ▝▚▄▟▌▀▄▄▞▘█   █ ▝▚▄▖▐▌       ▀▄▄  ▝▚▄▖█    ▄ █   █ ▗▄▟▙▄▖
#█           █   █     ▐▛▀▚▖    ▄▄▄▀     █    █ █▄▄▄▀   ▐▌
#█                     ▐▌ ▐▌                  █ █       ▐▌
#														▐▌
#						https://github.com/sk1lax/bspwm-dots

pkill redshift-gtk && sleep 1
while pgrep -u $UID -x redshift-gtk >/dev/null; do sleep 1; done
redshift-gtk &
echo "Redshift загрузился..."
pkill polybar && sleep 1
#while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done
polybar --config=~/.config/bspwm/polybar/config.ini
echo "Polybar загрузился..."

#xdotool search --name Plank windowraise &
