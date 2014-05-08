-- Copyright (C) 1991-2012 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 12.1 Build 177 11/07/2012 SJ Full Version"

-- DATE "05/04/2014 22:42:26"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	internal_stage_fixed IS
    PORT (
	samp00 : IN std_logic_vector(15 DOWNTO 0);
	samp10 : IN std_logic_vector(15 DOWNTO 0);
	sVal00 : IN std_logic;
	sVal10 : IN std_logic;
	nIdx00 : IN std_logic_vector(1 DOWNTO 0);
	nIdx01 : IN std_logic_vector(1 DOWNTO 0);
	nVal00 : IN std_logic;
	nVal01 : IN std_logic;
	rec01 : OUT std_logic;
	rec00 : OUT std_logic;
	rec10 : OUT std_logic;
	samp02 : OUT std_logic_vector(15 DOWNTO 0);
	samp12 : OUT std_logic_vector(15 DOWNTO 0);
	sVal02 : OUT std_logic;
	sVal12 : OUT std_logic;
	nIdx20 : OUT std_logic_vector(1 DOWNTO 0);
	nIdx21 : OUT std_logic_vector(1 DOWNTO 0);
	nVal20 : OUT std_logic;
	nVal21 : OUT std_logic;
	rec20 : IN std_logic;
	rec21 : IN std_logic;
	rec02 : IN std_logic;
	rec12 : IN std_logic;
	memBus00 : IN std_logic_vector(7 DOWNTO 0);
	memBus01 : IN std_logic_vector(7 DOWNTO 0);
	memBus10 : IN std_logic_vector(7 DOWNTO 0);
	memBus11 : IN std_logic_vector(7 DOWNTO 0);
	memRec00 : OUT std_logic_vector(1 DOWNTO 0);
	memRec01 : OUT std_logic_vector(1 DOWNTO 0);
	memRec10 : OUT std_logic_vector(1 DOWNTO 0);
	memRec11 : OUT std_logic_vector(1 DOWNTO 0);
	enable : IN std_logic;
	memRdy : IN std_logic;
	clk : IN std_logic;
	rst : IN std_logic
	);
END internal_stage_fixed;

