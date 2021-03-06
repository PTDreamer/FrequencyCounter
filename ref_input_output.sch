EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 8 10
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	6600 3400 6600 2800
$Comp
L Analog_Switch:TS5A23159DGS U?
U 1 1 5F5D3F6E
P 6100 2900
AR Path="/5F5D3F6E" Ref="U?"  Part="1" 
AR Path="/5F5C46CD/5F5D3F6E" Ref="U25"  Part="1" 
F 0 "U25" H 6100 3267 50  0000 C CNN
F 1 "TS5A23159DGS" H 6100 3176 50  0000 C CNN
F 2 "Package_SO:VSSOP-10_3x3mm_P0.5mm" H 6100 2750 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/ts5a23159.pdf" H 5050 2550 50  0001 C CNN
	1    6100 2900
	1    0    0    -1  
$EndComp
$Comp
L Analog_Switch:TS5A23159DGS U?
U 2 1 5F5D3F74
P 5450 3500
AR Path="/5F5D3F74" Ref="U?"  Part="2" 
AR Path="/5F5C46CD/5F5D3F74" Ref="U25"  Part="2" 
F 0 "U25" H 5450 3867 50  0000 C CNN
F 1 "TS5A23159DGS" H 5450 3776 50  0000 C CNN
F 2 "Package_SO:VSSOP-10_3x3mm_P0.5mm" H 5450 3350 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/ts5a23159.pdf" H 4400 3150 50  0001 C CNN
	2    5450 3500
	1    0    0    -1  
$EndComp
$Comp
L Analog_Switch:TS5A23159DGS U?
U 3 1 5F5E05BC
P 4150 3100
AR Path="/5F5E05BC" Ref="U?"  Part="3" 
AR Path="/5F5C46CD/5F5E05BC" Ref="U25"  Part="3" 
F 0 "U25" H 4330 3146 50  0000 L CNN
F 1 "TS5A23159DGS" H 4330 3055 50  0000 L CNN
F 2 "Package_SO:VSSOP-10_3x3mm_P0.5mm" H 4150 2950 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/ts5a23159.pdf" H 3100 2750 50  0001 C CNN
	3    4150 3100
	1    0    0    -1  
$EndComp
$Comp
L onsemi:NC7SZ04M5X U?
U 1 1 5F5F1DA7
P 7500 2400
AR Path="/5F522534/5F5F1DA7" Ref="U?"  Part="1" 
AR Path="/5F5F1DA7" Ref="U?"  Part="1" 
AR Path="/5F5C46CD/5F5F1DA7" Ref="U26"  Part="1" 
F 0 "U26" H 8000 2665 50  0000 C CNN
F 1 "NC7SZ04M5X" H 8000 2574 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5_HandSoldering" H 7500 2800 50  0001 L CNN
F 3 "https://www.onsemi.com/pub/Collateral/NC7SZ04-D.PDF" H 7500 2900 50  0001 L CNN
F 4 "+85°C" H 7500 3000 50  0001 L CNN "ambient temperature range high"
F 5 "-40°C" H 7500 3100 50  0001 L CNN "ambient temperature range low"
F 6 "No" H 7500 3200 50  0001 L CNN "automotive"
F 7 "IC" H 7500 3300 50  0001 L CNN "category"
F 8 "Integrated Circuits (ICs)" H 7500 3400 50  0001 L CNN "device class L1"
F 9 "Logic ICs" H 7500 3500 50  0001 L CNN "device class L2"
F 10 "Logic Gates" H 7500 3600 50  0001 L CNN "device class L3"
F 11 "IC INVERTER 1CH 1-INP SOT23-5" H 7500 3700 50  0001 L CNN "digikey description"
F 12 "NC7SZ04M5XCT-ND" H 7500 3800 50  0001 L CNN "digikey part number"
F 13 "https://www.onsemi.com/pub/Collateral/527AH.PDF" H 7500 3900 50  0001 L CNN "footprint url"
F 14 "1.1mm" H 7500 4000 50  0001 L CNN "height"
F 15 "SOT95P275X100-5" H 7500 4100 50  0001 L CNN "ipc land pattern name"
F 16 "Yes" H 7500 4200 50  0001 L CNN "lead free"
F 17 "c521554faa0b3418" H 7500 4300 50  0001 L CNN "library id"
F 18 "Inverting" H 7500 4400 50  0001 L CNN "logic function desc"
F 19 "ON Semiconductor" H 7500 4500 50  0001 L CNN "manufacturer"
F 20 "+150°C" H 7500 4600 50  0001 L CNN "max junction temp"
F 21 "5.5V" H 7500 4700 50  0001 L CNN "max supply voltage"
F 22 "1.5V" H 7500 4800 50  0001 L CNN "min supply voltage"
F 23 "Inverter 1-Element CMOS 5-Pin SOT-23 Rail Inverter 1-Element CMOS 5-Pin SOT-23 Rail" H 7500 4900 50  0001 L CNN "mouser description"
F 24 "512-NC7SZ04M5X" H 7500 5000 50  0001 L CNN "mouser part number"
F 25 "1" H 7500 5100 50  0001 L CNN "number of circuits"
F 26 "1" H 7500 5200 50  0001 L CNN "number of inputs"
F 27 "1" H 7500 5300 50  0001 L CNN "number of outputs"
F 28 "SOT23" H 7500 5400 50  0001 L CNN "package"
F 29 "2.4ns" H 7500 5500 50  0001 L CNN "propagation delay"
F 30 "2uA" H 7500 5600 50  0001 L CNN "quiescent current"
F 31 "Yes" H 7500 5700 50  0001 L CNN "rohs"
F 32 "0.01mm" H 7500 5800 50  0001 L CNN "standoff height"
F 33 "+85°C" H 7500 5900 50  0001 L CNN "temperature range high"
F 34 "-40°C" H 7500 6000 50  0001 L CNN "temperature range low"
	1    7500 2400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5F5F1DAD
