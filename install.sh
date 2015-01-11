#!/bin/bash

git submodule update --init

sudo apt-get install arduino

sudo cp 90-usbtinyisp.rules /etc/udev/rules.d/

if [ -e "/etc/avrdude.conf" ]
then
    sudo mv /etc/avrdude.conf /etc/avrdude.conf-bkp
fi

sudo cp avrdude.conf /etc/avrdude.conf

sudo service udev reload

mkdir -p ~/sketchbook/libraries
cp -r Adafruit_NeoPixel ~/sketchbook/libraries

echo -e '\n\nNow, you need to add your user in the dialout group:'
echo 'sudo usermod -a -G dialout <USER>'
echo 'and reboot our computer or do su <USER> and compile from that terminal.'
