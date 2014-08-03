#!/bin/bash


wget http://learn.adafruit.com/system/assets/assets/000/010/777/original/trinkethardwaresupport.zip?1378321062 -O trinkethardwaresupport.zip

unzip trinkethardwaresupport.zip

cp hardware/attiny/variants/tiny8/pins_arduino.h .

cp pins_arduino.h example_ring/
cp pins_arduino.h example_blink/

rm -rf hardware trinkethardwaresupport.zip