P 7050 2900
AR Path="/5F522534/5F5F1DAD" Ref="R?"  Part="1" 
AR Path="/5F5F1DAD" Ref="R?"  Part="1" 
AR Path="/5F5C46CD/5F5F1DAD" Ref="R56"  Part="1" 
F 0 "R56" H 7120 2946 50  0000 L CNN
F 1 "49.9" H 7120 2855 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 6980 2900 50  0001 C CNN
F 3 "~" H 7050 2900 50  0001 C CNN
	1    7050 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 2750 7050 2700
Wire Wire Line
	7050 2700 7600 2700
NoConn ~ 7600 3000
$Comp
L power:GND #PWR?
U 1 1 5F5F1DB6
P 8600 3000
AR Path="/5F522534/5F5F1DB6" Ref="#PWR?"  Part="1" 
AR Path="/5F5F1DB6" Ref="#PWR?"  Part="1" 
AR Path="/5F5C46CD/5F5F1DB6" Ref="#PWR0111"  Part="1" 
F 0 "#PWR0111" H 8600 2750 50  0001 C CNN
F 1 "GND" H 8605 2827 50  0000 C CNN
F 2 "" H 8600 3000 50  0001 C CNN
F 3 "" H 8600 3000 50  0001 C CNN
	1    8600 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 3000 8600 3000
$Comp
L Device:R R?
U 1 1 5F5F1DBD
P 7450 2050
AR Path="/5F522534/5F5F1DBD" Ref="R?"  Part="1" 
AR Path="/5F5F1DBD" Ref="R?"  Part="1" 
AR Path="/5F5C46CD/5F5F1DBD" Ref="R57"  Part="1" 
F 0 "R57" H 7520 2096 50  0000 L CNN
F 1 "4.7" H 7520 2005 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7380 2050 50  0001 C CNN
F 3 "~" H 7450 2050 50  0001 C CNN
	1    7450 2050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5F5F1DC3
P 7150 2050
AR Path="/5F522534/5F5F1DC3" Ref="C?"  Part="1" 
AR Path="/5F5F1DC3" Ref="C?"  Part="1" 
AR Path="/5F5C46CD/5F5F1DC3" Ref="C116"  Part="1" 
F 0 "C116" H 7265 2096 50  0000 L CNN
F 1 "0.1u" H 7265 2005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7188 1900 50  0001 C CNN
F 3 "~" H 7150 2050 50  0001 C CNN
	1    7150 2050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F5F1DC9
