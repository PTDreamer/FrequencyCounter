EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 10
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector:Conn_Coaxial J3
U 1 1 5F47352B
P 5750 2750
F 0 "J3" H 5678 2988 50  0000 C CNN
F 1 "Conn_Coaxial" H 5678 2897 50  0000 C CNN
F 2 "Connector_Coaxial:SMA_Amphenol_132289_EdgeMount" H 5750 2750 50  0001 C CNN
F 3 " ~" H 5750 2750 50  0001 C CNN
	1    5750 2750
	-1   0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 5F47753E
P 6200 2750
F 0 "C5" V 6452 2750 50  0000 C CNN
F 1 "10n" V 6361 2750 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 6238 2600 50  0001 C CNN
F 3 "~" H 6200 2750 50  0001 C CNN
	1    6200 2750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5950 2750 6050 2750
$Comp
L power:GND #PWR03
U 1 1 5F47B8D3
P 5750 3150
F 0 "#PWR03" H 5750 2900 50  0001 C CNN
F 1 "GND" H 5755 2977 50  0000 C CNN
F 2 "" H 5750 3150 50  0001 C CNN
F 3 "" H 5750 3150 50  0001 C CNN
	1    5750 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 2950 5750 3150
$Comp
L Device:R R2
U 1 1 5F67EF25
P 6900 2500
F 0 "R2" H 6830 2454 50  0000 R CNN
F 1 "4.12" H 6830 2545 50  0000 R CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 6830 2500 50  0001 C CNN
F 3 "~" H 6900 2500 50  0001 C CNN
	1    6900 2500
	-1   0    0    1   
$EndComp
$Comp
L Device:R R3
U 1 1 5F684B03
P 6900 2950
F 0 "R3" H 6830 2904 50  0000 R CNN
F 1 "1200" H 6830 2995 50  0000 R CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 6830 2950 50  0001 C CNN
F 3 "~" H 6900 2950 50  0001 C CNN
	1    6900 2950
	-1   0    0    1   
$EndComp
Wire Wire Line
	6900 2750 6900 2650
Wire Wire Line
	6900 2800 6900 2750
Connection ~ 6900 2750
$Sheet
S 7900 3200 700  550 
U 5F80B6B0
F0 "logdetector" 50
F1 "logdetector.sch" 50
F2 "RF_INPUT" I L 7900 3350 50 
F3 "vout" I R 8600 3500 50 
F4 "5V_in" I R 8600 3650 50 
$EndSheet
Wire Wire Line
	6900 2350 6900 2200
Wire Wire Line
	6900 2200 7350 2200
Wire Wire Line
	6900 3100 6900 3350
Wire Wire Line
	6900 3350 7350 3350
$Sheet
S 12400 2150 1000 1400
U 5F51477E
F0 "divider" 50
F1 "divider.sch" 50
F2 "SCK" I L 12400 2650 50 
F3 "SDO" I L 12400 2550 50 
F4 "SDI" I L 12400 2450 50 
F5 "SENB" I L 12400 2750 50 
F6 "INPUT" I L 12400 2250 50 
F7 "OUT" I R 13400 2250 50 
F8 "Vin_10_or_12v" I L 12400 3300 50 
$EndSheet
$Sheet
S 5500 4350 1450 1400
U 5F64F420
F0 "fpga" 50
F1 "fpga.sch" 50
F2 "icp1" I R 6950 5550 50 
F3 "int1" I R 6950 4950 50 
F4 "miso" I R 6950 4500 50 
F5 "modeshift" I R 6950 5150 50 
F6 "mosi" I R 6950 4600 50 
F7 "rampstartP" I L 5500 5200 50 
F8 "refclk" I L 5500 4400 50 
F9 "sck" I R 6950 4700 50 
F10 "sigclk" I L 5500 4500 50 
F11 "sigin1" I L 5500 4600 50 
F12 "sigout" I L 5500 4800 50 
F13 "ss" I R 6950 4800 50 
F14 "sigin2" I L 5500 4700 50 
F15 "rampstopN" I L 5500 5000 50 
F16 "5V_in" I L 5500 4900 50 
F17 "icp0" I R 6950 5450 50 
$EndSheet
$Sheet
S 3250 4850 1500 1150
U 5F522534
F0 "frequency_ref" 50
F1 "frequency_ref.sch" 50
F2 "f_adjust_0_3v" I R 4750 5850 50 
F3 "3.3V_ref_in" I R 4750 5750 50 
F4 "10_or_12V_in" I L 3250 5000 50 
F5 "10MHz" I L 3250 5300 50 
$EndSheet
Wire Wire Line
	7850 4500 6950 4500
