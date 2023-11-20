#!/bin/bash

# Check if xrandr is installed
if ! command -v xrandr &> /dev/null; then
    echo "xrandr is not installed. Please install it to run this script."
    exit 1
fi

# Run xrandr and grep for connected monitors
if xrandr | grep -q -E "HDMI.*disconnected"; then
    ~/.config/i3/restore_panel_to_laptop.sh
else
    ~/.config/i3/restore_panel_to_monitor.sh
fi