-- Design Ports Information
-- rec01	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rec00	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rec10	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- samp02[0]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- samp02[1]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- samp02[2]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- samp02[3]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- samp02[4]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- samp02[5]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- samp02[6]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- samp02[7]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- samp02[8]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- samp02[9]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- samp02[10]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- samp02[11]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- samp02[12]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- samp02[13]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- samp02[14]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- samp02[15]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- samp12[0]	=>  Location: PIN_G26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- samp12[1]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- samp12[2]	=>  Location: PIN_H23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- samp12[3]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- samp12[4]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- samp12[5]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- samp12[6]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- samp12[7]	=>  Location: PIN_G23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- samp12[8]	=>  Location: PIN_F25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- samp12[9]	=>  Location: PIN_F24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- samp12[10]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- samp12[11]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- samp12[12]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- samp12[13]	=>  Location: PIN_G25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- samp12[14]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- samp12[15]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sVal02	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sVal12	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nIdx20[0]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nIdx20[1]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nIdx21[0]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nIdx21[1]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nVal20	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nVal21	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memBus00[6]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memBus00[7]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memBus01[6]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memBus01[7]	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memBus10[6]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memBus10[7]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memBus11[6]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memBus11[7]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memRec00[0]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memRec00[1]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memRec01[0]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memRec01[1]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memRec10[0]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memRec10[1]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memRec11[0]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memRec11[1]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enable	=>  Location: PIN_AF3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nVal01	=>  Location: PIN_A25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sVal00	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nVal00	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sVal10	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nIdx00[0]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nIdx00[1]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nIdx01[0]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nIdx01[1]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memRdy	=>  Location: PIN_C25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rec02	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rec12	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- samp10[11]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memBus10[5]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- samp10[7]	=>  Location: PIN_B26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memBus10[4]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- samp10[3]	=>  Location: PIN_B25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- samp10[15]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memBus10[3]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- samp10[6]	=>  Location: PIN_A26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- samp10[10]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- samp10[2]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- samp10[14]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memBus10[2]	=>  Location: PIN_D25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- samp10[9]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- samp10[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- samp10[1]	=>  Location: PIN_B23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- samp10[13]	=>  Location: PIN_C23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- samp10[4]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- samp10[8]	=>  Location: PIN_D23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- samp10[0]	=>  Location: PIN_A23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- samp10[12]	=>  Location: PIN_D24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memBus10[0]	=>  Location: PIN_C24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memBus10[1]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memBus11[5]	=>  Location: PIN_H24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memBus11[4]	=>  Location: PIN_G24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memBus11[3]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memBus11[2]	=>  Location: PIN_C26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memBus11[0]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memBus11[1]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rec20	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rec21	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- samp00[11]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memBus00[5]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- samp00[7]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memBus00[4]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- samp00[3]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- samp00[15]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memBus00[3]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- samp00[6]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- samp00[10]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- samp00[2]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- samp00[14]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memBus00[2]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- samp00[9]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- samp00[5]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- samp00[1]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- samp00[13]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- samp00[4]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- samp00[8]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- samp00[0]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- samp00[12]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memBus00[0]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memBus00[1]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memBus01[5]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memBus01[4]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memBus01[3]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memBus01[2]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memBus01[0]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memBus01[1]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF internal_stage_fixed IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_samp00 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_samp10 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_sVal00 : std_logic;
SIGNAL ww_sVal10 : std_logic;
SIGNAL ww_nIdx00 : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_nIdx01 : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_nVal00 : std_logic;
SIGNAL ww_nVal01 : std_logic;
SIGNAL ww_rec01 : std_logic;
SIGNAL ww_rec00 : std_logic;
SIGNAL ww_rec10 : std_logic;
SIGNAL ww_samp02 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_samp12 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_sVal02 : std_logic;
SIGNAL ww_sVal12 : std_logic;
SIGNAL ww_nIdx20 : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_nIdx21 : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_nVal20 : std_logic;
SIGNAL ww_nVal21 : std_logic;
SIGNAL ww_rec20 : std_logic;
SIGNAL ww_rec21 : std_logic;
SIGNAL ww_rec02 : std_logic;
SIGNAL ww_rec12 : std_logic;
SIGNAL ww_memBus00 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_memBus01 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_memBus10 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_memBus11 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_memRec00 : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_memRec01 : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_memRec10 : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_memRec11 : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_enable : std_logic;
SIGNAL ww_memRdy : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL \rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b10|Mux1~0_combout\ : std_logic;
SIGNAL \b10|Mux1~1_combout\ : std_logic;
SIGNAL \b11|Mux1~0_combout\ : std_logic;
SIGNAL \b11|Mux1~1_combout\ : std_logic;
SIGNAL \b11|Mux3~0_combout\ : std_logic;
SIGNAL \b00|Mux0~0_combout\ : std_logic;
SIGNAL \b00|Mux0~1_combout\ : std_logic;
SIGNAL \b00|Mux2~0_combout\ : std_logic;
SIGNAL \b00|Mux2~1_combout\ : std_logic;
SIGNAL \b00|Mux3~0_combout\ : std_logic;
SIGNAL \b00|Mux3~1_combout\ : std_logic;
SIGNAL \b00|LessThan0~0_combout\ : std_logic;
SIGNAL \b11|FSM|ns.COMPUTE~0_combout\ : std_logic;
SIGNAL \memBus00[6]~input_o\ : std_logic;
SIGNAL \memBus00[7]~input_o\ : std_logic;
SIGNAL \memBus01[6]~input_o\ : std_logic;
SIGNAL \memBus01[7]~input_o\ : std_logic;
SIGNAL \memBus10[6]~input_o\ : std_logic;
SIGNAL \memBus10[7]~input_o\ : std_logic;
SIGNAL \memBus11[6]~input_o\ : std_logic;
SIGNAL \memBus11[7]~input_o\ : std_logic;
SIGNAL \enable~input_o\ : std_logic;
SIGNAL \sVal00~input_o\ : std_logic;
SIGNAL \sVal10~input_o\ : std_logic;
SIGNAL \memBus10[1]~input_o\ : std_logic;
SIGNAL \memBus11[1]~input_o\ : std_logic;
SIGNAL \memBus00[0]~input_o\ : std_logic;
SIGNAL \memBus00[1]~input_o\ : std_logic;
SIGNAL \memBus01[3]~input_o\ : std_logic;
SIGNAL \memBus01[0]~input_o\ : std_logic;
SIGNAL \b10|threshReg|out[1]~feeder_combout\ : std_logic;
SIGNAL \b11|threshReg|out[1]~feeder_combout\ : std_logic;
SIGNAL \b00|threshReg|out[0]~feeder_combout\ : std_logic;
SIGNAL \b01|threshReg|out[3]~feeder_combout\ : std_logic;
SIGNAL \b01|botRecReg|out[0]~feeder_combout\ : std_logic;
SIGNAL \rec01~output_o\ : std_logic;
SIGNAL \rec00~output_o\ : std_logic;
SIGNAL \rec10~output_o\ : std_logic;
SIGNAL \samp02[0]~output_o\ : std_logic;
SIGNAL \samp02[1]~output_o\ : std_logic;
SIGNAL \samp02[2]~output_o\ : std_logic;
SIGNAL \samp02[3]~output_o\ : std_logic;
SIGNAL \samp02[4]~output_o\ : std_logic;
SIGNAL \samp02[5]~output_o\ : std_logic;
SIGNAL \samp02[6]~output_o\ : std_logic;
SIGNAL \samp02[7]~output_o\ : std_logic;
SIGNAL \samp02[8]~output_o\ : std_logic;
SIGNAL \samp02[9]~output_o\ : std_logic;
SIGNAL \samp02[10]~output_o\ : std_logic;
SIGNAL \samp02[11]~output_o\ : std_logic;
SIGNAL \samp02[12]~output_o\ : std_logic;
SIGNAL \samp02[13]~output_o\ : std_logic;
SIGNAL \samp02[14]~output_o\ : std_logic;
SIGNAL \samp02[15]~output_o\ : std_logic;
SIGNAL \samp12[0]~output_o\ : std_logic;
SIGNAL \samp12[1]~output_o\ : std_logic;
SIGNAL \samp12[2]~output_o\ : std_logic;
SIGNAL \samp12[3]~output_o\ : std_logic;
SIGNAL \samp12[4]~output_o\ : std_logic;
SIGNAL \samp12[5]~output_o\ : std_logic;
SIGNAL \samp12[6]~output_o\ : std_logic;
SIGNAL \samp12[7]~output_o\ : std_logic;
SIGNAL \samp12[8]~output_o\ : std_logic;
SIGNAL \samp12[9]~output_o\ : std_logic;
SIGNAL \samp12[10]~output_o\ : std_logic;
SIGNAL \samp12[11]~output_o\ : std_logic;
SIGNAL \samp12[12]~output_o\ : std_logic;
SIGNAL \samp12[13]~output_o\ : std_logic;
SIGNAL \samp12[14]~output_o\ : std_logic;
SIGNAL \samp12[15]~output_o\ : std_logic;
SIGNAL \sVal02~output_o\ : std_logic;
SIGNAL \sVal12~output_o\ : std_logic;
SIGNAL \nIdx20[0]~output_o\ : std_logic;
SIGNAL \nIdx20[1]~output_o\ : std_logic;
SIGNAL \nIdx21[0]~output_o\ : std_logic;
SIGNAL \nIdx21[1]~output_o\ : std_logic;
SIGNAL \nVal20~output_o\ : std_logic;
SIGNAL \nVal21~output_o\ : std_logic;
SIGNAL \memRec00[0]~output_o\ : std_logic;
SIGNAL \memRec00[1]~output_o\ : std_logic;
SIGNAL \memRec01[0]~output_o\ : std_logic;
SIGNAL \memRec01[1]~output_o\ : std_logic;
SIGNAL \memRec10[0]~output_o\ : std_logic;
SIGNAL \memRec10[1]~output_o\ : std_logic;
SIGNAL \memRec11[0]~output_o\ : std_logic;
SIGNAL \memRec11[1]~output_o\ : std_logic;
SIGNAL \nVal01~input_o\ : std_logic;
SIGNAL \rec02~input_o\ : std_logic;
SIGNAL \b01|rgtRecReg|out[0]~0_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \b01|comb~0_combout\ : std_logic;
SIGNAL \b01|FSM|ns.COMPUTE~0_combout\ : std_logic;
SIGNAL \memRdy~input_o\ : std_logic;
SIGNAL \b01|FSM|ns.COMPUTE~1_combout\ : std_logic;
SIGNAL \rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \b01|FSM|cs.COMPUTE~q\ : std_logic;
SIGNAL \nVal00~input_o\ : std_logic;
SIGNAL \b00|FSM|received~0_combout\ : std_logic;
SIGNAL \b00|botRecReg|out[0]~feeder_combout\ : std_logic;
SIGNAL \b00|comb~0_combout\ : std_logic;
SIGNAL \rec20~input_o\ : std_logic;
SIGNAL \b10|botRecReg|out[0]~0_combout\ : std_logic;
SIGNAL \b10|comb~0_combout\ : std_logic;
SIGNAL \b10|FSM|ns.COMPUTE~0_combout\ : std_logic;
SIGNAL \b10|FSM|ns.COMPUTE~1_combout\ : std_logic;
SIGNAL \b10|FSM|cs.COMPUTE~q\ : std_logic;
SIGNAL \b10|FSM|received~0_combout\ : std_logic;
SIGNAL \b00|rgtRecReg|out[0]~feeder_combout\ : std_logic;
SIGNAL \b00|FSM|ns.COMPUTE~0_combout\ : std_logic;
SIGNAL \b00|FSM|ns.COMPUTE~1_combout\ : std_logic;
SIGNAL \b00|FSM|cs.COMPUTE~q\ : std_logic;
SIGNAL \b01|FSM|received~0_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \samp00[0]~input_o\ : std_logic;
SIGNAL \b00|sampReg|out[0]~feeder_combout\ : std_logic;
SIGNAL \b01|sampReg|out[0]~feeder_combout\ : std_logic;
SIGNAL \samp00[1]~input_o\ : std_logic;
SIGNAL \b00|sampReg|out[1]~feeder_combout\ : std_logic;
SIGNAL \b01|sampReg|out[1]~feeder_combout\ : std_logic;
SIGNAL \samp00[2]~input_o\ : std_logic;
SIGNAL \b01|sampReg|out[2]~feeder_combout\ : std_logic;
SIGNAL \samp00[3]~input_o\ : std_logic;
SIGNAL \b00|sampReg|out[3]~feeder_combout\ : std_logic;
SIGNAL \samp00[4]~input_o\ : std_logic;
SIGNAL \b01|sampReg|out[4]~feeder_combout\ : std_logic;
SIGNAL \samp00[5]~input_o\ : std_logic;
SIGNAL \samp00[6]~input_o\ : std_logic;
SIGNAL \b00|sampReg|out[6]~feeder_combout\ : std_logic;
SIGNAL \b01|sampReg|out[6]~feeder_combout\ : std_logic;
SIGNAL \samp00[7]~input_o\ : std_logic;
SIGNAL \b00|sampReg|out[7]~feeder_combout\ : std_logic;
SIGNAL \samp00[8]~input_o\ : std_logic;
SIGNAL \samp00[9]~input_o\ : std_logic;
SIGNAL \b00|sampReg|out[9]~feeder_combout\ : std_logic;
SIGNAL \b01|sampReg|out[9]~feeder_combout\ : std_logic;
SIGNAL \samp00[10]~input_o\ : std_logic;
SIGNAL \b00|sampReg|out[10]~feeder_combout\ : std_logic;
SIGNAL \samp00[11]~input_o\ : std_logic;
SIGNAL \b00|sampReg|out[11]~feeder_combout\ : std_logic;
SIGNAL \b01|sampReg|out[11]~feeder_combout\ : std_logic;
SIGNAL \samp00[12]~input_o\ : std_logic;
SIGNAL \samp00[13]~input_o\ : std_logic;
SIGNAL \b00|sampReg|out[13]~feeder_combout\ : std_logic;
SIGNAL \b01|sampReg|out[13]~feeder_combout\ : std_logic;
SIGNAL \samp00[14]~input_o\ : std_logic;
SIGNAL \samp00[15]~input_o\ : std_logic;
SIGNAL \b00|sampReg|out[15]~feeder_combout\ : std_logic;
SIGNAL \b01|sampReg|out[15]~feeder_combout\ : std_logic;
SIGNAL \samp10[0]~input_o\ : std_logic;
SIGNAL \b11|sampReg|out[0]~feeder_combout\ : std_logic;
SIGNAL \b10|rgtRecReg|out[0]~feeder_combout\ : std_logic;
SIGNAL \b11|FSM|loadInputs~2_combout\ : std_logic;
SIGNAL \b11|FSM|ns.COMPUTE~1_combout\ : std_logic;
SIGNAL \b11|FSM|cs.COMPUTE~q\ : std_logic;
SIGNAL \b11|FSM|loadInputs~0_combout\ : std_logic;
SIGNAL \b11|FSM|loadInputs~1_combout\ : std_logic;
SIGNAL \samp10[1]~input_o\ : std_logic;
SIGNAL \b11|sampReg|out[1]~feeder_combout\ : std_logic;
SIGNAL \samp10[2]~input_o\ : std_logic;
SIGNAL \b11|sampReg|out[2]~feeder_combout\ : std_logic;
SIGNAL \samp10[3]~input_o\ : std_logic;
SIGNAL \b11|sampReg|out[3]~feeder_combout\ : std_logic;
SIGNAL \samp10[4]~input_o\ : std_logic;
SIGNAL \b10|sampReg|out[4]~feeder_combout\ : std_logic;
SIGNAL \b11|sampReg|out[4]~feeder_combout\ : std_logic;
SIGNAL \samp10[5]~input_o\ : std_logic;
SIGNAL \b10|sampReg|out[5]~feeder_combout\ : std_logic;
SIGNAL \b11|sampReg|out[5]~feeder_combout\ : std_logic;
SIGNAL \samp10[6]~input_o\ : std_logic;
SIGNAL \b11|sampReg|out[6]~feeder_combout\ : std_logic;
SIGNAL \samp10[7]~input_o\ : std_logic;
SIGNAL \b10|sampReg|out[7]~feeder_combout\ : std_logic;
SIGNAL \b11|sampReg|out[7]~feeder_combout\ : std_logic;
SIGNAL \samp10[8]~input_o\ : std_logic;
SIGNAL \b11|sampReg|out[8]~feeder_combout\ : std_logic;
SIGNAL \samp10[9]~input_o\ : std_logic;
SIGNAL \b10|sampReg|out[9]~feeder_combout\ : std_logic;
SIGNAL \b11|sampReg|out[9]~feeder_combout\ : std_logic;
SIGNAL \samp10[10]~input_o\ : std_logic;
SIGNAL \b10|sampReg|out[10]~feeder_combout\ : std_logic;
SIGNAL \b11|sampReg|out[10]~feeder_combout\ : std_logic;
SIGNAL \samp10[11]~input_o\ : std_logic;
SIGNAL \b10|sampReg|out[11]~feeder_combout\ : std_logic;
SIGNAL \samp10[12]~input_o\ : std_logic;
SIGNAL \b10|sampReg|out[12]~feeder_combout\ : std_logic;
SIGNAL \b11|sampReg|out[12]~feeder_combout\ : std_logic;
SIGNAL \samp10[13]~input_o\ : std_logic;
SIGNAL \b10|sampReg|out[13]~feeder_combout\ : std_logic;
SIGNAL \b11|sampReg|out[13]~feeder_combout\ : std_logic;
SIGNAL \samp10[14]~input_o\ : std_logic;
SIGNAL \b11|sampReg|out[14]~feeder_combout\ : std_logic;
SIGNAL \samp10[15]~input_o\ : std_logic;
SIGNAL \b10|sampReg|out[15]~feeder_combout\ : std_logic;
SIGNAL \b01|validRight~combout\ : std_logic;
SIGNAL \rec12~input_o\ : std_logic;
SIGNAL \b11|rgtRecReg|out[0]~0_combout\ : std_logic;
SIGNAL \b11|comb~0_combout\ : std_logic;
SIGNAL \b11|validRight~combout\ : std_logic;
SIGNAL \memBus10[5]~input_o\ : std_logic;
SIGNAL \memBus10[4]~input_o\ : std_logic;
SIGNAL \b10|sampIdxReg|out[0]~feeder_combout\ : std_logic;
SIGNAL \b10|Mux0~0_combout\ : std_logic;
SIGNAL \b10|Mux0~1_combout\ : std_logic;
SIGNAL \memBus10[3]~input_o\ : std_logic;
SIGNAL \memBus10[2]~input_o\ : std_logic;
SIGNAL \b10|Mux3~0_combout\ : std_logic;
SIGNAL \b10|Mux3~1_combout\ : std_logic;
SIGNAL \memBus10[0]~input_o\ : std_logic;
SIGNAL \b10|Mux2~0_combout\ : std_logic;
SIGNAL \b10|Mux2~1_combout\ : std_logic;
SIGNAL \b10|LessThan0~0_combout\ : std_logic;
SIGNAL \b10|LessThan0~1_combout\ : std_logic;
SIGNAL \b10|LessThan0~2_combout\ : std_logic;
SIGNAL \memBus00[3]~input_o\ : std_logic;
SIGNAL \memBus00[2]~input_o\ : std_logic;
SIGNAL \memBus00[4]~input_o\ : std_logic;
SIGNAL \b00|sampIdxReg|out[0]~feeder_combout\ : std_logic;
SIGNAL \memBus00[5]~input_o\ : std_logic;
SIGNAL \b00|Mux1~0_combout\ : std_logic;
SIGNAL \b00|Mux1~1_combout\ : std_logic;
SIGNAL \b00|LessThan0~1_combout\ : std_logic;
SIGNAL \b00|LessThan0~2_combout\ : std_logic;
SIGNAL \memBus11[5]~input_o\ : std_logic;
SIGNAL \b11|sampIdxReg|out[1]~feeder_combout\ : std_logic;
SIGNAL \memBus11[4]~input_o\ : std_logic;
SIGNAL \b11|sampIdxReg|out[0]~feeder_combout\ : std_logic;
SIGNAL \b11|Mux0~0_combout\ : std_logic;
SIGNAL \b11|Mux0~1_combout\ : std_logic;
SIGNAL \memBus11[2]~input_o\ : std_logic;
SIGNAL \b11|Mux3~1_combout\ : std_logic;
SIGNAL \memBus11[0]~input_o\ : std_logic;
SIGNAL \b11|Mux2~0_combout\ : std_logic;
SIGNAL \b11|Mux2~1_combout\ : std_logic;
SIGNAL \b11|LessThan0~0_combout\ : std_logic;
SIGNAL \b11|LessThan0~1_combout\ : std_logic;
SIGNAL \memBus11[3]~input_o\ : std_logic;
SIGNAL \b11|LessThan0~2_combout\ : std_logic;
SIGNAL \memBus01[5]~input_o\ : std_logic;
SIGNAL \b01|sampIdxReg|out[1]~feeder_combout\ : std_logic;
SIGNAL \b01|Mux0~0_combout\ : std_logic;
SIGNAL \b01|Mux0~1_combout\ : std_logic;
SIGNAL \memBus01[4]~input_o\ : std_logic;
SIGNAL \b01|sampIdxReg|out[0]~feeder_combout\ : std_logic;
SIGNAL \b01|Mux3~0_combout\ : std_logic;
SIGNAL \b01|Mux3~1_combout\ : std_logic;
SIGNAL \memBus01[1]~input_o\ : std_logic;
SIGNAL \b01|Mux2~0_combout\ : std_logic;
SIGNAL \b01|Mux2~1_combout\ : std_logic;
SIGNAL \b01|LessThan0~0_combout\ : std_logic;
SIGNAL \memBus01[2]~input_o\ : std_logic;
SIGNAL \b01|Mux1~0_combout\ : std_logic;
SIGNAL \b01|Mux1~1_combout\ : std_logic;
SIGNAL \b01|LessThan0~1_combout\ : std_logic;
SIGNAL \b01|LessThan0~2_combout\ : std_logic;
SIGNAL \b11|idxReg|out[0]~feeder_combout\ : std_logic;
SIGNAL \b10|validBottom~combout\ : std_logic;
SIGNAL \rec21~input_o\ : std_logic;
SIGNAL \b11|botRecReg|out[0]~0_combout\ : std_logic;
SIGNAL \b11|validBottom~combout\ : std_logic;
SIGNAL \nIdx00[0]~input_o\ : std_logic;
SIGNAL \nIdx00[1]~input_o\ : std_logic;
SIGNAL \nIdx01[0]~input_o\ : std_logic;
SIGNAL \nIdx01[1]~input_o\ : std_logic;
SIGNAL \b00|idxReg|out[0]~feeder_combout\ : std_logic;
SIGNAL \b00|rgtRecReg|out\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \b00|threshReg|out\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b01|botRecReg|out\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \b01|rgtRecReg|out\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \b01|sampReg|out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \b01|idxReg|out\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \b01|sampIdxReg|out\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b01|threshReg|out\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b10|botRecReg|out\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \b10|rgtRecReg|out\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \b10|sampReg|out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \b10|idxReg|out\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \b10|sampIdxReg|out\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b10|threshReg|out\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b11|botRecReg|out\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \b11|rgtRecReg|out\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \b11|sampReg|out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \b11|idxReg|out\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \b11|sampIdxReg|out\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b11|threshReg|out\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b00|botRecReg|out\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \b00|sampReg|out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \b00|idxReg|out\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \b00|sampIdxReg|out\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \b10|ALT_INV_comb~0_combout\ : std_logic;
SIGNAL \b11|ALT_INV_comb~0_combout\ : std_logic;
SIGNAL \b01|ALT_INV_comb~0_combout\ : std_logic;
SIGNAL \b00|ALT_INV_comb~0_combout\ : std_logic;
SIGNAL \b11|ALT_INV_validBottom~combout\ : std_logic;
SIGNAL \b10|ALT_INV_validBottom~combout\ : std_logic;
SIGNAL \b11|ALT_INV_validRight~combout\ : std_logic;
SIGNAL \b01|ALT_INV_validRight~combout\ : std_logic;

BEGIN

ww_samp00 <= samp00;
ww_samp10 <= samp10;
ww_sVal00 <= sVal00;
ww_sVal10 <= sVal10;
ww_nIdx00 <= nIdx00;
ww_nIdx01 <= nIdx01;
ww_nVal00 <= nVal00;
ww_nVal01 <= nVal01;
rec01 <= ww_rec01;
rec00 <= ww_rec00;
rec10 <= ww_rec10;
samp02 <= ww_samp02;
samp12 <= ww_samp12;
sVal02 <= ww_sVal02;
sVal12 <= ww_sVal12;
nIdx20 <= ww_nIdx20;
nIdx21 <= ww_nIdx21;
nVal20 <= ww_nVal20;
nVal21 <= ww_nVal21;
ww_rec20 <= rec20;
ww_rec21 <= rec21;
ww_rec02 <= rec02;
ww_rec12 <= rec12;
ww_memBus00 <= memBus00;
ww_memBus01 <= memBus01;
ww_memBus10 <= memBus10;
ww_memBus11 <= memBus11;
memRec00 <= ww_memRec00;
memRec01 <= ww_memRec01;
memRec10 <= ww_memRec10;
memRec11 <= ww_memRec11;
ww_enable <= enable;
ww_memRdy <= memRdy;
ww_clk <= clk;
ww_rst <= rst;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_rst~inputclkctrl_outclk\ <= NOT \rst~inputclkctrl_outclk\;
\b10|ALT_INV_comb~0_combout\ <= NOT \b10|comb~0_combout\;
\b11|ALT_INV_comb~0_combout\ <= NOT \b11|comb~0_combout\;
\b01|ALT_INV_comb~0_combout\ <= NOT \b01|comb~0_combout\;
\b00|ALT_INV_comb~0_combout\ <= NOT \b00|comb~0_combout\;
\b11|ALT_INV_validBottom~combout\ <= NOT \b11|validBottom~combout\;
\b10|ALT_INV_validBottom~combout\ <= NOT \b10|validBottom~combout\;
\b11|ALT_INV_validRight~combout\ <= NOT \b11|validRight~combout\;
\b01|ALT_INV_validRight~combout\ <= NOT \b01|validRight~combout\;

-- Location: LCCOMB_X83_Y72_N22
\b10|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b10|Mux1~0_combout\ = (\b10|sampIdxReg|out\(1) & ((\b10|sampReg|out\(10)) # ((\b10|sampIdxReg|out\(0))))) # (!\b10|sampIdxReg|out\(1) & (((\b10|sampReg|out\(2) & !\b10|sampIdxReg|out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b10|sampIdxReg|out\(1),
	datab => \b10|sampReg|out\(10),
	datac => \b10|sampReg|out\(2),
	datad => \b10|sampIdxReg|out\(0),
	combout => \b10|Mux1~0_combout\);

-- Location: LCCOMB_X83_Y72_N12
\b10|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b10|Mux1~1_combout\ = (\b10|Mux1~0_combout\ & (((\b10|sampReg|out\(14)) # (!\b10|sampIdxReg|out\(0))))) # (!\b10|Mux1~0_combout\ & (\b10|sampReg|out\(6) & ((\b10|sampIdxReg|out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b10|Mux1~0_combout\,
	datab => \b10|sampReg|out\(6),
	datac => \b10|sampReg|out\(14),
	datad => \b10|sampIdxReg|out\(0),
	combout => \b10|Mux1~1_combout\);

-- Location: FF_X88_Y72_N13
\b10|threshReg|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b10|threshReg|out[1]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \b10|FSM|received~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b10|threshReg|out\(1));

-- Location: LCCOMB_X84_Y72_N16
\b11|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b11|Mux1~0_combout\ = (\b11|sampIdxReg|out\(1) & ((\b11|sampReg|out\(10)) # ((\b11|sampIdxReg|out\(0))))) # (!\b11|sampIdxReg|out\(1) & (((!\b11|sampIdxReg|out\(0) & \b11|sampReg|out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b11|sampIdxReg|out\(1),
	datab => \b11|sampReg|out\(10),
	datac => \b11|sampIdxReg|out\(0),
	datad => \b11|sampReg|out\(2),
	combout => \b11|Mux1~0_combout\);

-- Location: LCCOMB_X84_Y72_N10
\b11|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b11|Mux1~1_combout\ = (\b11|sampIdxReg|out\(0) & ((\b11|Mux1~0_combout\ & (\b11|sampReg|out\(14))) # (!\b11|Mux1~0_combout\ & ((\b11|sampReg|out\(6)))))) # (!\b11|sampIdxReg|out\(0) & (((\b11|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b11|sampReg|out\(14),
	datab => \b11|sampReg|out\(6),
	datac => \b11|sampIdxReg|out\(0),
	datad => \b11|Mux1~0_combout\,
	combout => \b11|Mux1~1_combout\);

-- Location: LCCOMB_X87_Y72_N12
\b11|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b11|Mux3~0_combout\ = (\b11|sampIdxReg|out\(1) & (((\b11|sampReg|out\(8)) # (\b11|sampIdxReg|out\(0))))) # (!\b11|sampIdxReg|out\(1) & (\b11|sampReg|out\(0) & ((!\b11|sampIdxReg|out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b11|sampIdxReg|out\(1),
	datab => \b11|sampReg|out\(0),
	datac => \b11|sampReg|out\(8),
	datad => \b11|sampIdxReg|out\(0),
	combout => \b11|Mux3~0_combout\);

-- Location: FF_X87_Y72_N7
\b11|threshReg|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b11|threshReg|out[1]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \b11|FSM|loadInputs~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b11|threshReg|out\(1));

-- Location: LCCOMB_X60_Y72_N22
\b00|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b00|Mux0~0_combout\ = (\b00|sampIdxReg|out\(1) & (((\b00|sampIdxReg|out\(0))))) # (!\b00|sampIdxReg|out\(1) & ((\b00|sampIdxReg|out\(0) & ((\b00|sampReg|out\(7)))) # (!\b00|sampIdxReg|out\(0) & (\b00|sampReg|out\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b00|sampReg|out\(3),
	datab => \b00|sampIdxReg|out\(1),
	datac => \b00|sampReg|out\(7),
	datad => \b00|sampIdxReg|out\(0),
	combout => \b00|Mux0~0_combout\);

-- Location: LCCOMB_X60_Y72_N6
\b00|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b00|Mux0~1_combout\ = (\b00|sampIdxReg|out\(1) & ((\b00|Mux0~0_combout\ & (\b00|sampReg|out\(15))) # (!\b00|Mux0~0_combout\ & ((\b00|sampReg|out\(11)))))) # (!\b00|sampIdxReg|out\(1) & (((\b00|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b00|sampReg|out\(15),
	datab => \b00|sampIdxReg|out\(1),
	datac => \b00|Mux0~0_combout\,
	datad => \b00|sampReg|out\(11),
	combout => \b00|Mux0~1_combout\);

-- Location: LCCOMB_X58_Y72_N30
\b00|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b00|Mux2~0_combout\ = (\b00|sampIdxReg|out\(0) & (((\b00|sampReg|out\(5)) # (\b00|sampIdxReg|out\(1))))) # (!\b00|sampIdxReg|out\(0) & (\b00|sampReg|out\(1) & ((!\b00|sampIdxReg|out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b00|sampIdxReg|out\(0),
	datab => \b00|sampReg|out\(1),
	datac => \b00|sampReg|out\(5),
	datad => \b00|sampIdxReg|out\(1),
	combout => \b00|Mux2~0_combout\);

-- Location: LCCOMB_X58_Y72_N20
\b00|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b00|Mux2~1_combout\ = (\b00|Mux2~0_combout\ & ((\b00|sampReg|out\(13)) # ((!\b00|sampIdxReg|out\(1))))) # (!\b00|Mux2~0_combout\ & (((\b00|sampReg|out\(9) & \b00|sampIdxReg|out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b00|sampReg|out\(13),
	datab => \b00|sampReg|out\(9),
	datac => \b00|Mux2~0_combout\,
	datad => \b00|sampIdxReg|out\(1),
	combout => \b00|Mux2~1_combout\);

-- Location: LCCOMB_X58_Y72_N0
\b00|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b00|Mux3~0_combout\ = (\b00|sampIdxReg|out\(0) & (((\b00|sampIdxReg|out\(1))))) # (!\b00|sampIdxReg|out\(0) & ((\b00|sampIdxReg|out\(1) & ((\b00|sampReg|out\(8)))) # (!\b00|sampIdxReg|out\(1) & (\b00|sampReg|out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b00|sampIdxReg|out\(0),
	datab => \b00|sampReg|out\(0),
	datac => \b00|sampReg|out\(8),
	datad => \b00|sampIdxReg|out\(1),
	combout => \b00|Mux3~0_combout\);

-- Location: LCCOMB_X58_Y72_N16
\b00|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b00|Mux3~1_combout\ = (\b00|sampIdxReg|out\(0) & ((\b00|Mux3~0_combout\ & ((\b00|sampReg|out\(12)))) # (!\b00|Mux3~0_combout\ & (\b00|sampReg|out\(4))))) # (!\b00|sampIdxReg|out\(0) & (((\b00|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b00|sampIdxReg|out\(0),
	datab => \b00|sampReg|out\(4),
	datac => \b00|sampReg|out\(12),
	datad => \b00|Mux3~0_combout\,
	combout => \b00|Mux3~1_combout\);

-- Location: FF_X58_Y72_N11
\b00|threshReg|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b00|threshReg|out[0]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \b00|FSM|received~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b00|threshReg|out\(0));

-- Location: FF_X58_Y72_N13
\b00|threshReg|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memBus00[1]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \b00|FSM|received~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b00|threshReg|out\(1));

-- Location: LCCOMB_X58_Y72_N12
\b00|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b00|LessThan0~0_combout\ = (\b00|Mux2~1_combout\ & (((!\b00|threshReg|out\(0) & \b00|Mux3~1_combout\)) # (!\b00|threshReg|out\(1)))) # (!\b00|Mux2~1_combout\ & (!\b00|threshReg|out\(0) & (!\b00|threshReg|out\(1) & \b00|Mux3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b00|threshReg|out\(0),
	datab => \b00|Mux2~1_combout\,
	datac => \b00|threshReg|out\(1),
	datad => \b00|Mux3~1_combout\,
	combout => \b00|LessThan0~0_combout\);

-- Location: FF_X60_Y72_N5
\b01|threshReg|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b01|threshReg|out[3]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \b01|FSM|received~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b01|threshReg|out\(3));

-- Location: FF_X59_Y72_N11
\b01|threshReg|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memBus01[0]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \b01|FSM|received~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b01|threshReg|out\(0));

-- Location: FF_X81_Y72_N15
\b01|botRecReg|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b01|botRecReg|out[0]~feeder_combout\,
	clrn => \b01|ALT_INV_comb~0_combout\,
	ena => \b11|FSM|loadInputs~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b01|botRecReg|out\(0));

-- Location: LCCOMB_X81_Y72_N16
\b11|FSM|ns.COMPUTE~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b11|FSM|ns.COMPUTE~0_combout\ = (\b11|FSM|cs.COMPUTE~q\ & ((!\b11|rgtRecReg|out\(0)) # (!\b11|botRecReg|out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b11|botRecReg|out\(0),
	datac => \b11|FSM|cs.COMPUTE~q\,
	datad => \b11|rgtRecReg|out\(0),
	combout => \b11|FSM|ns.COMPUTE~0_combout\);

-- Location: IOIBUF_X74_Y73_N22
\sVal00~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sVal00,
	o => \sVal00~input_o\);

-- Location: IOIBUF_X83_Y73_N15
\sVal10~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sVal10,
	o => \sVal10~input_o\);

-- Location: IOIBUF_X96_Y73_N15
\memBus10[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memBus10(1),
	o => \memBus10[1]~input_o\);

-- Location: IOIBUF_X94_Y73_N8
\memBus11[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memBus11(1),
	o => \memBus11[1]~input_o\);

-- Location: IOIBUF_X52_Y73_N15
\memBus00[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memBus00(0),
	o => \memBus00[0]~input_o\);

-- Location: IOIBUF_X49_Y73_N22
\memBus00[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memBus00(1),
	o => \memBus00[1]~input_o\);

-- Location: IOIBUF_X65_Y73_N8
\memBus01[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memBus01(3),
	o => \memBus01[3]~input_o\);

-- Location: IOIBUF_X62_Y73_N22
\memBus01[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memBus01(0),
	o => \memBus01[0]~input_o\);

-- Location: LCCOMB_X88_Y72_N12
\b10|threshReg|out[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b10|threshReg|out[1]~feeder_combout\ = \memBus10[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \memBus10[1]~input_o\,
	combout => \b10|threshReg|out[1]~feeder_combout\);

-- Location: LCCOMB_X87_Y72_N6
\b11|threshReg|out[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b11|threshReg|out[1]~feeder_combout\ = \memBus11[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \memBus11[1]~input_o\,
	combout => \b11|threshReg|out[1]~feeder_combout\);

-- Location: LCCOMB_X58_Y72_N10
\b00|threshReg|out[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b00|threshReg|out[0]~feeder_combout\ = \memBus00[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \memBus00[0]~input_o\,
	combout => \b00|threshReg|out[0]~feeder_combout\);

-- Location: LCCOMB_X60_Y72_N4
\b01|threshReg|out[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b01|threshReg|out[3]~feeder_combout\ = \memBus01[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \memBus01[3]~input_o\,
	combout => \b01|threshReg|out[3]~feeder_combout\);

-- Location: LCCOMB_X81_Y72_N14
\b01|botRecReg|out[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b01|botRecReg|out[0]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \b01|botRecReg|out[0]~feeder_combout\);

-- Location: IOOBUF_X72_Y73_N23
\rec01~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b01|FSM|received~0_combout\,
	devoe => ww_devoe,
	o => \rec01~output_o\);

-- Location: IOOBUF_X72_Y73_N16
\rec00~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b00|FSM|received~0_combout\,
	devoe => ww_devoe,
	o => \rec00~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\rec10~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b10|FSM|received~0_combout\,
	devoe => ww_devoe,
	o => \rec10~output_o\);

-- Location: IOOBUF_X54_Y73_N2
\samp02[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b01|sampReg|out\(0),
	devoe => ww_devoe,
	o => \samp02[0]~output_o\);

-- Location: IOOBUF_X54_Y73_N9
\samp02[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b01|sampReg|out\(1),
	devoe => ww_devoe,
	o => \samp02[1]~output_o\);

-- Location: IOOBUF_X60_Y0_N16
\samp02[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b01|sampReg|out\(2),
	devoe => ww_devoe,
	o => \samp02[2]~output_o\);

-- Location: IOOBUF_X65_Y73_N23
\samp02[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b01|sampReg|out\(3),
	devoe => ww_devoe,
	o => \samp02[3]~output_o\);

-- Location: IOOBUF_X42_Y73_N9
\samp02[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b01|sampReg|out\(4),
	devoe => ww_devoe,
	o => \samp02[4]~output_o\);

-- Location: IOOBUF_X27_Y73_N9
\samp02[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b01|sampReg|out\(5),
	devoe => ww_devoe,
	o => \samp02[5]~output_o\);

-- Location: IOOBUF_X40_Y73_N9
\samp02[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b01|sampReg|out\(6),
	devoe => ww_devoe,
	o => \samp02[6]~output_o\);

-- Location: IOOBUF_X31_Y73_N2
\samp02[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b01|sampReg|out\(7),
	devoe => ww_devoe,
	o => \samp02[7]~output_o\);

-- Location: IOOBUF_X38_Y73_N2
\samp02[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b01|sampReg|out\(8),
	devoe => ww_devoe,
	o => \samp02[8]~output_o\);

-- Location: IOOBUF_X58_Y73_N2
\samp02[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b01|sampReg|out\(9),
	devoe => ww_devoe,
	o => \samp02[9]~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\samp02[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b01|sampReg|out\(10),
	devoe => ww_devoe,
	o => \samp02[10]~output_o\);

-- Location: IOOBUF_X60_Y73_N23
\samp02[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b01|sampReg|out\(11),
	devoe => ww_devoe,
	o => \samp02[11]~output_o\);

-- Location: IOOBUF_X47_Y73_N2
\samp02[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b01|sampReg|out\(12),
	devoe => ww_devoe,
	o => \samp02[12]~output_o\);

-- Location: IOOBUF_X52_Y73_N2
\samp02[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b01|sampReg|out\(13),
	devoe => ww_devoe,
	o => \samp02[13]~output_o\);

-- Location: IOOBUF_X31_Y73_N9
\samp02[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b01|sampReg|out\(14),
	devoe => ww_devoe,
	o => \samp02[14]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\samp02[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b01|sampReg|out\(15),
	devoe => ww_devoe,
	o => \samp02[15]~output_o\);

-- Location: IOOBUF_X115_Y66_N23
\samp12[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b11|sampReg|out\(0),
	devoe => ww_devoe,
	o => \samp12[0]~output_o\);

-- Location: IOOBUF_X91_Y73_N16
\samp12[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b11|sampReg|out\(1),
	devoe => ww_devoe,
	o => \samp12[1]~output_o\);

-- Location: IOOBUF_X115_Y65_N16
\samp12[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b11|sampReg|out\(2),
	devoe => ww_devoe,
	o => \samp12[2]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\samp12[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b11|sampReg|out\(3),
	devoe => ww_devoe,
	o => \samp12[3]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\samp12[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b11|sampReg|out\(4),
	devoe => ww_devoe,
	o => \samp12[4]~output_o\);

-- Location: IOOBUF_X87_Y73_N23
\samp12[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b11|sampReg|out\(5),
	devoe => ww_devoe,
	o => \samp12[5]~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\samp12[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b11|sampReg|out\(6),
	devoe => ww_devoe,
	o => \samp12[6]~output_o\);

-- Location: IOOBUF_X115_Y69_N16
\samp12[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b11|sampReg|out\(7),
	devoe => ww_devoe,
	o => \samp12[7]~output_o\);

-- Location: IOOBUF_X115_Y68_N23
\samp12[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b11|sampReg|out\(8),
	devoe => ww_devoe,
	o => \samp12[8]~output_o\);

-- Location: IOOBUF_X115_Y68_N16
\samp12[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b11|sampReg|out\(9),
	devoe => ww_devoe,
	o => \samp12[9]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\samp12[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b11|sampReg|out\(10),
	devoe => ww_devoe,
	o => \samp12[10]~output_o\);

-- Location: IOOBUF_X115_Y64_N2
\samp12[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b11|sampReg|out\(11),
	devoe => ww_devoe,
	o => \samp12[11]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\samp12[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b11|sampReg|out\(12),
	devoe => ww_devoe,
	o => \samp12[12]~output_o\);

-- Location: IOOBUF_X115_Y66_N16
\samp12[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b11|sampReg|out\(13),
	devoe => ww_devoe,
	o => \samp12[13]~output_o\);

-- Location: IOOBUF_X83_Y73_N23
\samp12[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b11|sampReg|out\(14),
	devoe => ww_devoe,
	o => \samp12[14]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\samp12[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b11|sampReg|out\(15),
	devoe => ww_devoe,
	o => \samp12[15]~output_o\);

-- Location: IOOBUF_X81_Y73_N2
\sVal02~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b01|ALT_INV_validRight~combout\,
	devoe => ww_devoe,
	o => \sVal02~output_o\);

-- Location: IOOBUF_X79_Y73_N9
\sVal12~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b11|ALT_INV_validRight~combout\,
	devoe => ww_devoe,
	o => \sVal12~output_o\);

-- Location: IOOBUF_X79_Y73_N2
\nIdx20[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b10|LessThan0~2_combout\,
	devoe => ww_devoe,
	o => \nIdx20[0]~output_o\);

-- Location: IOOBUF_X33_Y73_N9
\nIdx20[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b10|idxReg|out\(0),
	devoe => ww_devoe,
	o => \nIdx20[1]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\nIdx21[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b11|LessThan0~2_combout\,
	devoe => ww_devoe,
	o => \nIdx21[0]~output_o\);

-- Location: IOOBUF_X67_Y73_N16
\nIdx21[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b11|idxReg|out\(0),
	devoe => ww_devoe,
	o => \nIdx21[1]~output_o\);

-- Location: IOOBUF_X85_Y73_N16
\nVal20~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b10|ALT_INV_validBottom~combout\,
	devoe => ww_devoe,
	o => \nVal20~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\nVal21~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b11|ALT_INV_validBottom~combout\,
	devoe => ww_devoe,
	o => \nVal21~output_o\);

-- Location: IOOBUF_X29_Y73_N9
\memRec00[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \nIdx00[0]~input_o\,
	devoe => ww_devoe,
	o => \memRec00[0]~output_o\);

-- Location: IOOBUF_X0_Y55_N9
\memRec00[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \nIdx00[1]~input_o\,
	devoe => ww_devoe,
	o => \memRec00[1]~output_o\);

-- Location: IOOBUF_X25_Y73_N23
\memRec01[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \nIdx01[0]~input_o\,
	devoe => ww_devoe,
	o => \memRec01[0]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\memRec01[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \nIdx01[1]~input_o\,
	devoe => ww_devoe,
	o => \memRec01[1]~output_o\);

-- Location: IOOBUF_X45_Y73_N9
\memRec10[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b00|LessThan0~2_combout\,
	devoe => ww_devoe,
	o => \memRec10[0]~output_o\);

-- Location: IOOBUF_X45_Y73_N2
\memRec10[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b00|idxReg|out\(0),
	devoe => ww_devoe,
	o => \memRec10[1]~output_o\);

-- Location: IOOBUF_X38_Y73_N9
\memRec11[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b01|LessThan0~2_combout\,
	devoe => ww_devoe,
	o => \memRec11[0]~output_o\);

-- Location: IOOBUF_X60_Y73_N16
\memRec11[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b01|idxReg|out\(0),
	devoe => ww_devoe,
	o => \memRec11[1]~output_o\);

-- Location: IOIBUF_X109_Y73_N8
\nVal01~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nVal01,
	o => \nVal01~input_o\);

-- Location: IOIBUF_X81_Y73_N8
\rec02~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rec02,
	o => \rec02~input_o\);

-- Location: LCCOMB_X81_Y72_N12
\b01|rgtRecReg|out[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b01|rgtRecReg|out[0]~0_combout\ = (\b01|rgtRecReg|out\(0)) # (\rec02~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b01|rgtRecReg|out\(0),
	datad => \rec02~input_o\,
	combout => \b01|rgtRecReg|out[0]~0_combout\);

-- Location: IOIBUF_X0_Y36_N15
\rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: LCCOMB_X82_Y72_N8
\b01|comb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b01|comb~0_combout\ = (\rst~input_o\) # (!\b01|FSM|cs.COMPUTE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst~input_o\,
	datad => \b01|FSM|cs.COMPUTE~q\,
	combout => \b01|comb~0_combout\);

-- Location: FF_X81_Y72_N13
\b01|rgtRecReg|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b01|rgtRecReg|out[0]~0_combout\,
	clrn => \b01|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b01|rgtRecReg|out\(0));

-- Location: LCCOMB_X82_Y72_N14
\b01|FSM|ns.COMPUTE~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b01|FSM|ns.COMPUTE~0_combout\ = (\b01|FSM|cs.COMPUTE~q\ & ((!\b01|rgtRecReg|out\(0)) # (!\b01|botRecReg|out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b01|botRecReg|out\(0),
	datab => \b01|FSM|cs.COMPUTE~q\,
	datad => \b01|rgtRecReg|out\(0),
	combout => \b01|FSM|ns.COMPUTE~0_combout\);

-- Location: IOIBUF_X105_Y73_N8
\memRdy~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memRdy,
	o => \memRdy~input_o\);

-- Location: LCCOMB_X82_Y72_N0
\b01|FSM|ns.COMPUTE~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b01|FSM|ns.COMPUTE~1_combout\ = (\memRdy~input_o\ & ((\b01|FSM|received~0_combout\) # (\b01|FSM|ns.COMPUTE~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b01|FSM|received~0_combout\,
	datac => \b01|FSM|ns.COMPUTE~0_combout\,
	datad => \memRdy~input_o\,
	combout => \b01|FSM|ns.COMPUTE~1_combout\);

-- Location: CLKCTRL_G4
\rst~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rst~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rst~inputclkctrl_outclk\);

-- Location: FF_X82_Y72_N1
\b01|FSM|cs.COMPUTE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b01|FSM|ns.COMPUTE~1_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b01|FSM|cs.COMPUTE~q\);

-- Location: IOIBUF_X74_Y73_N15
\nVal00~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nVal00,
	o => \nVal00~input_o\);

-- Location: LCCOMB_X82_Y72_N28
\b00|FSM|received~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b00|FSM|received~0_combout\ = (\sVal00~input_o\ & (\nVal00~input_o\ & !\b00|FSM|cs.COMPUTE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sVal00~input_o\,
	datac => \nVal00~input_o\,
	datad => \b00|FSM|cs.COMPUTE~q\,
	combout => \b00|FSM|received~0_combout\);

-- Location: LCCOMB_X83_Y72_N8
\b00|botRecReg|out[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b00|botRecReg|out[0]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \b00|botRecReg|out[0]~feeder_combout\);

-- Location: LCCOMB_X82_Y72_N24
\b00|comb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b00|comb~0_combout\ = (\rst~input_o\) # (!\b00|FSM|cs.COMPUTE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst~input_o\,
	datad => \b00|FSM|cs.COMPUTE~q\,
	combout => \b00|comb~0_combout\);

-- Location: IOIBUF_X85_Y73_N1
\rec20~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rec20,
	o => \rec20~input_o\);

-- Location: LCCOMB_X84_Y72_N30
\b10|botRecReg|out[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b10|botRecReg|out[0]~0_combout\ = (\b10|botRecReg|out\(0)) # (\rec20~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b10|botRecReg|out\(0),
	datad => \rec20~input_o\,
	combout => \b10|botRecReg|out[0]~0_combout\);

-- Location: LCCOMB_X84_Y72_N6
\b10|comb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b10|comb~0_combout\ = (\rst~input_o\) # (!\b10|FSM|cs.COMPUTE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst~input_o\,
	datad => \b10|FSM|cs.COMPUTE~q\,
	combout => \b10|comb~0_combout\);

-- Location: FF_X84_Y72_N31
\b10|botRecReg|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b10|botRecReg|out[0]~0_combout\,
	clrn => \b10|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b10|botRecReg|out\(0));

-- Location: LCCOMB_X84_Y72_N24
\b10|FSM|ns.COMPUTE~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b10|FSM|ns.COMPUTE~0_combout\ = (\b10|FSM|cs.COMPUTE~q\ & ((!\b10|botRecReg|out\(0)) # (!\b10|rgtRecReg|out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b10|rgtRecReg|out\(0),
	datac => \b10|FSM|cs.COMPUTE~q\,
	datad => \b10|botRecReg|out\(0),
	combout => \b10|FSM|ns.COMPUTE~0_combout\);

-- Location: LCCOMB_X84_Y72_N20
\b10|FSM|ns.COMPUTE~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b10|FSM|ns.COMPUTE~1_combout\ = (\memRdy~input_o\ & ((\b10|FSM|ns.COMPUTE~0_combout\) # (\b10|FSM|received~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b10|FSM|ns.COMPUTE~0_combout\,
	datac => \memRdy~input_o\,
	datad => \b10|FSM|received~0_combout\,
	combout => \b10|FSM|ns.COMPUTE~1_combout\);

-- Location: FF_X84_Y72_N21
\b10|FSM|cs.COMPUTE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b10|FSM|ns.COMPUTE~1_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b10|FSM|cs.COMPUTE~q\);

-- Location: LCCOMB_X83_Y72_N18
\b10|FSM|received~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b10|FSM|received~0_combout\ = (\sVal10~input_o\ & (!\b00|botRecReg|out\(0) & (!\b10|FSM|cs.COMPUTE~q\ & \b00|FSM|cs.COMPUTE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sVal10~input_o\,
	datab => \b00|botRecReg|out\(0),
	datac => \b10|FSM|cs.COMPUTE~q\,
	datad => \b00|FSM|cs.COMPUTE~q\,
	combout => \b10|FSM|received~0_combout\);

-- Location: FF_X83_Y72_N9
\b00|botRecReg|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b00|botRecReg|out[0]~feeder_combout\,
	clrn => \b00|ALT_INV_comb~0_combout\,
	ena => \b10|FSM|received~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b00|botRecReg|out\(0));

-- Location: LCCOMB_X82_Y72_N18
\b00|rgtRecReg|out[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b00|rgtRecReg|out[0]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \b00|rgtRecReg|out[0]~feeder_combout\);

-- Location: FF_X82_Y72_N19
\b00|rgtRecReg|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b00|rgtRecReg|out[0]~feeder_combout\,
	clrn => \b00|ALT_INV_comb~0_combout\,
	ena => \b01|FSM|received~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b00|rgtRecReg|out\(0));

-- Location: LCCOMB_X82_Y72_N30
\b00|FSM|ns.COMPUTE~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b00|FSM|ns.COMPUTE~0_combout\ = (\b00|FSM|cs.COMPUTE~q\ & ((!\b00|rgtRecReg|out\(0)) # (!\b00|botRecReg|out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b00|FSM|cs.COMPUTE~q\,
	datac => \b00|botRecReg|out\(0),
	datad => \b00|rgtRecReg|out\(0),
	combout => \b00|FSM|ns.COMPUTE~0_combout\);

-- Location: LCCOMB_X82_Y72_N20
\b00|FSM|ns.COMPUTE~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b00|FSM|ns.COMPUTE~1_combout\ = (\memRdy~input_o\ & ((\b00|FSM|received~0_combout\) # (\b00|FSM|ns.COMPUTE~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b00|FSM|received~0_combout\,
	datac => \b00|FSM|ns.COMPUTE~0_combout\,
	datad => \memRdy~input_o\,
	combout => \b00|FSM|ns.COMPUTE~1_combout\);

-- Location: FF_X82_Y72_N21
\b00|FSM|cs.COMPUTE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b00|FSM|ns.COMPUTE~1_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b00|FSM|cs.COMPUTE~q\);

-- Location: LCCOMB_X82_Y72_N22
\b01|FSM|received~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b01|FSM|received~0_combout\ = (\nVal01~input_o\ & (!\b01|FSM|cs.COMPUTE~q\ & (\b00|FSM|cs.COMPUTE~q\ & !\b00|rgtRecReg|out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nVal01~input_o\,
	datab => \b01|FSM|cs.COMPUTE~q\,
	datac => \b00|FSM|cs.COMPUTE~q\,
	datad => \b00|rgtRecReg|out\(0),
	combout => \b01|FSM|received~0_combout\);

-- Location: IOIBUF_X0_Y36_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X58_Y73_N22
\samp00[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_samp00(0),
	o => \samp00[0]~input_o\);

-- Location: LCCOMB_X58_Y72_N14
\b00|sampReg|out[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b00|sampReg|out[0]~feeder_combout\ = \samp00[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \samp00[0]~input_o\,
	combout => \b00|sampReg|out[0]~feeder_combout\);

-- Location: FF_X58_Y72_N15
\b00|sampReg|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b00|sampReg|out[0]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \b00|FSM|received~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b00|sampReg|out\(0));

-- Location: LCCOMB_X59_Y72_N12
\b01|sampReg|out[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b01|sampReg|out[0]~feeder_combout\ = \b00|sampReg|out\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b00|sampReg|out\(0),
	combout => \b01|sampReg|out[0]~feeder_combout\);

-- Location: FF_X59_Y72_N13
\b01|sampReg|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b01|sampReg|out[0]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \b01|FSM|received~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b01|sampReg|out\(0));

-- Location: IOIBUF_X47_Y73_N15
\samp00[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_samp00(1),
	o => \samp00[1]~input_o\);

-- Location: LCCOMB_X58_Y72_N24
\b00|sampReg|out[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b00|sampReg|out[1]~feeder_combout\ = \samp00[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \samp00[1]~input_o\,
	combout => \b00|sampReg|out[1]~feeder_combout\);

-- Location: FF_X58_Y72_N25
\b00|sampReg|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b00|sampReg|out[1]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \b00|FSM|received~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b00|sampReg|out\(1));

-- Location: LCCOMB_X59_Y72_N26
\b01|sampReg|out[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b01|sampReg|out[1]~feeder_combout\ = \b00|sampReg|out\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b00|sampReg|out\(1),
	combout => \b01|sampReg|out[1]~feeder_combout\);

-- Location: FF_X59_Y72_N27
\b01|sampReg|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b01|sampReg|out[1]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \b01|FSM|received~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b01|sampReg|out\(1));

-- Location: IOIBUF_X60_Y73_N8
\samp00[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_samp00(2),
	o => \samp00[2]~input_o\);

-- Location: FF_X60_Y72_N3
\b00|sampReg|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \samp00[2]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \b00|FSM|received~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b00|sampReg|out\(2));

-- Location: LCCOMB_X60_Y72_N16
\b01|sampReg|out[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b01|sampReg|out[2]~feeder_combout\ = \b00|sampReg|out\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b00|sampReg|out\(2),
	combout => \b01|sampReg|out[2]~feeder_combout\);

-- Location: FF_X60_Y72_N17
\b01|sampReg|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b01|sampReg|out[2]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \b01|FSM|received~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b01|sampReg|out\(2));

-- Location: IOIBUF_X33_Y73_N1
\samp00[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_samp00(3),
	o => \samp00[3]~input_o\);

-- Location: LCCOMB_X60_Y72_N30
\b00|sampReg|out[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b00|sampReg|out[3]~feeder_combout\ = \samp00[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \samp00[3]~input_o\,
	combout => \b00|sampReg|out[3]~feeder_combout\);

-- Location: FF_X60_Y72_N31
\b00|sampReg|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b00|sampReg|out[3]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \b00|FSM|received~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b00|sampReg|out\(3));

-- Location: FF_X60_Y72_N13
\b01|sampReg|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \b00|sampReg|out\(3),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \b01|FSM|received~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b01|sampReg|out\(3));

-- Location: IOIBUF_X38_Y73_N15
\samp00[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_samp00(4),
	o => \samp00[4]~input_o\);

-- Location: FF_X58_Y72_N7
\b00|sampReg|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \samp00[4]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \b00|FSM|received~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b00|sampReg|out\(4));

-- Location: LCCOMB_X59_Y72_N4
\b01|sampReg|out[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b01|sampReg|out[4]~feeder_combout\ = \b00|sampReg|out\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b00|sampReg|out\(4),
	combout => \b01|sampReg|out[4]~feeder_combout\);

-- Location: FF_X59_Y72_N5
\b01|sampReg|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b01|sampReg|out[4]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \b01|FSM|received~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b01|sampReg|out\(4));

-- Location: IOIBUF_X38_Y73_N22
\samp00[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_samp00(5),
	o => \samp00[5]~input_o\);

-- Location: FF_X58_Y72_N31
\b00|sampReg|out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \samp00[5]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \b00|FSM|received~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b00|sampReg|out\(5));