Wire Wire Line
	6950 4600 7450 4600
Wire Wire Line
	7450 4600 7450 4400
Wire Wire Line
	7450 4400 7850 4400
Wire Wire Line
	7850 4600 7550 4600
Wire Wire Line
	7550 4600 7550 4700
Wire Wire Line
	7550 4700 6950 4700
Wire Wire Line
	6950 4800 7650 4800
Wire Wire Line
	7650 4800 7650 4700
Wire Wire Line
	7650 4700 7850 4700
Wire Wire Line
	7850 4950 6950 4950
Wire Wire Line
	6950 5150 7850 5150
Wire Wire Line
	10300 4400 10400 4400
Wire Wire Line
	10400 4400 10400 3500
Wire Wire Line
	10400 3500 8600 3500
$Sheet
S 7900 2100 1100 700 
U 5F857C26
F0 "attenuator" 50
F1 "attenuator.sch" 50
F2 "ATTEN_CLK" I R 9000 2650 50 
F3 "ATTEN_LE" I R 9000 2750 50 
F4 "ATTEN1_SERIN" I R 9000 2450 50 
F5 "ATTEN2_SEROUT" I R 9000 2550 50 
F6 "RF_IN" I L 7900 2200 50 
F7 "RF_OUT" I R 9000 2200 50 
F8 "5V_in" I L 7900 2700 50 
$EndSheet
Wire Wire Line
	9000 2200 9150 2200
Wire Wire Line
	9150 2200 9150 2150
Wire Wire Line
	9150 2150 9400 2150
Wire Wire Line
	10400 2150 10700 2150
Wire Wire Line
	12400 2250 10700 2250
Wire Wire Line
	10700 2150 10700 2250
Wire Wire Line
	9000 2550 10850 2550
Wire Wire Line
	10300 4650 10700 4650
Wire Wire Line
	10700 4650 10700 2450
Connection ~ 10700 2450
Wire Wire Line
	10700 2450 9000 2450
Wire Wire Line
	10300 4800 10850 4800
Wire Wire Line
	10850 4800 10850 2550
Connection ~ 10850 2550
Wire Wire Line
	10300 4950 11000 4950
Wire Wire Line
	11000 4950 11000 2650
Connection ~ 11000 2650
Wire Wire Line
	11000 2650 9000 2650
Wire Wire Line
	9000 2750 11100 2750
Wire Wire Line
	11150 2750 11150 5100
Wire Wire Line
	11150 5100 10300 5100
Wire Wire Line
	10300 5250 11300 5250
Wire Wire Line
	11300 5250 11300 2750
$Sheet
S 6400 6050 1100 1000
U 5F558ACC
F0 "interpolator" 50
F1 "interpolator.sch" 50
F2 "3.3v_input" I L 6400 6250 50 
F3 "f" I L 6400 6550 50 
F4 "not_c" I L 6400 6750 50 
F5 "int_out" I R 7500 6400 50 
$EndSheet
Wire Wire Line
	7500 6400 7550 6400
Wire Wire Line
	7700 6400 7700 6000
Wire Wire Line
	7700 6000 7850 6000
Wire Wire Line
	5500 5200 5250 5200
Wire Wire Line
	5250 5200 5250 6750
Wire Wire Line
	5250 6750 5900 6750
Wire Wire Line
	5500 5000 5150 5000
Wire Wire Line
	5150 5000 5150 6550
Wire Wire Line
	5150 6550 6000 6550
Wire Wire Line
	7700 5850 7700 5750
Wire Wire Line
	7700 5750 7850 5750
Wire Wire Line
	5500 4800 5250 4800
Wire Wire Line
	5250 4800 5250 4500
Wire Wire Line
	5250 4500 5500 4500
$Comp
L Connector:Conn_Coaxial J2
U 1 1 5F59F1C6
P 1450 4300
F 0 "J2" H 1378 4538 50  0000 C CNN
F 1 "Ref_Imput" H 1378 4447 50  0000 C CNN
F 2 "Connector_Coaxial:SMA_Amphenol_132289_EdgeMount" H 1450 4300 50  0001 C CNN
F 3 " ~" H 1450 4300 50  0001 C CNN
	1    1450 4300
	-1   0    0    -1  
