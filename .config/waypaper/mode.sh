#! /usr/bin/env bash

$wallpaper

pkill waypaper
options="Light\nDark"
selected=$(echo -e "$options" | rofi -dmenu -p "Select your theme" -theme "/home/kevin/.config/rofi/theme.rasi")
case "$selected" in
"Light")
  matugen image --source-color-index 0 $wallpaper -m light && cp $wallpaper ~/.config/hypr/img.png && notify-send "Theme Applied" && pkill waybar && waybar
  ;;
"Dark")
  matugen image --source-color-index 0 $wallpaper && cp $wallpaper ~/.config/hypr/img.png && notify-send "Theme Applied" && pkill waybar && waybar
  ;;
esac