-- Location: FF_X59_Y72_N31
\b01|sampReg|out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \b00|sampReg|out\(5),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \b01|FSM|received~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b01|sampReg|out\(5));

-- Location: IOIBUF_X69_Y73_N1
\samp00[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_samp00(6),
	o => \samp00[6]~input_o\);

-- Location: LCCOMB_X61_Y72_N4
\b00|sampReg|out[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b00|sampReg|out[6]~feeder_combout\ = \samp00[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \samp00[6]~input_o\,
	combout => \b00|sampReg|out[6]~feeder_combout\);

-- Location: FF_X61_Y72_N5
\b00|sampReg|out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b00|sampReg|out[6]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \b00|FSM|received~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b00|sampReg|out\(6));

-- Location: LCCOMB_X60_Y72_N8
\b01|sampReg|out[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b01|sampReg|out[6]~feeder_combout\ = \b00|sampReg|out\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b00|sampReg|out\(6),
	combout => \b01|sampReg|out[6]~feeder_combout\);

-- Location: FF_X60_Y72_N9
\b01|sampReg|out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b01|sampReg|out[6]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \b01|FSM|received~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b01|sampReg|out\(6));

-- Location: IOIBUF_X69_Y73_N22
\samp00[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_samp00(7),
	o => \samp00[7]~input_o\);