$EndComp
$Sheet
S 1800 4200 850  700 
U 5F5C46CD
F0 "ref_input_output" 50
F1 "ref_input_output.sch" 50
F2 "rf_input_output" I L 1800 4300 50 
F3 "10Mhz_ref" I R 2650 4800 50 
F4 "ctr_0" I L 1800 4450 50 
F5 "ctr_1" I L 1800 4550 50 
F6 "3.3V_in" I R 2650 4450 50 
F7 "rf_output_0" I R 2650 4600 50 
F8 "rf_output_1" I R 2650 4700 50 
$EndSheet
Wire Wire Line
	1650 4300 1800 4300
Wire Wire Line
	2650 4800 2950 4800
Wire Wire Line
	2950 4800 2950 5300
Wire Wire Line
	2950 5300 3250 5300
Wire Wire Line
	2950 4400 5500 4400
Wire Wire Line
	2950 5500 2950 7400
Wire Wire Line
	2950 7400 7650 7400
Wire Wire Line
	1800 4550 1600 4550
Wire Wire Line
	1600 4550 1600 5550
Wire Wire Line
	1600 5550 2700 5550
Wire Wire Line
	2700 5550 2700 7700
Wire Wire Line
	1800 4450 1550 4450
Wire Wire Line
	1550 4450 1550 5600
Wire Wire Line
	1550 5600 2600 5600
Wire Wire Line
	2600 5600 2600 7800
Wire Wire Line
	7850 5900 6300 5900
Wire Wire Line
	6300 5900 6300 6250
Wire Wire Line
	6300 6250 6400 6250
Wire Wire Line
	7850 5050 7650 5050
Wire Wire Line
	7650 5050 7650 7400
Wire Wire Line
	7150 4100 5100 4100
Wire Wire Line
	5100 4100 5100 4700
Wire Wire Line
	5100 4700 5500 4700
Wire Wire Line
	10300 6550 10450 6550
Wire Wire Line
	10450 6550 10450 7700
Wire Wire Line
	2700 7700 10450 7700
Wire Wire Line
	10300 6350 10550 6350
Wire Wire Line
	10550 6350 10550 7800
Wire Wire Line
	2600 7800 10550 7800
Wire Wire Line
	5500 4600 5400 4600
Wire Wire Line
	5400 4600 5400 3950
Wire Wire Line
	5400 3950 13900 3950
Wire Wire Line
	13900 3950 13900 2250
Wire Wire Line
	13900 2250 13400 2250
Wire Wire Line
	7850 4250 7350 4250
Wire Wire Line
	7350 4250 7350 3850
Wire Wire Line
	7350 3850 2850 3850
Wire Wire Line
	2850 3850 2850 4450
Wire Wire Line
	2850 4450 2650 4450
Wire Wire Line
	4750 5750 5400 5750
Wire Wire Line
	5400 5750 5400 6250
Wire Wire Line
	5400 6250 6300 6250
Connection ~ 6300 6250
$Comp
L Connector:Conn_01x02_Female J1
U 1 1 5FA2BED2
P 950 1600
F 0 "J1" H 842 1275 50  0000 C CNN
F 1 "Power input" H 842 1366 50  0000 C CNN
F 2 "Connector_Phoenix_MC_HighVoltage:PhoenixContact_MC_1,5_2-G-5.08_1x02_P5.08mm_Horizontal" H 950 1600 50  0001 C CNN
F 3 "~" H 950 1600 50  0001 C CNN
	1    950  1600
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR01
U 1 1 5FA2CA77
P 1350 1950
F 0 "#PWR01" H 1350 1700 50  0001 C CNN
F 1 "GND" H 1355 1777 50  0000 C CNN
F 2 "" H 1350 1950 50  0001 C CNN
F 3 "" H 1350 1950 50  0001 C CNN
	1    1350 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 1600 1350 1600
$Comp
L Device:Ferrite_Bead FB2
U 1 1 5FA32CA5
P 1750 1450
F 0 "FB2" V 1476 1450 50  0000 C CNN
F 1 "Ferrite_Bead" V 1567 1450 50  0000 C CNN
F 2 "Inductor_SMD:L_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1680 1450 50  0001 C CNN
F 3 "~" H 1750 1450 50  0001 C CNN
	1    1750 1450
	0    1    1    0   
