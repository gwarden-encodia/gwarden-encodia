; homey.g
; called to home the Y axis
;
; generated by RepRapFirmware Configuration Tool v3.1.4 on Fri Sep 25 2020 17:07:53 GMT-0700 (Pacific Daylight Time)
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

