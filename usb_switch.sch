EESchema Schematic File Version 2
LIBS:parts
LIBS:usb_switch-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 13
Title "USB controlled load switcher with level shifting - 12 terminal"
Date "2015-11-09"
Rev "1"
Comp "David Anderson   https://www.dave.tf"
Comment1 "License: Creative Commons Attribution 4.0 International"
Comment2 "TODO: Fix USB lines - missing termination resistors, rise time caps"
Comment3 "Warning: loads are NOT galvanically isolated!"
Comment4 "Absolute Maximum Ratings: 15V line voltage, 1A per load"
$EndDescr
$Sheet
S 7600 1750 550  200 
U 56404EB0
F0 "Switch 02" 60
F1 "switch.sch" 60
F2 "SW" I L 7600 1850 60 
$EndSheet
$Sheet
S 7600 2150 550  200 
U 56404EFB
F0 "Switch 03" 60
F1 "switch.sch" 60
F2 "SW" I L 7600 2250 60 
$EndSheet
$Sheet
S 7600 2550 550  200 
U 56404F34
F0 "Switch 04" 60
F1 "switch.sch" 60
F2 "SW" I L 7600 2650 60 
$EndSheet
$Sheet
S 7600 2950 550  200 
U 56404F4B
F0 "Switch 05" 60
F1 "switch.sch" 60
F2 "SW" I L 7600 3050 60 
$EndSheet
$Sheet
S 7600 3350 550  200 
U 56404F62
F0 "Switch 06" 60
F1 "switch.sch" 60
F2 "SW" I L 7600 3450 60 
$EndSheet
$Sheet
S 7600 3800 550  200 
U 56404F79
F0 "Switch 07" 60
F1 "switch.sch" 60
F2 "SW" I L 7600 3900 60 
$EndSheet
$Sheet
S 7600 4200 550  200 
U 56404F90
F0 "Switch 08" 60
F1 "switch.sch" 60
F2 "SW" I L 7600 4300 60 
$EndSheet
$Sheet
S 7600 4600 550  200 
U 56404FA7
F0 "Switch 09" 60
F1 "switch.sch" 60
F2 "SW" I L 7600 4700 60 
$EndSheet
$Sheet
S 7600 5000 550  200 
U 56404FBE
F0 "Switch 10" 60
F1 "switch.sch" 60
F2 "SW" I L 7600 5100 60 
$EndSheet
$Sheet
S 7600 1350 550  200 
U 564035AC
F0 "Switch 01" 60
F1 "switch.sch" 60
F2 "SW" I L 7600 1450 60 
$EndSheet
$Comp
L 12V_Conn CON2
U 1 1 5640556C
P 3050 3950
F 0 "CON2" H 3050 4300 50  0000 C BNN
F 1 "Line" H 3050 3600 50  0000 C TNN
F 2 "" H 3050 3950 50  0001 C CNN
F 3 "" H 3050 3950 50  0001 C CNN
	1    3050 3950
	1    0    0    -1  
$EndComp
$Comp
L USB_Micro CON1
U 1 1 5640565D
P 3000 5250
F 0 "CON1" H 3000 5800 50  0000 C BNN
F 1 "USB" H 3000 4700 50  0000 C TNN
F 2 "" H 3000 5250 50  0001 C CNN
F 3 "" H 3000 5250 50  0001 C CNN
	1    3000 5250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 5640CA40
P 5200 2900
F 0 "#PWR01" H 5200 2920 50  0001 C BNN
F 1 "GND" H 5200 2780 50  0000 C TNN
F 2 "" H 5200 2900 50  0001 C CNN
F 3 "" H 5200 2900 50  0001 C CNN
	1    5200 2900
	1    0    0    -1  
$EndComp
$Comp
L Capacitor C9
U 1 1 56418FE5
P 5700 2650
F 0 "C9" H 5700 2700 50  0000 C BNN
F 1 "10µF" H 5700 2600 50  0000 C TNN
F 2 "" H 5700 2650 50  0001 C CNN
F 3 "" H 5700 2650 50  0001 C CNN
	1    5700 2650
	0    -1   -1   0   
