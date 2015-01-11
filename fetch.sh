#!/bin/bash


wget http://www.adafruit.com/downloads/trinkethardwaresupport.zip

unzip trinkethardwaresupport.zip

sudo cp hardware/attiny/variants/tiny8/pins_arduino.h /usr/share/arduino/hardware/arduino//cores/arduino/

rm -rf hardware trinkethardwaresupport.zip

