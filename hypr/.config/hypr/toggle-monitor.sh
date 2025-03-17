#!/bin/bash

# Get the laptop display name
LAPTOP_DISPLAY=$(hyprctl monitors | grep "^Monitor" | head -n1 | awk '{print $2}')

# Check if display is currently enabled
if hyprctl monitors | grep -A 15 "^Monitor $LAPTOP_DISPLAY" | grep -q "enabled: yes"; then
    # Display is on, turn it off
    hyprctl keyword monitor "$LAPTOP_DISPLAY,disable"
else
    # Display is off, turn it on
    hyprctl keyword monitor "$LAPTOP_DISPLAY,preferred,auto,1"
fi