$EndComp
$Comp
L Capacitor C8
U 1 1 564190EE
P 4700 2650
F 0 "C8" H 4700 2700 50  0000 C BNN
F 1 "1µF" H 4700 2600 50  0000 C TNN
F 2 "" H 4700 2650 50  0001 C CNN
F 3 "" H 4700 2650 50  0001 C CNN
	1    4700 2650
	0    -1   -1   0   
$EndComp
$Sheet
S 7600 5400 550  200 
U 56404FD5
F0 "Switch 11" 60
F1 "switch.sch" 60
F2 "SW" I L 7600 5500 60 
$EndSheet
$Sheet
S 7600 5800 550  200 
U 56405002
F0 "Switch 12" 60
F1 "switch.sch" 60
F2 "SW" I L 7600 5900 60 
$EndSheet
Text Notes 4800 3250 0    60   ~ 0
MCU power supply
$Comp
L Test_Point TP4
U 1 1 56407D9B
P 3800 3600
F 0 "TP4" H 3800 3640 50  0000 C BNN
F 1 "3.3V" H 3800 3560 50  0001 C TNN
F 2 "" H 3800 3600 50  0001 C CNN
F 3 "" H 3800 3600 50  0001 C CNN
	1    3800 3600
	1    0    0    -1  
$EndComp
$Comp
L Test_Point TP1
U 1 1 56408233
P 3500 3850
F 0 "TP1" H 3500 3890 50  0000 C BNN
F 1 "12V" H 3500 3810 50  0001 C TNN
F 2 "" H 3500 3850 50  0001 C CNN
F 3 "" H 3500 3850 50  0001 C CNN
	1    3500 3850
	1    0    0    -1  
$EndComp
$Comp
L Test_Point TP2
U 1 1 564083D6
P 3600 4950
F 0 "TP2" H 3600 4990 50  0000 C BNN
F 1 "5V" H 3600 4910 50  0001 C TNN
F 2 "" H 3600 4950 50  0001 C CNN
F 3 "" H 3600 4950 50  0001 C CNN
	1    3600 4950
	1    0    0    -1  
$EndComp
$Comp
L Capacitor C4
U 1 1 5640800F
P 3950 2450
F 0 "C4" H 3950 2500 50  0000 C BNN
F 1 "10nF" H 3950 2400 50  0000 C TNN
F 2 "" H 3950 2450 50  0001 C CNN
F 3 "" H 3950 2450 50  0001 C CNN
	1    3950 2450
	0    -1   -1   0   
$EndComp
$Comp
L Capacitor C6
U 1 1 56408092
P 4250 2450
F 0 "C6" H 4250 2500 50  0000 C BNN
F 1 "1µF" H 4250 2400 50  0000 C TNN
F 2 "" H 4250 2450 50  0001 C CNN
F 3 "" H 4250 2450 50  0001 C CNN
	1    4250 2450
	0    -1   -1   0   
$EndComp
$Comp
L Capacitor C1
U 1 1 56408686
P 3050 2450
F 0 "C1" H 3050 2500 50  0000 C BNN
F 1 "100nF" H 3050 2400 50  0000 C TNN
F 2 "" H 3050 2450 50  0001 C CNN
F 3 "" H 3050 2450 50  0001 C CNN
	1    3050 2450
	0    -1   -1   0   
$EndComp
$Comp
L Capacitor C2
U 1 1 564087DE
P 3350 2450
F 0 "C2" H 3350 2500 50  0000 C BNN
F 1 "100nF" H 3350 2400 50  0000 C TNN
F 2 "" H 3350 2450 50  0001 C CNN
F 3 "" H 3350 2450 50  0001 C CNN
	1    3350 2450
	0    -1   -1   0   
$EndComp
$Comp
L Capacitor C3
U 1 1 56408865
P 3650 2450
F 0 "C3" H 3650 2500 50  0000 C BNN
F 1 "100nF" H 3650 2400 50  0000 C TNN
F 2 "" H 3650 2450 50  0001 C CNN
F 3 "" H 3650 2450 50  0001 C CNN
	1    3650 2450
	0    -1   -1   0   
$EndComp
Text Notes 3050 3250 0    60   ~ 0
     MCU decoupling\nVDD/VSS pair: 100nF each\n VDDA/VSSA: 10nF + 1µF
