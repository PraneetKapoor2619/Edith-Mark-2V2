EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Edith Mark 2V2 Manual ATmega8A Programmer"
Date "15/09/2019"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Switch:SW_MEC_5G SW1
U 1 1 6062A211
P 1150 1950
F 0 "SW1" V 1196 1902 50  0000 R CNN
F 1 "SW_MEC_5G" V 1105 1902 50  0000 R CNN
F 2 "" H 1150 2150 50  0001 C CNN
F 3 "http://www.apem.com/int/index.php?controller=attachment&id_attachment=488" H 1150 2150 50  0001 C CNN
	1    1150 1950
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R1
U 1 1 6062CBC3
P 1150 1500
F 0 "R1" H 1220 1546 50  0000 L CNN
F 1 "1K" H 1220 1455 50  0000 L CNN
F 2 "" V 1080 1500 50  0001 C CNN
F 3 "~" H 1150 1500 50  0001 C CNN
	1    1150 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 1650 1150 1700
$Comp
L Switch:SW_MEC_5G SW2
U 1 1 6062E40A
P 1900 1950
F 0 "SW2" V 1946 1902 50  0000 R CNN
F 1 "SW_MEC_5G" V 1855 1902 50  0000 R CNN
F 2 "" H 1900 2150 50  0001 C CNN
F 3 "http://www.apem.com/int/index.php?controller=attachment&id_attachment=488" H 1900 2150 50  0001 C CNN
	1    1900 1950
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R2
U 1 1 6062E410
P 1900 1500
F 0 "R2" H 1970 1546 50  0000 L CNN
F 1 "1K" H 1970 1455 50  0000 L CNN
F 2 "" V 1830 1500 50  0001 C CNN
F 3 "~" H 1900 1500 50  0001 C CNN
	1    1900 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 1650 1900 1700
$Comp
L Switch:SW_MEC_5G SW3
U 1 1 6062E747
P 2550 1950
F 0 "SW3" V 2596 1902 50  0000 R CNN
F 1 "SW_MEC_5G" V 2505 1902 50  0000 R CNN
F 2 "" H 2550 2150 50  0001 C CNN
F 3 "http://www.apem.com/int/index.php?controller=attachment&id_attachment=488" H 2550 2150 50  0001 C CNN
	1    2550 1950
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R3
U 1 1 6062E74D
P 2550 1500
F 0 "R3" H 2620 1546 50  0000 L CNN
F 1 "1K" H 2620 1455 50  0000 L CNN
F 2 "" V 2480 1500 50  0001 C CNN
F 3 "~" H 2550 1500 50  0001 C CNN
	1    2550 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 1650 2550 1700
Wire Wire Line
	1150 2050 1150 2150
Connection ~ 1150 2150
Wire Wire Line
	1150 2150 1150 2550
Wire Wire Line
	1900 2050 1900 2150
Connection ~ 1900 2150
Wire Wire Line
	1900 2150 1900 2550
Wire Wire Line
	2550 2050 2550 2150
Connection ~ 2550 2150
Wire Wire Line
	2550 2150 2550 2550
Wire Wire Line
	1150 2550 1900 2550
Connection ~ 1900 2550
Wire Wire Line
	1900 2550 2550 2550
Wire Wire Line
	1900 2550 1900 2800
$Comp
L power:GND #PWR0101
U 1 1 60630CAE
P 1900 2800
F 0 "#PWR0101" H 1900 2550 50  0001 C CNN
F 1 "GND" H 1905 2627 50  0000 C CNN
F 2 "" H 1900 2800 50  0001 C CNN
F 3 "" H 1900 2800 50  0001 C CNN
	1    1900 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 1350 1150 1050
Wire Wire Line
	1900 1350 1900 1050
Wire Wire Line
	2550 1350 2550 1050
Wire Wire Line
	1150 1050 1900 1050
Connection ~ 1900 1050
Wire Wire Line
	1900 1050 2550 1050
Wire Wire Line
	1900 1050 1900 800 
Wire Wire Line
	1150 1700 850  1700
Connection ~ 1150 1700
Wire Wire Line
	1150 1700 1150 1750
Text GLabel 850  1700 0    50   Input ~ 0
SW1in
Wire Wire Line
	1900 1700 1600 1700
