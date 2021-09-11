-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "08/29/2020 22:23:15"

-- 
-- Device: Altera EPM240T100C5 Package TQFP100
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXII;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXII.MAXII_COMPONENTS.ALL;

ENTITY 	top IS
    PORT (
	refclk : IN std_logic;
	miso : OUT std_logic;
	mosi : IN std_logic;
	sck : IN std_logic;
	ss : IN std_logic;
	icp1 : OUT std_logic;
	int1 : OUT std_logic;
	modeshift : IN std_logic;
	led2 : OUT std_logic;
	rampstopN : OUT std_logic;
	rampstartP : OUT std_logic;
	sigclk : IN std_logic;
	sigout : OUT std_logic;
	sigin1 : IN std_logic;
	sigin2 : IN std_logic
	);
END top;

-- Design Ports Information


ARCHITECTURE structure OF top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_refclk : std_logic;
SIGNAL ww_miso : std_logic;
SIGNAL ww_mosi : std_logic;
SIGNAL ww_sck : std_logic;
SIGNAL ww_ss : std_logic;
SIGNAL ww_icp1 : std_logic;
SIGNAL ww_int1 : std_logic;
SIGNAL ww_modeshift : std_logic;
SIGNAL ww_led2 : std_logic;
SIGNAL ww_rampstopN : std_logic;
SIGNAL ww_rampstartP : std_logic;
SIGNAL ww_sigclk : std_logic;
SIGNAL ww_sigout : std_logic;
SIGNAL ww_sigin1 : std_logic;
SIGNAL ww_sigin2 : std_logic;
SIGNAL \sck~combout\ : std_logic;
SIGNAL \ss~combout\ : std_logic;
SIGNAL \sigclk~combout\ : std_logic;
SIGNAL \eventcounter[1]~15\ : std_logic;
SIGNAL \eventcounter[1]~15COUT1_32\ : std_logic;
SIGNAL \syn1siggate~regout\ : std_logic;
SIGNAL \refclk~combout\ : std_logic;
SIGNAL \sigin2~combout\ : std_logic;
SIGNAL \mosi~combout\ : std_logic;
SIGNAL \sigin1~combout\ : std_logic;
SIGNAL \modeshift~combout\ : std_logic;
SIGNAL \sigout~0\ : std_logic;
SIGNAL \siggate~regout\ : std_logic;
SIGNAL \eventcounter[2]~7\ : std_logic;
SIGNAL \eventcounter[3]~29\ : std_logic;
SIGNAL \eventcounter[3]~29COUT1_33\ : std_logic;
SIGNAL \eventcounter[4]~21\ : std_logic;
SIGNAL \eventcounter[4]~21COUT1_34\ : std_logic;
SIGNAL \eventcounter[5]~13\ : std_logic;
SIGNAL \eventcounter[5]~13COUT1_35\ : std_logic;
SIGNAL \eventcounter[6]~3\ : std_logic;
SIGNAL \eventcounter[6]~3COUT1_36\ : std_logic;
SIGNAL \eventcounter[7]~25\ : std_logic;
SIGNAL \eventcounter[8]~19\ : std_logic;
SIGNAL \eventcounter[8]~19COUT1_37\ : std_logic;
SIGNAL \eventcounter[9]~11\ : std_logic;
SIGNAL \eventcounter[9]~11COUT1_38\ : std_logic;
SIGNAL \Mux0~0\ : std_logic;
SIGNAL \eventcounter[10]~5\ : std_logic;
SIGNAL \eventcounter[10]~5COUT1_39\ : std_logic;
SIGNAL \eventcounter[11]~27\ : std_logic;
SIGNAL \eventcounter[11]~27COUT1_40\ : std_logic;
SIGNAL \eventcounter[12]~23\ : std_logic;
SIGNAL \eventcounter[13]~17\ : std_logic;
SIGNAL \eventcounter[13]~17COUT1_41\ : std_logic;
SIGNAL \Mux0~1\ : std_logic;
SIGNAL \Mux0~2\ : std_logic;
SIGNAL \Mux0~3\ : std_logic;
SIGNAL \Mux0~4\ : std_logic;
SIGNAL \Mux0~5\ : std_logic;
SIGNAL \Mux0~6_combout\ : std_logic;
SIGNAL \eventcounter[14]~9\ : std_logic;
SIGNAL \eventcounter[14]~9COUT1_42\ : std_logic;
SIGNAL \Mux0~7\ : std_logic;
SIGNAL \Mux0~8\ : std_logic;
SIGNAL \Mux0~9_combout\ : std_logic;
SIGNAL \syn1cpugate~regout\ : std_logic;
SIGNAL \cpugate~regout\ : std_logic;
SIGNAL \sigout~1\ : std_logic;
SIGNAL mux : std_logic_vector(3 DOWNTO 0);
SIGNAL eventcounter : std_logic_vector(15 DOWNTO 0);
SIGNAL eventhold : std_logic_vector(15 DOWNTO 0);
SIGNAL readindex : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_siggate~regout\ : std_logic;
SIGNAL \ALT_INV_ss~combout\ : std_logic;