$Comp
L Test_Point TP6
U 1 1 5640BB8C
P 4500 4400
F 0 "TP6" H 4500 4440 50  0000 C BNN
F 1 "RST" H 4500 4360 50  0001 C TNN
F 2 "" H 4500 4400 50  0001 C CNN
F 3 "" H 4500 4400 50  0001 C CNN
	1    4500 4400
	-1   0    0    1   
$EndComp
$Comp
L Test_Point TP5
U 1 1 5640BC15
P 4500 4000
F 0 "TP5" H 4500 4040 50  0000 C BNN
F 1 "BOOT" H 4500 3960 50  0001 C TNN
F 2 "" H 4500 4000 50  0001 C CNN
F 3 "" H 4500 4000 50  0001 C CNN
	1    4500 4000
	1    0    0    -1  
$EndComp
$Comp
L Resistor R3
U 1 1 5640D568
P 4250 3900
F 0 "R3" H 4250 3939 50  0000 C BNN
F 1 "10k" H 4250 3861 50  0000 C TNN
F 2 "" H 4250 3900 50  0001 C CNN
F 3 "" H 4250 3900 50  0001 C CNN
	1    4250 3900
	0    -1   -1   0   
$EndComp
$Comp
L Resistor R1
U 1 1 5641B133
P 3650 5100
F 0 "R1" H 3650 5150 50  0000 C BNN
F 1 "22R" H 3650 5061 50  0000 C TNN
F 2 "" H 3650 5100 50  0001 C CNN
F 3 "" H 3650 5100 50  0001 C CNN
	1    3650 5100
	1    0    0    -1  
$EndComp
$Comp
L Resistor R2
U 1 1 5641B1D4
P 3650 5400
F 0 "R2" H 3650 5450 50  0000 C BNN
F 1 "22R" H 3650 5350 50  0000 C TNN
F 2 "" H 3650 5400 50  0001 C CNN
F 3 "" H 3650 5400 50  0001 C CNN
	1    3650 5400
	1    0    0    -1  
$EndComp
$Comp
L Capacitor C7
U 1 1 5641B257
P 4300 5500
F 0 "C7" H 4300 5550 50  0000 C BNN
F 1 "47pF" H 4300 5450 50  0000 C TNN
F 2 "" H 4300 5500 50  0001 C CNN
F 3 "" H 4300 5500 50  0001 C CNN
	1    4300 5500
	0    -1   -1   0   
$EndComp
$Comp
L Capacitor C5
U 1 1 5641B2F0
P 4000 5500
F 0 "C5" H 4000 5550 50  0000 C BNN
F 1 "47pF" H 4000 5450 50  0000 C TNN
F 2 "" H 4000 5500 50  0001 C CNN
F 3 "" H 4000 5500 50  0001 C CNN
	1    4000 5500
	0    -1   -1   0   
$EndComp
$Comp
L Test_Point TP7
U 1 1 5641CF12
P 4550 5050
F 0 "TP7" H 4550 5090 50  0000 C BNN
F 1 "Test_Point" H 4550 5010 50  0001 C TNN
F 2 "" H 4550 5050 50  0001 C CNN
F 3 "" H 4550 5050 50  0001 C CNN
	1    4550 5050
	1    0    0    -1  
$EndComp
$Comp
L Test_Point TP8
U 1 1 5641CFA3
P 4550 5450
F 0 "TP8" H 4550 5490 50  0000 C BNN
F 1 "Test_Point" H 4550 5410 50  0001 C TNN
F 2 "" H 4550 5450 50  0001 C CNN
F 3 "" H 4550 5450 50  0001 C CNN
	1    4550 5450
	-1   0    0    1   
$EndComp
Wire Wire Line
	3250 4050 3350 4050
Wire Wire Line
	3350 4050 3350 4150
Wire Wire Line
	3450 5550 3450 5650
Wire Wire Line
	5200 2700 5200 2900
Wire Wire Line
	4000 5700 4300 5700
Wire Wire Line
	4150 5700 4150 5750
Wire Wire Line
	3250 3850 3500 3850