$EndComp
$Comp
L Device:Ferrite_Bead FB1
U 1 1 5FA331C9
P 1350 1750
F 0 "FB1" H 1213 1704 50  0000 R CNN
F 1 "Ferrite_Bead" H 1213 1795 50  0000 R CNN
F 2 "Inductor_SMD:L_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1280 1750 50  0001 C CNN
F 3 "~" H 1350 1750 50  0001 C CNN
	1    1350 1750
	-1   0    0    1   
$EndComp
$Comp
L Device:D D1
U 1 1 5FA33A8D
P 2150 1600
F 0 "D1" V 2104 1680 50  0000 L CNN
F 1 "D" V 2195 1680 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-123" H 2150 1600 50  0001 C CNN
F 3 "~" H 2150 1600 50  0001 C CNN
	1    2150 1600
	0    1    1    0   
$EndComp
$Comp
L Regulator_Linear:LM7810_TO220 U1
U 1 1 5FA349B9
P 3650 1450
F 0 "U1" H 3650 1692 50  0000 C CNN
F 1 "LM7810_TO220" H 3650 1601 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 3650 1675 50  0001 C CIN
F 3 "http://www.fairchildsemi.com/ds/LM/LM7805.pdf" H 3650 1400 50  0001 C CNN
	1    3650 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 1450 2150 1450
Connection ~ 2150 1450
Wire Wire Line
	2150 1450 2800 1450
Connection ~ 3150 1450
Wire Wire Line
	3150 1450 3350 1450
Wire Wire Line
	4300 1450 4100 1450
Wire Wire Line
	1350 1900 1350 1950
Wire Wire Line
	1350 1900 2150 1900
Wire Wire Line
	2150 1900 2150 1750
Connection ~ 1350 1900
$Comp
L Device:C C2
U 1 1 5FA53636
P 3150 1600
F 0 "C2" V 3402 1600 50  0000 C CNN
F 1 "10n" V 3311 1600 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3188 1450 50  0001 C CNN
F 3 "~" H 3150 1600 50  0001 C CNN
	1    3150 1600
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C1
U 1 1 5FA73802
P 2800 1600
F 0 "C1" H 2918 1646 50  0000 L CNN
F 1 "10u" H 2918 1555 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.00mm" H 2838 1450 50  0001 C CNN
F 3 "~" H 2800 1600 50  0001 C CNN
	1    2800 1600
	1    0    0    -1  
$EndComp
Connection ~ 2800 1450
Wire Wire Line
	2800 1450 3150 1450
$Comp
L Device:CP C3
U 1 1 5FA73C02
P 4100 1600
F 0 "C3" H 4218 1646 50  0000 L CNN
F 1 "10u" H 4218 1555 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.00mm" H 4138 1450 50  0001 C CNN
F 3 "~" H 4100 1600 50  0001 C CNN
	1    4100 1600
	1    0    0    -1  
$EndComp
Connection ~ 4100 1450
Wire Wire Line
	4100 1450 3950 1450
$Comp
L Device:C C4
U 1 1 5FA73FAB
P 4500 1600
F 0 "C4" V 4752 1600 50  0000 C CNN
F 1 "10n" V 4661 1600 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4538 1450 50  0001 C CNN
F 3 "~" H 4500 1600 50  0001 C CNN
	1    4500 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 1750 4100 1750
Connection ~ 2150 1750
Connection ~ 2800 1750
Wire Wire Line
	2800 1750 2150 1750
Connection ~ 3150 1750
Wire Wire Line
	3150 1750 2800 1750
Connection ~ 3650 1750
Wire Wire Line
	3650 1750 3150 1750
Connection ~ 4100 1750
Wire Wire Line
	4100 1750 3650 1750
Wire Wire Line
	4300 1450 4500 1450
Connection ~ 4300 1450
Text Label 5450 1450 0    50   ~ 0
VCC
Connection ~ 4500 1450
Text Label 7750 2700 2    50   ~ 0
VCC
Wire Wire Line
	7750 2700 7900 2700
Text Label 9300 2250 2    50   ~ 0
VCC
Wire Wire Line
	10400 2300 10550 2300
