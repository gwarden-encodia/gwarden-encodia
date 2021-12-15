; homez.g
; called to home the Z axis
;
M400 G91          ; relative positioning
G1 H2 Z-2 F3000   ; lift Z relative to current position
G1 H1 Z200        ; move Z down until the endstop is triggered
G1 Z-5 F200           ; go up a few mm
G1 H1 Z10 F200    ; 
G1 Z-2 F1000   ; ease off the endstop
; homex.g
; called to home the X axis
;
M400 G91
G1 H1 X-230 F6000 ; move quickly to X axis endstop and stop there (first pass)
G1 X5 F1000 ; go back a few mm
G1 H1 X-12 F300 ; move slowly to X axis endstop once more (second pass)
G1 X2 F1500 ; offset a bit off the endstop
; homey.g
; called to home the Y axis
;
; M400
; M913 X70 Y70
M400 
G91 ; relative positioning
G1 H1 Y+300 F6000 ; move quickly to y axis endstop and stop there (first pass)
G1 Y-10 F1500 ; go back a few mm
G1 H1 Y+12 F300 ; move slowly to y axis endstop once more (second pass)
G1 Y-2 F1500  ; offset a bit off the endstop
G90 ; absolute positioning
M400