Wire Wire Line
	3350 3850 3350 3750
Wire Wire Line
	4700 2200 4700 2550
Wire Wire Line
	4700 2300 4800 2300
Wire Wire Line
	5700 2200 5700 2550
Wire Wire Line
	5700 2300 5600 2300
Wire Wire Line
	3800 3600 3800 4100
Wire Wire Line
	3800 3700 5150 3700
Wire Wire Line
	3300 4950 3600 4950
Wire Wire Line
	3450 4950 3450 4850
Wire Wire Line
	4700 2750 4700 2800
Wire Wire Line
	4700 2800 5700 2800
Connection ~ 5200 2800
Wire Wire Line
	5700 2800 5700 2750
Connection ~ 5700 2300
Connection ~ 4700 2300
Wire Wire Line
	6650 7400 6650 7500
Wire Wire Line
	6400 7400 6400 7500
Wire Wire Line
	6150 7400 6150 7500
Wire Wire Line
	5900 7400 5900 7500
Wire Wire Line
	7600 1450 6550 1450
Wire Wire Line
	6550 1450 6550 3700
Wire Wire Line
	6550 3900 6650 3900
Wire Wire Line
	6650 3900 6650 1850
Wire Wire Line
	6650 1850 7600 1850
Wire Wire Line
	6550 4100 6750 4100
Wire Wire Line
	6750 4100 6750 2250
Wire Wire Line
	6750 2250 7600 2250
Wire Wire Line
	7600 2650 6850 2650
Wire Wire Line
	6850 2650 6850 4300
Wire Wire Line
	6850 4300 6550 4300
Wire Wire Line
	6550 4500 6950 4500
Wire Wire Line
	6950 4500 6950 3050
Wire Wire Line
	6950 3050 7600 3050
Wire Wire Line
	7600 3400 7050 3400
Wire Wire Line
	7050 3400 7050 4700
Wire Wire Line
	7050 4700 6550 4700
Wire Wire Line
	7150 3900 7600 3900
Wire Wire Line
	7250 4300 7600 4300
Wire Wire Line
	7350 4700 7600 4700
Wire Wire Line
	7600 5500 7550 5500
Wire Wire Line
	7550 5500 7550 5700
Wire Wire Line
	7550 5700 6550 5700
Wire Wire Line
	6550 5900 7600 5900
Wire Notes Line
	2800 1900 5900 1900
Wire Notes Line
	5900 1900 5900 3300
Wire Notes Line
	5900 3300 2800 3300
Wire Notes Line
	4500 3300 4500 1900
Connection ~ 3350 3850
Connection ~ 3450 4950
Wire Wire Line
	3650 2150 3650 2350
Wire Wire Line
	3050 2250 4250 2250
Wire Wire Line
	4250 2250 4250 2350
Wire Wire Line
	3950 2350 3950 2250
Connection ~ 3950 2250
Connection ~ 3650 2250
Wire Wire Line
	3950 2650 3950 2550
Wire Wire Line
	3050 2650 4250 2650
Wire Wire Line
	3650 2550 3650 2750
Wire Wire Line
	4250 2650 4250 2550
Connection ~ 3950 2650
Connection ~ 3650 2650
Wire Wire Line
	3350 2550 3350 2650
Wire Wire Line
	3350 2350 3350 2250
Wire Wire Line
	3050 2250 3050 2350
Connection ~ 3350 2250
Wire Wire Line
	3050 2550 3050 2650
Connection ~ 3350 2650
Wire Notes Line
	2800 1900 2800 5950
Wire Wire Line
	4100 4300 5150 4300
Wire Wire Line
	4250 4000 4250 4300
Connection ~ 4250 4300
Wire Wire Line
	3300 5550 3600 5550
Wire Wire Line
	3500 5150 3500 5100
Wire Wire Line
	3500 5100 3550 5100
Wire Wire Line
	3750 5400 3800 5400
Wire Wire Line
	3800 5400 3800 5350
Wire Wire Line
	3800 5350 4850 5350
Wire Wire Line
	3800 5150 4750 5150
Wire Wire Line
	3800 5150 3800 5100
Wire Wire Line
	3800 5100 3750 5100
Wire Wire Line
	4300 5350 4300 5400
