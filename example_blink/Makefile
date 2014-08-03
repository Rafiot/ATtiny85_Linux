BOARD_TAG    = usbtiny
MCU = attiny85
F_CPU = 8000000
AVRDUDE_ARD_PROGRAMMER = usbtiny
AVRDUDE_ISP_BURN_BOOTLOADER = -D
#ARDUINO_LIBS =

include /usr/share/arduino/Arduino.mk

flash:
	avrdude -c usbtiny -p attiny85 -D -U flash:w:$(TARGET_HEX)
