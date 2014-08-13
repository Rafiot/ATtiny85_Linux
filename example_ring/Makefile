BOARD_TAG    = usbtiny
MCU = attiny85
F_CPU = 8000000
AVRDUDE_ARD_PROGRAMMER = usbtiny

ARDUINO_LIBS = Adafruit_NeoPixel

include /home/raphael/gits/Arduino-Makefile/Arduino.mk

flash:
	avrdude -c usbtiny -p attiny85 -U flash:w:$(TARGET_HEX)

