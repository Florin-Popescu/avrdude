# AVRDUDE
Programmer for AVR microcontrollers

## Changes from official repo
- Added support for ATmega324PB. Tested on [ATmega324PB Xplained Pro](https://www.microchip.com/DevelopmentTools/ProductDetails/PartNO/ATMEGA324PB-XPRO) board.
- Added support for UPDI over Microchip nEDBG. Tested on [AVR-IoT WG Development Board](https://www.microchip.com/DevelopmentTools/ProductDetails/AC164160)

## Supporting new stuff
This is a rough guide since it only documents changes already performed. So far new devices are still fairly compatibile with existing ones, but this will most likely not always be the case. It is not intendend to be an extensive porting guide.

### New devices
1. Add the device to ./avrdude.conf.in. It can be linked to a parent device, otherwise it needs to be recreated from scratch.
2. Add the debugger to ./avrdude.conf.in. Based on connection type additional fields may need to be filled.

Forked from latest sources at [AVRDUDE Project](http://savannah.nongnu.org/projects/avrdude).
