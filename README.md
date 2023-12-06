# Middle-Click Panning Toggle Script for Linux

Hey there, Linux enthusiasts and mouse middle-click aficionados! Are you missing that smooth, handy middle-click scrolling you've grown to love on Mac or Windows? Fret not! Whether you're using XFCE, GNOME, KDE, or any Linux desktop environment, we've got just the tool for you. 

Introducing the ultimate 'Middle-Click Panning Toggle Script' – your new best friend in the world of Linux mouse customization! If you're like me, craving that sweet, sweet middle-click panning action, your quest ends here. 

### This script allows you to toggle middle-click panning for your mouse in Linux using the `xinput` command. 
Here's how to use it:

## Prerequisites

- Ensure you have the `xinput` utility installed. It's available on most Linux distributions.

## Usage

1. **Clone the Repository:**

   Clone this GitHub repository to your local machine or download the `toggle.sh` script.

2. **Find Your Mouse Device:**

Look for a device with "Mouse" in its name or a similar identifier. Note down the name of your mouse device.

## Edit the Script:

Open the toggle.sh script in a text editor and replace "YourDeviceName" with the exact name of your mouse device, as found in step 2.

### Make the Script Executable:

Make the script executable with the following command:

```bash
chmod +x toggle.sh
```
Toggle Middle-Click Panning:

## Run the script

### Use with the following command to enable middle-click panning:

```bash
./toggle.sh on
```
### To disable middle-click panning, use:

```bash
./toggle.sh off
```
### Adjust Middle-Click Panning Speed (Optional):

To adjust the speed of middle-click panning, you can use the xinput command with the libinput Scrolling Speed property. For example, to increase the speed:

```bash
xinput set-prop "YourDeviceName" "libinput Scrolling Speed" 1
```

To decrease the speed:

```bash
xinput set-prop "YourDeviceName" "libinput Scrolling Speed" -1
```

Experiment with different values (positive or negative) until you find a scrolling speed that suits your preference.

You can also modify the "libinput Scrolling Speed" in the script if you prefer

## Confirmation:

The script will confirm that middle-click panning has been enabled or disabled for your mouse device.

That's it! You can now toggle middle-click panning and adjust its speed on your Linux system with ease.

Note
If you encounter any issues with device detection or functionality, please ensure that your mouse and system configuration are compatible with the xinput commands used in the script.
