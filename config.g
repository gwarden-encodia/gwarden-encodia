; Configuration file for DUET2 Ethernet for bb3
; executed by the firmware on start-up
;
; General preferences
G90                                     ; send absolute coordinates...
M83                                     ; ...but relative extruder moves
M550 P"My Printer"                      ; set printer name
M669 K1                                 ; select CoreXY mode

; Network
M551 P"reprap"                          ; set password
M552 S0                                 ; disable network
M586 P0 S0                              ; disable HTTP
M586 P1 S0                              ; disable FTP
M586 P2 S0                              ; disable Telnet

; Drives
M569 P0 S1                              ; physical drive 0 goes forwards
M569 P1 S1                              ; physical drive 1 goes forwards
M569 P2 S1                              ; physical drive 2 goes forwards
M569 P3 S1                              ; physical drive 3 goes forwards
M569 P4 S0				; physical drive 4 goes reverse

M584 X0 Y1 Z2 U3 V4                     ; set drive mapping
M350 X16 Y16 Z16 U16 V16 I1             ; configure microstepping with interpolation
M92 X80.00 Y80.00 Z400.00 U5249.34 V5249.34  ; set steps per mm, U is cartridge loader
M566 X900.00 Y900.00 Z12.00 U100.0 V100.00 P1  ; set maximum instantaneous speed changes (mm/min), jerk policy 1
M203 X12000.00 Y12000.00 Z12000.00 U200.0 V200.00 ; set maximum speeds (mm/min)
M201 X500.00 Y500.00 Z500.0 U100.0 V100.00  ; set accelerations (mm/s^2)
M906 X2100 Y2100 Z1700 U190 V190 I30    ; set motor currents (mA) and motor idle factor in per cent
M84 S30                                 ; Set idle timeout

; Axis Limit
M208 X0 Y0 Z-50 U0 V0 S1                ; set axis minima
M208 X228 Y240 Z142 U27.2 V13.0 S0    ; set axis maxima

; Pumps
;M950 F1 C"fan0"	 		;Creates Air Pump
;M106 P1 S0				;Sets output to zero at startup
;M950 F2 C"fan2"			;Creates Vac Pump
;M106 P2 S0				;Sets output to zero at startup

; Endstops
M574 X1 S1 P"!xstop"			; x axis low
M574 Y2 S1 P"!ystop"			; y axis high
M574 Z2 S1 P"!zstop"			; z axis high
M574 U2 S1 P"!e0stop"
M574 V1 S1 P"!e1stop"
M915 X Y Z U V R0 F0				; motor stall detection

; Z-Probe
M558 P0 H5 F120 T6000                   ; disable Z probe but set dive height, probe speed and travel speed
M557 X15:215 Y15:195 S20                ; define mesh grid

; Heaters
M140 H-1                                ; disable heated bed (overrides default heater mapping)

; Fans
M950 F0 C"fan0"                         ; define fan 0 (5V cold side minifrdige)
M950 F3 C"e0heat"                       ; define fan 3 (24 V hot side minifridge). fan 1/2 can be defined by duet_device
M106 P0 S0.8                            ; turn on fan 0 at 80% pwm
M106 P3 S1                              ; turn on fan 3 at 100% pwm

; Tools

; Sensors
M308 S1 P"e0temp" Y"PT1000"             ; define sensor 1 as a PT1000
M308 S2 P"e1temp" Y"PT1000"             ; define sensor 2 as a PT1000
M308 S3 P"bedtemp" Y"PT1000"            ; define sensor 3 as a PT1000

; Custom settings are not defined