Wire Wire Line
	10550 2300 10550 3200
Wire Wire Line
	10550 3200 9300 3200
Wire Wire Line
	9300 3200 9300 3650
Wire Wire Line
	9300 3650 8600 3650
Text Label 12250 3300 2    50   ~ 0
VCC
Wire Wire Line
	12250 3300 12400 3300
Text Label 5350 4900 2    50   ~ 0
VCC
Wire Wire Line
	5350 4900 5500 4900
$Comp
L Switch:SW_SPST SW1
U 1 1 5FB06917
P 5100 1450
F 0 "SW1" H 5100 1685 50  0000 C CNN
F 1 "SW_SPST" H 5100 1594 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 5100 1450 50  0001 C CNN
F 3 "~" H 5100 1450 50  0001 C CNN
	1    5100 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 1450 4900 1450
Text Label 4350 1450 0    50   ~ 0
VCC_ALWAYS_ON
Text Label 2800 5150 2    50   ~ 0
VCC_ALWAYS_ON
Wire Wire Line
	3250 5000 2800 5000
Wire Wire Line
	2800 5000 2800 5150
Wire Wire Line
	5300 1450 5400 1450
Text Label 7750 6750 2    50   ~ 0
VCC
Wire Wire Line
	7750 6750 7850 6750
$Comp
L power:GND #PWR02
U 1 1 5FB3B8C2
P 1450 4500
F 0 "#PWR02" H 1450 4250 50  0001 C CNN
F 1 "GND" H 1455 4327 50  0000 C CNN
F 2 "" H 1450 4500 50  0001 C CNN
F 3 "" H 1450 4500 50  0001 C CNN
	1    1450 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 1250 5400 1450
Connection ~ 5400 1450
Wire Wire Line
	5400 1450 5450 1450
$Comp
L power:PWR_FLAG #FLG02
U 1 1 5F74E722
P 5400 1250
F 0 "#FLG02" H 5400 1325 50  0001 C CNN
F 1 "PWR_FLAG" H 5400 1423 50  0000 C CNN
F 2 "" H 5400 1250 50  0001 C CNN
F 3 "~" H 5400 1250 50  0001 C CNN
	1    5400 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	9300 2250 9400 2250
$Sheet
S 9400 1950 1000 400 
U 5F8993CB
F0 "amplifier" 50
F1 "amplifier.sch" 50
F2 "RF_IN" I L 9400 2150 50 
F3 "RF_OUT" I R 10400 2150 50 
F4 "Vin_10_or_12v" I L 9400 2250 50 
F5 "5V_out" I R 10400 2300 50 
$EndSheet
$Comp
L Device:Fuse F1
U 1 1 5F586EF3
P 1400 1450
F 0 "F1" V 1203 1450 50  0000 C CNN
F 1 "Fuse" V 1294 1450 50  0000 C CNN
F 2 "Fuse:Fuseholder_Littelfuse_Nano2_157x" V 1330 1450 50  0001 C CNN
F 3 "~" H 1400 1450 50  0001 C CNN
	1    1400 1450
	0    1    1    0   
$EndComp
Wire Wire Line
	1150 1500 1150 1450
Wire Wire Line
	1150 1450 1250 1450
Wire Wire Line
	1550 1450 1600 1450
Wire Wire Line
	11300 2750 12050 2750
Wire Wire Line
	12400 2650 11750 2650
Wire Wire Line
	10850 2550 11500 2550
Wire Wire Line
	12400 2450 11250 2450
$Comp
L Connector:TestPoint TP6
U 1 1 5F59ECDA
P 11250 1950
F 0 "TP6" H 11100 2000 50  0000 L CNN
F 1 "SPI3_SDI" H 11050 2150 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D2.0mm" H 11450 1950 50  0001 C CNN
F 3 "~" H 11450 1950 50  0001 C CNN
	1    11250 1950
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP7
U 1 1 5F59F321
P 11500 1950
F 0 "TP7" H 11350 2000 50  0000 L CNN
F 1 "SPI3_SDO" H 11350 2250 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D2.0mm" H 11700 1950 50  0001 C CNN
F 3 "~" H 11700 1950 50  0001 C CNN
	1    11500 1950
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP8
U 1 1 5F59F5B5
P 11750 1950
F 0 "TP8" H 11600 2000 50  0000 L CNN
F 1 "SPI3_SCK" H 11550 2150 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D2.0mm" H 11950 1950 50  0001 C CNN
F 3 "~" H 11950 1950 50  0001 C CNN
	1    11750 1950
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP9
U 1 1 5F59F894
P 12050 1950
F 0 "TP9" H 11900 2000 50  0000 L CNN
F 1 "SPI3_NSS_FAKE" H 11800 2250 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D2.0mm" H 12250 1950 50  0001 C CNN
F 3 "~" H 12250 1950 50  0001 C CNN
	1    12050 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	11250 1950 11250 2450