Connection ~ 1900 1700
Wire Wire Line
	1900 1700 1900 1750
Wire Wire Line
	2550 1700 2250 1700
Connection ~ 2550 1700
Wire Wire Line
	2550 1700 2550 1750
Text GLabel 1600 1700 0    50   Input ~ 0
SW2in
Text GLabel 2250 1700 0    50   Input ~ 0
SW3in
$Comp
L power:+5V #PWR0102
U 1 1 60639BA1
P 1900 800
F 0 "#PWR0102" H 1900 650 50  0001 C CNN
F 1 "+5V" H 1915 973 50  0000 C CNN
F 2 "" H 1900 800 50  0001 C CNN
F 3 "" H 1900 800 50  0001 C CNN
	1    1900 800 
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC14 U2
U 1 1 60640616
P 4100 1150
F 0 "U2" H 4100 1467 50  0000 C CNN
F 1 "74HC14" H 4100 1376 50  0000 C CNN
F 2 "" H 4100 1150 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC14" H 4100 1150 50  0001 C CNN
	1    4100 1150
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC14 U2
U 2 1 60644573
P 4100 1800
F 0 "U2" H 4100 2117 50  0000 C CNN
F 1 "74HC14" H 4100 2026 50  0000 C CNN
F 2 "" H 4100 1800 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC14" H 4100 1800 50  0001 C CNN
	2    4100 1800
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC14 U2
U 3 1 606457FF
P 4100 2450
F 0 "U2" H 4100 2767 50  0000 C CNN
F 1 "74HC14" H 4100 2676 50  0000 C CNN
F 2 "" H 4100 2450 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC14" H 4100 2450 50  0001 C CNN
	3    4100 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 1150 3600 1150
Wire Wire Line
	4400 1150 4550 1150
Wire Wire Line
	3800 1800 3600 1800
Wire Wire Line
	4400 1800 4550 1800
Wire Wire Line
	3800 2450 3600 2450
Wire Wire Line
	4400 2450 4550 2450
Text GLabel 3600 1150 0    50   Input ~ 0
SW1in
Text GLabel 3600 1800 0    50   Input ~ 0
SW2in
Text GLabel 3600 2450 0    50   Input ~ 0
SW3in
Text GLabel 4550 1150 2    50   Input ~ 0
SW1out
Text GLabel 4550 1800 2    50   Input ~ 0
SW2out
Text GLabel 4550 2450 2    50   Input ~ 0
SW3out
$Comp
L Switch:SW_DIP_x08 SW_H
U 1 1 6064DF24
P 2250 4750
F 0 "SW_H" H 2250 5417 50  0000 C CNN
F 1 "SW_DIP_x08" H 2250 5326 50  0000 C CNN
F 2 "" H 2250 4750 50  0001 C CNN
F 3 "~" H 2250 4750 50  0001 C CNN
	1    2250 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 4350 1800 4350
Wire Wire Line
	1950 4450 1800 4450
Wire Wire Line
	1950 4550 1800 4550
Wire Wire Line
	1950 4650 1800 4650
Wire Wire Line
	1950 4750 1800 4750
Wire Wire Line
	1950 4850 1800 4850
Wire Wire Line
	1950 4950 1800 4950
Wire Wire Line
	1950 5050 1800 5050
Wire Wire Line
	1800 4350 1800 4450
Connection ~ 1800 4450
Wire Wire Line
	1800 4450 1800 4550
Connection ~ 1800 4550
Wire Wire Line
	1800 4550 1800 4650
Connection ~ 1800 4650
Wire Wire Line
	1800 4650 1800 4750
Connection ~ 1800 4750
Wire Wire Line
	1800 4750 1800 4850
Connection ~ 1800 4850
Wire Wire Line
	1800 4850 1800 4950
Connection ~ 1800 4950
Wire Wire Line
	1800 4950 1800 5050
Connection ~ 1800 5050
Wire Wire Line
	1800 5050 1800 5300
Wire Wire Line
	2550 4350 2650 4350
Wire Wire Line
	2550 4450 2650 4450
Wire Wire Line
	2550 4550 2650 4550
Wire Wire Line
	2550 4650 2650 4650
