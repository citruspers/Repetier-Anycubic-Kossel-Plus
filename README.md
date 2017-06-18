# Repetier-Anycubic-Kossel-Plus
Repetier 0.92.9 for the Anycubic Kossel Plus, the version with a 240mm heated bed and 240mm glass plate.

Based on the excellent work of:

The Repetier team: https://www.repetier.com/documentation/repetier-firmware/
Ruevs's custom repetier firmware for the non-plus Anycubic Kossel: https://github.com/ruevs/repetier_anycubic_kossel

Currently tested on my own Anycubic Kossel Plus, but, as always, use at your own risk. 
Also, don't forget to manually set "#define Z_MAX_LENGTH" to a value that's appropriate for your printer. The default value of 280 is unlikely to cause a bed crash (my Z-height is somewhere around 288), but of course you'll still need to calibrate it just like with the original firmware.

TODO: Autoleveling with a spare endstop switch.
