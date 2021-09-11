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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "08/29/2020 22:23:14"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          top
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY top_vhd_vec_tst IS
END top_vhd_vec_tst;
ARCHITECTURE top_arch OF top_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL icp1 : STD_LOGIC;
SIGNAL int1 : STD_LOGIC;
SIGNAL led2 : STD_LOGIC;
SIGNAL miso : STD_LOGIC;
SIGNAL modeshift : STD_LOGIC;
SIGNAL mosi : STD_LOGIC;
SIGNAL rampstartP : STD_LOGIC;
SIGNAL rampstopN : STD_LOGIC;
SIGNAL refclk : STD_LOGIC;
SIGNAL sck : STD_LOGIC;
SIGNAL sigclk : STD_LOGIC;
SIGNAL sigin1 : STD_LOGIC;
SIGNAL sigin2 : STD_LOGIC;
SIGNAL sigout : STD_LOGIC;
SIGNAL ss : STD_LOGIC;
COMPONENT top
	PORT (
	icp1 : OUT STD_LOGIC;
	int1 : OUT STD_LOGIC;
	led2 : OUT STD_LOGIC;
	miso : OUT STD_LOGIC;
	modeshift : IN STD_LOGIC;
	mosi : IN STD_LOGIC;
	rampstartP : OUT STD_LOGIC;
	rampstopN : OUT STD_LOGIC;
	refclk : IN STD_LOGIC;
	sck : IN STD_LOGIC;
	sigclk : IN STD_LOGIC;
	sigin1 : IN STD_LOGIC;
	sigin2 : IN STD_LOGIC;
	sigout : OUT STD_LOGIC;
	ss : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : top
	PORT MAP (
-- list connections between master ports and signals
	icp1 => icp1,
	int1 => int1,
	led2 => led2,
	miso => miso,
	modeshift => modeshift,
	mosi => mosi,
	rampstartP => rampstartP,
	rampstopN => rampstopN,
	refclk => refclk,
	sck => sck,
	sigclk => sigclk,
	sigin1 => sigin1,
	sigin2 => sigin2,
	sigout => sigout,
	ss => ss
	);

-- modeshift
t_prcs_modeshift: PROCESS
BEGIN
	modeshift <= '1';
	WAIT FOR 3968000 ps;
	modeshift <= '0';
WAIT;
END PROCESS t_prcs_modeshift;

-- mosi
t_prcs_mosi: PROCESS
BEGIN
	mosi <= '0';
	WAIT FOR 2176000 ps;
	mosi <= '1';
	WAIT FOR 1024000 ps;
	mosi <= '0';
WAIT;
END PROCESS t_prcs_mosi;

-- refclk
t_prcs_refclk: PROCESS
BEGIN
LOOP
	refclk <= '0';
	WAIT FOR 50000 ps;
	refclk <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 100000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_refclk;

-- sck
t_prcs_sck: PROCESS
BEGIN
	FOR i IN 1 TO 26
	LOOP
		sck <= '0';
		WAIT FOR 500000 ps;
		sck <= '1';
		WAIT FOR 500000 ps;
	END LOOP;
	sck <= '0';
	WAIT FOR 500000 ps;
	sck <= '1';
	WAIT FOR 124000 ps;
	sck <= '0';
	WAIT FOR 29876000 ps;
	sck <= '1';
	WAIT FOR 500000 ps;
	FOR i IN 1 TO 43
	LOOP
		sck <= '0';
		WAIT FOR 500000 ps;
		sck <= '1';
		WAIT FOR 500000 ps;
	END LOOP;
WAIT;
END PROCESS t_prcs_sck;

-- sigclk
t_prcs_sigclk: PROCESS
BEGIN
LOOP
	sigclk <= '0';
	WAIT FOR 9000 ps;
	sigclk <= '1';
	WAIT FOR 1000 ps;
	IF (NOW >= 100000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_sigclk;

-- sigin1
t_prcs_sigin1: PROCESS
BEGIN
	sigin1 <= '0';
WAIT;
END PROCESS t_prcs_sigin1;

-- sigin2
t_prcs_sigin2: PROCESS
BEGIN
	sigin2 <= '0';
WAIT;
END PROCESS t_prcs_sigin2;

-- ss
t_prcs_ss: PROCESS
BEGIN
	ss <= '0';
	WAIT FOR 28672000 ps;
	ss <= '1';
	WAIT FOR 24576000 ps;
	ss <= '0';
WAIT;
END PROCESS t_prcs_ss;
END top_arch;