-- Location: LCCOMB_X61_Y72_N10
\b00|sampReg|out[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b00|sampReg|out[7]~feeder_combout\ = \samp00[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \samp00[7]~input_o\,
	combout => \b00|sampReg|out[7]~feeder_combout\);

-- Location: FF_X61_Y72_N11
\b00|sampReg|out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b00|sampReg|out[7]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \b00|FSM|received~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b00|sampReg|out\(7));

-- Location: FF_X60_Y72_N23
\b01|sampReg|out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \b00|sampReg|out\(7),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \b01|FSM|received~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b01|sampReg|out\(7));

-- Location: IOIBUF_X58_Y73_N8
\samp00[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_samp00(8),
	o => \samp00[8]~input_o\);

-- Location: FF_X58_Y72_N1
\b00|sampReg|out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \samp00[8]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \b00|FSM|received~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b00|sampReg|out\(8));

-- Location: FF_X59_Y72_N25
\b01|sampReg|out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \b00|sampReg|out\(8),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \b01|FSM|received~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b01|sampReg|out\(8));

-- Location: IOIBUF_X42_Y73_N1
\samp00[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_samp00(9),
	o => \samp00[9]~input_o\);

-- Location: LCCOMB_X58_Y72_N4
\b00|sampReg|out[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b00|sampReg|out[9]~feeder_combout\ = \samp00[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \samp00[9]~input_o\,
	combout => \b00|sampReg|out[9]~feeder_combout\);

-- Location: FF_X58_Y72_N5
\b00|sampReg|out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b00|sampReg|out[9]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \b00|FSM|received~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b00|sampReg|out\(9));

