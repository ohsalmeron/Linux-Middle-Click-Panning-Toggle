#!/bin/bash

# Detect the mouse device with "pointer" capability
DEVICE_NAME=$(xinput list --name-only | grep -i 'pointer')

# Check if the script is called with an argument
if [ $# -eq 0 ]; then
  echo "Usage: $0 [on|off]"
  exit 1
fi

# Enable or disable middle-click panning based on the argument
if [ "$1" = "on" ]; then
  # Enable middle-click panning
  xinput set-prop "$DEVICE_NAME" "libinput Scroll Method Enabled" 0, 0, 1
  xinput set-prop "$DEVICE_NAME" "libinput Button Scrolling Button" 2
  echo "Middle-click panning is now enabled for $DEVICE_NAME."
elif [ "$1" = "off" ]; then
  # Disable middle-click panning
  xinput set-prop "$DEVICE_NAME" "libinput Scroll Method Enabled" 0, 0, 0
  xinput set-prop "$DEVICE_NAME" "libinput Button Scrolling Button" 0
  echo "Middle-click panning is now disabled for $DEVICE_NAME."
else
  # Display usage instructions if an invalid argument is provided
  echo "Usage: $0 [on|off]"
  exit 1
fi