Wire Wire Line
	2550 4750 2650 4750
Wire Wire Line
	2550 4850 2650 4850
Wire Wire Line
	2550 4950 2650 4950
Wire Wire Line
	2550 5050 2650 5050
$Comp
L power:GND #PWR0103
U 1 1 6065F726
P 1800 5300
F 0 "#PWR0103" H 1800 5050 50  0001 C CNN
F 1 "GND" H 1805 5127 50  0000 C CNN
F 2 "" H 1800 5300 50  0001 C CNN
F 3 "" H 1800 5300 50  0001 C CNN
	1    1800 5300
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_DIP_x08 SW_L
U 1 1 6066266E
P 4100 4750
F 0 "SW_L" H 4100 5417 50  0000 C CNN
F 1 "SW_DIP_x08" H 4100 5326 50  0000 C CNN
F 2 "" H 4100 4750 50  0001 C CNN
F 3 "~" H 4100 4750 50  0001 C CNN
	1    4100 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 4350 3650 4350
Wire Wire Line
	3800 4450 3650 4450
Wire Wire Line
	3800 4550 3650 4550
Wire Wire Line
	3800 4650 3650 4650
Wire Wire Line
	3800 4750 3650 4750
Wire Wire Line
	3800 4850 3650 4850
Wire Wire Line
	3800 4950 3650 4950
Wire Wire Line
	3800 5050 3650 5050
Wire Wire Line
	3650 4350 3650 4450
Connection ~ 3650 4450
Wire Wire Line
	3650 4450 3650 4550
Connection ~ 3650 4550
Wire Wire Line
	3650 4550 3650 4650
Connection ~ 3650 4650
Wire Wire Line
	3650 4650 3650 4750
Connection ~ 3650 4750
Wire Wire Line
	3650 4750 3650 4850
Connection ~ 3650 4850
Wire Wire Line
	3650 4850 3650 4950
Connection ~ 3650 4950
Wire Wire Line
	3650 4950 3650 5050
Connection ~ 3650 5050
Wire Wire Line
	3650 5050 3650 5300
Wire Wire Line
	4400 4350 4500 4350
Wire Wire Line
	4400 4450 4500 4450
Wire Wire Line
	4400 4550 4500 4550
Wire Wire Line
	4400 4650 4500 4650
Wire Wire Line
	4400 4750 4500 4750
Wire Wire Line
	4400 4850 4500 4850
Wire Wire Line
	4400 4950 4500 4950
Wire Wire Line
	4400 5050 4500 5050
$Comp
L power:GND #PWR0104
U 1 1 60662693
P 3650 5300
F 0 "#PWR0104" H 3650 5050 50  0001 C CNN
F 1 "GND" H 3655 5127 50  0000 C CNN
F 2 "" H 3650 5300 50  0001 C CNN
F 3 "" H 3650 5300 50  0001 C CNN
	1    3650 5300
	1    0    0    -1  
$EndComp
Text GLabel 2650 4350 2    50   Input ~ 0
SH7
Text GLabel 2650 4450 2    50   Input ~ 0
SH6
Text GLabel 2650 4550 2    50   Input ~ 0
SH5
Text GLabel 2650 4750 2    50   Input ~ 0
SH3
Text GLabel 2650 4850 2    50   Input ~ 0
SH2
Text GLabel 2650 4950 2    50   Input ~ 0
SH1
Text GLabel 2650 5050 2    50   Input ~ 0
SH0
Text GLabel 4500 4350 2    50   Input ~ 0
SL7
Text GLabel 4500 4450 2    50   Input ~ 0
SL6
Text GLabel 4500 4550 2    50   Input ~ 0
SL5
Text GLabel 4500 4650 2    50   Input ~ 0
SL4
Text GLabel 4500 4750 2    50   Input ~ 0
SL3
Text GLabel 4500 4850 2    50   Input ~ 0
SL2
Text GLabel 4500 4950 2    50   Input ~ 0
SL1
Text GLabel 4500 5050 2    50   Input ~ 0
SL0
$Comp
L MCU_Microchip_ATmega:ATmega8A-PU U1
U 1 1 6067860C
P 6850 3150
F 0 "U1" H 6850 3300 50  0000 C CNN
F 1 "ATmega8A-PU" H 6850 3200 50  0000 C CNN
F 2 "Package_DIP:DIP-28_W7.62mm" H 6850 3150 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/Microchip%208bit%20mcu%20AVR%20ATmega8A%20data%20sheet%2040001974A.pdf" H 6850 3150 50  0001 C CNN
	1    6850 3150
	1    0    0    -1  