P 7000 2200
AR Path="/5F522534/5F5F1DC9" Ref="#PWR?"  Part="1" 
AR Path="/5F5F1DC9" Ref="#PWR?"  Part="1" 
AR Path="/5F5C46CD/5F5F1DC9" Ref="#PWR0110"  Part="1" 
F 0 "#PWR0110" H 7000 1950 50  0001 C CNN
F 1 "GND" H 7005 2027 50  0000 C CNN
F 2 "" H 7000 2200 50  0001 C CNN
F 3 "" H 7000 2200 50  0001 C CNN
	1    7000 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 2200 7000 2200
Connection ~ 7000 2200
Wire Wire Line
	7000 2200 7150 2200
Wire Wire Line
	6800 1900 7150 1900
Connection ~ 7150 1900
Wire Wire Line
	7150 1900 7450 1900
Wire Wire Line
	7450 2200 7450 2400
Wire Wire Line
	7450 2400 7600 2400
$Comp
L Device:R R?
U 1 1 5F5F1DDE
P 8700 2700
AR Path="/5F522534/5F5F1DDE" Ref="R?"  Part="1" 
AR Path="/5F5F1DDE" Ref="R?"  Part="1" 
AR Path="/5F5C46CD/5F5F1DDE" Ref="R58"  Part="1" 
F 0 "R58" V 8493 2700 50  0000 C CNN
F 1 "33" V 8584 2700 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 8630 2700 50  0001 C CNN
F 3 "~" H 8700 2700 50  0001 C CNN
	1    8700 2700
	0    1    1    0   
$EndComp
Wire Wire Line
	8400 2700 8550 2700
Wire Wire Line
	9000 2700 8850 2700
Text HLabel 5500 2900 0    50   Input ~ 0
rf_input_output
Wire Wire Line
	6400 2800 6600 2800
Wire Wire Line
	6400 3000 6750 3000
Wire Wire Line
	5750 3400 6600 3400
Wire Wire Line
	6600 3400 6900 3400
Connection ~ 6600 3400
Text HLabel 6900 3400 2    50   Input ~ 0
10Mhz_ref
Wire Wire Line
	5500 2900 5800 2900
Wire Wire Line
	6750 3000 6750 3050
Wire Wire Line
	6750 3050 7050 3050
Wire Wire Line
	9000 2700 9000 3600
Wire Wire Line
	5750 3600 9000 3600
$Comp
L Device:C C?
U 1 1 5F631F63
P 6800 2050
AR Path="/5F522534/5F631F63" Ref="C?"  Part="1" 
AR Path="/5F5C46CD/5F631F63" Ref="C115"  Part="1" 
F 0 "C115" H 6915 2096 50  0000 L CNN
F 1 "4.7u" H 6915 2005 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 6838 1900 50  0001 C CNN
F 3 "~" H 6800 2050 50  0001 C CNN
	1    6800 2050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F63A9A8
P 4150 3650
AR Path="/5F522534/5F63A9A8" Ref="#PWR?"  Part="1" 
AR Path="/5F63A9A8" Ref="#PWR?"  Part="1" 
AR Path="/5F5C46CD/5F63A9A8" Ref="#PWR0109"  Part="1" 
F 0 "#PWR0109" H 4150 3400 50  0001 C CNN
F 1 "GND" H 4155 3477 50  0000 C CNN
F 2 "" H 4150 3650 50  0001 C CNN
F 3 "" H 4150 3650 50  0001 C CNN
	1    4150 3650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5F63AF73
P 3650 3050
AR Path="/5F522534/5F63AF73" Ref="C?"  Part="1" 
AR Path="/5F63AF73" Ref="C?"  Part="1" 
AR Path="/5F5C46CD/5F63AF73" Ref="C114"  Part="1" 
F 0 "C114" H 3765 3096 50  0000 L CNN
F 1 "0.1u" H 3765 3005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3688 2900 50  0001 C CNN
F 3 "~" H 3650 3050 50  0001 C CNN
	1    3650 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 2600 3650 2600
Wire Wire Line
	3650 2600 3650 2900
Connection ~ 4150 2600
Wire Wire Line
	3650 3200 3650 3600
Wire Wire Line
	3650 3600 4150 3600
Wire Wire Line
	4150 3600 4150 3650
