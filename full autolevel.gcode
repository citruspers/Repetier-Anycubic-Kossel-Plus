G33 R0 ; Reset distortion map
G32 S2 ; Run autolevel and save to firmware
G33 ; generate distortion map
M323 S1 P1 ; enable distortion map and save to firmware