$EndComp
Text GLabel 7450 4150 2    50   Input ~ 0
SH7
Text GLabel 7450 4050 2    50   Input ~ 0
SH6
Text GLabel 7450 3950 2    50   Input ~ 0
SH5
Text GLabel 7450 3850 2    50   Input ~ 0
SH4
Text GLabel 7450 3750 2    50   Input ~ 0
SH3
Text GLabel 7450 3650 2    50   Input ~ 0
SH2
Text GLabel 7450 3550 2    50   Input ~ 0
SH1
Text GLabel 7450 3450 2    50   Input ~ 0
SH0
Text GLabel 7450 2550 2    50   Input ~ 0
SL5
Text GLabel 7450 2450 2    50   Input ~ 0
SL4
Text GLabel 7450 2350 2    50   Input ~ 0
SL3
Text GLabel 7450 2250 2    50   Input ~ 0
SL2
Text GLabel 7450 2150 2    50   Input ~ 0
SL1
Text GLabel 7450 2050 2    50   Input ~ 0
SL0
Text GLabel 6250 2250 0    50   Input ~ 0
SL6
Text GLabel 6250 2450 0    50   Input ~ 0
SL7
Wire Wire Line
	7450 3250 8050 3250
Wire Wire Line
	8050 4050 8050 4150
Wire Wire Line
	8050 3650 8050 3750
$Comp
L power:GND #PWR0105
U 1 1 606A5188
P 8050 4150
F 0 "#PWR0105" H 8050 3900 50  0001 C CNN
F 1 "GND" H 8055 3977 50  0000 C CNN
F 2 "" H 8050 4150 50  0001 C CNN
F 3 "" H 8050 4150 50  0001 C CNN
	1    8050 4150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 606A41D4
P 8050 3900
F 0 "R4" H 8120 3946 50  0000 L CNN
F 1 "220" H 8120 3855 50  0000 L CNN
F 2 "" V 7980 3900 50  0001 C CNN
F 3 "~" H 8050 3900 50  0001 C CNN
	1    8050 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 3250 8050 3350
$Comp
L Device:LED D1
U 1 1 606A172E
P 8050 3500
F 0 "D1" V 8089 3383 50  0000 R CNN
F 1 "LED" V 7998 3383 50  0000 R CNN
F 2 "" H 8050 3500 50  0001 C CNN
F 3 "~" H 8050 3500 50  0001 C CNN
	1    8050 3500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7450 3150 8050 3150
Wire Wire Line
	7450 3050 8050 3050
Wire Wire Line
	7450 2950 8050 2950
Wire Wire Line
	7450 2850 9000 2850
Wire Wire Line
	9000 2850 9250 2850
Connection ~ 9000 2850
Wire Wire Line
	9750 2750 10000 2750
Wire Wire Line
	9000 4050 9000 4150
Wire Wire Line
	9000 3650 9000 3750
$Comp
L power:GND #PWR0106
U 1 1 606BFF2F
P 9000 4150
F 0 "#PWR0106" H 9000 3900 50  0001 C CNN
F 1 "GND" H 9005 3977 50  0000 C CNN
F 2 "" H 9000 4150 50  0001 C CNN
F 3 "" H 9000 4150 50  0001 C CNN
	1    9000 4150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 606BFF35
P 9000 3900
F 0 "R5" H 9070 3946 50  0000 L CNN
F 1 "220" H 9070 3855 50  0000 L CNN
F 2 "" V 8930 3900 50  0001 C CNN
F 3 "~" H 9000 3900 50  0001 C CNN
	1    9000 3900
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D2
U 1 1 606BFF3C
P 9000 3500
F 0 "D2" V 9039 3383 50  0000 R CNN
F 1 "LED" V 8948 3383 50  0000 R CNN
F 2 "" H 9000 3500 50  0001 C CNN
F 3 "~" H 9000 3500 50  0001 C CNN
	1    9000 3500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9000 2850 9000 3350