Connection ~ 4150 3600
Text HLabel 5250 4150 0    50   Input ~ 0
ctr_0
Text HLabel 5250 4250 0    50   Input ~ 0
ctr_1
Wire Wire Line
	5250 4150 5450 4150
Wire Wire Line
	5450 4150 5450 3800
Wire Wire Line
	5250 4250 6100 4250
Wire Wire Line
	6100 4250 6100 3200
Wire Wire Line
	7150 1750 7150 1900
Text Label 7150 1750 0    50   ~ 0
3.3V
Text Label 3900 2600 0    50   ~ 0
3.3V
Text HLabel 4150 2250 0    50   Input ~ 0
3.3V_in
Wire Wire Line
	4150 2250 4150 2600
Text Label 5500 2900 0    50   ~ 0
rf_input
Text Label 6450 2800 0    50   ~ 0
rf1
Text Label 6450 3000 0    50   ~ 0
rf2
Text Label 7250 2700 0    50   ~ 0
rf22
Text Label 8350 2700 0    50   ~ 0
rf222
Text Label 5100 3500 0    50   ~ 0
rf_out
$Comp
L onsemi:NC7SZ04M5X U?
U 1 1 5F800778
P 3700 4650
AR Path="/5F522534/5F800778" Ref="U?"  Part="1" 
AR Path="/5F5C46CD/5F800778" Ref="U15"  Part="1" 
F 0 "U15" H 4200 4915 50  0000 C CNN
F 1 "NC7SZ04M5X" H 4200 4824 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5_HandSoldering" H 3700 5050 50  0001 L CNN
F 3 "https://www.onsemi.com/pub/Collateral/NC7SZ04-D.PDF" H 3700 5150 50  0001 L CNN
F 4 "+85°C" H 3700 5250 50  0001 L CNN "ambient temperature range high"
F 5 "-40°C" H 3700 5350 50  0001 L CNN "ambient temperature range low"
F 6 "No" H 3700 5450 50  0001 L CNN "automotive"
F 7 "IC" H 3700 5550 50  0001 L CNN "category"
F 8 "Integrated Circuits (ICs)" H 3700 5650 50  0001 L CNN "device class L1"
F 9 "Logic ICs" H 3700 5750 50  0001 L CNN "device class L2"
F 10 "Logic Gates" H 3700 5850 50  0001 L CNN "device class L3"
F 11 "IC INVERTER 1CH 1-INP SOT23-5" H 3700 5950 50  0001 L CNN "digikey description"
F 12 "NC7SZ04M5XCT-ND" H 3700 6050 50  0001 L CNN "digikey part number"
F 13 "https://www.onsemi.com/pub/Collateral/527AH.PDF" H 3700 6150 50  0001 L CNN "footprint url"
F 14 "1.1mm" H 3700 6250 50  0001 L CNN "height"
F 15 "SOT95P275X100-5" H 3700 6350 50  0001 L CNN "ipc land pattern name"
F 16 "Yes" H 3700 6450 50  0001 L CNN "lead free"
F 17 "c521554faa0b3418" H 3700 6550 50  0001 L CNN "library id"
F 18 "Inverting" H 3700 6650 50  0001 L CNN "logic function desc"
F 19 "ON Semiconductor" H 3700 6750 50  0001 L CNN "manufacturer"
F 20 "+150°C" H 3700 6850 50  0001 L CNN "max junction temp"
F 21 "5.5V" H 3700 6950 50  0001 L CNN "max supply voltage"
F 22 "1.5V" H 3700 7050 50  0001 L CNN "min supply voltage"
F 23 "Inverter 1-Element CMOS 5-Pin SOT-23 Rail Inverter 1-Element CMOS 5-Pin SOT-23 Rail" H 3700 7150 50  0001 L CNN "mouser description"
F 24 "512-NC7SZ04M5X" H 3700 7250 50  0001 L CNN "mouser part number"
F 25 "1" H 3700 7350 50  0001 L CNN "number of circuits"
F 26 "1" H 3700 7450 50  0001 L CNN "number of inputs"
F 27 "1" H 3700 7550 50  0001 L CNN "number of outputs"
F 28 "SOT23" H 3700 7650 50  0001 L CNN "package"
F 29 "2.4ns" H 3700 7750 50  0001 L CNN "propagation delay"
F 30 "2uA" H 3700 7850 50  0001 L CNN "quiescent current"
F 31 "Yes" H 3700 7950 50  0001 L CNN "rohs"
F 32 "0.01mm" H 3700 8050 50  0001 L CNN "standoff height"
F 33 "+85°C" H 3700 8150 50  0001 L CNN "temperature range high"
F 34 "-40°C" H 3700 8250 50  0001 L CNN "temperature range low"
	1    3700 4650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5F80077E