-- Location: LCCOMB_X59_Y72_N18
\b01|sampReg|out[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b01|sampReg|out[9]~feeder_combout\ = \b00|sampReg|out\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b00|sampReg|out\(9),
	combout => \b01|sampReg|out[9]~feeder_combout\);

-- Location: FF_X59_Y72_N19
\b01|sampReg|out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b01|sampReg|out[9]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \b01|FSM|received~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b01|sampReg|out\(9));

-- Location: IOIBUF_X69_Y73_N15
\samp00[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_samp00(10),
	o => \samp00[10]~input_o\);

-- Location: LCCOMB_X61_Y72_N22
\b00|sampReg|out[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b00|sampReg|out[10]~feeder_combout\ = \samp00[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \samp00[10]~input_o\,
	combout => \b00|sampReg|out[10]~feeder_combout\);

-- Location: FF_X61_Y72_N23
\b00|sampReg|out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b00|sampReg|out[10]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \b00|FSM|received~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b00|sampReg|out\(10));

-- Location: FF_X60_Y72_N21
\b01|sampReg|out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \b00|sampReg|out\(10),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \b01|FSM|received~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b01|sampReg|out\(10));

-- Location: IOIBUF_X62_Y73_N15
\samp00[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_samp00(11),
	o => \samp00[11]~input_o\);

-- Location: LCCOMB_X61_Y72_N28
\b00|sampReg|out[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b00|sampReg|out[11]~feeder_combout\ = \samp00[11]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \samp00[11]~input_o\,
	combout => \b00|sampReg|out[11]~feeder_combout\);

-- Location: FF_X61_Y72_N29
\b00|sampReg|out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b00|sampReg|out[11]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \b00|FSM|received~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b00|sampReg|out\(11));

-- Location: LCCOMB_X60_Y72_N0
\b01|sampReg|out[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b01|sampReg|out[11]~feeder_combout\ = \b00|sampReg|out\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b00|sampReg|out\(11),
	combout => \b01|sampReg|out[11]~feeder_combout\);

-- Location: FF_X60_Y72_N1
\b01|sampReg|out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b01|sampReg|out[11]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \b01|FSM|received~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b01|sampReg|out\(11));

-- Location: IOIBUF_X52_Y73_N22
\samp00[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_samp00(12),
	o => \samp00[12]~input_o\);

-- Location: FF_X58_Y72_N17
\b00|sampReg|out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \samp00[12]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \b00|FSM|received~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b00|sampReg|out\(12));

-- Location: FF_X59_Y72_N21
\b01|sampReg|out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \b00|sampReg|out\(12),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \b01|FSM|received~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b01|sampReg|out\(12));

-- Location: IOIBUF_X52_Y73_N8
\samp00[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_samp00(13),
	o => \samp00[13]~input_o\);

-- Location: LCCOMB_X58_Y72_N22
\b00|sampReg|out[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b00|sampReg|out[13]~feeder_combout\ = \samp00[13]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \samp00[13]~input_o\,
	combout => \b00|sampReg|out[13]~feeder_combout\);

-- Location: FF_X58_Y72_N23
\b00|sampReg|out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b00|sampReg|out[13]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \b00|FSM|received~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b00|sampReg|out\(13));

-- Location: LCCOMB_X59_Y72_N2
\b01|sampReg|out[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b01|sampReg|out[13]~feeder_combout\ = \b00|sampReg|out\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b00|sampReg|out\(13),
	combout => \b01|sampReg|out[13]~feeder_combout\);

-- Location: FF_X59_Y72_N3
\b01|sampReg|out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b01|sampReg|out[13]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \b01|FSM|received~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b01|sampReg|out\(13));

-- Location: IOIBUF_X60_Y73_N1
\samp00[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_samp00(14),
	o => \samp00[14]~input_o\);

-- Location: FF_X60_Y72_N19
\b00|sampReg|out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \samp00[14]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \b00|FSM|received~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b00|sampReg|out\(14));

-- Location: FF_X60_Y72_N29
\b01|sampReg|out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \b00|sampReg|out\(14),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \b01|FSM|received~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b01|sampReg|out\(14));

-- Location: IOIBUF_X67_Y73_N8
\samp00[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_samp00(15),
	o => \samp00[15]~input_o\);

-- Location: LCCOMB_X60_Y72_N10
\b00|sampReg|out[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b00|sampReg|out[15]~feeder_combout\ = \samp00[15]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \samp00[15]~input_o\,
	combout => \b00|sampReg|out[15]~feeder_combout\);

-- Location: FF_X60_Y72_N11
\b00|sampReg|out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b00|sampReg|out[15]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \b00|FSM|received~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b00|sampReg|out\(15));

-- Location: LCCOMB_X60_Y72_N26
\b01|sampReg|out[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b01|sampReg|out[15]~feeder_combout\ = \b00|sampReg|out\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b00|sampReg|out\(15),
	combout => \b01|sampReg|out[15]~feeder_combout\);

-- Location: FF_X60_Y72_N27
\b01|sampReg|out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b01|sampReg|out[15]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \b01|FSM|received~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b01|sampReg|out\(15));

-- Location: IOIBUF_X102_Y73_N1
\samp10[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_samp10(0),
	o => \samp10[0]~input_o\);

-- Location: FF_X88_Y72_N31
\b10|sampReg|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \samp10[0]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \b10|FSM|received~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b10|sampReg|out\(0));

-- Location: LCCOMB_X87_Y72_N28
\b11|sampReg|out[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b11|sampReg|out[0]~feeder_combout\ = \b10|sampReg|out\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b10|sampReg|out\(0),
	combout => \b11|sampReg|out[0]~feeder_combout\);

-- Location: LCCOMB_X84_Y72_N22
\b10|rgtRecReg|out[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b10|rgtRecReg|out[0]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \b10|rgtRecReg|out[0]~feeder_combout\);

-- Location: FF_X84_Y72_N23
\b10|rgtRecReg|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b10|rgtRecReg|out[0]~feeder_combout\,
	clrn => \b10|ALT_INV_comb~0_combout\,
	ena => \b11|FSM|loadInputs~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b10|rgtRecReg|out\(0));

-- Location: LCCOMB_X82_Y72_N4
\b11|FSM|loadInputs~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b11|FSM|loadInputs~2_combout\ = (!\b01|botRecReg|out\(0) & (!\b11|FSM|cs.COMPUTE~q\ & (!\b10|rgtRecReg|out\(0) & \b10|FSM|cs.COMPUTE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b01|botRecReg|out\(0),
	datab => \b11|FSM|cs.COMPUTE~q\,
	datac => \b10|rgtRecReg|out\(0),
	datad => \b10|FSM|cs.COMPUTE~q\,
	combout => \b11|FSM|loadInputs~2_combout\);

-- Location: LCCOMB_X82_Y72_N16
\b11|FSM|ns.COMPUTE~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b11|FSM|ns.COMPUTE~1_combout\ = (\memRdy~input_o\ & ((\b11|FSM|ns.COMPUTE~0_combout\) # ((\b01|FSM|cs.COMPUTE~q\ & \b11|FSM|loadInputs~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b11|FSM|ns.COMPUTE~0_combout\,
	datab => \b01|FSM|cs.COMPUTE~q\,
	datac => \b11|FSM|loadInputs~2_combout\,
	datad => \memRdy~input_o\,
	combout => \b11|FSM|ns.COMPUTE~1_combout\);

-- Location: FF_X82_Y72_N17
\b11|FSM|cs.COMPUTE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b11|FSM|ns.COMPUTE~1_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b11|FSM|cs.COMPUTE~q\);

-- Location: LCCOMB_X82_Y72_N12
\b11|FSM|loadInputs~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b11|FSM|loadInputs~0_combout\ = (!\b10|rgtRecReg|out\(0) & \b10|FSM|cs.COMPUTE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b10|rgtRecReg|out\(0),
	datad => \b10|FSM|cs.COMPUTE~q\,
	combout => \b11|FSM|loadInputs~0_combout\);

-- Location: LCCOMB_X82_Y72_N6
\b11|FSM|loadInputs~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b11|FSM|loadInputs~1_combout\ = (!\b01|botRecReg|out\(0) & (\b01|FSM|cs.COMPUTE~q\ & (!\b11|FSM|cs.COMPUTE~q\ & \b11|FSM|loadInputs~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b01|botRecReg|out\(0),
	datab => \b01|FSM|cs.COMPUTE~q\,
	datac => \b11|FSM|cs.COMPUTE~q\,
	datad => \b11|FSM|loadInputs~0_combout\,
	combout => \b11|FSM|loadInputs~1_combout\);

-- Location: FF_X87_Y72_N29
\b11|sampReg|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b11|sampReg|out[0]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \b11|FSM|loadInputs~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b11|sampReg|out\(0));

-- Location: IOIBUF_X102_Y73_N8
\samp10[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_samp10(1),
	o => \samp10[1]~input_o\);

-- Location: FF_X83_Y72_N31
\b10|sampReg|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \samp10[1]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \b10|FSM|received~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b10|sampReg|out\(1));

-- Location: LCCOMB_X83_Y72_N0
\b11|sampReg|out[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b11|sampReg|out[1]~feeder_combout\ = \b10|sampReg|out\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b10|sampReg|out\(1),
	combout => \b11|sampReg|out[1]~feeder_combout\);

-- Location: FF_X83_Y72_N1
\b11|sampReg|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b11|sampReg|out[1]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \b11|FSM|loadInputs~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b11|sampReg|out\(1));

-- Location: IOIBUF_X83_Y73_N8
\samp10[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_samp10(2),
	o => \samp10[2]~input_o\);

-- Location: FF_X83_Y72_N23
\b10|sampReg|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \samp10[2]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \b10|FSM|received~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b10|sampReg|out\(2));

-- Location: LCCOMB_X84_Y72_N18
\b11|sampReg|out[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b11|sampReg|out[2]~feeder_combout\ = \b10|sampReg|out\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b10|sampReg|out\(2),
	combout => \b11|sampReg|out[2]~feeder_combout\);

-- Location: FF_X84_Y72_N19
\b11|sampReg|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b11|sampReg|out[2]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \b11|FSM|loadInputs~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b11|sampReg|out\(2));

-- Location: IOIBUF_X107_Y73_N1
\samp10[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_samp10(3),
	o => \samp10[3]~input_o\);

-- Location: FF_X83_Y72_N15
\b10|sampReg|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \samp10[3]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \b10|FSM|received~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b10|sampReg|out\(3));

-- Location: LCCOMB_X83_Y72_N10
\b11|sampReg|out[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b11|sampReg|out[3]~feeder_combout\ = \b10|sampReg|out\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b10|sampReg|out\(3),
	combout => \b11|sampReg|out[3]~feeder_combout\);

-- Location: FF_X83_Y72_N11
\b11|sampReg|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b11|sampReg|out[3]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \b11|FSM|loadInputs~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b11|sampReg|out\(3));

-- Location: IOIBUF_X89_Y73_N8
\samp10[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_samp10(4),
	o => \samp10[4]~input_o\);

-- Location: LCCOMB_X88_Y72_N10
\b10|sampReg|out[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b10|sampReg|out[4]~feeder_combout\ = \samp10[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \samp10[4]~input_o\,
	combout => \b10|sampReg|out[4]~feeder_combout\);

-- Location: FF_X88_Y72_N11
\b10|sampReg|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b10|sampReg|out[4]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \b10|FSM|received~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b10|sampReg|out\(4));

-- Location: LCCOMB_X87_Y72_N22
\b11|sampReg|out[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b11|sampReg|out[4]~feeder_combout\ = \b10|sampReg|out\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b10|sampReg|out\(4),
	combout => \b11|sampReg|out[4]~feeder_combout\);

