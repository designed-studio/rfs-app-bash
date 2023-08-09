#!/bin/sh

git clone https://github.com/designed-studio/rfs-pi-touchscreen.git

cd rfs-pi-touchscreen

unzip -q rfs-build.zip

unzip -q update.zip -d rfs-build/

cd rfs-build

sudo chmod 777 install.sh

sudo ./install.sh