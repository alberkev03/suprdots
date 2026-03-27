#! /usr/bin/env bash

options="Region\nWindow\nAll\nExit"
selected=$(echo -e "$options" | rofi -dmenu -p "Screenshot Mode:" -theme "./screenshot.rasi")
case "$selected" in
"Region")
  hyprshot -m region --clipboard-only
  # Command to run for Option A
  ;;
"Window")
  hyprshot -m window --clipboard-only
  # Command to run for Option B
  ;;
"Workspace")
  hyprshot -m output --clipboard-only
  # Command to run for Option B
  ;;
"Exit")
  exit 0
  ;;
esac