Wire Wire Line
	9750 4050 9750 4150
Wire Wire Line
	9750 3650 9750 3750
$Comp
L power:GND #PWR0107
U 1 1 606C2A88
P 9750 4150
F 0 "#PWR0107" H 9750 3900 50  0001 C CNN
F 1 "GND" H 9755 3977 50  0000 C CNN
F 2 "" H 9750 4150 50  0001 C CNN
F 3 "" H 9750 4150 50  0001 C CNN
	1    9750 4150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 606C2A8E
P 9750 3900
F 0 "R6" H 9820 3946 50  0000 L CNN
F 1 "220" H 9820 3855 50  0000 L CNN
F 2 "" V 9680 3900 50  0001 C CNN
F 3 "~" H 9750 3900 50  0001 C CNN
	1    9750 3900
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D3
U 1 1 606C2A95
P 9750 3500
F 0 "D3" V 9789 3383 50  0000 R CNN
F 1 "LED" V 9698 3383 50  0000 R CNN
F 2 "" H 9750 3500 50  0001 C CNN
F 3 "~" H 9750 3500 50  0001 C CNN
	1    9750 3500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9750 2750 9750 3350
Text GLabel 8050 2950 2    50   Input ~ 0
SW1out
Text GLabel 8050 3050 2    50   Input ~ 0
SW2out
Text GLabel 8050 3150 2    50   Input ~ 0
SW3out
Text GLabel 9250 2850 2    50   Input ~ 0
SCK
Text GLabel 10000 2750 2    50   Input ~ 0
MOSI
$Comp
L power:+5V #PWR0108
U 1 1 606D0708
P 6850 1750
F 0 "#PWR0108" H 6850 1600 50  0001 C CNN
F 1 "+5V" H 6865 1923 50  0000 C CNN
F 2 "" H 6850 1750 50  0001 C CNN
F 3 "" H 6850 1750 50  0001 C CNN
	1    6850 1750
	1    0    0    -1  
$EndComp
Text GLabel 2650 4650 2    50   Input ~ 0
SH4
Text GLabel 8100 3250 2    50   Input ~ 0
OVERFLOW_INDICATOR
Wire Wire Line
	8050 3250 8100 3250
Connection ~ 8050 3250
Wire Wire Line
	10500 2750 10750 2750
Wire Wire Line
	10500 4050 10500 4150
Wire Wire Line
	10500 3650 10500 3750
$Comp
L power:GND #PWR0109
U 1 1 606E8926
P 10500 4150
F 0 "#PWR0109" H 10500 3900 50  0001 C CNN
F 1 "GND" H 10505 3977 50  0000 C CNN
F 2 "" H 10500 4150 50  0001 C CNN
F 3 "" H 10500 4150 50  0001 C CNN
	1    10500 4150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 606E892C
P 10500 3900
F 0 "R7" H 10570 3946 50  0000 L CNN
F 1 "220" H 10570 3855 50  0000 L CNN
F 2 "" V 10430 3900 50  0001 C CNN
F 3 "~" H 10500 3900 50  0001 C CNN
	1    10500 3900
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D4
U 1 1 606E8932
P 10500 3500
F 0 "D4" V 10539 3383 50  0000 R CNN
F 1 "LED" V 10448 3383 50  0000 R CNN
F 2 "" H 10500 3500 50  0001 C CNN
F 3 "~" H 10500 3500 50  0001 C CNN
	1    10500 3500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10500 2750 10500 3350
Text GLabel 10750 2750 2    50   Input ~ 0
MISO
Wire Wire Line
	7450 2750 9750 2750
Connection ~ 9750 2750
$Comp
L power:GND #PWR0110
U 1 1 606F3C0D
P 6850 4550
F 0 "#PWR0110" H 6850 4300 50  0001 C CNN
F 1 "GND" H 6855 4377 50  0000 C CNN
F 2 "" H 6850 4550 50  0001 C CNN
F 3 "" H 6850 4550 50  0001 C CNN
	1    6850 4550
	1    0    0    -1  
$EndComp
$EndSCHEMATC
