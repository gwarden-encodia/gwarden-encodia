; homex.g
; called to home the X axis
;
M400 G91
G1 H1 X-230 F6000 ; move quickly to X axis endstop and stop there (first pass)
G1 X5 F1000 ; go back a few mm
G1 H1 X-12 F300 ; move slowly to X axis endstop once more (second pass)
G1 X2 F1500 ; offset a bit off the endstop
G90 ; absolute positioning
M400