BEGIN

ww_refclk <= refclk;
miso <= ww_miso;
ww_mosi <= mosi;
ww_sck <= sck;
ww_ss <= ss;
icp1 <= ww_icp1;
int1 <= ww_int1;
ww_modeshift <= modeshift;
led2 <= ww_led2;
rampstopN <= ww_rampstopN;
rampstartP <= ww_rampstartP;
ww_sigclk <= sigclk;
sigout <= ww_sigout;
ww_sigin1 <= sigin1;
ww_sigin2 <= sigin2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_siggate~regout\ <= NOT \siggate~regout\;
\ALT_INV_ss~combout\ <= NOT \ss~combout\;

-- Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sck~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_sck,
	combout => \sck~combout\);

-- Location: PIN_64,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ss~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ss,
	combout => \ss~combout\);

-- Location: LC_X5_Y4_N2
\readindex[0]\ : maxii_lcell
-- Equation(s):
-- readindex(0) = DFFEAS((((!readindex(0)))), GLOBAL(\sck~combout\), GLOBAL(\ss~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \sck~combout\,
	datad => readindex(0),
	aclr => \ALT_INV_ss~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => readindex(0));

-- Location: LC_X5_Y4_N0
\readindex[1]\ : maxii_lcell
-- Equation(s):
-- readindex(1) = DFFEAS(((readindex(1) $ (!readindex(0)))), GLOBAL(\sck~combout\), GLOBAL(\ss~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f00f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \sck~combout\,
	datac => readindex(1),
	datad => readindex(0),
	aclr => \ALT_INV_ss~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => readindex(1));

-- Location: PIN_14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sigclk~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_sigclk,
	combout => \sigclk~combout\);

-- Location: LC_X4_Y3_N1
\eventcounter[0]\ : maxii_lcell
-- Equation(s):
-- eventcounter(0) = DFFEAS((((!eventcounter(0)))), GLOBAL(\sigclk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \sigclk~combout\,
	datad => eventcounter(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => eventcounter(0));

-- Location: LC_X4_Y3_N3
\eventcounter[1]\ : maxii_lcell
-- Equation(s):
-- eventcounter(1) = DFFEAS(eventcounter(1) $ ((eventcounter(0))), GLOBAL(\sigclk~combout\), VCC, , , , , , )
-- \eventcounter[1]~15\ = CARRY((eventcounter(1) & (eventcounter(0))))
-- \eventcounter[1]~15COUT1_32\ = CARRY((eventcounter(1) & (eventcounter(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6688",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \sigclk~combout\,
	dataa => eventcounter(1),
	datab => eventcounter(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => eventcounter(1),
	cout0 => \eventcounter[1]~15\,
	cout1 => \eventcounter[1]~15COUT1_32\);

-- Location: LC_X4_Y3_N4
\eventcounter[2]\ : maxii_lcell
-- Equation(s):
-- eventcounter(2) = DFFEAS(eventcounter(2) $ ((((\eventcounter[1]~15\)))), GLOBAL(\sigclk~combout\), VCC, , , , , , )
-- \eventcounter[2]~7\ = CARRY(((!\eventcounter[1]~15COUT1_32\)) # (!eventcounter(2)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \sigclk~combout\,
	dataa => eventcounter(2),
	aclr => GND,
	cin0 => \eventcounter[1]~15\,
	cin1 => \eventcounter[1]~15COUT1_32\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => eventcounter(2),
	cout => \eventcounter[2]~7\);

-- Location: LC_X4_Y2_N5
syn1siggate : maxii_lcell
-- Equation(s):
-- \syn1siggate~regout\ = DFFEAS(VCC, GLOBAL(\sigclk~combout\), GLOBAL(\ss~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \sigclk~combout\,
	aclr => \ALT_INV_ss~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \syn1siggate~regout\);

-- Location: PIN_62,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\refclk~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_refclk,
	combout => \refclk~combout\);

-- Location: PIN_36,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sigin2~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_sigin2,
	combout => \sigin2~combout\);

-- Location: PIN_37,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mosi~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_mosi,
	combout => \mosi~combout\);

-- Location: PIN_38,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sigin1~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_sigin1,
	combout => \sigin1~combout\);

-- Location: PIN_16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\modeshift~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_modeshift,
	combout => \modeshift~combout\);

-- Location: LC_X4_Y2_N6
\mux[1]\ : maxii_lcell
-- Equation(s):
-- \sigout~0\ = ((mux[1] & (\refclk~combout\)) # (!mux[1] & ((\sigin1~combout\))))
-- mux(1) = DFFEAS(\sigout~0\, GLOBAL(\sck~combout\), VCC, , \modeshift~combout\, mux(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfc0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \sck~combout\,
	datab => \refclk~combout\,
	datac => mux(0),
	datad => \sigin1~combout\,
	aclr => GND,
	sload => VCC,
	ena => \modeshift~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sigout~0\,
	regout => mux(1));

-- Location: LC_X4_Y2_N7
\mux[0]\ : maxii_lcell
-- Equation(s):
-- \sigout~1\ = (mux[0] & (\sigin2~combout\ & (!mux(1)))) # (!mux[0] & (((\sigout~0\))))
-- mux(0) = DFFEAS(\sigout~1\, GLOBAL(\sck~combout\), VCC, , \modeshift~combout\, \mosi~combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2f20",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \sck~combout\,
	dataa => \sigin2~combout\,
	datab => mux(1),
	datac => \mosi~combout\,
	datad => \sigout~0\,
	aclr => GND,
	sload => VCC,
	ena => \modeshift~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sigout~1\,
	regout => mux(0));

-- Location: LC_X4_Y2_N4
\mux[2]\ : maxii_lcell
-- Equation(s):
-- mux(2) = DFFEAS(GND, GLOBAL(\sck~combout\), VCC, , \modeshift~combout\, mux(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \sck~combout\,
	datac => mux(1),
	aclr => GND,
	sload => VCC,
	ena => \modeshift~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => mux(2));

-- Location: LC_X4_Y2_N2
\mux[3]\ : maxii_lcell
-- Equation(s):
-- mux(3) = DFFEAS(GND, GLOBAL(\sck~combout\), VCC, , \modeshift~combout\, mux(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \sck~combout\,
	datac => mux(2),
	aclr => GND,
	sload => VCC,
	ena => \modeshift~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => mux(3));

-- Location: LC_X4_Y2_N9
siggate : maxii_lcell
-- Equation(s):
-- \siggate~regout\ = DFFEAS((((\syn1siggate~regout\) # (mux(3)))), GLOBAL(\sigclk~combout\), GLOBAL(\ss~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \sigclk~combout\,
	datac => \syn1siggate~regout\,
	datad => mux(3),
	aclr => \ALT_INV_ss~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \siggate~regout\);

-- Location: LC_X5_Y2_N4
\eventhold[2]\ : maxii_lcell
-- Equation(s):
-- eventhold(2) = DFFEAS(GND, GLOBAL(\sigclk~combout\), VCC, , !\siggate~regout\, eventcounter(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \sigclk~combout\,
	datac => eventcounter(2),
	aclr => GND,
	sload => VCC,
	ena => \ALT_INV_siggate~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => eventhold(2));

-- Location: LC_X5_Y4_N6
\readindex[2]\ : maxii_lcell
-- Equation(s):
-- readindex(2) = DFFEAS((readindex(2) $ (((!readindex(0) & !readindex(1))))), GLOBAL(\sck~combout\), GLOBAL(\ss~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc03",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \sck~combout\,
	datab => readindex(0),
	datac => readindex(1),
	datad => readindex(2),
	aclr => \ALT_INV_ss~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => readindex(2));

-- Location: LC_X5_Y4_N3
\readindex[3]\ : maxii_lcell
-- Equation(s):
-- readindex(3) = DFFEAS(readindex(3) $ (((!readindex(2) & (!readindex(0) & !readindex(1))))), GLOBAL(\sck~combout\), GLOBAL(\ss~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fe01",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \sck~combout\,
	dataa => readindex(2),
	datab => readindex(0),
	datac => readindex(1),
	datad => readindex(3),
	aclr => \ALT_INV_ss~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => readindex(3));

-- Location: LC_X4_Y3_N5
\eventcounter[3]\ : maxii_lcell
-- Equation(s):
-- eventcounter(3) = DFFEAS(eventcounter(3) $ ((((!\eventcounter[2]~7\)))), GLOBAL(\sigclk~combout\), VCC, , , , , , )
-- \eventcounter[3]~29\ = CARRY((eventcounter(3) & ((!\eventcounter[2]~7\))))
-- \eventcounter[3]~29COUT1_33\ = CARRY((eventcounter(3) & ((!\eventcounter[2]~7\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \sigclk~combout\,
	dataa => eventcounter(3),
	aclr => GND,
	cin => \eventcounter[2]~7\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => eventcounter(3),
	cout0 => \eventcounter[3]~29\,
	cout1 => \eventcounter[3]~29COUT1_33\);

-- Location: LC_X4_Y3_N6
\eventcounter[4]\ : maxii_lcell
-- Equation(s):
-- eventcounter(4) = DFFEAS(eventcounter(4) $ (((((!\eventcounter[2]~7\ & \eventcounter[3]~29\) # (\eventcounter[2]~7\ & \eventcounter[3]~29COUT1_33\))))), GLOBAL(\sigclk~combout\), VCC, , , , , , )
-- \eventcounter[4]~21\ = CARRY(((!\eventcounter[3]~29\)) # (!eventcounter(4)))
-- \eventcounter[4]~21COUT1_34\ = CARRY(((!\eventcounter[3]~29COUT1_33\)) # (!eventcounter(4)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \sigclk~combout\,
	dataa => eventcounter(4),
	aclr => GND,
	cin => \eventcounter[2]~7\,
	cin0 => \eventcounter[3]~29\,
	cin1 => \eventcounter[3]~29COUT1_33\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => eventcounter(4),
	cout0 => \eventcounter[4]~21\,
	cout1 => \eventcounter[4]~21COUT1_34\);

-- Location: LC_X4_Y3_N7
\eventcounter[5]\ : maxii_lcell
-- Equation(s):
-- eventcounter(5) = DFFEAS((eventcounter(5) $ ((!(!\eventcounter[2]~7\ & \eventcounter[4]~21\) # (\eventcounter[2]~7\ & \eventcounter[4]~21COUT1_34\)))), GLOBAL(\sigclk~combout\), VCC, , , , , , )
-- \eventcounter[5]~13\ = CARRY(((eventcounter(5) & !\eventcounter[4]~21\)))
-- \eventcounter[5]~13COUT1_35\ = CARRY(((eventcounter(5) & !\eventcounter[4]~21COUT1_34\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \sigclk~combout\,
	datab => eventcounter(5),
	aclr => GND,
	cin => \eventcounter[2]~7\,
	cin0 => \eventcounter[4]~21\,
	cin1 => \eventcounter[4]~21COUT1_34\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => eventcounter(5),
	cout0 => \eventcounter[5]~13\,
	cout1 => \eventcounter[5]~13COUT1_35\);

-- Location: LC_X4_Y3_N8
\eventcounter[6]\ : maxii_lcell
-- Equation(s):
-- eventcounter(6) = DFFEAS(eventcounter(6) $ (((((!\eventcounter[2]~7\ & \eventcounter[5]~13\) # (\eventcounter[2]~7\ & \eventcounter[5]~13COUT1_35\))))), GLOBAL(\sigclk~combout\), VCC, , , , , , )
-- \eventcounter[6]~3\ = CARRY(((!\eventcounter[5]~13\)) # (!eventcounter(6)))
-- \eventcounter[6]~3COUT1_36\ = CARRY(((!\eventcounter[5]~13COUT1_35\)) # (!eventcounter(6)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \sigclk~combout\,
	dataa => eventcounter(6),
	aclr => GND,
	cin => \eventcounter[2]~7\,
	cin0 => \eventcounter[5]~13\,
	cin1 => \eventcounter[5]~13COUT1_35\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => eventcounter(6),
	cout0 => \eventcounter[6]~3\,
	cout1 => \eventcounter[6]~3COUT1_36\);

-- Location: LC_X4_Y3_N9
\eventcounter[7]\ : maxii_lcell
-- Equation(s):
-- eventcounter(7) = DFFEAS((eventcounter(7) $ ((!(!\eventcounter[2]~7\ & \eventcounter[6]~3\) # (\eventcounter[2]~7\ & \eventcounter[6]~3COUT1_36\)))), GLOBAL(\sigclk~combout\), VCC, , , , , , )
-- \eventcounter[7]~25\ = CARRY(((eventcounter(7) & !\eventcounter[6]~3COUT1_36\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \sigclk~combout\,
	datab => eventcounter(7),
	aclr => GND,
	cin => \eventcounter[2]~7\,
	cin0 => \eventcounter[6]~3\,
	cin1 => \eventcounter[6]~3COUT1_36\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => eventcounter(7),
	cout => \eventcounter[7]~25\);

-- Location: LC_X5_Y3_N0
\eventcounter[8]\ : maxii_lcell
-- Equation(s):
-- eventcounter(8) = DFFEAS((eventcounter(8) $ ((\eventcounter[7]~25\))), GLOBAL(\sigclk~combout\), VCC, , , , , , )
-- \eventcounter[8]~19\ = CARRY(((!\eventcounter[7]~25\) # (!eventcounter(8))))
-- \eventcounter[8]~19COUT1_37\ = CARRY(((!\eventcounter[7]~25\) # (!eventcounter(8))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \sigclk~combout\,
	datab => eventcounter(8),
	aclr => GND,
	cin => \eventcounter[7]~25\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => eventcounter(8),
	cout0 => \eventcounter[8]~19\,
	cout1 => \eventcounter[8]~19COUT1_37\);

-- Location: LC_X5_Y3_N1
\eventcounter[9]\ : maxii_lcell
-- Equation(s):
-- eventcounter(9) = DFFEAS((eventcounter(9) $ ((!(!\eventcounter[7]~25\ & \eventcounter[8]~19\) # (\eventcounter[7]~25\ & \eventcounter[8]~19COUT1_37\)))), GLOBAL(\sigclk~combout\), VCC, , , , , , )
-- \eventcounter[9]~11\ = CARRY(((eventcounter(9) & !\eventcounter[8]~19\)))
-- \eventcounter[9]~11COUT1_38\ = CARRY(((eventcounter(9) & !\eventcounter[8]~19COUT1_37\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \sigclk~combout\,
	datab => eventcounter(9),
	aclr => GND,
	cin => \eventcounter[7]~25\,
	cin0 => \eventcounter[8]~19\,
	cin1 => \eventcounter[8]~19COUT1_37\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => eventcounter(9),
	cout0 => \eventcounter[9]~11\,
	cout1 => \eventcounter[9]~11COUT1_38\);

-- Location: LC_X5_Y3_N2
\eventcounter[10]\ : maxii_lcell
-- Equation(s):
-- eventcounter(10) = DFFEAS((eventcounter(10) $ (((!\eventcounter[7]~25\ & \eventcounter[9]~11\) # (\eventcounter[7]~25\ & \eventcounter[9]~11COUT1_38\)))), GLOBAL(\sigclk~combout\), VCC, , , , , , )
-- \eventcounter[10]~5\ = CARRY(((!\eventcounter[9]~11\) # (!eventcounter(10))))
-- \eventcounter[10]~5COUT1_39\ = CARRY(((!\eventcounter[9]~11COUT1_38\) # (!eventcounter(10))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \sigclk~combout\,
	datab => eventcounter(10),
	aclr => GND,
	cin => \eventcounter[7]~25\,
	cin0 => \eventcounter[9]~11\,
	cin1 => \eventcounter[9]~11COUT1_38\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => eventcounter(10),
	cout0 => \eventcounter[10]~5\,
	cout1 => \eventcounter[10]~5COUT1_39\);

-- Location: LC_X5_Y2_N6
\eventhold[10]\ : maxii_lcell
-- Equation(s):
-- \Mux0~0\ = (readindex(3) & (eventhold(2) & ((readindex(2))))) # (!readindex(3) & (((eventhold[10]) # (!readindex(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b833",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \sigclk~combout\,
	dataa => eventhold(2),
	datab => readindex(3),
	datac => eventcounter(10),
	datad => readindex(2),
	aclr => GND,
	sload => VCC,
	ena => \ALT_INV_siggate~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~0\,
	regout => eventhold(10));

-- Location: LC_X5_Y3_N3
\eventcounter[11]\ : maxii_lcell
-- Equation(s):
-- eventcounter(11) = DFFEAS(eventcounter(11) $ ((((!(!\eventcounter[7]~25\ & \eventcounter[10]~5\) # (\eventcounter[7]~25\ & \eventcounter[10]~5COUT1_39\))))), GLOBAL(\sigclk~combout\), VCC, , , , , , )
-- \eventcounter[11]~27\ = CARRY((eventcounter(11) & ((!\eventcounter[10]~5\))))
-- \eventcounter[11]~27COUT1_40\ = CARRY((eventcounter(11) & ((!\eventcounter[10]~5COUT1_39\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \sigclk~combout\,
	dataa => eventcounter(11),
	aclr => GND,
	cin => \eventcounter[7]~25\,
	cin0 => \eventcounter[10]~5\,
	cin1 => \eventcounter[10]~5COUT1_39\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => eventcounter(11),
	cout0 => \eventcounter[11]~27\,
	cout1 => \eventcounter[11]~27COUT1_40\);

-- Location: LC_X5_Y3_N4
\eventcounter[12]\ : maxii_lcell
-- Equation(s):
-- eventcounter(12) = DFFEAS(eventcounter(12) $ (((((!\eventcounter[7]~25\ & \eventcounter[11]~27\) # (\eventcounter[7]~25\ & \eventcounter[11]~27COUT1_40\))))), GLOBAL(\sigclk~combout\), VCC, , , , , , )
-- \eventcounter[12]~23\ = CARRY(((!\eventcounter[11]~27COUT1_40\)) # (!eventcounter(12)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \sigclk~combout\,
	dataa => eventcounter(12),
	aclr => GND,
	cin => \eventcounter[7]~25\,
	cin0 => \eventcounter[11]~27\,
	cin1 => \eventcounter[11]~27COUT1_40\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => eventcounter(12),
	cout => \eventcounter[12]~23\);

-- Location: LC_X5_Y3_N5
\eventcounter[13]\ : maxii_lcell
-- Equation(s):
-- eventcounter(13) = DFFEAS(eventcounter(13) $ ((((!\eventcounter[12]~23\)))), GLOBAL(\sigclk~combout\), VCC, , , , , , )
-- \eventcounter[13]~17\ = CARRY((eventcounter(13) & ((!\eventcounter[12]~23\))))
-- \eventcounter[13]~17COUT1_41\ = CARRY((eventcounter(13) & ((!\eventcounter[12]~23\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \sigclk~combout\,
	dataa => eventcounter(13),
	aclr => GND,
	cin => \eventcounter[12]~23\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => eventcounter(13),
	cout0 => \eventcounter[13]~17\,
	cout1 => \eventcounter[13]~17COUT1_41\);

-- Location: LC_X5_Y3_N6
\eventcounter[14]\ : maxii_lcell
-- Equation(s):
-- eventcounter(14) = DFFEAS(eventcounter(14) $ (((((!\eventcounter[12]~23\ & \eventcounter[13]~17\) # (\eventcounter[12]~23\ & \eventcounter[13]~17COUT1_41\))))), GLOBAL(\sigclk~combout\), VCC, , , , , , )
-- \eventcounter[14]~9\ = CARRY(((!\eventcounter[13]~17\)) # (!eventcounter(14)))
-- \eventcounter[14]~9COUT1_42\ = CARRY(((!\eventcounter[13]~17COUT1_41\)) # (!eventcounter(14)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \sigclk~combout\,
	dataa => eventcounter(14),
	aclr => GND,
	cin => \eventcounter[12]~23\,
	cin0 => \eventcounter[13]~17\,
	cin1 => \eventcounter[13]~17COUT1_41\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => eventcounter(14),
	cout0 => \eventcounter[14]~9\,
	cout1 => \eventcounter[14]~9COUT1_42\);

-- Location: LC_X5_Y2_N3
\eventhold[14]\ : maxii_lcell
-- Equation(s):
-- eventhold(14) = DFFEAS(GND, GLOBAL(\sigclk~combout\), VCC, , !\siggate~regout\, eventcounter(14), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \sigclk~combout\,
	datac => eventcounter(14),
	aclr => GND,
	sload => VCC,
	ena => \ALT_INV_siggate~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => eventhold(14));

-- Location: LC_X5_Y2_N7
\eventhold[6]\ : maxii_lcell
-- Equation(s):
-- \Mux0~1\ = (\Mux0~0\ & ((readindex(2)) # ((eventhold(14))))) # (!\Mux0~0\ & (!readindex(2) & (eventhold[6])))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba98",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \sigclk~combout\,
	dataa => \Mux0~0\,
	datab => readindex(2),
	datac => eventcounter(6),
	datad => eventhold(14),
	aclr => GND,
	sload => VCC,
	ena => \ALT_INV_siggate~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~1\,
	regout => eventhold(6));

-- Location: LC_X5_Y2_N9
\eventhold[1]\ : maxii_lcell
-- Equation(s):
-- eventhold(1) = DFFEAS(GND, GLOBAL(\sigclk~combout\), VCC, , !\siggate~regout\, eventcounter(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \sigclk~combout\,
	datac => eventcounter(1),
	aclr => GND,
	sload => VCC,
	ena => \ALT_INV_siggate~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => eventhold(1));

-- Location: LC_X5_Y2_N8
\eventhold[5]\ : maxii_lcell
-- Equation(s):
-- \Mux0~2\ = (readindex(3) & ((readindex(2) & (eventhold(1))) # (!readindex(2) & ((eventhold[5]))))) # (!readindex(3) & (((!readindex(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "88f3",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \sigclk~combout\,
	dataa => eventhold(1),
	datab => readindex(3),
	datac => eventcounter(5),
	datad => readindex(2),
	aclr => GND,
	sload => VCC,
	ena => \ALT_INV_siggate~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~2\,
	regout => eventhold(5));

-- Location: LC_X5_Y2_N1
\eventhold[13]\ : maxii_lcell
-- Equation(s):
-- eventhold(13) = DFFEAS(GND, GLOBAL(\sigclk~combout\), VCC, , !\siggate~regout\, eventcounter(13), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \sigclk~combout\,
	datac => eventcounter(13),
	aclr => GND,
	sload => VCC,
	ena => \ALT_INV_siggate~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => eventhold(13));

-- Location: LC_X5_Y2_N5
\eventhold[9]\ : maxii_lcell
-- Equation(s):
-- \Mux0~3\ = (\Mux0~2\ & ((readindex(3)) # ((eventhold(13))))) # (!\Mux0~2\ & (!readindex(3) & (eventhold[9])))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba98",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \sigclk~combout\,
	dataa => \Mux0~2\,
	datab => readindex(3),
	datac => eventcounter(9),
	datad => eventhold(13),
	aclr => GND,
	sload => VCC,
	ena => \ALT_INV_siggate~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~3\,
	regout => eventhold(9));

-- Location: LC_X4_Y3_N2
\eventhold[0]\ : maxii_lcell
-- Equation(s):
-- eventhold(0) = DFFEAS((((eventcounter(0)))), GLOBAL(\sigclk~combout\), VCC, , !\siggate~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \sigclk~combout\,
	datad => eventcounter(0),
	aclr => GND,
	ena => \ALT_INV_siggate~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => eventhold(0));

-- Location: LC_X4_Y3_N0
\eventhold[4]\ : maxii_lcell
-- Equation(s):
-- \Mux0~4\ = (readindex(2) & (readindex(3) & ((eventhold(0))))) # (!readindex(2) & (((eventhold[4])) # (!readindex(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d951",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \sigclk~combout\,
	dataa => readindex(2),
	datab => readindex(3),
	datac => eventcounter(4),
	datad => eventhold(0),
	aclr => GND,
	sload => VCC,
	ena => \ALT_INV_siggate~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~4\,
	regout => eventhold(4));

-- Location: LC_X5_Y3_N9
\eventhold[12]\ : maxii_lcell
-- Equation(s):
-- eventhold(12) = DFFEAS(GND, GLOBAL(\sigclk~combout\), VCC, , !\siggate~regout\, eventcounter(12), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \sigclk~combout\,
	datac => eventcounter(12),
	aclr => GND,
	sload => VCC,
	ena => \ALT_INV_siggate~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => eventhold(12));

-- Location: LC_X5_Y3_N8
\eventhold[8]\ : maxii_lcell
-- Equation(s):
-- \Mux0~5\ = (\Mux0~4\ & ((readindex(3)) # ((eventhold(12))))) # (!\Mux0~4\ & (!readindex(3) & (eventhold[8])))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba98",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \sigclk~combout\,
	dataa => \Mux0~4\,
	datab => readindex(3),
	datac => eventcounter(8),
	datad => eventhold(12),
	aclr => GND,
	sload => VCC,
	ena => \ALT_INV_siggate~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~5\,
	regout => eventhold(8));

-- Location: LC_X5_Y4_N1
\Mux0~6\ : maxii_lcell
-- Equation(s):
-- \Mux0~6_combout\ = (readindex(1) & ((readindex(0) & ((\Mux0~5\))) # (!readindex(0) & (\Mux0~3\)))) # (!readindex(1) & (((!readindex(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ad0d",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => readindex(1),
	datab => \Mux0~3\,
	datac => readindex(0),
	datad => \Mux0~5\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~6_combout\);

-- Location: LC_X5_Y3_N7
\eventcounter[15]\ : maxii_lcell
-- Equation(s):
-- eventcounter(15) = DFFEAS((eventcounter(15) $ ((!(!\eventcounter[12]~23\ & \eventcounter[14]~9\) # (\eventcounter[12]~23\ & \eventcounter[14]~9COUT1_42\)))), GLOBAL(\sigclk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c3c3",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \sigclk~combout\,
	datab => eventcounter(15),
	aclr => GND,
	cin => \eventcounter[12]~23\,
	cin0 => \eventcounter[14]~9\,
	cin1 => \eventcounter[14]~9COUT1_42\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => eventcounter(15));

-- Location: LC_X5_Y4_N5
\eventhold[15]\ : maxii_lcell
-- Equation(s):
-- eventhold(15) = DFFEAS(GND, GLOBAL(\sigclk~combout\), VCC, , !\siggate~regout\, eventcounter(15), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \sigclk~combout\,
	datac => eventcounter(15),
	aclr => GND,
	sload => VCC,
	ena => \ALT_INV_siggate~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => eventhold(15));

-- Location: LC_X5_Y4_N4
\eventhold[3]\ : maxii_lcell
-- Equation(s):
-- eventhold(3) = DFFEAS(GND, GLOBAL(\sigclk~combout\), VCC, , !\siggate~regout\, eventcounter(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \sigclk~combout\,
	datac => eventcounter(3),
	aclr => GND,
	sload => VCC,
	ena => \ALT_INV_siggate~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => eventhold(3));

-- Location: LC_X5_Y4_N8
\eventhold[11]\ : maxii_lcell
-- Equation(s):
-- \Mux0~7\ = (readindex(2) & ((readindex(3) & (eventhold(3))) # (!readindex(3) & ((eventhold[11]))))) # (!readindex(2) & (((!readindex(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "88f3",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \sigclk~combout\,
	dataa => eventhold(3),
	datab => readindex(2),
	datac => eventcounter(11),
	datad => readindex(3),
	aclr => GND,
	sload => VCC,
	ena => \ALT_INV_siggate~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~7\,
	regout => eventhold(11));

-- Location: LC_X5_Y4_N9
\eventhold[7]\ : maxii_lcell
-- Equation(s):
-- \Mux0~8\ = (readindex(2) & (((\Mux0~7\)))) # (!readindex(2) & ((\Mux0~7\ & (eventhold(15))) # (!\Mux0~7\ & ((eventhold[7])))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \sigclk~combout\,
	dataa => eventhold(15),
	datab => readindex(2),
	datac => eventcounter(7),
	datad => \Mux0~7\,
	aclr => GND,
	sload => VCC,
	ena => \ALT_INV_siggate~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~8\,
	regout => eventhold(7));

-- Location: LC_X5_Y4_N7
\Mux0~9\ : maxii_lcell
-- Equation(s):
-- \Mux0~9_combout\ = (readindex(1) & (((\Mux0~6_combout\)))) # (!readindex(1) & ((\Mux0~6_combout\ & ((\Mux0~8\))) # (!\Mux0~6_combout\ & (\Mux0~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f4a4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => readindex(1),
	datab => \Mux0~1\,
	datac => \Mux0~6_combout\,
	datad => \Mux0~8\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~9_combout\);

-- Location: LC_X5_Y2_N0
syn1cpugate : maxii_lcell
-- Equation(s):
-- \syn1cpugate~regout\ = DFFEAS((((!\siggate~regout\))), GLOBAL(\refclk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \refclk~combout\,
	datac => \siggate~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \syn1cpugate~regout\);

-- Location: LC_X5_Y2_N2
cpugate : maxii_lcell
-- Equation(s):
-- \cpugate~regout\ = DFFEAS(((mux(2) & ((!\siggate~regout\))) # (!mux(2) & (\syn1cpugate~regout\))), GLOBAL(\refclk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0fcc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \refclk~combout\,
	datab => \syn1cpugate~regout\,
	datac => \siggate~regout\,
	datad => mux(2),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpugate~regout\);

-- Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\miso~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux0~9_combout\,
	oe => VCC,
	padio => ww_miso);

-- Location: PIN_83,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\icp1~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \cpugate~regout\,
	oe => VCC,
	padio => ww_icp1);

-- Location: PIN_85,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\int1~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => eventcounter(15),
	oe => VCC,
	padio => ww_int1);

-- Location: PIN_66,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\led2~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_ss~combout\,
	oe => VCC,
	padio => ww_led2);

-- Location: PIN_82,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rampstopN~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \cpugate~regout\,
	oe => VCC,
	padio => ww_rampstopN);

-- Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rampstartP~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \siggate~regout\,
	oe => VCC,
	padio => ww_rampstartP);

-- Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\sigout~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \sigout~1\,
	oe => VCC,
	padio => ww_sigout);
END structure;