P 3500 4950
AR Path="/5F522534/5F80077E" Ref="R?"  Part="1" 
AR Path="/5F5C46CD/5F80077E" Ref="R37"  Part="1" 
F 0 "R37" H 3570 4996 50  0000 L CNN
F 1 "100" H 3570 4905 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 3430 4950 50  0001 C CNN
F 3 "~" H 3500 4950 50  0001 C CNN
	1    3500 4950
	0    1    1    0   
$EndComp
NoConn ~ 3800 5250
$Comp
L power:GND #PWR?
U 1 1 5F800787
P 4800 5250
AR Path="/5F522534/5F800787" Ref="#PWR?"  Part="1" 
AR Path="/5F5C46CD/5F800787" Ref="#PWR063"  Part="1" 
F 0 "#PWR063" H 4800 5000 50  0001 C CNN
F 1 "GND" H 4805 5077 50  0000 C CNN
F 2 "" H 4800 5250 50  0001 C CNN
F 3 "" H 4800 5250 50  0001 C CNN
	1    4800 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 5250 4800 5250
Wire Wire Line
	3050 4650 3800 4650
Wire Wire Line
	4600 4950 4750 4950
Text HLabel 5150 4950 2    50   Input ~ 0
rf_output_0
Wire Wire Line
	5050 4950 5150 4950
$Comp
L Device:R R?
U 1 1 5F810631
P 3050 4500
AR Path="/5F522534/5F810631" Ref="R?"  Part="1" 
AR Path="/5F5C46CD/5F810631" Ref="R32"  Part="1" 
F 0 "R32" H 3120 4546 50  0000 L CNN
F 1 "4.7" H 3120 4455 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2980 4500 50  0001 C CNN
F 3 "~" H 3050 4500 50  0001 C CNN
	1    3050 4500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5F810637
P 2750 4500
AR Path="/5F522534/5F810637" Ref="C?"  Part="1" 
AR Path="/5F5C46CD/5F810637" Ref="C70"  Part="1" 
F 0 "C70" H 2865 4546 50  0000 L CNN
F 1 "0.1u" H 2865 4455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2788 4350 50  0001 C CNN
F 3 "~" H 2750 4500 50  0001 C CNN
	1    2750 4500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5F81063D
P 2400 4500
AR Path="/5F522534/5F81063D" Ref="C?"  Part="1" 
AR Path="/5F5C46CD/5F81063D" Ref="C49"  Part="1" 
F 0 "C49" H 2515 4546 50  0000 L CNN
F 1 "4.7u" H 2515 4455 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 2438 4350 50  0001 C CNN
F 3 "~" H 2400 4500 50  0001 C CNN
	1    2400 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 4350 2750 4350
Connection ~ 2750 4350
Wire Wire Line
	2750 4350 3050 4350
$Comp
L power:GND #PWR?
U 1 1 5F810646
P 2600 4650
AR Path="/5F522534/5F810646" Ref="#PWR?"  Part="1" 
AR Path="/5F5C46CD/5F810646" Ref="#PWR052"  Part="1" 
F 0 "#PWR052" H 2600 4400 50  0001 C CNN
F 1 "GND" H 2605 4477 50  0000 C CNN
F 2 "" H 2600 4650 50  0001 C CNN
F 3 "" H 2600 4650 50  0001 C CNN
	1    2600 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 4650 2600 4650
Connection ~ 2600 4650
Wire Wire Line
	2600 4650 2750 4650
Wire Wire Line
	3050 4250 3050 4350
Connection ~ 3050 4350
Wire Wire Line
	3650 4950 3800 4950