Connection ~ 4300 5350
Wire Wire Line
	4000 5150 4000 5400
Connection ~ 4000 5150
Connection ~ 4150 5700
Wire Wire Line
	4000 5700 4000 5600
Wire Wire Line
	7350 4700 7350 5300
Wire Wire Line
	7350 5300 6550 5300
Wire Wire Line
	7250 4300 7250 5100
Wire Wire Line
	7250 5100 6550 5100
Wire Wire Line
	7150 3900 7150 4900
Wire Wire Line
	7150 4900 6550 4900
Wire Wire Line
	4550 5150 4550 5050
Connection ~ 4550 5150
Wire Wire Line
	4550 5350 4550 5450
Connection ~ 4550 5350
$Comp
L FSM4JSMA S1
U 1 1 564169DE
P 4000 4100
F 0 "S1" H 4000 4170 50  0000 C BNN
F 1 "BOOT" H 4000 4080 50  0001 C TNN
F 2 "" H 4000 4100 50  0001 C CNN
F 3 "" H 4000 4100 50  0001 C CNN
	1    4000 4100
	1    0    0    -1  
$EndComp
$Comp
L FSM4JSMA S2
U 1 1 56416A79
P 4000 4300
F 0 "S2" H 4000 4370 50  0000 C BNN
F 1 "RESET" H 4000 4280 50  0001 C TNN
F 2 "" H 4000 4300 50  0001 C CNN
F 3 "" H 4000 4300 50  0001 C CNN
	1    4000 4300
	1    0    0    -1  
$EndComp
$Comp
L Test_Point TP3
U 1 1 5641A50E
P 3600 5550
F 0 "TP3" H 3600 5590 50  0000 C BNN
F 1 "GND" H 3600 5510 50  0001 C TNN
F 2 "" H 3600 5550 50  0001 C CNN
F 3 "" H 3600 5550 50  0001 C CNN
	1    3600 5550
	-1   0    0    1   
$EndComp
Connection ~ 3450 5550
Wire Wire Line
	4250 3650 4250 3800
Connection ~ 4250 3700
Wire Wire Line
	4100 4100 5150 4100
Connection ~ 3800 3700
Wire Wire Line
	3800 4100 3900 4100
Wire Wire Line
	3900 4300 3800 4300
Wire Wire Line
	3800 4300 3800 4350
Wire Wire Line
	4500 4000 4500 4100
Connection ~ 4500 4100
Wire Wire Line
	4500 4400 4500 4300
Connection ~ 4500 4300
Wire Wire Line
	4300 5700 4300 5600
Wire Wire Line
	5150 5900 5050 5900
Wire Wire Line
	5050 5900 5050 6000
$Comp
L Test_Point TP9
U 1 1 5641D2CC
P 5050 5300
F 0 "TP9" H 5050 5340 50  0000 C BNN
F 1 "SWD" H 5050 5260 50  0001 C TNN
F 2 "" H 5050 5300 50  0001 C CNN
F 3 "" H 5050 5300 50  0001 C CNN
	1    5050 5300
	1    0    0    -1  
$EndComp
$Comp
L Test_Point TP10
U 1 1 5641D363
P 5050 5500
F 0 "TP10" H 5050 5540 50  0000 C BNN
F 1 "SWC" H 5050 5460 50  0001 C TNN
F 2 "" H 5050 5500 50  0001 C CNN
F 3 "" H 5050 5500 50  0001 C CNN
	1    5050 5500
	-1   0    0    1   
$EndComp
Wire Wire Line
	5150 5300 5050 5300
Wire Wire Line
	5050 5500 5150 5500
Wire Notes Line
	2800 4550 4650 4550
Wire Notes Line
	4650 3300 4650 5950
Wire Notes Line
	3650 3300 3650 4550
Wire Wire Line
	4750 4700 5150 4700
Wire Wire Line
	5150 4900 4850 4900
Wire Wire Line
	4750 5150 4750 4700
Wire Wire Line
	4850 4900 4850 5350
Wire Notes Line
	4650 5950 2800 5950
