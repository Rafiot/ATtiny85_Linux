#!/bin/bash


wget http://www.adafruit.com/downloads/trinkethardwaresupport.zip

unzip trinkethardwaresupport.zip

cp hardware/attiny/variants/tiny8/pins_arduino.h .

mv pins_arduino.h example_ring/
mv pins_arduino.h example_blink/

rm -rf hardware trinkethardwaresupport.zip

