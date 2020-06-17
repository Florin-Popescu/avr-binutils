# AVR Binutils
GNU Binary tools for AVR microcontrollers

## Changes from official repo
- Changed error codes in libctf which don't exist under MinGW.
- Added support for ATmega324PB
- Added support for ATmega4808

## Supporting new stuff
This is a rough guide since it only documents changes already performed. So far new devices are still fairly compatibile with existing ones, but this will most likely not always be the case. It is not intendend to be an extensive porting guide.

### New devices
If the device family is not currently supported:
1. Add a define for it in ./include/opcode/avr.h, combining the instruction set options available in the header which are relevant for the device. See its datasheet for program memory size and availability of instructions.
2. It will be necessary to process it in function `compatible` in ./bfd/cpu-avr.c. Not clear exactly how to do this with a completely new family, but rule of thumb seems to be either make it incompatible with anything else, or set the larger number family as more compatible.
3. Add a case in the switch in `bfd_elf_avr_final_write_processing` in ./bfd/elf32-avr.c.
4. Add a case in the switch in `decode_AVR_machine_flags` in ./binutils/readelf.c.
5. Add the family in ./ld/Makefile.am & ./ld/Makefile.in similar to other families.
6. Add the family in the documentation in ./ld/po/BLD-POTFILES.in.
7. Add a define for it with just a number matching the family name in:
	- ./bfd/bfd-in2.h
	- ./bfd/archures.c
	- ./bif/doc/bfd.info
	- ./gas/config/tc-avr.c
	- ./include/elf/avr.h

8. Regardless if the family is known or not, add the device to to documentation in:
	- ./gas/doc/as.info
	- ./gas/doc/c-avr.texi
	- ./gas/po/gas.pot
9. Add the device in ./gas/config/tc-avr.c, with its family and architecture.

Forked from latest sources at [GNU Binutils Project](https://www.gnu.org/software/binutils/).