-- Location: FF_X87_Y72_N23
\b11|sampReg|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b11|sampReg|out[4]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \b11|FSM|loadInputs~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b11|sampReg|out\(4));

-- Location: IOIBUF_X87_Y73_N8
\samp10[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_samp10(5),
	o => \samp10[5]~input_o\);

-- Location: LCCOMB_X83_Y72_N28
\b10|sampReg|out[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b10|sampReg|out[5]~feeder_combout\ = \samp10[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \samp10[5]~input_o\,
	combout => \b10|sampReg|out[5]~feeder_combout\);

-- Location: FF_X83_Y72_N29
\b10|sampReg|out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b10|sampReg|out[5]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \b10|FSM|received~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b10|sampReg|out\(5));

-- Location: LCCOMB_X83_Y72_N20
\b11|sampReg|out[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b11|sampReg|out[5]~feeder_combout\ = \b10|sampReg|out\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b10|sampReg|out\(5),
	combout => \b11|sampReg|out[5]~feeder_combout\);

-- Location: FF_X83_Y72_N21
\b11|sampReg|out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b11|sampReg|out[5]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \b11|FSM|loadInputs~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b11|sampReg|out\(5));

-- Location: IOIBUF_X109_Y73_N1
\samp10[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_samp10(6),
	o => \samp10[6]~input_o\);

-- Location: FF_X83_Y72_N27
\b10|sampReg|out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \samp10[6]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \b10|FSM|received~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b10|sampReg|out\(6));

-- Location: LCCOMB_X84_Y72_N28
\b11|sampReg|out[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b11|sampReg|out[6]~feeder_combout\ = \b10|sampReg|out\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b10|sampReg|out\(6),
	combout => \b11|sampReg|out[6]~feeder_combout\);

-- Location: FF_X84_Y72_N29
\b11|sampReg|out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b11|sampReg|out[6]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \b11|FSM|loadInputs~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b11|sampReg|out\(6));

-- Location: IOIBUF_X113_Y73_N8
\samp10[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_samp10(7),
	o => \samp10[7]~input_o\);

-- Location: LCCOMB_X88_Y72_N6
\b10|sampReg|out[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b10|sampReg|out[7]~feeder_combout\ = \samp10[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \samp10[7]~input_o\,
	combout => \b10|sampReg|out[7]~feeder_combout\);

-- Location: FF_X88_Y72_N7
\b10|sampReg|out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b10|sampReg|out[7]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \b10|FSM|received~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b10|sampReg|out\(7));

-- Location: LCCOMB_X87_Y72_N24
\b11|sampReg|out[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b11|sampReg|out[7]~feeder_combout\ = \b10|sampReg|out\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b10|sampReg|out\(7),
	combout => \b11|sampReg|out[7]~feeder_combout\);

-- Location: FF_X87_Y72_N25
\b11|sampReg|out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b11|sampReg|out[7]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \b11|FSM|loadInputs~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b11|sampReg|out\(7));

-- Location: IOIBUF_X100_Y73_N15
\samp10[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_samp10(8),
	o => \samp10[8]~input_o\);

-- Location: FF_X88_Y72_N5
\b10|sampReg|out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \samp10[8]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \b10|FSM|received~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b10|sampReg|out\(8));

-- Location: LCCOMB_X87_Y72_N18
\b11|sampReg|out[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b11|sampReg|out[8]~feeder_combout\ = \b10|sampReg|out\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b10|sampReg|out\(8),
	combout => \b11|sampReg|out[8]~feeder_combout\);

-- Location: FF_X87_Y72_N19
\b11|sampReg|out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b11|sampReg|out[8]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \b11|FSM|loadInputs~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b11|sampReg|out\(8));

-- Location: IOIBUF_X96_Y73_N22
\samp10[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_samp10(9),
	o => \samp10[9]~input_o\);

-- Location: LCCOMB_X88_Y72_N24
\b10|sampReg|out[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b10|sampReg|out[9]~feeder_combout\ = \samp10[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \samp10[9]~input_o\,
	combout => \b10|sampReg|out[9]~feeder_combout\);

-- Location: FF_X88_Y72_N25
\b10|sampReg|out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b10|sampReg|out[9]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \b10|FSM|received~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b10|sampReg|out\(9));

-- Location: LCCOMB_X87_Y72_N20
\b11|sampReg|out[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b11|sampReg|out[9]~feeder_combout\ = \b10|sampReg|out\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b10|sampReg|out\(9),
	combout => \b11|sampReg|out[9]~feeder_combout\);

-- Location: FF_X87_Y72_N21
\b11|sampReg|out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b11|sampReg|out[9]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \b11|FSM|loadInputs~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b11|sampReg|out\(9));

-- Location: IOIBUF_X87_Y73_N1
\samp10[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_samp10(10),
	o => \samp10[10]~input_o\);

-- Location: LCCOMB_X83_Y72_N24
\b10|sampReg|out[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b10|sampReg|out[10]~feeder_combout\ = \samp10[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \samp10[10]~input_o\,
	combout => \b10|sampReg|out[10]~feeder_combout\);

-- Location: FF_X83_Y72_N25
\b10|sampReg|out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b10|sampReg|out[10]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \b10|FSM|received~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b10|sampReg|out\(10));

-- Location: LCCOMB_X84_Y72_N2
\b11|sampReg|out[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b11|sampReg|out[10]~feeder_combout\ = \b10|sampReg|out\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b10|sampReg|out\(10),
	combout => \b11|sampReg|out[10]~feeder_combout\);

-- Location: FF_X84_Y72_N3
\b11|sampReg|out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b11|sampReg|out[10]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \b11|FSM|loadInputs~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b11|sampReg|out\(10));

-- Location: IOIBUF_X111_Y73_N1
\samp10[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_samp10(11),
	o => \samp10[11]~input_o\);

-- Location: LCCOMB_X83_Y72_N16
\b10|sampReg|out[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b10|sampReg|out[11]~feeder_combout\ = \samp10[11]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \samp10[11]~input_o\,
	combout => \b10|sampReg|out[11]~feeder_combout\);

-- Location: FF_X83_Y72_N17
\b10|sampReg|out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b10|sampReg|out[11]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \b10|FSM|received~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b10|sampReg|out\(11));

-- Location: FF_X84_Y72_N1
\b11|sampReg|out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \b10|sampReg|out\(11),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \b11|FSM|loadInputs~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b11|sampReg|out\(11));

-- Location: IOIBUF_X98_Y73_N22
\samp10[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_samp10(12),
	o => \samp10[12]~input_o\);

-- Location: LCCOMB_X88_Y72_N18
\b10|sampReg|out[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b10|sampReg|out[12]~feeder_combout\ = \samp10[12]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \samp10[12]~input_o\,
	combout => \b10|sampReg|out[12]~feeder_combout\);

-- Location: FF_X88_Y72_N19
\b10|sampReg|out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b10|sampReg|out[12]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \b10|FSM|received~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b10|sampReg|out\(12));

-- Location: LCCOMB_X87_Y72_N26
\b11|sampReg|out[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b11|sampReg|out[12]~feeder_combout\ = \b10|sampReg|out\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b10|sampReg|out\(12),
	combout => \b11|sampReg|out[12]~feeder_combout\);

-- Location: FF_X87_Y72_N27
\b11|sampReg|out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b11|sampReg|out[12]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \b11|FSM|loadInputs~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b11|sampReg|out\(12));

-- Location: IOIBUF_X100_Y73_N22
\samp10[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_samp10(13),
	o => \samp10[13]~input_o\);

-- Location: LCCOMB_X88_Y72_N22
\b10|sampReg|out[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b10|sampReg|out[13]~feeder_combout\ = \samp10[13]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \samp10[13]~input_o\,
	combout => \b10|sampReg|out[13]~feeder_combout\);

-- Location: FF_X88_Y72_N23
\b10|sampReg|out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b10|sampReg|out[13]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \b10|FSM|received~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b10|sampReg|out\(13));

-- Location: LCCOMB_X87_Y72_N16
\b11|sampReg|out[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b11|sampReg|out[13]~feeder_combout\ = \b10|sampReg|out\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b10|sampReg|out\(13),
	combout => \b11|sampReg|out[13]~feeder_combout\);

-- Location: FF_X87_Y72_N17
\b11|sampReg|out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b11|sampReg|out[13]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \b11|FSM|loadInputs~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b11|sampReg|out\(13));

-- Location: IOIBUF_X83_Y73_N1
\samp10[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_samp10(14),
	o => \samp10[14]~input_o\);

-- Location: FF_X83_Y72_N13
\b10|sampReg|out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \samp10[14]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \b10|FSM|received~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b10|sampReg|out\(14));

-- Location: LCCOMB_X83_Y72_N6
\b11|sampReg|out[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b11|sampReg|out[14]~feeder_combout\ = \b10|sampReg|out\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b10|sampReg|out\(14),
	combout => \b11|sampReg|out[14]~feeder_combout\);

-- Location: FF_X83_Y72_N7
\b11|sampReg|out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b11|sampReg|out[14]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \b11|FSM|loadInputs~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b11|sampReg|out\(14));

-- Location: IOIBUF_X94_Y73_N1
\samp10[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_samp10(15),
	o => \samp10[15]~input_o\);

-- Location: LCCOMB_X88_Y72_N2
\b10|sampReg|out[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b10|sampReg|out[15]~feeder_combout\ = \samp10[15]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \samp10[15]~input_o\,
	combout => \b10|sampReg|out[15]~feeder_combout\);

-- Location: FF_X88_Y72_N3
\b10|sampReg|out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b10|sampReg|out[15]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \b10|FSM|received~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b10|sampReg|out\(15));

-- Location: FF_X84_Y72_N27
\b11|sampReg|out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \b10|sampReg|out\(15),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \b11|FSM|loadInputs~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b11|sampReg|out\(15));

-- Location: LCCOMB_X82_Y72_N10
\b01|validRight\ : cycloneive_lcell_comb
-- Equation(s):
-- \b01|validRight~combout\ = (\b01|rgtRecReg|out\(0)) # (!\b01|FSM|cs.COMPUTE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b01|FSM|cs.COMPUTE~q\,
	datad => \b01|rgtRecReg|out\(0),
	combout => \b01|validRight~combout\);

-- Location: IOIBUF_X81_Y73_N22
\rec12~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rec12,
	o => \rec12~input_o\);

-- Location: LCCOMB_X81_Y72_N2
\b11|rgtRecReg|out[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b11|rgtRecReg|out[0]~0_combout\ = (\b11|rgtRecReg|out\(0)) # (\rec12~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b11|rgtRecReg|out\(0),
	datad => \rec12~input_o\,
	combout => \b11|rgtRecReg|out[0]~0_combout\);

-- Location: LCCOMB_X82_Y72_N26
\b11|comb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b11|comb~0_combout\ = (\rst~input_o\) # (!\b11|FSM|cs.COMPUTE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst~input_o\,
	datad => \b11|FSM|cs.COMPUTE~q\,
	combout => \b11|comb~0_combout\);

-- Location: FF_X81_Y72_N3
\b11|rgtRecReg|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b11|rgtRecReg|out[0]~0_combout\,
	clrn => \b11|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b11|rgtRecReg|out\(0));

-- Location: LCCOMB_X81_Y72_N0
\b11|validRight\ : cycloneive_lcell_comb
-- Equation(s):
-- \b11|validRight~combout\ = (\b11|rgtRecReg|out\(0)) # (!\b11|FSM|cs.COMPUTE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b11|FSM|cs.COMPUTE~q\,
	datad => \b11|rgtRecReg|out\(0),
	combout => \b11|validRight~combout\);

-- Location: IOIBUF_X89_Y73_N15
\memBus10[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memBus10(5),
	o => \memBus10[5]~input_o\);

-- Location: FF_X88_Y72_N17
\b10|sampIdxReg|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memBus10[5]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \b10|FSM|received~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b10|sampIdxReg|out\(1));

-- Location: IOIBUF_X89_Y73_N22
\memBus10[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memBus10(4),
	o => \memBus10[4]~input_o\);

-- Location: LCCOMB_X88_Y72_N28
\b10|sampIdxReg|out[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b10|sampIdxReg|out[0]~feeder_combout\ = \memBus10[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \memBus10[4]~input_o\,
	combout => \b10|sampIdxReg|out[0]~feeder_combout\);

-- Location: FF_X88_Y72_N29
\b10|sampIdxReg|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b10|sampIdxReg|out[0]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \b10|FSM|received~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b10|sampIdxReg|out\(0));

-- Location: LCCOMB_X84_Y72_N12
\b10|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b10|Mux0~0_combout\ = (\b10|sampIdxReg|out\(1) & (((\b10|sampIdxReg|out\(0))))) # (!\b10|sampIdxReg|out\(1) & ((\b10|sampIdxReg|out\(0) & (\b10|sampReg|out\(7))) # (!\b10|sampIdxReg|out\(0) & ((\b10|sampReg|out\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b10|sampReg|out\(7),
	datab => \b10|sampIdxReg|out\(1),
	datac => \b10|sampIdxReg|out\(0),
	datad => \b10|sampReg|out\(3),
	combout => \b10|Mux0~0_combout\);

-- Location: LCCOMB_X84_Y72_N0
\b10|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b10|Mux0~1_combout\ = (\b10|sampIdxReg|out\(1) & ((\b10|Mux0~0_combout\ & (\b10|sampReg|out\(15))) # (!\b10|Mux0~0_combout\ & ((\b10|sampReg|out\(11)))))) # (!\b10|sampIdxReg|out\(1) & (((\b10|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b10|sampIdxReg|out\(1),
	datab => \b10|sampReg|out\(15),
	datac => \b10|sampReg|out\(11),
	datad => \b10|Mux0~0_combout\,
	combout => \b10|Mux0~1_combout\);

-- Location: IOIBUF_X107_Y73_N8
\memBus10[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memBus10(3),
	o => \memBus10[3]~input_o\);

-- Location: FF_X83_Y72_N5
\b10|threshReg|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memBus10[3]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \b10|FSM|received~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b10|threshReg|out\(3));

-- Location: IOIBUF_X105_Y73_N1
\memBus10[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memBus10(2),
	o => \memBus10[2]~input_o\);

-- Location: FF_X83_Y72_N3
\b10|threshReg|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memBus10[2]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \b10|FSM|received~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b10|threshReg|out\(2));