Text Notes 3850 3450 0    60   ~ 0
Boot Control
Text Notes 4150 4700 0    60   ~ 0
USB Bus
$Comp
L AP2120N U1
U 1 1 564ADB98
P 5200 2300
F 0 "U1" H 5200 2520 50  0000 C BNN
F 1 "AP2120N" H 5200 2175 50  0000 C TNN
F 2 "" H 5200 2300 50  0001 C CNN
F 3 "" H 5200 2300 50  0001 C CNN
	1    5200 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 5350 3500 5400
Wire Wire Line
	3500 5400 3550 5400
$Comp
L STM32F042K6T6 U2
U 1 1 564AD556
P 5850 4800
F 0 "U2" H 5850 6120 50  0000 C BNN
F 1 "STM32F042K6T6" H 5850 3480 50  0000 C TNN
F 2 "" H 5850 4800 50  0001 C CNN
F 3 "" H 5850 4800 50  0001 C CNN
	1    5850 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 5100 7450 5100
Wire Wire Line
	7450 5100 7450 5500
Wire Wire Line
	7450 5500 6550 5500
Wire Wire Line
	3500 5150 3300 5150
Wire Wire Line
	3300 5350 3500 5350
$Comp
L GND #PWR02
U 1 1 564BA86D
P 5050 6000
F 0 "#PWR02" H 5050 6020 50  0001 C BNN
F 1 "GND" H 5050 5880 50  0000 C TNN
F 2 "" H 5050 6000 50  0001 C CNN
F 3 "" H 5050 6000 50  0001 C CNN
	1    5050 6000
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG03
U 1 1 564BB62B
P 6650 7400
F 0 "#FLG03" H 6650 7545 50  0001 C BNN
F 1 "PWR_FLAG" H 6650 7380 50  0001 C TNN
F 2 "" H 6650 7400 50  0001 C CNN
F 3 "" H 6650 7400 50  0001 C CNN
	1    6650 7400
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG04
U 1 1 564BB6BF
P 6400 7500
F 0 "#FLG04" H 6400 7645 50  0001 C BNN
F 1 "PWR_FLAG" H 6400 7480 50  0001 C TNN
F 2 "" H 6400 7500 50  0001 C CNN
F 3 "" H 6400 7500 50  0001 C CNN
	1    6400 7500
	-1   0    0    1   
$EndComp
$Comp
L PWR_FLAG #FLG05
U 1 1 564BB78B
P 6150 7500
F 0 "#FLG05" H 6150 7645 50  0001 C BNN
F 1 "PWR_FLAG" H 6150 7480 50  0001 C TNN
F 2 "" H 6150 7500 50  0001 C CNN
F 3 "" H 6150 7500 50  0001 C CNN
	1    6150 7500
	-1   0    0    1   