$Comp
L onsemi:NC7SZ04M5X U?
U 1 1 5F850990
P 3700 5950
AR Path="/5F522534/5F850990" Ref="U?"  Part="1" 
AR Path="/5F5C46CD/5F850990" Ref="U29"  Part="1" 
F 0 "U29" H 4200 6215 50  0000 C CNN
F 1 "NC7SZ04M5X" H 4200 6124 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5_HandSoldering" H 3700 6350 50  0001 L CNN
F 3 "https://www.onsemi.com/pub/Collateral/NC7SZ04-D.PDF" H 3700 6450 50  0001 L CNN
F 4 "+85°C" H 3700 6550 50  0001 L CNN "ambient temperature range high"
F 5 "-40°C" H 3700 6650 50  0001 L CNN "ambient temperature range low"
F 6 "No" H 3700 6750 50  0001 L CNN "automotive"
F 7 "IC" H 3700 6850 50  0001 L CNN "category"
F 8 "Integrated Circuits (ICs)" H 3700 6950 50  0001 L CNN "device class L1"
F 9 "Logic ICs" H 3700 7050 50  0001 L CNN "device class L2"
F 10 "Logic Gates" H 3700 7150 50  0001 L CNN "device class L3"
F 11 "IC INVERTER 1CH 1-INP SOT23-5" H 3700 7250 50  0001 L CNN "digikey description"
F 12 "NC7SZ04M5XCT-ND" H 3700 7350 50  0001 L CNN "digikey part number"
F 13 "https://www.onsemi.com/pub/Collateral/527AH.PDF" H 3700 7450 50  0001 L CNN "footprint url"
F 14 "1.1mm" H 3700 7550 50  0001 L CNN "height"
F 15 "SOT95P275X100-5" H 3700 7650 50  0001 L CNN "ipc land pattern name"
F 16 "Yes" H 3700 7750 50  0001 L CNN "lead free"
F 17 "c521554faa0b3418" H 3700 7850 50  0001 L CNN "library id"
F 18 "Inverting" H 3700 7950 50  0001 L CNN "logic function desc"
F 19 "ON Semiconductor" H 3700 8050 50  0001 L CNN "manufacturer"
F 20 "+150°C" H 3700 8150 50  0001 L CNN "max junction temp"
F 21 "5.5V" H 3700 8250 50  0001 L CNN "max supply voltage"
F 22 "1.5V" H 3700 8350 50  0001 L CNN "min supply voltage"
F 23 "Inverter 1-Element CMOS 5-Pin SOT-23 Rail Inverter 1-Element CMOS 5-Pin SOT-23 Rail" H 3700 8450 50  0001 L CNN "mouser description"
F 24 "512-NC7SZ04M5X" H 3700 8550 50  0001 L CNN "mouser part number"
F 25 "1" H 3700 8650 50  0001 L CNN "number of circuits"
F 26 "1" H 3700 8750 50  0001 L CNN "number of inputs"
F 27 "1" H 3700 8850 50  0001 L CNN "number of outputs"
F 28 "SOT23" H 3700 8950 50  0001 L CNN "package"
F 29 "2.4ns" H 3700 9050 50  0001 L CNN "propagation delay"
F 30 "2uA" H 3700 9150 50  0001 L CNN "quiescent current"
F 31 "Yes" H 3700 9250 50  0001 L CNN "rohs"
F 32 "0.01mm" H 3700 9350 50  0001 L CNN "standoff height"
F 33 "+85°C" H 3700 9450 50  0001 L CNN "temperature range high"
F 34 "-40°C" H 3700 9550 50  0001 L CNN "temperature range low"
	1    3700 5950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5F85099A
P 3500 6250
AR Path="/5F522534/5F85099A" Ref="R?"  Part="1" 
AR Path="/5F5C46CD/5F85099A" Ref="R62"  Part="1" 
F 0 "R62" H 3570 6296 50  0000 L CNN
F 1 "100" H 3570 6205 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 3430 6250 50  0001 C CNN
F 3 "~" H 3500 6250 50  0001 C CNN
	1    3500 6250
	0    1    1    0   
$EndComp
NoConn ~ 3800 6550
$Comp
L power:GND #PWR?
U 1 1 5F8509A5
P 4800 6550
AR Path="/5F522534/5F8509A5" Ref="#PWR?"  Part="1" 
AR Path="/5F5C46CD/5F8509A5" Ref="#PWR0118"  Part="1" 
F 0 "#PWR0118" H 4800 6300 50  0001 C CNN
F 1 "GND" H 4805 6377 50  0000 C CNN
F 2 "" H 4800 6550 50  0001 C CNN
F 3 "" H 4800 6550 50  0001 C CNN
	1    4800 6550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 6550 4800 6550
