#!/bin/bash

make clean

make

echo -e '\n\n'
read -p 'Connect your device and hit enter'
make burn_bootloader
