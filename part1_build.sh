#!/bin/bash
git clone https://github.com/raspberrypi/tools
git clone https://github.com/akhtyamovpavel/PatternsCollection
export PATH="./tools/arm-bcm2708/arm-rpi-4.9.3-linux-gnueabihf/bin/:$PATH"
cmake -B./build -H./PatternsCollection -DON_PI=ON -DSYSROOT="../tools/arm-bcm2708/arm-rpi-4.9.3-linux-gnueabihf/arm-linux-gnueabihf/sysroot/"
cd build
make

