# AVR Binutils
GNU Binary tools for AVR microcontrollers

## Changes from official repo
- Changed error codes in libctf which don't exist under MinGW.
- Added support for ATmega324PB. Tested on [ATmega324PB Xplained Pro](https://www.microchip.com/DevelopmentTools/ProductDetails/PartNO/ATMEGA324PB-XPRO) board.
- Added support for ATmega4808. Tested on [AVR-IoT WG Development Board](https://www.microchip.com/DevelopmentTools/ProductDetails/AC164160)

## Supporting new stuff
This is a rough guide since it only documents changes already performed. So far new devices are still fairly compatibile with existing ones, but this will most likely not always be the case. It is not intendend to be an extensive porting guide.

### New devices
1. Regardless if the family is known or not, add the device to documentation in:
	- ./gas/doc/as.info
	- ./gas/doc/c-avr.texi
2. Add the device in ./gas/config/tc-avr.c, with its family and architecture.

Forked from latest sources at [GNU Binutils Project](https://www.gnu.org/software/binutils/).
