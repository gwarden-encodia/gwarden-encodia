; homeall.g
; called to home all axes
;
; generated by RepRapFirmware Configuration Tool v3.1.4 on Fri Sep 25 2020 17:07:52 GMT-0700 (Pacific Daylight Time)
; G91                     ; relative positioning
; G1 H2 Z5 F6000          ; lift Z relative to current position
G91
M400
G1 H1 Z-100 F1500
G1 Z+10
G1 H1 Z-12 F300
G1 Z+5
M400
; G1 H1 X+180 Y+160 F1500 ; move quickly to X or Y endstop and stop there (first pass)
; M400 M913 M400
; G1 X-10 Y-10
; G1 H1 X+10 F300         ; home X axis
; G1 H1 Y+10 F300         ; home Y axis
; M400 M913 M400
; G1 X-5 Y-5 F1500          ; go back a few mm
; G90                     ; absolute positioning

; Uncomment the following lines to lift Z after probing
;G91                    ; relative positioning
;G1 Z5 F100             ; lift Z relative to current position
;G90                    ; absolute positioning