Connection ~ 11250 2450
Wire Wire Line
	11250 2450 10700 2450
Wire Wire Line
	11500 1950 11500 2550
Connection ~ 11500 2550
Wire Wire Line
	11500 2550 12400 2550
Wire Wire Line
	11750 1950 11750 2650
Connection ~ 11750 2650
Wire Wire Line
	11750 2650 11000 2650
Wire Wire Line
	12050 1950 12050 2750
Connection ~ 12050 2750
Wire Wire Line
	12050 2750 12400 2750
$Comp
L Connector:TestPoint TP5
U 1 1 5F5C3319
P 10950 1950
F 0 "TP5" H 10800 2000 50  0000 L CNN
F 1 "SPI3_NSS" H 10700 2250 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D2.0mm" H 11150 1950 50  0001 C CNN
F 3 "~" H 11150 1950 50  0001 C CNN
	1    10950 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	11100 2750 11100 1950
Wire Wire Line
	11100 1950 10950 1950
Connection ~ 11100 2750
Wire Wire Line
	11100 2750 11150 2750
$Comp
L Connector:TestPoint TP3
U 1 1 5F5CF39A
P 7350 5850
F 0 "TP3" H 7200 5900 50  0000 L CNN
F 1 "REF_ADJ_V" H 7200 6100 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D2.0mm" H 7550 5850 50  0001 C CNN
F 3 "~" H 7550 5850 50  0001 C CNN
	1    7350 5850
	1    0    0    -1  
$EndComp
Connection ~ 7350 5850
Wire Wire Line
	7350 5850 7700 5850
$Comp
L Connector:TestPoint TP2
U 1 1 5F5D1B7A
P 6000 6550
F 0 "TP2" H 5850 6600 50  0000 L CNN
F 1 "INTPL_F" H 5850 6800 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D2.0mm" H 6200 6550 50  0001 C CNN
F 3 "~" H 6200 6550 50  0001 C CNN
	1    6000 6550
	1    0    0    -1  
$EndComp
Connection ~ 6000 6550
Wire Wire Line
	6000 6550 6400 6550
$Comp
L Connector:TestPoint TP1
U 1 1 5F5D1EB6
P 5650 7100
F 0 "TP1" H 5500 7150 50  0000 L CNN
F 1 "INTPL_NC" H 5500 7350 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D2.0mm" H 5850 7100 50  0001 C CNN
F 3 "~" H 5850 7100 50  0001 C CNN
	1    5650 7100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 7100 5900 7100
Wire Wire Line
	5900 7100 5900 6750
Connection ~ 5900 6750
Wire Wire Line
	5900 6750 6400 6750
Connection ~ 7550 6400
Wire Wire Line
	7550 6400 7700 6400
$Comp
L Connector:TestPoint TP4
U 1 1 5F5DAEF4
P 7550 6400
F 0 "TP4" H 7400 6450 50  0000 L CNN
F 1 "INTPL_OUT" H 7400 6650 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D2.0mm" H 7750 6400 50  0001 C CNN
F 3 "~" H 7750 6400 50  0001 C CNN
	1    7550 6400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 5850 7350 5850
Wire Wire Line
	4300 1050 4300 1450
Wire Wire Line
	3150 1050 3150 1450
$Comp
L Device:D D2
U 1 1 5FA34337
P 3650 1050
F 0 "D2" H 3650 1267 50  0000 C CNN
F 1 "D" H 3650 1176 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123" H 3650 1050 50  0001 C CNN
F 3 "~" H 3650 1050 50  0001 C CNN
	1    3650 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 1050 3150 1050
Wire Wire Line
	4300 1050 3800 1050
