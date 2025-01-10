#! /bin/sh

# I didnt manage to make plank work properly with bspwm as dock, so i just slapped it on top of my polybar lol

bspc subscribe node_state | while read -r _ _ _ _ state flag; do
  if [[ "$state" != fullscreen ]]; then continue; fi
  if [[ "$flag" == on ]];then
    xdo lower -N Plank
  else
    xdo raise -N Plank
    xdotool search --name Plank windowraise &
  fi
done &
