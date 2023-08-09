#!/bin/sh

sudo sed -i '/#hdmi_drive=2/a\
hdmi_drive=2' /boot/config.txt

sudo sed -i '/#config_hdmi_boost=4/a\
config_hdmi_boost=4' /boot/config.txt

sudo tee -a /boot/config.txt > /dev/null <<EOT
display_rotate=3
display_lcd_rotate=3
display_hdmi_rotate=3
EOT

sudo sed -i '/MatchIsTouchscreen "on"/a\
Option "TransformationMatrix" "0 -1 1 1 0 0 0 0 1"' /usr/share/X11/xorg.conf.d/40-libinput.conf