# Repetier-Anycubic-Kossel-Plus
Repetier 0.92.9 for the Anycubic Kossel Plus (the version with a 240mm heated bed and glass plate, no built-in autolevel)
Contains working autolevel AND bed correction as described in: https://www.repetier.com/documentation/repetier-firmware/z-probing/


||  My setup:  ||

I'm using a film-based sensor that fits around the nozzle (to counter false readings due to effector tilt): https://www.aliexpress.com/item/LERDGE-3D-Printer-Auto-Leveling-Sensor-with-Auto-Leveling-Feature-3D-Touch-Module-Film-Pressure-Probe/32819122270.html

It's also worth noting that my printer is currently running a V6 hotend hanging below a printed effector, so the configured Z heights (and probe offsets) may not be appropriate for your printer.


||  Getting Started  ||

I heavily recommend reading the Repetier Z-probe manual listed above, but here's a quick step-by-step.

Modify the Z_MAX_LENGTH value in configuration.h to a value appropriate for your printer (this will be overwritten after an autolevel)

Don't forget to increment EEPROM_MODE when upgrading from a previous installation/configuration

Upload the firmware to your printer

Connect your probe and make sure it triggers (you can use repetier-host for this along with the G31 command). Don't forget to set Z_PROBE_ON_HIGH according to your probe wiring (normally open or closed).

Run the included full autolevel gcode script. The printer will home, 3-point autolevel and then run through the grid-based bed correction routine. It won't home after the last bed correction point is measured, this is normal. Feel free to include another G28 at the end of the script if this bothers you.

Finetune the leveling using the Bed Coating feature in the UI. For my film probe, +0.5mm seems to be the sweet spot.


||  !! WARNING !!  ||


If your endstops, probe or Z-height are misconfigured your nozzle can and will crash into the bed, possibly resulting into damage. Make sure to set these values correctyly for YOUR printer, and always monitor the autolevel routines in-person with your hand close to the power switch.

This build DISABLES endstop checking during prints. This fixes a reliability problem where endstops trigger due to stepper motor EMI, but may result in a broken printer if you try to print something above your maximum Z-height. Take note of your printers Z limit, and keep in mind that the max Z-height is higher when the effector is centered. Set ALWAYS_CHECK_ENDSTOPS to 1 to enable checking during prints (and probably suffer many failed prints due to layer shifting).

Currently testing on my own Anycubic Kossel Plus, but, as always, use at your own risk. 

||  Credits  ||

Based on the excellent work of:

The Repetier team: https://www.repetier.com/documentation/repetier-firmware/

Ruevs's custom repetier firmware for the non-plus Anycubic Kossel: https://github.com/ruevs/repetier_anycubic_kossel