$EndComp
$Comp
L PWR_FLAG #FLG06
U 1 1 564BB81F
P 5900 7500
F 0 "#FLG06" H 5900 7645 50  0001 C BNN
F 1 "PWR_FLAG" H 5900 7480 50  0001 C TNN
F 2 "" H 5900 7500 50  0001 C CNN
F 3 "" H 5900 7500 50  0001 C CNN
	1    5900 7500
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR07
U 1 1 564BC7E4
P 6650 7500
F 0 "#PWR07" H 6650 7520 50  0001 C BNN
F 1 "GND" H 6650 7380 50  0000 C TNN
F 2 "" H 6650 7500 50  0001 C CNN
F 3 "" H 6650 7500 50  0001 C CNN
	1    6650 7500
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR08
U 1 1 564BC878
P 5900 7400
F 0 "#PWR08" H 5900 7380 50  0001 C TNN
F 1 "+12V" H 5900 7470 50  0000 C BNN
F 2 "" H 5900 7400 50  0001 C CNN
F 3 "" H 5900 7400 50  0001 C CNN
	1    5900 7400
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR09
U 1 1 564BCBAB
P 3650 2150
F 0 "#PWR09" H 3650 2130 50  0001 C TNN
F 1 "+3.3V" H 3650 2220 50  0000 C BNN
F 2 "" H 3650 2150 50  0001 C CNN
F 3 "" H 3650 2150 50  0001 C CNN
	1    3650 2150
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR010
U 1 1 564BCC3F
P 5700 2200
F 0 "#PWR010" H 5700 2180 50  0001 C TNN
F 1 "+3.3V" H 5700 2270 50  0000 C BNN
F 2 "" H 5700 2200 50  0001 C CNN
F 3 "" H 5700 2200 50  0001 C CNN
	1    5700 2200
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR011
U 1 1 564BCCD3
P 4250 3650
F 0 "#PWR011" H 4250 3630 50  0001 C TNN
F 1 "+3.3V" H 4250 3720 50  0000 C BNN
F 2 "" H 4250 3650 50  0001 C CNN
F 3 "" H 4250 3650 50  0001 C CNN
	1    4250 3650
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR012
U 1 1 564BCE27
P 4700 2200
F 0 "#PWR012" H 4700 2180 50  0001 C TNN
F 1 "+5V" H 4700 2270 50  0000 C BNN
F 2 "" H 4700 2200 50  0001 C CNN
F 3 "" H 4700 2200 50  0001 C CNN
	1    4700 2200
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR013
U 1 1 564BCEBB
P 3350 3750
F 0 "#PWR013" H 3350 3730 50  0001 C TNN
F 1 "+5V" H 3350 3820 50  0000 C BNN
F 2 "" H 3350 3750 50  0001 C CNN
F 3 "" H 3350 3750 50  0001 C CNN
	1    3350 3750
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR014
U 1 1 564BCF4F
P 3450 4850
F 0 "#PWR014" H 3450 4830 50  0001 C TNN
F 1 "+5V" H 3450 4920 50  0000 C BNN
F 2 "" H 3450 4850 50  0001 C CNN
F 3 "" H 3450 4850 50  0001 C CNN
	1    3450 4850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR015
U 1 1 564BD023
P 3650 2750
F 0 "#PWR015" H 3650 2770 50  0001 C BNN
F 1 "GND" H 3650 2630 50  0000 C TNN
F 2 "" H 3650 2750 50  0001 C CNN
F 3 "" H 3650 2750 50  0001 C CNN
	1    3650 2750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR016
U 1 1 564BD137
P 3350 4150
F 0 "#PWR016" H 3350 4170 50  0001 C BNN
F 1 "GND" H 3350 4030 50  0000 C TNN
F 2 "" H 3350 4150 50  0001 C CNN
F 3 "" H 3350 4150 50  0001 C CNN
	1    3350 4150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR017
U 1 1 564BD20B
P 3450 5650
F 0 "#PWR017" H 3450 5670 50  0001 C BNN
F 1 "GND" H 3450 5530 50  0000 C TNN
F 2 "" H 3450 5650 50  0001 C CNN
F 3 "" H 3450 5650 50  0001 C CNN
	1    3450 5650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR018
U 1 1 564BD29F
P 4150 5750
F 0 "#PWR018" H 4150 5770 50  0001 C BNN
F 1 "GND" H 4150 5630 50  0000 C TNN
F 2 "" H 4150 5750 50  0001 C CNN
F 3 "" H 4150 5750 50  0001 C CNN
	1    4150 5750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR019
U 1 1 564BD3F3
P 3800 4350
F 0 "#PWR019" H 3800 4370 50  0001 C BNN
F 1 "GND" H 3800 4230 50  0000 C TNN
F 2 "" H 3800 4350 50  0001 C CNN
F 3 "" H 3800 4350 50  0001 C CNN
	1    3800 4350
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR020
U 1 1 564BDA05
P 6150 7400
F 0 "#PWR020" H 6150 7380 50  0001 C TNN
F 1 "+5V" H 6150 7470 50  0000 C BNN
F 2 "" H 6150 7400 50  0001 C CNN
F 3 "" H 6150 7400 50  0001 C CNN
	1    6150 7400
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR021
U 1 1 564BDA99
P 6400 7400
F 0 "#PWR021" H 6400 7380 50  0001 C TNN
F 1 "+3.3V" H 6400 7470 50  0000 C BNN
F 2 "" H 6400 7400 50  0001 C CNN
F 3 "" H 6400 7400 50  0001 C CNN
	1    6400 7400
	1    0    0    -1  
$EndComp
$EndSCHEMATC