Wire Wire Line
	3050 5950 3800 5950
$Comp
L Device:R R?
U 1 1 5F8509B1
P 4900 6250
AR Path="/5F522534/5F8509B1" Ref="R?"  Part="1" 
AR Path="/5F5C46CD/5F8509B1" Ref="R64"  Part="1" 
F 0 "R64" V 4693 6250 50  0000 C CNN
F 1 "33" V 4784 6250 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 4830 6250 50  0001 C CNN
F 3 "~" H 4900 6250 50  0001 C CNN
	1    4900 6250
	0    1    1    0   
$EndComp
Wire Wire Line
	4600 6250 4750 6250
Text HLabel 5150 6250 2    50   Input ~ 0
rf_output_1
Wire Wire Line
	5050 6250 5150 6250
$Comp
L Device:R R?
U 1 1 5F8509BE
P 3050 5800
AR Path="/5F522534/5F8509BE" Ref="R?"  Part="1" 
AR Path="/5F5C46CD/5F8509BE" Ref="R34"  Part="1" 
F 0 "R34" H 3120 5846 50  0000 L CNN
F 1 "4.7" H 3120 5755 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2980 5800 50  0001 C CNN
F 3 "~" H 3050 5800 50  0001 C CNN
	1    3050 5800
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5F8509C8
P 2750 5800
AR Path="/5F522534/5F8509C8" Ref="C?"  Part="1" 
AR Path="/5F5C46CD/5F8509C8" Ref="C94"  Part="1" 
F 0 "C94" H 2865 5846 50  0000 L CNN
F 1 "0.1u" H 2865 5755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2788 5650 50  0001 C CNN
F 3 "~" H 2750 5800 50  0001 C CNN
	1    2750 5800
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5F8509D2
P 2400 5800
AR Path="/5F522534/5F8509D2" Ref="C?"  Part="1" 
AR Path="/5F5C46CD/5F8509D2" Ref="C69"  Part="1" 
F 0 "C69" H 2515 5846 50  0000 L CNN
F 1 "4.7u" H 2515 5755 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 2438 5650 50  0001 C CNN
F 3 "~" H 2400 5800 50  0001 C CNN
	1    2400 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 5650 2750 5650
Connection ~ 2750 5650
Wire Wire Line
	2750 5650 3050 5650
$Comp
L power:GND #PWR?
U 1 1 5F8509DF
P 2600 5950
AR Path="/5F522534/5F8509DF" Ref="#PWR?"  Part="1" 
AR Path="/5F5C46CD/5F8509DF" Ref="#PWR056"  Part="1" 
F 0 "#PWR056" H 2600 5700 50  0001 C CNN
F 1 "GND" H 2605 5777 50  0000 C CNN
F 2 "" H 2600 5950 50  0001 C CNN
F 3 "" H 2600 5950 50  0001 C CNN
	1    2600 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 5950 2600 5950
Connection ~ 2600 5950
Wire Wire Line
	2600 5950 2750 5950
Wire Wire Line
	3050 5550 3050 5650
Connection ~ 3050 5650
Wire Wire Line
	3650 6250 3800 6250
Wire Wire Line
	3350 6250 3350 4950
Wire Wire Line
	4750 3500 4750 4100
Wire Wire Line
	4750 4100 3350 4100
Wire Wire Line
	3350 4100 3350 4950
Wire Wire Line
	4750 3500 5150 3500
Connection ~ 3350 4950
Text Label 3050 4250 0    50   ~ 0
3.3V
Text Label 3050 5550 0    50   ~ 0
3.3V
$Comp
L Device:R R?
U 1 1 5F800791
P 4900 4950
AR Path="/5F522534/5F800791" Ref="R?"  Part="1" 
AR Path="/5F5C46CD/5F800791" Ref="R63"  Part="1" 
F 0 "R63" V 4693 4950 50  0000 C CNN
F 1 "33" V 4784 4950 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 4830 4950 50  0001 C CNN
F 3 "~" H 4900 4950 50  0001 C CNN
	1    4900 4950
	0    1    1    0   
$EndComp
$EndSCHEMATC