-- Location: LCCOMB_X88_Y72_N8
\b10|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b10|Mux3~0_combout\ = (\b10|sampIdxReg|out\(1) & (((\b10|sampReg|out\(8)) # (\b10|sampIdxReg|out\(0))))) # (!\b10|sampIdxReg|out\(1) & (\b10|sampReg|out\(0) & ((!\b10|sampIdxReg|out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b10|sampReg|out\(0),
	datab => \b10|sampIdxReg|out\(1),
	datac => \b10|sampReg|out\(8),
	datad => \b10|sampIdxReg|out\(0),
	combout => \b10|Mux3~0_combout\);

-- Location: LCCOMB_X88_Y72_N20
\b10|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b10|Mux3~1_combout\ = (\b10|Mux3~0_combout\ & (((\b10|sampReg|out\(12)) # (!\b10|sampIdxReg|out\(0))))) # (!\b10|Mux3~0_combout\ & (\b10|sampReg|out\(4) & ((\b10|sampIdxReg|out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b10|sampReg|out\(4),
	datab => \b10|sampReg|out\(12),
	datac => \b10|Mux3~0_combout\,
	datad => \b10|sampIdxReg|out\(0),
	combout => \b10|Mux3~1_combout\);

-- Location: IOIBUF_X98_Y73_N15
\memBus10[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memBus10(0),
	o => \memBus10[0]~input_o\);

-- Location: FF_X88_Y72_N15
\b10|threshReg|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memBus10[0]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \b10|FSM|received~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b10|threshReg|out\(0));

-- Location: LCCOMB_X83_Y72_N30
\b10|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b10|Mux2~0_combout\ = (\b10|sampIdxReg|out\(1) & (((\b10|sampIdxReg|out\(0))))) # (!\b10|sampIdxReg|out\(1) & ((\b10|sampIdxReg|out\(0) & (\b10|sampReg|out\(5))) # (!\b10|sampIdxReg|out\(0) & ((\b10|sampReg|out\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b10|sampIdxReg|out\(1),
	datab => \b10|sampReg|out\(5),
	datac => \b10|sampReg|out\(1),
	datad => \b10|sampIdxReg|out\(0),
	combout => \b10|Mux2~0_combout\);

-- Location: LCCOMB_X88_Y72_N0
\b10|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b10|Mux2~1_combout\ = (\b10|Mux2~0_combout\ & ((\b10|sampReg|out\(13)) # ((!\b10|sampIdxReg|out\(1))))) # (!\b10|Mux2~0_combout\ & (((\b10|sampReg|out\(9) & \b10|sampIdxReg|out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b10|sampReg|out\(13),
	datab => \b10|sampReg|out\(9),
	datac => \b10|Mux2~0_combout\,
	datad => \b10|sampIdxReg|out\(1),
	combout => \b10|Mux2~1_combout\);

-- Location: LCCOMB_X88_Y72_N14
\b10|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b10|LessThan0~0_combout\ = (\b10|threshReg|out\(1) & (\b10|Mux3~1_combout\ & (!\b10|threshReg|out\(0) & \b10|Mux2~1_combout\))) # (!\b10|threshReg|out\(1) & ((\b10|Mux2~1_combout\) # ((\b10|Mux3~1_combout\ & !\b10|threshReg|out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b10|threshReg|out\(1),
	datab => \b10|Mux3~1_combout\,
	datac => \b10|threshReg|out\(0),
	datad => \b10|Mux2~1_combout\,
	combout => \b10|LessThan0~0_combout\);

-- Location: LCCOMB_X83_Y72_N2
\b10|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b10|LessThan0~1_combout\ = (\b10|Mux1~1_combout\ & ((\b10|LessThan0~0_combout\) # (!\b10|threshReg|out\(2)))) # (!\b10|Mux1~1_combout\ & (!\b10|threshReg|out\(2) & \b10|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b10|Mux1~1_combout\,
	datac => \b10|threshReg|out\(2),
	datad => \b10|LessThan0~0_combout\,
	combout => \b10|LessThan0~1_combout\);

-- Location: LCCOMB_X83_Y72_N4
\b10|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b10|LessThan0~2_combout\ = (\b10|Mux0~1_combout\ & ((\b10|LessThan0~1_combout\) # (!\b10|threshReg|out\(3)))) # (!\b10|Mux0~1_combout\ & (!\b10|threshReg|out\(3) & \b10|LessThan0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b10|Mux0~1_combout\,
	datac => \b10|threshReg|out\(3),
	datad => \b10|LessThan0~1_combout\,
	combout => \b10|LessThan0~2_combout\);

-- Location: IOIBUF_X27_Y73_N22
\memBus00[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memBus00(3),
	o => \memBus00[3]~input_o\);

-- Location: FF_X58_Y72_N9
\b00|threshReg|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memBus00[3]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \b00|FSM|received~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b00|threshReg|out\(3));

-- Location: IOIBUF_X49_Y73_N15
\memBus00[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memBus00(2),
	o => \memBus00[2]~input_o\);

-- Location: FF_X58_Y72_N3
\b00|threshReg|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memBus00[2]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \b00|FSM|received~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b00|threshReg|out\(2));

-- Location: IOIBUF_X58_Y73_N15
\memBus00[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memBus00(4),
	o => \memBus00[4]~input_o\);

-- Location: LCCOMB_X58_Y72_N26
\b00|sampIdxReg|out[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b00|sampIdxReg|out[0]~feeder_combout\ = \memBus00[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \memBus00[4]~input_o\,
	combout => \b00|sampIdxReg|out[0]~feeder_combout\);

-- Location: FF_X58_Y72_N27
\b00|sampIdxReg|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b00|sampIdxReg|out[0]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \b00|FSM|received~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b00|sampIdxReg|out\(0));

-- Location: IOIBUF_X60_Y0_N8
\memBus00[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memBus00(5),
	o => \memBus00[5]~input_o\);

-- Location: FF_X60_Y72_N25
\b00|sampIdxReg|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memBus00[5]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \b00|FSM|received~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b00|sampIdxReg|out\(1));

-- Location: LCCOMB_X60_Y72_N2
\b00|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b00|Mux1~0_combout\ = (\b00|sampIdxReg|out\(1) & ((\b00|sampReg|out\(10)) # ((\b00|sampIdxReg|out\(0))))) # (!\b00|sampIdxReg|out\(1) & (((\b00|sampReg|out\(2) & !\b00|sampIdxReg|out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b00|sampReg|out\(10),
	datab => \b00|sampIdxReg|out\(1),
	datac => \b00|sampReg|out\(2),
	datad => \b00|sampIdxReg|out\(0),
	combout => \b00|Mux1~0_combout\);

-- Location: LCCOMB_X60_Y72_N18
\b00|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b00|Mux1~1_combout\ = (\b00|sampIdxReg|out\(0) & ((\b00|Mux1~0_combout\ & ((\b00|sampReg|out\(14)))) # (!\b00|Mux1~0_combout\ & (\b00|sampReg|out\(6))))) # (!\b00|sampIdxReg|out\(0) & (((\b00|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b00|sampReg|out\(6),
	datab => \b00|sampIdxReg|out\(0),
	datac => \b00|sampReg|out\(14),
	datad => \b00|Mux1~0_combout\,
	combout => \b00|Mux1~1_combout\);

-- Location: LCCOMB_X58_Y72_N2
\b00|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b00|LessThan0~1_combout\ = (\b00|LessThan0~0_combout\ & ((\b00|Mux1~1_combout\) # (!\b00|threshReg|out\(2)))) # (!\b00|LessThan0~0_combout\ & (!\b00|threshReg|out\(2) & \b00|Mux1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b00|LessThan0~0_combout\,
	datac => \b00|threshReg|out\(2),
	datad => \b00|Mux1~1_combout\,
	combout => \b00|LessThan0~1_combout\);

-- Location: LCCOMB_X58_Y72_N28
\b00|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b00|LessThan0~2_combout\ = (\b00|Mux0~1_combout\ & ((\b00|LessThan0~1_combout\) # (!\b00|threshReg|out\(3)))) # (!\b00|Mux0~1_combout\ & (!\b00|threshReg|out\(3) & \b00|LessThan0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b00|Mux0~1_combout\,
	datab => \b00|threshReg|out\(3),
	datad => \b00|LessThan0~1_combout\,
	combout => \b00|LessThan0~2_combout\);

-- Location: FF_X58_Y72_N29
\b10|idxReg|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b00|LessThan0~2_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \b10|FSM|received~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b10|idxReg|out\(0));

-- Location: IOIBUF_X115_Y65_N22
\memBus11[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memBus11(5),
	o => \memBus11[5]~input_o\);

-- Location: LCCOMB_X87_Y72_N2
\b11|sampIdxReg|out[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b11|sampIdxReg|out[1]~feeder_combout\ = \memBus11[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \memBus11[5]~input_o\,
	combout => \b11|sampIdxReg|out[1]~feeder_combout\);

-- Location: FF_X87_Y72_N3
\b11|sampIdxReg|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b11|sampIdxReg|out[1]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \b11|FSM|loadInputs~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b11|sampIdxReg|out\(1));

-- Location: IOIBUF_X115_Y69_N22
\memBus11[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memBus11(4),
	o => \memBus11[4]~input_o\);

-- Location: LCCOMB_X87_Y72_N0
\b11|sampIdxReg|out[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b11|sampIdxReg|out[0]~feeder_combout\ = \memBus11[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \memBus11[4]~input_o\,
	combout => \b11|sampIdxReg|out[0]~feeder_combout\);

-- Location: FF_X87_Y72_N1
\b11|sampIdxReg|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b11|sampIdxReg|out[0]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \b11|FSM|loadInputs~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b11|sampIdxReg|out\(0));

-- Location: LCCOMB_X87_Y72_N30
\b11|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b11|Mux0~0_combout\ = (\b11|sampIdxReg|out\(1) & (((\b11|sampIdxReg|out\(0))))) # (!\b11|sampIdxReg|out\(1) & ((\b11|sampIdxReg|out\(0) & ((\b11|sampReg|out\(7)))) # (!\b11|sampIdxReg|out\(0) & (\b11|sampReg|out\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b11|sampReg|out\(3),
	datab => \b11|sampReg|out\(7),
	datac => \b11|sampIdxReg|out\(1),
	datad => \b11|sampIdxReg|out\(0),
	combout => \b11|Mux0~0_combout\);

-- Location: LCCOMB_X84_Y72_N26
\b11|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b11|Mux0~1_combout\ = (\b11|sampIdxReg|out\(1) & ((\b11|Mux0~0_combout\ & ((\b11|sampReg|out\(15)))) # (!\b11|Mux0~0_combout\ & (\b11|sampReg|out\(11))))) # (!\b11|sampIdxReg|out\(1) & (((\b11|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b11|sampIdxReg|out\(1),
	datab => \b11|sampReg|out\(11),
	datac => \b11|sampReg|out\(15),
	datad => \b11|Mux0~0_combout\,
	combout => \b11|Mux0~1_combout\);

-- Location: IOIBUF_X113_Y73_N1
\memBus11[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memBus11(2),
	o => \memBus11[2]~input_o\);

-- Location: FF_X84_Y72_N5
\b11|threshReg|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memBus11[2]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \b11|FSM|loadInputs~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b11|threshReg|out\(2));

-- Location: LCCOMB_X87_Y72_N14
\b11|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b11|Mux3~1_combout\ = (\b11|Mux3~0_combout\ & ((\b11|sampReg|out\(12)) # ((!\b11|sampIdxReg|out\(0))))) # (!\b11|Mux3~0_combout\ & (((\b11|sampReg|out\(4) & \b11|sampIdxReg|out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b11|Mux3~0_combout\,
	datab => \b11|sampReg|out\(12),
	datac => \b11|sampReg|out\(4),
	datad => \b11|sampIdxReg|out\(0),
	combout => \b11|Mux3~1_combout\);

-- Location: IOIBUF_X115_Y64_N8
\memBus11[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memBus11(0),
	o => \memBus11[0]~input_o\);

-- Location: FF_X87_Y72_N5
\b11|threshReg|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memBus11[0]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \b11|FSM|loadInputs~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b11|threshReg|out\(0));

-- Location: LCCOMB_X87_Y72_N8
\b11|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b11|Mux2~0_combout\ = (\b11|sampIdxReg|out\(1) & (((\b11|sampIdxReg|out\(0))))) # (!\b11|sampIdxReg|out\(1) & ((\b11|sampIdxReg|out\(0) & (\b11|sampReg|out\(5))) # (!\b11|sampIdxReg|out\(0) & ((\b11|sampReg|out\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b11|sampReg|out\(5),
	datab => \b11|sampIdxReg|out\(1),
	datac => \b11|sampReg|out\(1),
	datad => \b11|sampIdxReg|out\(0),
	combout => \b11|Mux2~0_combout\);

-- Location: LCCOMB_X87_Y72_N10
\b11|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b11|Mux2~1_combout\ = (\b11|sampIdxReg|out\(1) & ((\b11|Mux2~0_combout\ & ((\b11|sampReg|out\(13)))) # (!\b11|Mux2~0_combout\ & (\b11|sampReg|out\(9))))) # (!\b11|sampIdxReg|out\(1) & (((\b11|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b11|sampIdxReg|out\(1),
	datab => \b11|sampReg|out\(9),
	datac => \b11|Mux2~0_combout\,
	datad => \b11|sampReg|out\(13),
	combout => \b11|Mux2~1_combout\);

-- Location: LCCOMB_X87_Y72_N4
\b11|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b11|LessThan0~0_combout\ = (\b11|threshReg|out\(1) & (\b11|Mux3~1_combout\ & (!\b11|threshReg|out\(0) & \b11|Mux2~1_combout\))) # (!\b11|threshReg|out\(1) & ((\b11|Mux2~1_combout\) # ((\b11|Mux3~1_combout\ & !\b11|threshReg|out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b11|threshReg|out\(1),
	datab => \b11|Mux3~1_combout\,
	datac => \b11|threshReg|out\(0),
	datad => \b11|Mux2~1_combout\,
	combout => \b11|LessThan0~0_combout\);

-- Location: LCCOMB_X84_Y72_N4
\b11|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b11|LessThan0~1_combout\ = (\b11|Mux1~1_combout\ & ((\b11|LessThan0~0_combout\) # (!\b11|threshReg|out\(2)))) # (!\b11|Mux1~1_combout\ & (!\b11|threshReg|out\(2) & \b11|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b11|Mux1~1_combout\,
	datac => \b11|threshReg|out\(2),
	datad => \b11|LessThan0~0_combout\,
	combout => \b11|LessThan0~1_combout\);

-- Location: IOIBUF_X85_Y73_N8
\memBus11[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memBus11(3),
	o => \memBus11[3]~input_o\);

-- Location: FF_X84_Y72_N15
\b11|threshReg|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memBus11[3]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \b11|FSM|loadInputs~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b11|threshReg|out\(3));

-- Location: LCCOMB_X84_Y72_N14
\b11|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b11|LessThan0~2_combout\ = (\b11|Mux0~1_combout\ & ((\b11|LessThan0~1_combout\) # (!\b11|threshReg|out\(3)))) # (!\b11|Mux0~1_combout\ & (\b11|LessThan0~1_combout\ & !\b11|threshReg|out\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b11|Mux0~1_combout\,
	datab => \b11|LessThan0~1_combout\,
	datac => \b11|threshReg|out\(3),
	combout => \b11|LessThan0~2_combout\);

-- Location: IOIBUF_X40_Y73_N1
\memBus01[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memBus01(5),
	o => \memBus01[5]~input_o\);

-- Location: LCCOMB_X59_Y72_N14
\b01|sampIdxReg|out[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b01|sampIdxReg|out[1]~feeder_combout\ = \memBus01[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \memBus01[5]~input_o\,
	combout => \b01|sampIdxReg|out[1]~feeder_combout\);

-- Location: FF_X59_Y72_N15
\b01|sampIdxReg|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b01|sampIdxReg|out[1]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \b01|FSM|received~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b01|sampIdxReg|out\(1));

-- Location: LCCOMB_X60_Y72_N12
\b01|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b01|Mux0~0_combout\ = (\b01|sampIdxReg|out\(0) & ((\b01|sampReg|out\(7)) # ((\b01|sampIdxReg|out\(1))))) # (!\b01|sampIdxReg|out\(0) & (((\b01|sampReg|out\(3) & !\b01|sampIdxReg|out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b01|sampIdxReg|out\(0),
	datab => \b01|sampReg|out\(7),
	datac => \b01|sampReg|out\(3),
	datad => \b01|sampIdxReg|out\(1),
	combout => \b01|Mux0~0_combout\);

-- Location: LCCOMB_X60_Y72_N14
\b01|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b01|Mux0~1_combout\ = (\b01|sampIdxReg|out\(1) & ((\b01|Mux0~0_combout\ & ((\b01|sampReg|out\(15)))) # (!\b01|Mux0~0_combout\ & (\b01|sampReg|out\(11))))) # (!\b01|sampIdxReg|out\(1) & (((\b01|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b01|sampIdxReg|out\(1),
	datab => \b01|sampReg|out\(11),
	datac => \b01|sampReg|out\(15),
	datad => \b01|Mux0~0_combout\,
	combout => \b01|Mux0~1_combout\);

-- Location: IOIBUF_X67_Y73_N1
\memBus01[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memBus01(4),
	o => \memBus01[4]~input_o\);

-- Location: LCCOMB_X59_Y72_N16
\b01|sampIdxReg|out[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b01|sampIdxReg|out[0]~feeder_combout\ = \memBus01[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \memBus01[4]~input_o\,
	combout => \b01|sampIdxReg|out[0]~feeder_combout\);

-- Location: FF_X59_Y72_N17
\b01|sampIdxReg|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b01|sampIdxReg|out[0]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \b01|FSM|received~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b01|sampIdxReg|out\(0));

-- Location: LCCOMB_X59_Y72_N24
\b01|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b01|Mux3~0_combout\ = (\b01|sampIdxReg|out\(1) & (((\b01|sampReg|out\(8)) # (\b01|sampIdxReg|out\(0))))) # (!\b01|sampIdxReg|out\(1) & (\b01|sampReg|out\(0) & ((!\b01|sampIdxReg|out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b01|sampReg|out\(0),
	datab => \b01|sampIdxReg|out\(1),
	datac => \b01|sampReg|out\(8),
	datad => \b01|sampIdxReg|out\(0),
	combout => \b01|Mux3~0_combout\);

-- Location: LCCOMB_X59_Y72_N20
\b01|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b01|Mux3~1_combout\ = (\b01|sampIdxReg|out\(0) & ((\b01|Mux3~0_combout\ & ((\b01|sampReg|out\(12)))) # (!\b01|Mux3~0_combout\ & (\b01|sampReg|out\(4))))) # (!\b01|sampIdxReg|out\(0) & (((\b01|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b01|sampReg|out\(4),
	datab => \b01|sampIdxReg|out\(0),
	datac => \b01|sampReg|out\(12),
	datad => \b01|Mux3~0_combout\,
	combout => \b01|Mux3~1_combout\);

-- Location: IOIBUF_X35_Y73_N22
\memBus01[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memBus01(1),
	o => \memBus01[1]~input_o\);

-- Location: FF_X59_Y72_N9
\b01|threshReg|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memBus01[1]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \b01|FSM|received~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b01|threshReg|out\(1));

-- Location: LCCOMB_X59_Y72_N30
\b01|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b01|Mux2~0_combout\ = (\b01|sampIdxReg|out\(1) & (((\b01|sampIdxReg|out\(0))))) # (!\b01|sampIdxReg|out\(1) & ((\b01|sampIdxReg|out\(0) & ((\b01|sampReg|out\(5)))) # (!\b01|sampIdxReg|out\(0) & (\b01|sampReg|out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b01|sampReg|out\(1),
	datab => \b01|sampIdxReg|out\(1),
	datac => \b01|sampReg|out\(5),
	datad => \b01|sampIdxReg|out\(0),
	combout => \b01|Mux2~0_combout\);

-- Location: LCCOMB_X59_Y72_N28
\b01|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b01|Mux2~1_combout\ = (\b01|sampIdxReg|out\(1) & ((\b01|Mux2~0_combout\ & (\b01|sampReg|out\(13))) # (!\b01|Mux2~0_combout\ & ((\b01|sampReg|out\(9)))))) # (!\b01|sampIdxReg|out\(1) & (((\b01|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b01|sampReg|out\(13),
	datab => \b01|sampIdxReg|out\(1),
	datac => \b01|Mux2~0_combout\,
	datad => \b01|sampReg|out\(9),
	combout => \b01|Mux2~1_combout\);

-- Location: LCCOMB_X59_Y72_N8
\b01|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b01|LessThan0~0_combout\ = (\b01|threshReg|out\(1) & (!\b01|threshReg|out\(0) & (\b01|Mux3~1_combout\ & \b01|Mux2~1_combout\))) # (!\b01|threshReg|out\(1) & ((\b01|Mux2~1_combout\) # ((!\b01|threshReg|out\(0) & \b01|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b01|threshReg|out\(0),
	datab => \b01|Mux3~1_combout\,
	datac => \b01|threshReg|out\(1),
	datad => \b01|Mux2~1_combout\,
	combout => \b01|LessThan0~0_combout\);

-- Location: IOIBUF_X35_Y73_N15
\memBus01[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memBus01(2),
	o => \memBus01[2]~input_o\);

-- Location: FF_X59_Y72_N7
\b01|threshReg|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memBus01[2]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \b01|FSM|received~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b01|threshReg|out\(2));

-- Location: LCCOMB_X60_Y72_N20
\b01|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b01|Mux1~0_combout\ = (\b01|sampIdxReg|out\(0) & (((\b01|sampIdxReg|out\(1))))) # (!\b01|sampIdxReg|out\(0) & ((\b01|sampIdxReg|out\(1) & ((\b01|sampReg|out\(10)))) # (!\b01|sampIdxReg|out\(1) & (\b01|sampReg|out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b01|sampIdxReg|out\(0),
	datab => \b01|sampReg|out\(2),
	datac => \b01|sampReg|out\(10),
	datad => \b01|sampIdxReg|out\(1),
	combout => \b01|Mux1~0_combout\);

-- Location: LCCOMB_X60_Y72_N28
\b01|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b01|Mux1~1_combout\ = (\b01|sampIdxReg|out\(0) & ((\b01|Mux1~0_combout\ & ((\b01|sampReg|out\(14)))) # (!\b01|Mux1~0_combout\ & (\b01|sampReg|out\(6))))) # (!\b01|sampIdxReg|out\(0) & (((\b01|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b01|sampIdxReg|out\(0),
	datab => \b01|sampReg|out\(6),
	datac => \b01|sampReg|out\(14),
	datad => \b01|Mux1~0_combout\,
	combout => \b01|Mux1~1_combout\);

-- Location: LCCOMB_X59_Y72_N6
\b01|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b01|LessThan0~1_combout\ = (\b01|LessThan0~0_combout\ & ((\b01|Mux1~1_combout\) # (!\b01|threshReg|out\(2)))) # (!\b01|LessThan0~0_combout\ & (!\b01|threshReg|out\(2) & \b01|Mux1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b01|LessThan0~0_combout\,
	datac => \b01|threshReg|out\(2),
	datad => \b01|Mux1~1_combout\,
	combout => \b01|LessThan0~1_combout\);

-- Location: LCCOMB_X59_Y72_N10
\b01|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b01|LessThan0~2_combout\ = (\b01|threshReg|out\(3) & (\b01|Mux0~1_combout\ & \b01|LessThan0~1_combout\)) # (!\b01|threshReg|out\(3) & ((\b01|Mux0~1_combout\) # (\b01|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b01|threshReg|out\(3),
	datab => \b01|Mux0~1_combout\,
	datad => \b01|LessThan0~1_combout\,
	combout => \b01|LessThan0~2_combout\);

-- Location: LCCOMB_X59_Y72_N0
\b11|idxReg|out[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b11|idxReg|out[0]~feeder_combout\ = \b01|LessThan0~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b01|LessThan0~2_combout\,
	combout => \b11|idxReg|out[0]~feeder_combout\);

-- Location: FF_X59_Y72_N1
\b11|idxReg|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b11|idxReg|out[0]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \b11|FSM|loadInputs~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b11|idxReg|out\(0));

-- Location: LCCOMB_X84_Y72_N8
\b10|validBottom\ : cycloneive_lcell_comb
-- Equation(s):
-- \b10|validBottom~combout\ = (\b10|botRecReg|out\(0)) # (!\b10|FSM|cs.COMPUTE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b10|FSM|cs.COMPUTE~q\,
	datad => \b10|botRecReg|out\(0),
	combout => \b10|validBottom~combout\);

-- Location: IOIBUF_X81_Y73_N15
\rec21~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rec21,
	o => \rec21~input_o\);

-- Location: LCCOMB_X81_Y72_N22
\b11|botRecReg|out[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b11|botRecReg|out[0]~0_combout\ = (\b11|botRecReg|out\(0)) # (\rec21~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b11|botRecReg|out\(0),
	datad => \rec21~input_o\,
	combout => \b11|botRecReg|out[0]~0_combout\);

-- Location: FF_X81_Y72_N23
\b11|botRecReg|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b11|botRecReg|out[0]~0_combout\,
	clrn => \b11|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b11|botRecReg|out\(0));

-- Location: LCCOMB_X81_Y72_N8
\b11|validBottom\ : cycloneive_lcell_comb
-- Equation(s):
-- \b11|validBottom~combout\ = (\b11|botRecReg|out\(0)) # (!\b11|FSM|cs.COMPUTE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b11|botRecReg|out\(0),
	datac => \b11|FSM|cs.COMPUTE~q\,
	combout => \b11|validBottom~combout\);

