e homev.g
; called to home the V axis
;
M400 G91          ; relative positioning
G1 H2 V0.2 F200   ; lift V relative to current position
G1 H1 V-15    	  ; move V up until the endstop is triggered
G1 V2             ; go down a few mm
G1 H1 V-3 F50     ; move V up until endstop is triggered, setting home
G1 V0.5 F200      ; ease off the endstop
G90               ; absolute positioning
M400
