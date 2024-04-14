#!/bin/bash
# Note: This does not modify the hardware brightness (on the display) but instead modifies
# it at software level.
brightness=$(xrandr --verbose --current --props | grep 'Brightness:' | cut -d ' ' -f 2)
step="${1:-0.2}"
new_brightness=$(echo "scale=2;$brightness + $step" | bc -l)
xrandr --output HDMI-1 --brightness $new_brightness