-- Location: IOIBUF_X29_Y73_N1
\nIdx00[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nIdx00(0),
	o => \nIdx00[0]~input_o\);

-- Location: IOIBUF_X0_Y55_N15
\nIdx00[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nIdx00(1),
	o => \nIdx00[1]~input_o\);

-- Location: IOIBUF_X25_Y73_N15
\nIdx01[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nIdx01(0),
	o => \nIdx01[0]~input_o\);

-- Location: IOIBUF_X67_Y0_N1
\nIdx01[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nIdx01(1),
	o => \nIdx01[1]~input_o\);

-- Location: LCCOMB_X58_Y72_N18
\b00|idxReg|out[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b00|idxReg|out[0]~feeder_combout\ = \nIdx00[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \nIdx00[0]~input_o\,
	combout => \b00|idxReg|out[0]~feeder_combout\);

-- Location: FF_X58_Y72_N19
\b00|idxReg|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b00|idxReg|out[0]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \b00|FSM|received~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b00|idxReg|out\(0));

-- Location: FF_X59_Y72_N23
\b01|idxReg|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \nIdx01[0]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \b01|FSM|received~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b01|idxReg|out\(0));

-- Location: IOIBUF_X0_Y36_N22
\memBus00[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memBus00(6),
	o => \memBus00[6]~input_o\);

-- Location: IOIBUF_X0_Y44_N8
\memBus00[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memBus00(7),
	o => \memBus00[7]~input_o\);

-- Location: IOIBUF_X52_Y0_N8
\memBus01[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memBus01(6),
	o => \memBus01[6]~input_o\);

-- Location: IOIBUF_X1_Y0_N1
\memBus01[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memBus01(7),
	o => \memBus01[7]~input_o\);

-- Location: IOIBUF_X69_Y0_N1
\memBus10[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memBus10(6),
	o => \memBus10[6]~input_o\);

-- Location: IOIBUF_X72_Y0_N1
\memBus10[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memBus10(7),
	o => \memBus10[7]~input_o\);

-- Location: IOIBUF_X0_Y18_N22
\memBus11[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memBus11(6),
	o => \memBus11[6]~input_o\);

-- Location: IOIBUF_X0_Y15_N22
\memBus11[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memBus11(7),
	o => \memBus11[7]~input_o\);

-- Location: IOIBUF_X7_Y0_N22
\enable~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enable,
	o => \enable~input_o\);

ww_rec01 <= \rec01~output_o\;

ww_rec00 <= \rec00~output_o\;

ww_rec10 <= \rec10~output_o\;

ww_samp02(0) <= \samp02[0]~output_o\;

ww_samp02(1) <= \samp02[1]~output_o\;

ww_samp02(2) <= \samp02[2]~output_o\;

ww_samp02(3) <= \samp02[3]~output_o\;

ww_samp02(4) <= \samp02[4]~output_o\;

ww_samp02(5) <= \samp02[5]~output_o\;

ww_samp02(6) <= \samp02[6]~output_o\;

ww_samp02(7) <= \samp02[7]~output_o\;

ww_samp02(8) <= \samp02[8]~output_o\;

ww_samp02(9) <= \samp02[9]~output_o\;

ww_samp02(10) <= \samp02[10]~output_o\;

ww_samp02(11) <= \samp02[11]~output_o\;

ww_samp02(12) <= \samp02[12]~output_o\;

ww_samp02(13) <= \samp02[13]~output_o\;

ww_samp02(14) <= \samp02[14]~output_o\;

ww_samp02(15) <= \samp02[15]~output_o\;

ww_samp12(0) <= \samp12[0]~output_o\;

ww_samp12(1) <= \samp12[1]~output_o\;

ww_samp12(2) <= \samp12[2]~output_o\;

ww_samp12(3) <= \samp12[3]~output_o\;

ww_samp12(4) <= \samp12[4]~output_o\;

ww_samp12(5) <= \samp12[5]~output_o\;

ww_samp12(6) <= \samp12[6]~output_o\;

ww_samp12(7) <= \samp12[7]~output_o\;

ww_samp12(8) <= \samp12[8]~output_o\;

ww_samp12(9) <= \samp12[9]~output_o\;

ww_samp12(10) <= \samp12[10]~output_o\;

ww_samp12(11) <= \samp12[11]~output_o\;

ww_samp12(12) <= \samp12[12]~output_o\;

ww_samp12(13) <= \samp12[13]~output_o\;

ww_samp12(14) <= \samp12[14]~output_o\;

ww_samp12(15) <= \samp12[15]~output_o\;

ww_sVal02 <= \sVal02~output_o\;

ww_sVal12 <= \sVal12~output_o\;

ww_nIdx20(0) <= \nIdx20[0]~output_o\;

ww_nIdx20(1) <= \nIdx20[1]~output_o\;

ww_nIdx21(0) <= \nIdx21[0]~output_o\;

ww_nIdx21(1) <= \nIdx21[1]~output_o\;

ww_nVal20 <= \nVal20~output_o\;

ww_nVal21 <= \nVal21~output_o\;

ww_memRec00(0) <= \memRec00[0]~output_o\;

ww_memRec00(1) <= \memRec00[1]~output_o\;

ww_memRec01(0) <= \memRec01[0]~output_o\;

ww_memRec01(1) <= \memRec01[1]~output_o\;

ww_memRec10(0) <= \memRec10[0]~output_o\;

ww_memRec10(1) <= \memRec10[1]~output_o\;

ww_memRec11(0) <= \memRec11[0]~output_o\;

ww_memRec11(1) <= \memRec11[1]~output_o\;
END structure;


