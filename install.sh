#!/bin/bash

echo "fetching submodules"
git submodule update --init > /dev/null

echo "Installing Arduino IDE"
sudo apt-get install arduino

echo "Copying udev rules"
sudo cp 90-usbtinyisp.rules /etc/udev/rules.d/
sudo service udev reload

echo "update avrdude.conf"
if [ -e "/etc/avrdude.conf" ]
then
    sudo mv /etc/avrdude.conf /etc/avrdude.conf-bkp
fi
sudo cp avrdude.conf /etc/avrdude.conf

echo "Installing Adafruit_NeoPixel library"
mkdir -p ~/sketchbook/libraries
cp -r Adafruit_NeoPixel ~/sketchbook/libraries

echo "Putting pins_arduino.h in place"
wget http://www.adafruit.com/downloads/trinkethardwaresupport.zip
unzip trinkethardwaresupport.zip
sudo cp hardware/attiny/variants/tiny8/pins_arduino.h /usr/share/arduino/hardware/arduino//cores/arduino/
rm -rf hardware trinkethardwaresupport.zip

echo -e '\n\nNow, you need to add your user in the dialout group:'
echo 'sudo usermod -a -G dialout <USER>'
echo 'and reboot our computer or do su <USER> and compile from that terminal.'
echo -e '\n\n In case you want upgrade your arduino IDE visit: https://github.com/SteveClement/fearMe#arduino-upgrade'
