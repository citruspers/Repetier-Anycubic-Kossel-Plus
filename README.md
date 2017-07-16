# Repetier-Anycubic-Kossel-Plus
Repetier 0.92.9 for the Anycubic Kossel Plus, the version with a 240mm heated bed and 240mm glass plate.
Autoleveling is also working, refer to the Repetier guide for instructions: https://www.repetier.com/documentation/repetier-firmware/z-probing/

I'm using this printable bracket: https://www.thingiverse.com/thing:1976680
And a generic endstop wired into the z-minus endstop header on the trigorilla board.

Based on the excellent work of:

The Repetier team: https://www.repetier.com/documentation/repetier-firmware/

Ruevs's custom repetier firmware for the non-plus Anycubic Kossel: https://github.com/ruevs/repetier_anycubic_kossel

Currently testing on my own Anycubic Kossel Plus, but, as always, use at your own risk. 

!! Don't forget to manually set "#define Z_MAX_LENGTH" to a value that's appropriate for your printer. !!
!! Don't forget to increment EEPROM_MODE when upgrading from a previous installation/configuration !!