Text Notes 7400 2150 0    50   ~ 0
28dBm max
Text Notes 8900 2000 0    50   ~ 0
20 dBm max
Text Notes 12050 2100 0    50   ~ 0
-10dBm
Text Notes 7000 3300 0    50   ~ 0
Good -65 to -5 dBm
Text Notes 7950 1950 0    50   ~ 0
2x 31.5dB attenuation
Text Notes 9450 1800 0    50   ~ 0
Fixed gain of 18.4 dB
Text Notes 8900 1850 0    50   Italic 0
-28.4dB best
Text Notes 7200 2050 0    50   Italic 0
-28.4 to 28dBm
Wire Wire Line
	6350 2750 6900 2750
$Comp
L Device:R R1
U 1 1 5F60E300
P 7350 2350
F 0 "R1" H 7280 2304 50  0000 R CNN
F 1 "1200" H 7280 2395 50  0000 R CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 7280 2350 50  0001 C CNN
F 3 "~" H 7350 2350 50  0001 C CNN
	1    7350 2350
	-1   0    0    1   
$EndComp
Connection ~ 7350 2200
Wire Wire Line
	7350 2200 7900 2200
$Comp
L Device:R R61
U 1 1 5F60E57F
P 7350 3500
F 0 "R61" H 7280 3454 50  0000 R CNN
F 1 "52.3" H 7280 3545 50  0000 R CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 7280 3500 50  0001 C CNN
F 3 "~" H 7350 3500 50  0001 C CNN
	1    7350 3500
	-1   0    0    1   
$EndComp
Connection ~ 7350 3350
Wire Wire Line
	7350 3350 7900 3350
$Comp
L power:GND #PWR017
U 1 1 5F60E8E0
P 7350 2500
F 0 "#PWR017" H 7350 2250 50  0001 C CNN
F 1 "GND" H 7355 2327 50  0000 C CNN
F 2 "" H 7350 2500 50  0001 C CNN
F 3 "" H 7350 2500 50  0001 C CNN
	1    7350 2500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR024
U 1 1 5F60ECBE
P 7350 3650
F 0 "#PWR024" H 7350 3400 50  0001 C CNN
F 1 "GND" H 7355 3477 50  0000 C CNN
F 2 "" H 7350 3650 50  0001 C CNN
F 3 "" H 7350 3650 50  0001 C CNN
	1    7350 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 5550 7850 5550
$Sheet
S 7850 4200 2450 2800
U 5F5A755C
F0 "processor" 50
F1 "processor.sch" 50
F2 "SPI2_MISO" I L 7850 4400 50 
F3 "ADC1" I R 10300 4400 50 
F4 "DAC1" I L 7850 5750 50 
F5 "SPI2_MOSI" I L 7850 4500 50 
F6 "SPI2_CLK" I L 7850 4600 50 
F7 "SPI2_NSS" I L 7850 4700 50 
F8 "SPI3_NSS" I R 10300 5100 50 
F9 "SPI3_CLK" I R 10300 4950 50 
F10 "SPI3_MISO" I R 10300 4800 50 
F11 "SPI3_MOSI" I R 10300 4650 50 
F12 "CLK_OUT" I L 7850 5350 50 
F13 "TIM2_ETR" I L 7850 4950 50 
F14 "TIM5_ETR" I L 7850 5050 50 
F15 "MODESHIFT" I L 7850 5150 50 
F16 "SPI3_NSS_FAKE" I R 10300 5250 50 
F17 "interpolator_adc" I L 7850 6000 50 
F18 "3.3v_ref" I L 7850 5900 50 
F19 "mux1" I R 10300 6350 50 
F20 "mux2" I R 10300 6550 50 
F21 "3.3V_out" I L 7850 4250 50 
F22 "5V_in" I L 7850 6750 50 
F23 "TIM5_CH2" I L 7850 5550 50 
F24 "icp0" I L 7850 5450 50 
$EndSheet
Wire Wire Line
	7150 4100 7150 5350
Wire Wire Line
	7150 5350 7850 5350
Wire Wire Line
	7850 5450 6950 5450
Wire Wire Line
	2950 4400 2950 4600
Wire Wire Line
	2950 4600 2650 4600
Wire Wire Line
	2650 4700 3100 4700
Wire Wire Line
	3100 4700 3100 5500
Wire Wire Line
	3100 5500 2950 5500
$EndSCHEMATC
