; homex.g
; called to home the X axis
;
M400 G91
; G1 H2 Z10 F12000 ; lift Z relative to current position
G1 H1 X+180 F3000 ; move quickly to X axis endstop and stop there (first pass)
G1 X-3 F1000 ; go back a few mm
G1 H1 X+4 F300 ; move slowly to X axis endstop once more (second pass)
G1 X-5 F1500 ; offset a bit off the endstop
; G1 H2 Z-10 F6000 ; lower Z again
G90 ; absolute positioning
M400
; M913 X100 Y100 ; return current to 100%
; M400

