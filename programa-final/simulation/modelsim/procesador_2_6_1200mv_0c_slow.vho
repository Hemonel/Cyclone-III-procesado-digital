-- Copyright (C) 1991-2013 Altera Corporation
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
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.0 Build 156 04/24/2013 SJ Web Edition"

-- DATE "04/04/2022 19:54:34"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	procesador_2 IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	sdi : IN std_logic;
	en : IN std_logic;
	sck_dac : OUT std_logic;
	cs_dac : OUT std_logic;
	sck_adc : OUT std_logic;
	cs_adc : OUT std_logic;
	eop : OUT std_logic;
	sdo : OUT std_logic
	);
END procesador_2;

-- Design Ports Information
-- sck_dac	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cs_dac	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sck_adc	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cs_adc	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- eop	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdo	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdi	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF procesador_2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_sdi : std_logic;
SIGNAL ww_en : std_logic;
SIGNAL ww_sck_dac : std_logic;
SIGNAL ww_cs_dac : std_logic;
SIGNAL ww_sck_adc : std_logic;
SIGNAL ww_cs_adc : std_logic;
SIGNAL ww_eop : std_logic;
SIGNAL ww_sdo : std_logic;
SIGNAL \cp1|clkadc|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \cp1|clkadc|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \cp3|cp2|clkout~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \cp2|clkout~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \cp1|clkadc|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \cp2|Add0~4_combout\ : std_logic;
SIGNAL \cp2|Add0~16_combout\ : std_logic;
SIGNAL \cp4|Add0~10_combout\ : std_logic;
SIGNAL \cp4|Add0~19\ : std_logic;
SIGNAL \cp4|Add0~20_combout\ : std_logic;
SIGNAL \cp4|Add1~0_combout\ : std_logic;
SIGNAL \cp4|Add1~2_combout\ : std_logic;
SIGNAL \cp4|Add1~4_combout\ : std_logic;
SIGNAL \cp4|Add1~6_combout\ : std_logic;
SIGNAL \cp4|Add1~8_combout\ : std_logic;
SIGNAL \cp4|Add1~12_combout\ : std_logic;
SIGNAL \cp4|Add1~14_combout\ : std_logic;
SIGNAL \cp4|Add1~16_combout\ : std_logic;
SIGNAL \cp4|Add1~18_combout\ : std_logic;
SIGNAL \cp4|Add2~0_combout\ : std_logic;
SIGNAL \cp4|Add2~2_combout\ : std_logic;
SIGNAL \cp4|Add2~16_combout\ : std_logic;
SIGNAL \cp4|Add2~21\ : std_logic;
SIGNAL \cp4|Add2~22_combout\ : std_logic;
SIGNAL \cp4|Add3~2_combout\ : std_logic;
SIGNAL \cp4|Add3~6_combout\ : std_logic;
SIGNAL \cp4|Add3~8_combout\ : std_logic;
SIGNAL \cp4|Add3~12_combout\ : std_logic;
SIGNAL \cp4|Add3~14_combout\ : std_logic;
SIGNAL \cp4|Add3~16_combout\ : std_logic;
SIGNAL \cp4|Add3~18_combout\ : std_logic;
SIGNAL \cp4|Add5~0_combout\ : std_logic;
SIGNAL \cp4|Add5~2_combout\ : std_logic;
SIGNAL \cp4|Add5~4_combout\ : std_logic;
SIGNAL \cp4|Add5~6_combout\ : std_logic;
SIGNAL \cp4|Add5~8_combout\ : std_logic;
SIGNAL \cp4|Add5~10_combout\ : std_logic;
SIGNAL \cp4|Add5~16_combout\ : std_logic;
SIGNAL \cp4|Add5~19\ : std_logic;
SIGNAL \cp4|Add5~20_combout\ : std_logic;
SIGNAL \cp4|Add4~0_combout\ : std_logic;
SIGNAL \cp4|Add4~4_combout\ : std_logic;
SIGNAL \cp4|Add4~10_combout\ : std_logic;
SIGNAL \cp4|Add4~19\ : std_logic;
SIGNAL \cp4|Add4~21\ : std_logic;
SIGNAL \cp4|Add4~20_combout\ : std_logic;
SIGNAL \cp4|Add4~22_combout\ : std_logic;
SIGNAL \cp4|Add6~4_combout\ : std_logic;
SIGNAL \cp4|Add6~18_combout\ : std_logic;
SIGNAL \cp4|Add7~0_combout\ : std_logic;
SIGNAL \cp4|Add7~2_combout\ : std_logic;
SIGNAL \cp4|Add7~6_combout\ : std_logic;
SIGNAL \cp4|Add7~8_combout\ : std_logic;
SIGNAL \cp4|Add7~10_combout\ : std_logic;
SIGNAL \cp4|Add7~12_combout\ : std_logic;
SIGNAL \cp4|Add7~14_combout\ : std_logic;
SIGNAL \cp4|Add7~16_combout\ : std_logic;
SIGNAL \cp4|Add7~19\ : std_logic;
SIGNAL \cp4|Add7~20_combout\ : std_logic;
SIGNAL \cp4|Add8~2_combout\ : std_logic;
SIGNAL \cp4|Add8~16_combout\ : std_logic;
SIGNAL \cp4|Add11~0_combout\ : std_logic;
SIGNAL \cp4|Add11~4_combout\ : std_logic;
SIGNAL \cp4|Add11~8_combout\ : std_logic;
SIGNAL \cp4|Add11~13\ : std_logic;
SIGNAL \cp4|Add11~15\ : std_logic;
SIGNAL \cp4|Add11~14_combout\ : std_logic;
SIGNAL \cp4|Add11~17\ : std_logic;
SIGNAL \cp4|Add11~16_combout\ : std_logic;
SIGNAL \cp4|Add11~19\ : std_logic;
SIGNAL \cp4|Add11~18_combout\ : std_logic;
SIGNAL \cp4|Add11~20_combout\ : std_logic;
SIGNAL \cp4|Add9~2_combout\ : std_logic;
SIGNAL \cp4|Add9~6_combout\ : std_logic;
SIGNAL \cp4|Add9~10_combout\ : std_logic;
SIGNAL \cp4|Add9~12_combout\ : std_logic;
SIGNAL \cp4|Add9~17\ : std_logic;
SIGNAL \cp4|Add9~19\ : std_logic;
SIGNAL \cp4|Add9~18_combout\ : std_logic;
SIGNAL \cp4|Add9~20_combout\ : std_logic;
SIGNAL \cp4|Add10~0_combout\ : std_logic;
SIGNAL \cp4|Add10~6_combout\ : std_logic;
SIGNAL \cp4|Add10~8_combout\ : std_logic;
SIGNAL \cp4|Add10~10_combout\ : std_logic;
SIGNAL \cp4|Add10~12_combout\ : std_logic;
SIGNAL \cp4|Add10~14_combout\ : std_logic;
SIGNAL \cp4|Add10~17\ : std_logic;
SIGNAL \cp4|Add10~19\ : std_logic;
SIGNAL \cp4|Add10~18_combout\ : std_logic;
SIGNAL \cp4|Add10~21\ : std_logic;
SIGNAL \cp4|Add10~20_combout\ : std_logic;
SIGNAL \cp4|Add10~22_combout\ : std_logic;
SIGNAL \cp4|Add13~2_combout\ : std_logic;
SIGNAL \cp4|Add13~4_combout\ : std_logic;
SIGNAL \cp4|Add13~15\ : std_logic;
SIGNAL \cp4|Add13~17\ : std_logic;
SIGNAL \cp4|Add13~16_combout\ : std_logic;
SIGNAL \cp4|Add13~19\ : std_logic;
SIGNAL \cp4|Add13~18_combout\ : std_logic;
SIGNAL \cp4|Add13~20_combout\ : std_logic;
SIGNAL \cp4|Add12~0_combout\ : std_logic;
SIGNAL \cp4|Add12~4_combout\ : std_logic;
SIGNAL \cp4|Add12~6_combout\ : std_logic;
SIGNAL \cp4|Add12~8_combout\ : std_logic;
SIGNAL \cp4|Add12~10_combout\ : std_logic;
SIGNAL \cp4|Add12~12_combout\ : std_logic;
SIGNAL \cp4|Add12~14_combout\ : std_logic;
SIGNAL \cp4|Add12~17\ : std_logic;
SIGNAL \cp4|Add12~19\ : std_logic;
SIGNAL \cp4|Add12~18_combout\ : std_logic;
SIGNAL \cp4|Add12~21\ : std_logic;
SIGNAL \cp4|Add12~20_combout\ : std_logic;
SIGNAL \cp4|Add12~23\ : std_logic;
SIGNAL \cp4|Add12~22_combout\ : std_logic;
SIGNAL \cp4|Add12~24_combout\ : std_logic;
SIGNAL \cp4|Add14~0_combout\ : std_logic;
SIGNAL \cp4|Add14~2_combout\ : std_logic;
SIGNAL \cp4|Add14~4_combout\ : std_logic;
SIGNAL \cp4|Add14~6_combout\ : std_logic;
SIGNAL \cp4|Add14~20_combout\ : std_logic;
SIGNAL \cp4|Add15~8_combout\ : std_logic;
SIGNAL \cp4|Add15~10_combout\ : std_logic;
SIGNAL \cp4|Add15~12_combout\ : std_logic;
SIGNAL \cp4|Add15~14_combout\ : std_logic;
SIGNAL \cp4|Add15~16_combout\ : std_logic;
SIGNAL \cp4|Add15~18_combout\ : std_logic;
SIGNAL \cp4|Add16~2_combout\ : std_logic;
SIGNAL \cp4|Add16~4_combout\ : std_logic;
SIGNAL \cp4|Add16~20_combout\ : std_logic;
SIGNAL \cp4|Add16~26_combout\ : std_logic;
SIGNAL \cp4|Add27~0_combout\ : std_logic;
SIGNAL \cp4|Add27~2_combout\ : std_logic;
SIGNAL \cp4|Add27~10_combout\ : std_logic;
SIGNAL \cp4|Add27~12_combout\ : std_logic;
SIGNAL \cp4|Add27~15\ : std_logic;
SIGNAL \cp4|Add27~17\ : std_logic;
SIGNAL \cp4|Add27~16_combout\ : std_logic;
SIGNAL \cp4|Add27~19\ : std_logic;
SIGNAL \cp4|Add27~18_combout\ : std_logic;
SIGNAL \cp4|Add27~20_combout\ : std_logic;
SIGNAL \cp4|Add25~4_combout\ : std_logic;
SIGNAL \cp4|Add25~6_combout\ : std_logic;
SIGNAL \cp4|Add25~8_combout\ : std_logic;
SIGNAL \cp4|Add25~13\ : std_logic;
SIGNAL \cp4|Add25~15\ : std_logic;
SIGNAL \cp4|Add25~14_combout\ : std_logic;
SIGNAL \cp4|Add25~17\ : std_logic;
SIGNAL \cp4|Add25~16_combout\ : std_logic;
SIGNAL \cp4|Add25~19\ : std_logic;
SIGNAL \cp4|Add25~18_combout\ : std_logic;
SIGNAL \cp4|Add25~20_combout\ : std_logic;
SIGNAL \cp4|Add26~2_combout\ : std_logic;
SIGNAL \cp4|Add26~6_combout\ : std_logic;
SIGNAL \cp4|Add26~8_combout\ : std_logic;
SIGNAL \cp4|Add26~15\ : std_logic;
SIGNAL \cp4|Add26~17\ : std_logic;
SIGNAL \cp4|Add26~16_combout\ : std_logic;
SIGNAL \cp4|Add26~19\ : std_logic;
SIGNAL \cp4|Add26~18_combout\ : std_logic;
SIGNAL \cp4|Add26~21\ : std_logic;
SIGNAL \cp4|Add26~20_combout\ : std_logic;
SIGNAL \cp4|Add26~22_combout\ : std_logic;
SIGNAL \cp4|Add29~0_combout\ : std_logic;
SIGNAL \cp4|Add29~4_combout\ : std_logic;
SIGNAL \cp4|Add29~10_combout\ : std_logic;
SIGNAL \cp4|Add29~12_combout\ : std_logic;
SIGNAL \cp4|Add29~14_combout\ : std_logic;
SIGNAL \cp4|Add29~19\ : std_logic;
SIGNAL \cp4|Add29~20_combout\ : std_logic;
SIGNAL \cp4|Add28~2_combout\ : std_logic;
SIGNAL \cp4|Add28~6_combout\ : std_logic;
SIGNAL \cp4|Add28~8_combout\ : std_logic;
SIGNAL \cp4|Add28~10_combout\ : std_logic;
SIGNAL \cp4|Add28~12_combout\ : std_logic;
SIGNAL \cp4|Add28~14_combout\ : std_logic;
SIGNAL \cp4|Add28~19\ : std_logic;
SIGNAL \cp4|Add28~21\ : std_logic;
SIGNAL \cp4|Add28~20_combout\ : std_logic;
SIGNAL \cp4|Add28~23\ : std_logic;
SIGNAL \cp4|Add28~22_combout\ : std_logic;
SIGNAL \cp4|Add28~24_combout\ : std_logic;
SIGNAL \cp4|Add23~0_combout\ : std_logic;
SIGNAL \cp4|Add23~4_combout\ : std_logic;
SIGNAL \cp4|Add23~8_combout\ : std_logic;
SIGNAL \cp4|Add23~13\ : std_logic;
SIGNAL \cp4|Add23~15\ : std_logic;
SIGNAL \cp4|Add23~14_combout\ : std_logic;
SIGNAL \cp4|Add23~17\ : std_logic;
SIGNAL \cp4|Add23~16_combout\ : std_logic;
SIGNAL \cp4|Add23~19\ : std_logic;
SIGNAL \cp4|Add23~18_combout\ : std_logic;
SIGNAL \cp4|Add23~20_combout\ : std_logic;
SIGNAL \cp4|Add21~2_combout\ : std_logic;
SIGNAL \cp4|Add21~6_combout\ : std_logic;
SIGNAL \cp4|Add21~10_combout\ : std_logic;
SIGNAL \cp4|Add21~12_combout\ : std_logic;
SIGNAL \cp4|Add22~0_combout\ : std_logic;
SIGNAL \cp4|Add22~4_combout\ : std_logic;
SIGNAL \cp4|Add22~10_combout\ : std_logic;
SIGNAL \cp4|Add22~12_combout\ : std_logic;
SIGNAL \cp4|Add22~14_combout\ : std_logic;
SIGNAL \cp4|Add22~16_combout\ : std_logic;
SIGNAL \cp4|Add19~6_combout\ : std_logic;
SIGNAL \cp4|Add19~8_combout\ : std_logic;
SIGNAL \cp4|Add19~11\ : std_logic;
SIGNAL \cp4|Add19~13\ : std_logic;
SIGNAL \cp4|Add19~12_combout\ : std_logic;
SIGNAL \cp4|Add19~15\ : std_logic;
SIGNAL \cp4|Add19~14_combout\ : std_logic;
SIGNAL \cp4|Add19~17\ : std_logic;
SIGNAL \cp4|Add19~16_combout\ : std_logic;
SIGNAL \cp4|Add19~19\ : std_logic;
SIGNAL \cp4|Add19~18_combout\ : std_logic;
SIGNAL \cp4|Add19~20_combout\ : std_logic;
SIGNAL \cp4|Add17~0_combout\ : std_logic;
SIGNAL \cp4|Add17~2_combout\ : std_logic;
SIGNAL \cp4|Add17~4_combout\ : std_logic;
SIGNAL \cp4|Add17~10_combout\ : std_logic;
SIGNAL \cp4|Add17~17\ : std_logic;
SIGNAL \cp4|Add17~19\ : std_logic;
SIGNAL \cp4|Add17~18_combout\ : std_logic;
SIGNAL \cp4|Add17~20_combout\ : std_logic;
SIGNAL \cp4|Add18~2_combout\ : std_logic;
SIGNAL \cp4|Add18~6_combout\ : std_logic;
SIGNAL \cp4|Add18~8_combout\ : std_logic;
SIGNAL \cp4|Add18~17\ : std_logic;
SIGNAL \cp4|Add18~19\ : std_logic;
SIGNAL \cp4|Add18~18_combout\ : std_logic;
SIGNAL \cp4|Add18~21\ : std_logic;
SIGNAL \cp4|Add18~20_combout\ : std_logic;
SIGNAL \cp4|Add18~22_combout\ : std_logic;
SIGNAL \cp4|Add20~0_combout\ : std_logic;
SIGNAL \cp4|Add20~4_combout\ : std_logic;
SIGNAL \cp4|Add20~16_combout\ : std_logic;
SIGNAL \cp4|Add20~18_combout\ : std_logic;
SIGNAL \cp4|Add24~0_combout\ : std_logic;
SIGNAL \cp4|Add24~6_combout\ : std_logic;
SIGNAL \cp4|Add24~8_combout\ : std_logic;
SIGNAL \cp4|Add24~10_combout\ : std_logic;
SIGNAL \cp4|Add24~12_combout\ : std_logic;
SIGNAL \cp4|Add24~14_combout\ : std_logic;
SIGNAL \cp4|Add24~16_combout\ : std_logic;
SIGNAL \cp4|Add24~18_combout\ : std_logic;
SIGNAL \cp4|Add24~22_combout\ : std_logic;
SIGNAL \cp4|Add24~24_combout\ : std_logic;
SIGNAL \cp4|dato_out[0]~0_combout\ : std_logic;
SIGNAL \cp4|dato_out[1]~2_combout\ : std_logic;
SIGNAL \cp4|dato_out[2]~4_combout\ : std_logic;
SIGNAL \cp4|dato_out[3]~6_combout\ : std_logic;
SIGNAL \cp4|dato_out[4]~8_combout\ : std_logic;
SIGNAL \cp4|dato_out[5]~10_combout\ : std_logic;
SIGNAL \cp4|dato_out[6]~12_combout\ : std_logic;
SIGNAL \cp3|cp5|est.e1~q\ : std_logic;
SIGNAL \cp3|cp2|contador~2_combout\ : std_logic;
SIGNAL \cp3|cp5|est~7_combout\ : std_logic;
SIGNAL \cp1|sc_prev~2_combout\ : std_logic;
SIGNAL \cp1|datoin~1_combout\ : std_logic;
SIGNAL \cp1|datoin:altaimp[0]~q\ : std_logic;
SIGNAL \cp1|Add2~0_combout\ : std_logic;
SIGNAL \cp2|contador~4_combout\ : std_logic;
SIGNAL \cp2|contador~9_combout\ : std_logic;
SIGNAL \cp1|altaimp~3_combout\ : std_logic;
SIGNAL \cp1|Add0~0_combout\ : std_logic;
SIGNAL \cp4|fifo[31][6]~q\ : std_logic;
SIGNAL \cp4|fifo[31][5]~q\ : std_logic;
SIGNAL \cp4|fifo[31][3]~q\ : std_logic;
SIGNAL \cp1|datoin:dato[3]~q\ : std_logic;
SIGNAL \cp1|Decoder0~0_combout\ : std_logic;
SIGNAL \cp1|Decoder0~1_combout\ : std_logic;
SIGNAL \cp1|Decoder0~2_combout\ : std_logic;
SIGNAL \cp1|Decoder0~3_combout\ : std_logic;
SIGNAL \cp1|Decoder0~4_combout\ : std_logic;
SIGNAL \cp1|Decoder0~5_combout\ : std_logic;
SIGNAL \cp1|Decoder0~6_combout\ : std_logic;
SIGNAL \cp1|dato~6_combout\ : std_logic;
SIGNAL \cp1|Decoder0~7_combout\ : std_logic;
SIGNAL \cp1|Decoder0~8_combout\ : std_logic;
SIGNAL \cp4|Add30~13_combout\ : std_logic;
SIGNAL \cp4|Add30~14_combout\ : std_logic;
SIGNAL \cp4|Add30~15_combout\ : std_logic;
SIGNAL \cp4|Add30~16_combout\ : std_logic;
SIGNAL \cp4|Add30~17_combout\ : std_logic;
SIGNAL \cp4|Add30~18_combout\ : std_logic;
SIGNAL \cp3|cp1|Q~5_combout\ : std_logic;
SIGNAL \cp3|cp2|clkout~clkctrl_outclk\ : std_logic;
SIGNAL \cp2|clkout~clkctrl_outclk\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \cp3|cp4|Q[1]~4_combout\ : std_logic;
SIGNAL \cp2|Add0~1\ : std_logic;
SIGNAL \cp2|Add0~3\ : std_logic;
SIGNAL \cp2|Add0~5\ : std_logic;
SIGNAL \cp2|Add0~7\ : std_logic;
SIGNAL \cp2|Add0~8_combout\ : std_logic;
SIGNAL \cp2|contador~7_combout\ : std_logic;
SIGNAL \en~input_o\ : std_logic;
SIGNAL \cp2|Add0~9\ : std_logic;
SIGNAL \cp2|Add0~10_combout\ : std_logic;
SIGNAL \cp2|contador~2_combout\ : std_logic;
SIGNAL \cp2|Add0~11\ : std_logic;
SIGNAL \cp2|Add0~12_combout\ : std_logic;
SIGNAL \cp2|contador~6_combout\ : std_logic;
SIGNAL \cp2|Add0~13\ : std_logic;
SIGNAL \cp2|Add0~14_combout\ : std_logic;
SIGNAL \cp2|contador~5_combout\ : std_logic;
SIGNAL \cp2|Add0~15\ : std_logic;
SIGNAL \cp2|Add0~17\ : std_logic;
SIGNAL \cp2|Add0~18_combout\ : std_logic;
SIGNAL \cp2|contador~3_combout\ : std_logic;
SIGNAL \cp2|LessThan1~0_combout\ : std_logic;
SIGNAL \cp2|contador~0_combout\ : std_logic;
SIGNAL \cp2|Add0~19\ : std_logic;
SIGNAL \cp2|Add0~20_combout\ : std_logic;
SIGNAL \cp2|contador~1_combout\ : std_logic;
SIGNAL \cp2|Add0~2_combout\ : std_logic;
SIGNAL \cp2|contador~10_combout\ : std_logic;
SIGNAL \cp2|Add0~6_combout\ : std_logic;
SIGNAL \cp2|contador~8_combout\ : std_logic;
SIGNAL \cp2|Add0~0_combout\ : std_logic;
SIGNAL \cp2|contador~11_combout\ : std_logic;
SIGNAL \cp2|LessThan1~1_combout\ : std_logic;
SIGNAL \cp2|LessThan1~2_combout\ : std_logic;
SIGNAL \cp2|LessThan1~3_combout\ : std_logic;
SIGNAL \cp2|clkout~q\ : std_logic;
SIGNAL \cp3|cp3|Selector0~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \cp3|cp3|estado.e0~q\ : std_logic;
SIGNAL \cp3|cp3|estado~8_combout\ : std_logic;
SIGNAL \cp3|cp3|estado.e1~q\ : std_logic;
SIGNAL \cp3|cp4|Q[3]~9\ : std_logic;
SIGNAL \cp3|cp4|Q[4]~10_combout\ : std_logic;
SIGNAL \cp3|cp5|Selector1~0_combout\ : std_logic;
SIGNAL \cp3|cp5|est.e2~q\ : std_logic;
SIGNAL \cp3|cp4|Q[1]~5\ : std_logic;
SIGNAL \cp3|cp4|Q[2]~6_combout\ : std_logic;
SIGNAL \cp3|cp4|Q[2]~7\ : std_logic;
SIGNAL \cp3|cp4|Q[3]~8_combout\ : std_logic;
SIGNAL \cp3|cp4|Q[0]~12_combout\ : std_logic;
SIGNAL \cp3|cp4|fin~0_combout\ : std_logic;
SIGNAL \cp3|cp2|contador~1_combout\ : std_logic;
SIGNAL \cp3|cp2|contador~0_combout\ : std_logic;
SIGNAL \cp3|cp2|LessThan1~0_combout\ : std_logic;
SIGNAL \cp3|cp2|clkout~feeder_combout\ : std_logic;
SIGNAL \cp3|cp2|clkout~q\ : std_logic;
SIGNAL \cp3|cp5|sck~0_combout\ : std_logic;
SIGNAL \cp3|cp5|Selector0~0_combout\ : std_logic;
SIGNAL \cp3|cp5|Selector0~1_combout\ : std_logic;
SIGNAL \cp3|cp5|est.e0~q\ : std_logic;
SIGNAL \cp3|cp5|Selector2~0_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \cp1|clkadc|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \cp1|clkadc|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \cp1|datoin:scint~0_combout\ : std_logic;
SIGNAL \cp1|datoin:scint~q\ : std_logic;
SIGNAL \cp1|sc_prev~3_combout\ : std_logic;
SIGNAL \cp1|sc_prev~q\ : std_logic;
SIGNAL \cp1|cs~0_combout\ : std_logic;
SIGNAL \cp1|cs~q\ : std_logic;
SIGNAL \cp3|cp4|fin~combout\ : std_logic;
SIGNAL \cp1|altaimp~5_combout\ : std_logic;
SIGNAL \cp1|indice~0_combout\ : std_logic;
SIGNAL \cp1|datoin:altaimp[3]~q\ : std_logic;
SIGNAL \cp1|datoin~0_combout\ : std_logic;
SIGNAL \cp1|altaimp~2_combout\ : std_logic;
SIGNAL \cp1|datoin:altaimp[1]~q\ : std_logic;
SIGNAL \cp1|altaimp~4_combout\ : std_logic;
SIGNAL \cp1|datoin:altaimp[2]~q\ : std_logic;
SIGNAL \cp1|LessThan0~0_combout\ : std_logic;
SIGNAL \sdi~input_o\ : std_logic;
SIGNAL \cp1|datoin:indice[0]~1_combout\ : std_logic;
SIGNAL \cp1|datoin:indice[0]~2_combout\ : std_logic;
SIGNAL \cp1|datoin:indice[2]~0_combout\ : std_logic;
SIGNAL \cp1|datoin:indice[2]~q\ : std_logic;
SIGNAL \cp1|datoin:indice[1]~0_combout\ : std_logic;
SIGNAL \cp1|datoin:indice[1]~q\ : std_logic;
SIGNAL \cp1|datoin:indice[0]~0_combout\ : std_logic;
SIGNAL \cp1|datoin:indice[0]~q\ : std_logic;
SIGNAL \cp1|datoin:indice[3]~0_combout\ : std_logic;
SIGNAL \cp1|datoin:indice[3]~1_combout\ : std_logic;
SIGNAL \cp1|datoin:indice[3]~q\ : std_logic;
SIGNAL \cp1|datoin~2_combout\ : std_logic;
SIGNAL \cp1|datoin~3_combout\ : std_logic;
SIGNAL \cp1|dato~0_combout\ : std_logic;
SIGNAL \cp1|datoin:dato[0]~0_combout\ : std_logic;
SIGNAL \cp1|datoin:dato[9]~q\ : std_logic;
SIGNAL \cp4|fifo[0][9]~q\ : std_logic;
SIGNAL \cp4|fifo[1][9]~q\ : std_logic;
SIGNAL \cp4|fifo[2][9]~feeder_combout\ : std_logic;
SIGNAL \cp4|fifo[2][9]~q\ : std_logic;
SIGNAL \cp1|dato~1_combout\ : std_logic;
SIGNAL \cp1|datoin:dato[8]~q\ : std_logic;
SIGNAL \cp4|fifo[0][8]~q\ : std_logic;
SIGNAL \cp4|fifo[1][8]~q\ : std_logic;
SIGNAL \cp4|fifo[2][8]~q\ : std_logic;
SIGNAL \cp1|dato~2_combout\ : std_logic;
SIGNAL \cp1|datoin:dato[7]~q\ : std_logic;
SIGNAL \cp4|fifo[0][7]~q\ : std_logic;
SIGNAL \cp4|fifo[1][7]~q\ : std_logic;
SIGNAL \cp4|fifo[2][7]~q\ : std_logic;
SIGNAL \cp4|fifo[3][7]~q\ : std_logic;
SIGNAL \cp1|dato~3_combout\ : std_logic;
SIGNAL \cp1|datoin:dato[6]~q\ : std_logic;
SIGNAL \cp4|fifo[0][6]~q\ : std_logic;
SIGNAL \cp4|fifo[1][6]~q\ : std_logic;
SIGNAL \cp4|fifo[2][6]~q\ : std_logic;
SIGNAL \cp4|fifo[3][6]~q\ : std_logic;
SIGNAL \cp1|dato~4_combout\ : std_logic;
SIGNAL \cp1|datoin:dato[5]~q\ : std_logic;
SIGNAL \cp4|fifo[0][5]~q\ : std_logic;
SIGNAL \cp4|fifo[1][5]~q\ : std_logic;
SIGNAL \cp4|fifo[2][5]~q\ : std_logic;
SIGNAL \cp4|fifo[3][5]~q\ : std_logic;
SIGNAL \cp1|dato~5_combout\ : std_logic;
SIGNAL \cp1|datoin:dato[4]~q\ : std_logic;
SIGNAL \cp4|fifo[0][4]~feeder_combout\ : std_logic;
SIGNAL \cp4|fifo[0][4]~q\ : std_logic;
SIGNAL \cp4|fifo[1][4]~q\ : std_logic;
SIGNAL \cp4|fifo[2][4]~q\ : std_logic;
SIGNAL \cp4|fifo[0][3]~feeder_combout\ : std_logic;
SIGNAL \cp4|fifo[0][3]~q\ : std_logic;
SIGNAL \cp4|fifo[1][3]~feeder_combout\ : std_logic;
SIGNAL \cp4|fifo[1][3]~q\ : std_logic;
SIGNAL \cp4|fifo[2][3]~q\ : std_logic;
SIGNAL \cp1|dato~7_combout\ : std_logic;
SIGNAL \cp1|datoin:dato[2]~q\ : std_logic;
SIGNAL \cp4|fifo[0][2]~feeder_combout\ : std_logic;
SIGNAL \cp4|fifo[0][2]~q\ : std_logic;
SIGNAL \cp4|fifo[1][2]~feeder_combout\ : std_logic;
SIGNAL \cp4|fifo[1][2]~q\ : std_logic;
SIGNAL \cp4|fifo[2][2]~q\ : std_logic;
SIGNAL \cp4|fifo[3][2]~feeder_combout\ : std_logic;
SIGNAL \cp4|fifo[3][2]~q\ : std_logic;
SIGNAL \cp1|dato~8_combout\ : std_logic;
SIGNAL \cp1|datoin:dato[1]~q\ : std_logic;
SIGNAL \cp4|fifo[0][1]~feeder_combout\ : std_logic;
SIGNAL \cp4|fifo[0][1]~q\ : std_logic;
SIGNAL \cp4|fifo[1][1]~feeder_combout\ : std_logic;
SIGNAL \cp4|fifo[1][1]~q\ : std_logic;
SIGNAL \cp4|fifo[2][1]~feeder_combout\ : std_logic;
SIGNAL \cp4|fifo[2][1]~q\ : std_logic;
SIGNAL \cp4|fifo[3][1]~feeder_combout\ : std_logic;
SIGNAL \cp4|fifo[3][1]~q\ : std_logic;
SIGNAL \cp1|dato~9_combout\ : std_logic;
SIGNAL \cp1|datoin:dato[0]~q\ : std_logic;
SIGNAL \cp4|fifo[0][0]~feeder_combout\ : std_logic;
SIGNAL \cp4|fifo[0][0]~q\ : std_logic;
SIGNAL \cp4|fifo[1][0]~feeder_combout\ : std_logic;
SIGNAL \cp4|fifo[1][0]~q\ : std_logic;
SIGNAL \cp4|fifo[2][0]~feeder_combout\ : std_logic;
SIGNAL \cp4|fifo[2][0]~q\ : std_logic;
SIGNAL \cp4|fifo[3][0]~feeder_combout\ : std_logic;
SIGNAL \cp4|fifo[3][0]~q\ : std_logic;
SIGNAL \cp4|Add1~1\ : std_logic;
SIGNAL \cp4|Add1~3\ : std_logic;
SIGNAL \cp4|Add1~5\ : std_logic;
SIGNAL \cp4|Add1~7\ : std_logic;
SIGNAL \cp4|Add1~9\ : std_logic;
SIGNAL \cp4|Add1~11\ : std_logic;
SIGNAL \cp4|Add1~13\ : std_logic;
SIGNAL \cp4|Add1~15\ : std_logic;
SIGNAL \cp4|Add1~17\ : std_logic;
SIGNAL \cp4|Add1~19\ : std_logic;
SIGNAL \cp4|Add1~20_combout\ : std_logic;
SIGNAL \cp4|Add0~1\ : std_logic;
SIGNAL \cp4|Add0~3\ : std_logic;
SIGNAL \cp4|Add0~5\ : std_logic;
SIGNAL \cp4|Add0~7\ : std_logic;
SIGNAL \cp4|Add0~9\ : std_logic;
SIGNAL \cp4|Add0~11\ : std_logic;
SIGNAL \cp4|Add0~13\ : std_logic;
SIGNAL \cp4|Add0~15\ : std_logic;
SIGNAL \cp4|Add0~17\ : std_logic;
SIGNAL \cp4|Add0~18_combout\ : std_logic;
SIGNAL \cp4|Add0~16_combout\ : std_logic;
SIGNAL \cp4|Add0~14_combout\ : std_logic;
SIGNAL \cp4|Add0~12_combout\ : std_logic;
SIGNAL \cp4|Add1~10_combout\ : std_logic;
SIGNAL \cp4|Add0~8_combout\ : std_logic;
SIGNAL \cp4|Add0~6_combout\ : std_logic;
SIGNAL \cp4|Add0~4_combout\ : std_logic;
SIGNAL \cp4|Add0~2_combout\ : std_logic;
SIGNAL \cp4|Add0~0_combout\ : std_logic;
SIGNAL \cp4|Add2~1\ : std_logic;
SIGNAL \cp4|Add2~3\ : std_logic;
SIGNAL \cp4|Add2~5\ : std_logic;
SIGNAL \cp4|Add2~7\ : std_logic;
SIGNAL \cp4|Add2~9\ : std_logic;
SIGNAL \cp4|Add2~11\ : std_logic;
SIGNAL \cp4|Add2~13\ : std_logic;
SIGNAL \cp4|Add2~15\ : std_logic;
SIGNAL \cp4|Add2~17\ : std_logic;
SIGNAL \cp4|Add2~19\ : std_logic;
SIGNAL \cp4|Add2~20_combout\ : std_logic;
SIGNAL \cp4|Add2~18_combout\ : std_logic;
SIGNAL \cp4|fifo[3][8]~feeder_combout\ : std_logic;
SIGNAL \cp4|fifo[3][8]~q\ : std_logic;
SIGNAL \cp4|fifo[4][8]~q\ : std_logic;
SIGNAL \cp4|Add2~14_combout\ : std_logic;
SIGNAL \cp4|Add2~12_combout\ : std_logic;
SIGNAL \cp4|Add2~10_combout\ : std_logic;
SIGNAL \cp4|Add2~8_combout\ : std_logic;
SIGNAL \cp4|Add2~6_combout\ : std_logic;
SIGNAL \cp4|Add2~4_combout\ : std_logic;
SIGNAL \cp4|fifo[4][1]~q\ : std_logic;
SIGNAL \cp4|fifo[4][0]~q\ : std_logic;
SIGNAL \cp4|Add3~1\ : std_logic;
SIGNAL \cp4|Add3~3\ : std_logic;
SIGNAL \cp4|Add3~5\ : std_logic;
SIGNAL \cp4|Add3~7\ : std_logic;
SIGNAL \cp4|Add3~9\ : std_logic;
SIGNAL \cp4|Add3~11\ : std_logic;
SIGNAL \cp4|Add3~13\ : std_logic;
SIGNAL \cp4|Add3~15\ : std_logic;
SIGNAL \cp4|Add3~17\ : std_logic;
SIGNAL \cp4|Add3~19\ : std_logic;
SIGNAL \cp4|Add3~21\ : std_logic;
SIGNAL \cp4|Add3~23\ : std_logic;
SIGNAL \cp4|Add3~24_combout\ : std_logic;
SIGNAL \cp4|Add3~22_combout\ : std_logic;
SIGNAL \cp4|Add3~20_combout\ : std_logic;
SIGNAL \cp4|fifo[3][9]~q\ : std_logic;
SIGNAL \cp4|fifo[4][9]~q\ : std_logic;
SIGNAL \cp4|fifo[5][9]~feeder_combout\ : std_logic;
SIGNAL \cp4|fifo[5][9]~q\ : std_logic;
SIGNAL \cp4|fifo[6][9]~q\ : std_logic;
SIGNAL \cp4|fifo[7][9]~q\ : std_logic;
SIGNAL \cp4|fifo[5][8]~feeder_combout\ : std_logic;
SIGNAL \cp4|fifo[5][8]~q\ : std_logic;
SIGNAL \cp4|fifo[6][8]~q\ : std_logic;
SIGNAL \cp4|fifo[4][7]~q\ : std_logic;
SIGNAL \cp4|fifo[5][7]~feeder_combout\ : std_logic;
SIGNAL \cp4|fifo[5][7]~q\ : std_logic;
SIGNAL \cp4|fifo[6][7]~q\ : std_logic;
SIGNAL \cp4|fifo[4][6]~feeder_combout\ : std_logic;
SIGNAL \cp4|fifo[4][6]~q\ : std_logic;
SIGNAL \cp4|fifo[5][6]~q\ : std_logic;
SIGNAL \cp4|fifo[6][6]~q\ : std_logic;
SIGNAL \cp4|fifo[7][6]~q\ : std_logic;
SIGNAL \cp4|fifo[4][5]~q\ : std_logic;
SIGNAL \cp4|fifo[5][5]~q\ : std_logic;
SIGNAL \cp4|fifo[6][5]~q\ : std_logic;
SIGNAL \cp4|fifo[7][5]~feeder_combout\ : std_logic;
SIGNAL \cp4|fifo[7][5]~q\ : std_logic;
SIGNAL \cp4|fifo[3][4]~feeder_combout\ : std_logic;
SIGNAL \cp4|fifo[3][4]~q\ : std_logic;
SIGNAL \cp4|fifo[4][4]~feeder_combout\ : std_logic;
SIGNAL \cp4|fifo[4][4]~q\ : std_logic;
SIGNAL \cp4|fifo[5][4]~q\ : std_logic;
SIGNAL \cp4|fifo[6][4]~feeder_combout\ : std_logic;
SIGNAL \cp4|fifo[6][4]~q\ : std_logic;
SIGNAL \cp4|fifo[7][4]~q\ : std_logic;
SIGNAL \cp4|fifo[3][3]~feeder_combout\ : std_logic;
SIGNAL \cp4|fifo[3][3]~q\ : std_logic;
SIGNAL \cp4|fifo[4][3]~feeder_combout\ : std_logic;
SIGNAL \cp4|fifo[4][3]~q\ : std_logic;
SIGNAL \cp4|fifo[5][3]~q\ : std_logic;
SIGNAL \cp4|fifo[6][3]~feeder_combout\ : std_logic;
SIGNAL \cp4|fifo[6][3]~q\ : std_logic;
SIGNAL \cp4|fifo[7][3]~feeder_combout\ : std_logic;
SIGNAL \cp4|fifo[7][3]~q\ : std_logic;
SIGNAL \cp4|fifo[4][2]~q\ : std_logic;
SIGNAL \cp4|fifo[5][2]~q\ : std_logic;
SIGNAL \cp4|fifo[6][2]~q\ : std_logic;
SIGNAL \cp4|fifo[7][2]~q\ : std_logic;
SIGNAL \cp4|fifo[5][1]~q\ : std_logic;
SIGNAL \cp4|fifo[6][1]~feeder_combout\ : std_logic;
SIGNAL \cp4|fifo[6][1]~q\ : std_logic;
SIGNAL \cp4|fifo[7][1]~feeder_combout\ : std_logic;
SIGNAL \cp4|fifo[7][1]~q\ : std_logic;
SIGNAL \cp4|fifo[5][0]~q\ : std_logic;
SIGNAL \cp4|fifo[6][0]~feeder_combout\ : std_logic;
SIGNAL \cp4|fifo[6][0]~q\ : std_logic;
SIGNAL \cp4|Add5~1\ : std_logic;
SIGNAL \cp4|Add5~3\ : std_logic;
SIGNAL \cp4|Add5~5\ : std_logic;
SIGNAL \cp4|Add5~7\ : std_logic;
SIGNAL \cp4|Add5~9\ : std_logic;
SIGNAL \cp4|Add5~11\ : std_logic;
SIGNAL \cp4|Add5~13\ : std_logic;
SIGNAL \cp4|Add5~15\ : std_logic;
SIGNAL \cp4|Add5~17\ : std_logic;
SIGNAL \cp4|Add5~18_combout\ : std_logic;
SIGNAL \cp4|Add5~14_combout\ : std_logic;
SIGNAL \cp4|Add5~12_combout\ : std_logic;
SIGNAL \cp4|Add4~1\ : std_logic;
SIGNAL \cp4|Add4~3\ : std_logic;
SIGNAL \cp4|Add4~5\ : std_logic;
SIGNAL \cp4|Add4~7\ : std_logic;
SIGNAL \cp4|Add4~9\ : std_logic;
SIGNAL \cp4|Add4~11\ : std_logic;
SIGNAL \cp4|Add4~13\ : std_logic;
SIGNAL \cp4|Add4~15\ : std_logic;
SIGNAL \cp4|Add4~17\ : std_logic;
SIGNAL \cp4|Add4~18_combout\ : std_logic;
SIGNAL \cp4|Add4~16_combout\ : std_logic;
SIGNAL \cp4|Add4~14_combout\ : std_logic;
SIGNAL \cp4|Add4~12_combout\ : std_logic;
SIGNAL \cp4|Add3~10_combout\ : std_logic;
SIGNAL \cp4|Add4~8_combout\ : std_logic;
SIGNAL \cp4|Add4~6_combout\ : std_logic;
SIGNAL \cp4|Add3~4_combout\ : std_logic;
SIGNAL \cp4|Add4~2_combout\ : std_logic;
SIGNAL \cp4|Add3~0_combout\ : std_logic;
SIGNAL \cp4|Add6~1\ : std_logic;
SIGNAL \cp4|Add6~3\ : std_logic;
SIGNAL \cp4|Add6~5\ : std_logic;
SIGNAL \cp4|Add6~7\ : std_logic;
SIGNAL \cp4|Add6~9\ : std_logic;
SIGNAL \cp4|Add6~11\ : std_logic;
SIGNAL \cp4|Add6~13\ : std_logic;
SIGNAL \cp4|Add6~15\ : std_logic;
SIGNAL \cp4|Add6~17\ : std_logic;
SIGNAL \cp4|Add6~19\ : std_logic;
SIGNAL \cp4|Add6~21\ : std_logic;
SIGNAL \cp4|Add6~23\ : std_logic;
SIGNAL \cp4|Add6~24_combout\ : std_logic;
SIGNAL \cp4|Add6~22_combout\ : std_logic;
SIGNAL \cp4|Add6~20_combout\ : std_logic;
SIGNAL \cp4|fifo[8][9]~q\ : std_logic;
SIGNAL \cp4|fifo[9][9]~feeder_combout\ : std_logic;
SIGNAL \cp4|fifo[9][9]~q\ : std_logic;
SIGNAL \cp4|fifo[7][8]~q\ : std_logic;
SIGNAL \cp4|fifo[8][8]~q\ : std_logic;
SIGNAL \cp4|fifo[7][7]~feeder_combout\ : std_logic;
SIGNAL \cp4|fifo[7][7]~q\ : std_logic;
SIGNAL \cp4|fifo[8][7]~q\ : std_logic;
SIGNAL \cp4|fifo[9][7]~q\ : std_logic;
SIGNAL \cp4|fifo[8][6]~feeder_combout\ : std_logic;
SIGNAL \cp4|fifo[8][6]~q\ : std_logic;
SIGNAL \cp4|fifo[9][6]~feeder_combout\ : std_logic;
SIGNAL \cp4|fifo[9][6]~q\ : std_logic;
SIGNAL \cp4|fifo[8][5]~q\ : std_logic;
SIGNAL \cp4|fifo[8][4]~q\ : std_logic;
SIGNAL \cp4|fifo[9][4]~q\ : std_logic;
SIGNAL \cp4|fifo[8][3]~q\ : std_logic;
SIGNAL \cp4|fifo[9][3]~q\ : std_logic;
SIGNAL \cp4|fifo[8][2]~q\ : std_logic;
SIGNAL \cp4|fifo[9][2]~q\ : std_logic;
SIGNAL \cp4|fifo[8][1]~q\ : std_logic;
SIGNAL \cp4|fifo[7][0]~feeder_combout\ : std_logic;
SIGNAL \cp4|fifo[7][0]~q\ : std_logic;
SIGNAL \cp4|fifo[8][0]~q\ : std_logic;
SIGNAL \cp4|fifo[9][0]~feeder_combout\ : std_logic;
SIGNAL \cp4|fifo[9][0]~q\ : std_logic;
SIGNAL \cp4|Add7~1\ : std_logic;
SIGNAL \cp4|Add7~3\ : std_logic;
SIGNAL \cp4|Add7~5\ : std_logic;
SIGNAL \cp4|Add7~7\ : std_logic;
SIGNAL \cp4|Add7~9\ : std_logic;
SIGNAL \cp4|Add7~11\ : std_logic;
SIGNAL \cp4|Add7~13\ : std_logic;
SIGNAL \cp4|Add7~15\ : std_logic;
SIGNAL \cp4|Add7~17\ : std_logic;
SIGNAL \cp4|Add7~18_combout\ : std_logic;
SIGNAL \cp4|Add6~16_combout\ : std_logic;
SIGNAL \cp4|Add6~14_combout\ : std_logic;
SIGNAL \cp4|Add6~12_combout\ : std_logic;
SIGNAL \cp4|Add6~10_combout\ : std_logic;
SIGNAL \cp4|Add6~8_combout\ : std_logic;
SIGNAL \cp4|Add6~6_combout\ : std_logic;
SIGNAL \cp4|Add7~4_combout\ : std_logic;
SIGNAL \cp4|Add6~2_combout\ : std_logic;
SIGNAL \cp4|Add6~0_combout\ : std_logic;
SIGNAL \cp4|Add8~1\ : std_logic;
SIGNAL \cp4|Add8~3\ : std_logic;
SIGNAL \cp4|Add8~5\ : std_logic;
SIGNAL \cp4|Add8~7\ : std_logic;
SIGNAL \cp4|Add8~9\ : std_logic;
SIGNAL \cp4|Add8~11\ : std_logic;
SIGNAL \cp4|Add8~13\ : std_logic;
SIGNAL \cp4|Add8~15\ : std_logic;
SIGNAL \cp4|Add8~17\ : std_logic;
SIGNAL \cp4|Add8~19\ : std_logic;
SIGNAL \cp4|Add8~21\ : std_logic;
SIGNAL \cp4|Add8~23\ : std_logic;
SIGNAL \cp4|Add8~24_combout\ : std_logic;
SIGNAL \cp4|Add8~22_combout\ : std_logic;
SIGNAL \cp4|Add8~20_combout\ : std_logic;
SIGNAL \cp4|Add8~18_combout\ : std_logic;
SIGNAL \cp4|fifo[9][8]~feeder_combout\ : std_logic;
SIGNAL \cp4|fifo[9][8]~q\ : std_logic;
SIGNAL \cp4|fifo[10][8]~q\ : std_logic;
SIGNAL \cp4|fifo[10][7]~q\ : std_logic;
SIGNAL \cp4|fifo[11][7]~q\ : std_logic;
SIGNAL \cp4|fifo[10][6]~q\ : std_logic;
SIGNAL \cp4|fifo[9][5]~q\ : std_logic;
SIGNAL \cp4|fifo[10][5]~q\ : std_logic;
SIGNAL \cp4|fifo[10][4]~q\ : std_logic;
SIGNAL \cp4|fifo[10][3]~q\ : std_logic;
SIGNAL \cp4|fifo[10][2]~feeder_combout\ : std_logic;
SIGNAL \cp4|fifo[10][2]~q\ : std_logic;
SIGNAL \cp4|fifo[11][2]~feeder_combout\ : std_logic;
SIGNAL \cp4|fifo[11][2]~q\ : std_logic;
SIGNAL \cp4|fifo[9][1]~feeder_combout\ : std_logic;
SIGNAL \cp4|fifo[9][1]~q\ : std_logic;
SIGNAL \cp4|fifo[10][1]~feeder_combout\ : std_logic;
SIGNAL \cp4|fifo[10][1]~q\ : std_logic;
SIGNAL \cp4|fifo[10][0]~feeder_combout\ : std_logic;
SIGNAL \cp4|fifo[10][0]~q\ : std_logic;
SIGNAL \cp4|fifo[11][0]~feeder_combout\ : std_logic;
SIGNAL \cp4|fifo[11][0]~q\ : std_logic;
SIGNAL \cp4|Add9~1\ : std_logic;
SIGNAL \cp4|Add9~3\ : std_logic;
SIGNAL \cp4|Add9~5\ : std_logic;
SIGNAL \cp4|Add9~7\ : std_logic;
SIGNAL \cp4|Add9~9\ : std_logic;
SIGNAL \cp4|Add9~11\ : std_logic;
SIGNAL \cp4|Add9~13\ : std_logic;
SIGNAL \cp4|Add9~15\ : std_logic;
SIGNAL \cp4|Add9~16_combout\ : std_logic;
SIGNAL \cp4|Add9~14_combout\ : std_logic;
SIGNAL \cp4|fifo[11][6]~q\ : std_logic;
SIGNAL \cp4|fifo[12][6]~q\ : std_logic;
SIGNAL \cp4|fifo[11][5]~q\ : std_logic;
SIGNAL \cp4|fifo[12][5]~q\ : std_logic;
SIGNAL \cp4|fifo[13][5]~q\ : std_logic;
SIGNAL \cp4|fifo[11][4]~q\ : std_logic;
SIGNAL \cp4|fifo[12][4]~q\ : std_logic;
SIGNAL \cp4|fifo[13][4]~q\ : std_logic;
SIGNAL \cp4|fifo[11][3]~q\ : std_logic;
SIGNAL \cp4|fifo[12][3]~q\ : std_logic;
SIGNAL \cp4|fifo[12][2]~q\ : std_logic;
SIGNAL \cp4|fifo[13][2]~feeder_combout\ : std_logic;
SIGNAL \cp4|fifo[13][2]~q\ : std_logic;
SIGNAL \cp4|fifo[11][1]~feeder_combout\ : std_logic;
SIGNAL \cp4|fifo[11][1]~q\ : std_logic;
SIGNAL \cp4|fifo[12][1]~q\ : std_logic;
SIGNAL \cp4|fifo[13][1]~feeder_combout\ : std_logic;
SIGNAL \cp4|fifo[13][1]~q\ : std_logic;
SIGNAL \cp4|fifo[12][0]~feeder_combout\ : std_logic;
SIGNAL \cp4|fifo[12][0]~q\ : std_logic;
SIGNAL \cp4|Add11~1\ : std_logic;
SIGNAL \cp4|Add11~3\ : std_logic;
SIGNAL \cp4|Add11~5\ : std_logic;
SIGNAL \cp4|Add11~7\ : std_logic;
SIGNAL \cp4|Add11~9\ : std_logic;
SIGNAL \cp4|Add11~11\ : std_logic;
SIGNAL \cp4|Add11~12_combout\ : std_logic;
SIGNAL \cp4|Add11~10_combout\ : std_logic;
SIGNAL \cp4|Add9~8_combout\ : std_logic;
SIGNAL \cp4|Add11~6_combout\ : std_logic;
SIGNAL \cp4|Add9~4_combout\ : std_logic;
SIGNAL \cp4|Add11~2_combout\ : std_logic;
SIGNAL \cp4|Add9~0_combout\ : std_logic;
SIGNAL \cp4|Add10~1\ : std_logic;
SIGNAL \cp4|Add10~3\ : std_logic;
SIGNAL \cp4|Add10~5\ : std_logic;
SIGNAL \cp4|Add10~7\ : std_logic;
SIGNAL \cp4|Add10~9\ : std_logic;
SIGNAL \cp4|Add10~11\ : std_logic;
SIGNAL \cp4|Add10~13\ : std_logic;
SIGNAL \cp4|Add10~15\ : std_logic;
SIGNAL \cp4|Add10~16_combout\ : std_logic;
SIGNAL \cp4|fifo[12][7]~q\ : std_logic;
SIGNAL \cp4|fifo[13][7]~feeder_combout\ : std_logic;
SIGNAL \cp4|fifo[13][7]~q\ : std_logic;
SIGNAL \cp4|fifo[14][7]~q\ : std_logic;
SIGNAL \cp4|fifo[13][6]~feeder_combout\ : std_logic;
SIGNAL \cp4|fifo[13][6]~q\ : std_logic;
SIGNAL \cp4|fifo[14][6]~q\ : std_logic;
SIGNAL \cp4|fifo[14][5]~q\ : std_logic;
SIGNAL \cp4|fifo[15][5]~q\ : std_logic;
SIGNAL \cp4|fifo[14][4]~feeder_combout\ : std_logic;
SIGNAL \cp4|fifo[14][4]~q\ : std_logic;
SIGNAL \cp4|fifo[15][4]~q\ : std_logic;
SIGNAL \cp4|fifo[13][3]~feeder_combout\ : std_logic;
SIGNAL \cp4|fifo[13][3]~q\ : std_logic;
SIGNAL \cp4|fifo[14][3]~q\ : std_logic;
SIGNAL \cp4|fifo[14][2]~feeder_combout\ : std_logic;
SIGNAL \cp4|fifo[14][2]~q\ : std_logic;
SIGNAL \cp4|fifo[15][2]~q\ : std_logic;
SIGNAL \cp4|fifo[14][1]~q\ : std_logic;
SIGNAL \cp4|fifo[15][1]~feeder_combout\ : std_logic;
SIGNAL \cp4|fifo[15][1]~q\ : std_logic;
SIGNAL \cp4|fifo[13][0]~feeder_combout\ : std_logic;
SIGNAL \cp4|fifo[13][0]~q\ : std_logic;
SIGNAL \cp4|fifo[14][0]~q\ : std_logic;
SIGNAL \cp4|Add13~1\ : std_logic;
SIGNAL \cp4|Add13~3\ : std_logic;
SIGNAL \cp4|Add13~5\ : std_logic;
SIGNAL \cp4|Add13~7\ : std_logic;
SIGNAL \cp4|Add13~9\ : std_logic;
SIGNAL \cp4|Add13~11\ : std_logic;
SIGNAL \cp4|Add13~13\ : std_logic;
SIGNAL \cp4|Add13~14_combout\ : std_logic;
SIGNAL \cp4|Add13~12_combout\ : std_logic;
SIGNAL \cp4|Add13~10_combout\ : std_logic;
SIGNAL \cp4|Add13~8_combout\ : std_logic;
SIGNAL \cp4|Add13~6_combout\ : std_logic;
SIGNAL \cp4|Add10~4_combout\ : std_logic;
SIGNAL \cp4|Add10~2_combout\ : std_logic;
SIGNAL \cp4|Add13~0_combout\ : std_logic;
SIGNAL \cp4|Add12~1\ : std_logic;
SIGNAL \cp4|Add12~3\ : std_logic;
SIGNAL \cp4|Add12~5\ : std_logic;
SIGNAL \cp4|Add12~7\ : std_logic;
SIGNAL \cp4|Add12~9\ : std_logic;
SIGNAL \cp4|Add12~11\ : std_logic;
SIGNAL \cp4|Add12~13\ : std_logic;
SIGNAL \cp4|Add12~15\ : std_logic;
SIGNAL \cp4|Add12~16_combout\ : std_logic;
SIGNAL \cp4|Add8~14_combout\ : std_logic;
SIGNAL \cp4|Add8~12_combout\ : std_logic;
SIGNAL \cp4|Add8~10_combout\ : std_logic;
SIGNAL \cp4|Add8~8_combout\ : std_logic;
SIGNAL \cp4|Add8~6_combout\ : std_logic;
SIGNAL \cp4|Add8~4_combout\ : std_logic;
SIGNAL \cp4|Add12~2_combout\ : std_logic;
SIGNAL \cp4|Add8~0_combout\ : std_logic;
SIGNAL \cp4|Add14~1\ : std_logic;
SIGNAL \cp4|Add14~3\ : std_logic;
SIGNAL \cp4|Add14~5\ : std_logic;
SIGNAL \cp4|Add14~7\ : std_logic;
SIGNAL \cp4|Add14~9\ : std_logic;
SIGNAL \cp4|Add14~11\ : std_logic;
SIGNAL \cp4|Add14~13\ : std_logic;
SIGNAL \cp4|Add14~15\ : std_logic;
SIGNAL \cp4|Add14~17\ : std_logic;
SIGNAL \cp4|Add14~19\ : std_logic;
SIGNAL \cp4|Add14~21\ : std_logic;
SIGNAL \cp4|Add14~23\ : std_logic;
SIGNAL \cp4|Add14~24_combout\ : std_logic;
SIGNAL \cp4|Add14~22_combout\ : std_logic;
SIGNAL \cp4|fifo[10][9]~feeder_combout\ : std_logic;
SIGNAL \cp4|fifo[10][9]~q\ : std_logic;
SIGNAL \cp4|fifo[11][9]~feeder_combout\ : std_logic;
SIGNAL \cp4|fifo[11][9]~q\ : std_logic;
SIGNAL \cp4|fifo[12][9]~feeder_combout\ : std_logic;
SIGNAL \cp4|fifo[12][9]~q\ : std_logic;
SIGNAL \cp4|fifo[13][9]~q\ : std_logic;
SIGNAL \cp4|fifo[14][9]~q\ : std_logic;
SIGNAL \cp4|fifo[15][9]~feeder_combout\ : std_logic;
SIGNAL \cp4|fifo[15][9]~q\ : std_logic;
SIGNAL \cp4|fifo[16][9]~feeder_combout\ : std_logic;
SIGNAL \cp4|fifo[16][9]~q\ : std_logic;
SIGNAL \cp4|fifo[11][8]~feeder_combout\ : std_logic;
SIGNAL \cp4|fifo[11][8]~q\ : std_logic;
SIGNAL \cp4|fifo[12][8]~q\ : std_logic;
SIGNAL \cp4|fifo[13][8]~q\ : std_logic;
SIGNAL \cp4|fifo[14][8]~feeder_combout\ : std_logic;
SIGNAL \cp4|fifo[14][8]~q\ : std_logic;
SIGNAL \cp4|fifo[15][8]~feeder_combout\ : std_logic;
SIGNAL \cp4|fifo[15][8]~q\ : std_logic;
SIGNAL \cp4|fifo[16][8]~q\ : std_logic;
SIGNAL \cp4|fifo[15][7]~q\ : std_logic;
SIGNAL \cp4|fifo[16][7]~feeder_combout\ : std_logic;
SIGNAL \cp4|fifo[16][7]~q\ : std_logic;
SIGNAL \cp4|fifo[15][6]~q\ : std_logic;
SIGNAL \cp4|fifo[16][6]~feeder_combout\ : std_logic;
SIGNAL \cp4|fifo[16][6]~q\ : std_logic;
SIGNAL \cp4|fifo[17][6]~q\ : std_logic;
SIGNAL \cp4|fifo[16][5]~feeder_combout\ : std_logic;
SIGNAL \cp4|fifo[16][5]~q\ : std_logic;
SIGNAL \cp4|fifo[16][4]~q\ : std_logic;
SIGNAL \cp4|fifo[15][3]~feeder_combout\ : std_logic;
SIGNAL \cp4|fifo[15][3]~q\ : std_logic;
SIGNAL \cp4|fifo[16][3]~feeder_combout\ : std_logic;
SIGNAL \cp4|fifo[16][3]~q\ : std_logic;
SIGNAL \cp4|fifo[16][2]~q\ : std_logic;
SIGNAL \cp4|fifo[17][2]~q\ : std_logic;
SIGNAL \cp4|fifo[16][1]~q\ : std_logic;
SIGNAL \cp4|fifo[15][0]~feeder_combout\ : std_logic;
SIGNAL \cp4|fifo[15][0]~q\ : std_logic;
SIGNAL \cp4|fifo[16][0]~q\ : std_logic;
SIGNAL \cp4|Add15~1\ : std_logic;
SIGNAL \cp4|Add15~3\ : std_logic;
SIGNAL \cp4|Add15~5\ : std_logic;
SIGNAL \cp4|Add15~7\ : std_logic;
SIGNAL \cp4|Add15~9\ : std_logic;
SIGNAL \cp4|Add15~11\ : std_logic;
SIGNAL \cp4|Add15~13\ : std_logic;
SIGNAL \cp4|Add15~15\ : std_logic;
SIGNAL \cp4|Add15~17\ : std_logic;
SIGNAL \cp4|Add15~19\ : std_logic;
SIGNAL \cp4|Add15~20_combout\ : std_logic;
SIGNAL \cp4|Add14~18_combout\ : std_logic;
SIGNAL \cp4|Add14~16_combout\ : std_logic;
SIGNAL \cp4|Add14~14_combout\ : std_logic;
SIGNAL \cp4|Add14~12_combout\ : std_logic;
SIGNAL \cp4|Add14~10_combout\ : std_logic;
SIGNAL \cp4|Add14~8_combout\ : std_logic;
SIGNAL \cp4|Add15~6_combout\ : std_logic;
SIGNAL \cp4|Add15~4_combout\ : std_logic;
SIGNAL \cp4|Add15~2_combout\ : std_logic;
SIGNAL \cp4|Add15~0_combout\ : std_logic;
SIGNAL \cp4|Add16~1\ : std_logic;
SIGNAL \cp4|Add16~3\ : std_logic;
SIGNAL \cp4|Add16~5\ : std_logic;
SIGNAL \cp4|Add16~7\ : std_logic;
SIGNAL \cp4|Add16~9\ : std_logic;
SIGNAL \cp4|Add16~11\ : std_logic;
SIGNAL \cp4|Add16~13\ : std_logic;
SIGNAL \cp4|Add16~15\ : std_logic;
SIGNAL \cp4|Add16~17\ : std_logic;
SIGNAL \cp4|Add16~19\ : std_logic;
SIGNAL \cp4|Add16~21\ : std_logic;
SIGNAL \cp4|Add16~23\ : std_logic;
SIGNAL \cp4|Add16~24_combout\ : std_logic;
SIGNAL \cp4|Add16~22_combout\ : std_logic;
SIGNAL \cp4|fifo[17][9]~feeder_combout\ : std_logic;
SIGNAL \cp4|fifo[17][9]~q\ : std_logic;
SIGNAL \cp4|fifo[18][9]~q\ : std_logic;
SIGNAL \cp4|fifo[19][9]~q\ : std_logic;
SIGNAL \cp4|fifo[20][9]~q\ : std_logic;
SIGNAL \cp4|fifo[21][9]~feeder_combout\ : std_logic;
SIGNAL \cp4|fifo[21][9]~q\ : std_logic;
SIGNAL \cp4|fifo[22][9]~q\ : std_logic;
SIGNAL \cp4|fifo[17][8]~q\ : std_logic;
SIGNAL \cp4|fifo[18][8]~q\ : std_logic;
SIGNAL \cp4|fifo[19][8]~feeder_combout\ : std_logic;
SIGNAL \cp4|fifo[19][8]~q\ : std_logic;
SIGNAL \cp4|fifo[20][8]~feeder_combout\ : std_logic;
SIGNAL \cp4|fifo[20][8]~q\ : std_logic;
SIGNAL \cp4|fifo[21][8]~feeder_combout\ : std_logic;
SIGNAL \cp4|fifo[21][8]~q\ : std_logic;
SIGNAL \cp4|fifo[22][8]~feeder_combout\ : std_logic;
SIGNAL \cp4|fifo[22][8]~q\ : std_logic;
SIGNAL \cp4|fifo[17][7]~feeder_combout\ : std_logic;
SIGNAL \cp4|fifo[17][7]~q\ : std_logic;
SIGNAL \cp4|fifo[18][7]~q\ : std_logic;
SIGNAL \cp4|fifo[19][7]~q\ : std_logic;
SIGNAL \cp4|fifo[20][7]~q\ : std_logic;
SIGNAL \cp4|fifo[21][7]~q\ : std_logic;
SIGNAL \cp4|fifo[22][7]~q\ : std_logic;
SIGNAL \cp4|fifo[23][7]~q\ : std_logic;
SIGNAL \cp4|fifo[18][6]~q\ : std_logic;
SIGNAL \cp4|fifo[19][6]~feeder_combout\ : std_logic;
SIGNAL \cp4|fifo[19][6]~q\ : std_logic;
SIGNAL \cp4|fifo[20][6]~feeder_combout\ : std_logic;
SIGNAL \cp4|fifo[20][6]~q\ : std_logic;
SIGNAL \cp4|fifo[21][6]~q\ : std_logic;
SIGNAL \cp4|fifo[22][6]~q\ : std_logic;
SIGNAL \cp4|fifo[17][5]~q\ : std_logic;
SIGNAL \cp4|fifo[18][5]~q\ : std_logic;
SIGNAL \cp4|fifo[19][5]~q\ : std_logic;
SIGNAL \cp4|fifo[20][5]~q\ : std_logic;
SIGNAL \cp4|fifo[21][5]~feeder_combout\ : std_logic;
SIGNAL \cp4|fifo[21][5]~q\ : std_logic;
SIGNAL \cp4|fifo[22][5]~q\ : std_logic;
SIGNAL \cp4|fifo[17][4]~q\ : std_logic;
SIGNAL \cp4|fifo[18][4]~q\ : std_logic;
SIGNAL \cp4|fifo[19][4]~feeder_combout\ : std_logic;
SIGNAL \cp4|fifo[19][4]~q\ : std_logic;
SIGNAL \cp4|fifo[20][4]~feeder_combout\ : std_logic;
SIGNAL \cp4|fifo[20][4]~q\ : std_logic;
SIGNAL \cp4|fifo[21][4]~q\ : std_logic;
SIGNAL \cp4|fifo[22][4]~feeder_combout\ : std_logic;
SIGNAL \cp4|fifo[22][4]~q\ : std_logic;
SIGNAL \cp4|fifo[23][4]~q\ : std_logic;
SIGNAL \cp4|fifo[17][3]~q\ : std_logic;
SIGNAL \cp4|fifo[18][3]~feeder_combout\ : std_logic;
SIGNAL \cp4|fifo[18][3]~q\ : std_logic;
SIGNAL \cp4|fifo[19][3]~q\ : std_logic;
SIGNAL \cp4|fifo[20][3]~q\ : std_logic;
SIGNAL \cp4|fifo[21][3]~feeder_combout\ : std_logic;
SIGNAL \cp4|fifo[21][3]~q\ : std_logic;
SIGNAL \cp4|fifo[22][3]~q\ : std_logic;
SIGNAL \cp4|fifo[18][2]~q\ : std_logic;
SIGNAL \cp4|fifo[19][2]~q\ : std_logic;
SIGNAL \cp4|fifo[20][2]~q\ : std_logic;
SIGNAL \cp4|fifo[21][2]~feeder_combout\ : std_logic;
SIGNAL \cp4|fifo[21][2]~q\ : std_logic;
SIGNAL \cp4|fifo[22][2]~q\ : std_logic;
SIGNAL \cp4|fifo[17][1]~q\ : std_logic;
SIGNAL \cp4|fifo[18][1]~feeder_combout\ : std_logic;
SIGNAL \cp4|fifo[18][1]~q\ : std_logic;
SIGNAL \cp4|fifo[19][1]~feeder_combout\ : std_logic;
SIGNAL \cp4|fifo[19][1]~q\ : std_logic;
SIGNAL \cp4|fifo[20][1]~q\ : std_logic;
SIGNAL \cp4|fifo[21][1]~q\ : std_logic;
SIGNAL \cp4|fifo[22][1]~feeder_combout\ : std_logic;
SIGNAL \cp4|fifo[22][1]~q\ : std_logic;
SIGNAL \cp4|fifo[23][1]~feeder_combout\ : std_logic;
SIGNAL \cp4|fifo[23][1]~q\ : std_logic;
SIGNAL \cp4|fifo[17][0]~q\ : std_logic;
SIGNAL \cp4|fifo[18][0]~feeder_combout\ : std_logic;
SIGNAL \cp4|fifo[18][0]~q\ : std_logic;
SIGNAL \cp4|fifo[19][0]~feeder_combout\ : std_logic;
SIGNAL \cp4|fifo[19][0]~q\ : std_logic;
SIGNAL \cp4|fifo[20][0]~feeder_combout\ : std_logic;
SIGNAL \cp4|fifo[20][0]~q\ : std_logic;
SIGNAL \cp4|fifo[21][0]~feeder_combout\ : std_logic;
SIGNAL \cp4|fifo[21][0]~q\ : std_logic;
SIGNAL \cp4|fifo[22][0]~q\ : std_logic;
SIGNAL \cp4|Add21~1\ : std_logic;
SIGNAL \cp4|Add21~3\ : std_logic;
SIGNAL \cp4|Add21~5\ : std_logic;
SIGNAL \cp4|Add21~7\ : std_logic;
SIGNAL \cp4|Add21~9\ : std_logic;
SIGNAL \cp4|Add21~11\ : std_logic;
SIGNAL \cp4|Add21~13\ : std_logic;
SIGNAL \cp4|Add21~15\ : std_logic;
SIGNAL \cp4|Add21~17\ : std_logic;
SIGNAL \cp4|Add21~19\ : std_logic;
SIGNAL \cp4|Add21~20_combout\ : std_logic;
SIGNAL \cp4|Add21~18_combout\ : std_logic;
SIGNAL \cp4|Add21~16_combout\ : std_logic;
SIGNAL \cp4|Add21~14_combout\ : std_logic;
SIGNAL \cp4|fifo[23][6]~q\ : std_logic;
SIGNAL \cp4|fifo[24][6]~q\ : std_logic;
SIGNAL \cp4|fifo[23][5]~feeder_combout\ : std_logic;
SIGNAL \cp4|fifo[23][5]~q\ : std_logic;
SIGNAL \cp4|fifo[24][5]~q\ : std_logic;
SIGNAL \cp4|fifo[24][4]~q\ : std_logic;
SIGNAL \cp4|fifo[25][4]~feeder_combout\ : std_logic;
SIGNAL \cp4|fifo[25][4]~q\ : std_logic;
SIGNAL \cp4|fifo[23][3]~q\ : std_logic;
SIGNAL \cp4|fifo[24][3]~q\ : std_logic;
SIGNAL \cp4|fifo[25][3]~q\ : std_logic;
SIGNAL \cp4|fifo[23][2]~q\ : std_logic;
SIGNAL \cp4|fifo[24][2]~feeder_combout\ : std_logic;
SIGNAL \cp4|fifo[24][2]~q\ : std_logic;
SIGNAL \cp4|fifo[25][2]~q\ : std_logic;
SIGNAL \cp4|fifo[24][1]~q\ : std_logic;
SIGNAL \cp4|fifo[23][0]~feeder_combout\ : std_logic;
SIGNAL \cp4|fifo[23][0]~q\ : std_logic;
SIGNAL \cp4|fifo[24][0]~q\ : std_logic;
SIGNAL \cp4|Add23~1\ : std_logic;
SIGNAL \cp4|Add23~3\ : std_logic;
SIGNAL \cp4|Add23~5\ : std_logic;
SIGNAL \cp4|Add23~7\ : std_logic;
SIGNAL \cp4|Add23~9\ : std_logic;
SIGNAL \cp4|Add23~11\ : std_logic;
SIGNAL \cp4|Add23~12_combout\ : std_logic;
SIGNAL \cp4|Add23~10_combout\ : std_logic;
SIGNAL \cp4|Add21~8_combout\ : std_logic;
SIGNAL \cp4|Add23~6_combout\ : std_logic;
SIGNAL \cp4|Add21~4_combout\ : std_logic;
SIGNAL \cp4|Add23~2_combout\ : std_logic;
SIGNAL \cp4|Add21~0_combout\ : std_logic;
SIGNAL \cp4|Add22~1\ : std_logic;
SIGNAL \cp4|Add22~3\ : std_logic;
SIGNAL \cp4|Add22~5\ : std_logic;
SIGNAL \cp4|Add22~7\ : std_logic;
SIGNAL \cp4|Add22~9\ : std_logic;
SIGNAL \cp4|Add22~11\ : std_logic;
SIGNAL \cp4|Add22~13\ : std_logic;
SIGNAL \cp4|Add22~15\ : std_logic;
SIGNAL \cp4|Add22~17\ : std_logic;
SIGNAL \cp4|Add22~19\ : std_logic;
SIGNAL \cp4|Add22~20_combout\ : std_logic;
SIGNAL \cp4|Add22~18_combout\ : std_logic;
SIGNAL \cp4|Add17~1\ : std_logic;
SIGNAL \cp4|Add17~3\ : std_logic;
SIGNAL \cp4|Add17~5\ : std_logic;
SIGNAL \cp4|Add17~7\ : std_logic;
SIGNAL \cp4|Add17~9\ : std_logic;
SIGNAL \cp4|Add17~11\ : std_logic;
SIGNAL \cp4|Add17~13\ : std_logic;
SIGNAL \cp4|Add17~15\ : std_logic;
SIGNAL \cp4|Add17~16_combout\ : std_logic;
SIGNAL \cp4|Add17~14_combout\ : std_logic;
SIGNAL \cp4|Add17~12_combout\ : std_logic;
SIGNAL \cp4|Add19~1\ : std_logic;
SIGNAL \cp4|Add19~3\ : std_logic;
SIGNAL \cp4|Add19~5\ : std_logic;
SIGNAL \cp4|Add19~7\ : std_logic;
SIGNAL \cp4|Add19~9\ : std_logic;
SIGNAL \cp4|Add19~10_combout\ : std_logic;
SIGNAL \cp4|Add17~8_combout\ : std_logic;
SIGNAL \cp4|Add17~6_combout\ : std_logic;
SIGNAL \cp4|Add19~4_combout\ : std_logic;
SIGNAL \cp4|Add19~2_combout\ : std_logic;
SIGNAL \cp4|Add19~0_combout\ : std_logic;
SIGNAL \cp4|Add18~1\ : std_logic;
SIGNAL \cp4|Add18~3\ : std_logic;
SIGNAL \cp4|Add18~5\ : std_logic;
SIGNAL \cp4|Add18~7\ : std_logic;
SIGNAL \cp4|Add18~9\ : std_logic;
SIGNAL \cp4|Add18~11\ : std_logic;
SIGNAL \cp4|Add18~13\ : std_logic;
SIGNAL \cp4|Add18~15\ : std_logic;
SIGNAL \cp4|Add18~16_combout\ : std_logic;
SIGNAL \cp4|Add18~14_combout\ : std_logic;
SIGNAL \cp4|Add18~12_combout\ : std_logic;
SIGNAL \cp4|Add18~10_combout\ : std_logic;
SIGNAL \cp4|Add22~8_combout\ : std_logic;
SIGNAL \cp4|Add22~6_combout\ : std_logic;
SIGNAL \cp4|Add18~4_combout\ : std_logic;
SIGNAL \cp4|Add22~2_combout\ : std_logic;
SIGNAL \cp4|Add18~0_combout\ : std_logic;
SIGNAL \cp4|Add20~1\ : std_logic;
SIGNAL \cp4|Add20~3\ : std_logic;
SIGNAL \cp4|Add20~5\ : std_logic;
SIGNAL \cp4|Add20~7\ : std_logic;
SIGNAL \cp4|Add20~9\ : std_logic;
SIGNAL \cp4|Add20~11\ : std_logic;
SIGNAL \cp4|Add20~13\ : std_logic;
SIGNAL \cp4|Add20~15\ : std_logic;
SIGNAL \cp4|Add20~17\ : std_logic;
SIGNAL \cp4|Add20~19\ : std_logic;
SIGNAL \cp4|Add20~20_combout\ : std_logic;
SIGNAL \cp4|fifo[23][9]~feeder_combout\ : std_logic;
SIGNAL \cp4|fifo[23][9]~q\ : std_logic;
SIGNAL \cp4|fifo[24][9]~feeder_combout\ : std_logic;
SIGNAL \cp4|fifo[24][9]~q\ : std_logic;
SIGNAL \cp4|fifo[25][9]~feeder_combout\ : std_logic;
SIGNAL \cp4|fifo[25][9]~q\ : std_logic;
SIGNAL \cp4|fifo[26][9]~feeder_combout\ : std_logic;
SIGNAL \cp4|fifo[26][9]~q\ : std_logic;
SIGNAL \cp4|fifo[27][9]~q\ : std_logic;
SIGNAL \cp4|fifo[28][9]~q\ : std_logic;
SIGNAL \cp4|fifo[29][9]~feeder_combout\ : std_logic;
SIGNAL \cp4|fifo[29][9]~q\ : std_logic;
SIGNAL \cp4|fifo[30][9]~feeder_combout\ : std_logic;
SIGNAL \cp4|fifo[30][9]~q\ : std_logic;
SIGNAL \cp4|fifo[31][9]~q\ : std_logic;
SIGNAL \cp4|fifo[23][8]~q\ : std_logic;
SIGNAL \cp4|fifo[24][8]~q\ : std_logic;
SIGNAL \cp4|fifo[25][8]~feeder_combout\ : std_logic;
SIGNAL \cp4|fifo[25][8]~q\ : std_logic;
SIGNAL \cp4|fifo[26][8]~feeder_combout\ : std_logic;
SIGNAL \cp4|fifo[26][8]~q\ : std_logic;
SIGNAL \cp4|fifo[27][8]~q\ : std_logic;
SIGNAL \cp4|fifo[28][8]~q\ : std_logic;
SIGNAL \cp4|fifo[29][8]~feeder_combout\ : std_logic;
SIGNAL \cp4|fifo[29][8]~q\ : std_logic;
SIGNAL \cp4|fifo[30][8]~feeder_combout\ : std_logic;
SIGNAL \cp4|fifo[30][8]~q\ : std_logic;
SIGNAL \cp4|fifo[31][8]~q\ : std_logic;
SIGNAL \cp4|fifo[24][7]~feeder_combout\ : std_logic;
SIGNAL \cp4|fifo[24][7]~q\ : std_logic;
SIGNAL \cp4|fifo[25][7]~feeder_combout\ : std_logic;
SIGNAL \cp4|fifo[25][7]~q\ : std_logic;
SIGNAL \cp4|fifo[26][7]~q\ : std_logic;
SIGNAL \cp4|fifo[27][7]~q\ : std_logic;
SIGNAL \cp4|fifo[28][7]~q\ : std_logic;
SIGNAL \cp4|fifo[29][7]~q\ : std_logic;
SIGNAL \cp4|fifo[30][7]~feeder_combout\ : std_logic;
SIGNAL \cp4|fifo[30][7]~q\ : std_logic;
SIGNAL \cp4|fifo[31][7]~q\ : std_logic;
SIGNAL \cp4|fifo[25][6]~feeder_combout\ : std_logic;
SIGNAL \cp4|fifo[25][6]~q\ : std_logic;
SIGNAL \cp4|fifo[26][6]~q\ : std_logic;
SIGNAL \cp4|fifo[27][6]~feeder_combout\ : std_logic;
SIGNAL \cp4|fifo[27][6]~q\ : std_logic;
SIGNAL \cp4|fifo[28][6]~q\ : std_logic;
SIGNAL \cp4|fifo[29][6]~feeder_combout\ : std_logic;
SIGNAL \cp4|fifo[29][6]~q\ : std_logic;
SIGNAL \cp4|fifo[30][6]~feeder_combout\ : std_logic;
SIGNAL \cp4|fifo[30][6]~q\ : std_logic;
SIGNAL \cp4|fifo[25][5]~feeder_combout\ : std_logic;
SIGNAL \cp4|fifo[25][5]~q\ : std_logic;
SIGNAL \cp4|fifo[26][5]~q\ : std_logic;
SIGNAL \cp4|fifo[27][5]~q\ : std_logic;
SIGNAL \cp4|fifo[28][5]~feeder_combout\ : std_logic;
SIGNAL \cp4|fifo[28][5]~q\ : std_logic;
SIGNAL \cp4|fifo[29][5]~feeder_combout\ : std_logic;
SIGNAL \cp4|fifo[29][5]~q\ : std_logic;
SIGNAL \cp4|fifo[30][5]~q\ : std_logic;
SIGNAL \cp4|fifo[26][4]~q\ : std_logic;
SIGNAL \cp4|fifo[27][4]~q\ : std_logic;
SIGNAL \cp4|fifo[28][4]~feeder_combout\ : std_logic;
SIGNAL \cp4|fifo[28][4]~q\ : std_logic;
SIGNAL \cp4|fifo[29][4]~q\ : std_logic;
SIGNAL \cp4|fifo[30][4]~feeder_combout\ : std_logic;
SIGNAL \cp4|fifo[30][4]~q\ : std_logic;
SIGNAL \cp4|fifo[31][4]~feeder_combout\ : std_logic;
SIGNAL \cp4|fifo[31][4]~q\ : std_logic;
SIGNAL \cp4|fifo[26][3]~q\ : std_logic;
SIGNAL \cp4|fifo[27][3]~q\ : std_logic;
SIGNAL \cp4|fifo[28][3]~q\ : std_logic;
SIGNAL \cp4|fifo[29][3]~feeder_combout\ : std_logic;
SIGNAL \cp4|fifo[29][3]~q\ : std_logic;
SIGNAL \cp4|fifo[30][3]~feeder_combout\ : std_logic;
SIGNAL \cp4|fifo[30][3]~q\ : std_logic;
SIGNAL \cp4|fifo[26][2]~feeder_combout\ : std_logic;
SIGNAL \cp4|fifo[26][2]~q\ : std_logic;
SIGNAL \cp4|fifo[27][2]~q\ : std_logic;
SIGNAL \cp4|fifo[28][2]~q\ : std_logic;
SIGNAL \cp4|fifo[29][2]~feeder_combout\ : std_logic;
SIGNAL \cp4|fifo[29][2]~q\ : std_logic;
SIGNAL \cp4|fifo[30][2]~q\ : std_logic;
SIGNAL \cp4|fifo[31][2]~q\ : std_logic;
SIGNAL \cp4|fifo[25][1]~q\ : std_logic;
SIGNAL \cp4|fifo[26][1]~feeder_combout\ : std_logic;
SIGNAL \cp4|fifo[26][1]~q\ : std_logic;
SIGNAL \cp4|fifo[27][1]~q\ : std_logic;
SIGNAL \cp4|fifo[28][1]~q\ : std_logic;
SIGNAL \cp4|fifo[29][1]~feeder_combout\ : std_logic;
SIGNAL \cp4|fifo[29][1]~q\ : std_logic;
SIGNAL \cp4|fifo[30][1]~feeder_combout\ : std_logic;
SIGNAL \cp4|fifo[30][1]~q\ : std_logic;
SIGNAL \cp4|fifo[31][1]~q\ : std_logic;
SIGNAL \cp4|fifo[25][0]~q\ : std_logic;
SIGNAL \cp4|fifo[26][0]~q\ : std_logic;
SIGNAL \cp4|fifo[27][0]~feeder_combout\ : std_logic;
SIGNAL \cp4|fifo[27][0]~q\ : std_logic;
SIGNAL \cp4|fifo[28][0]~q\ : std_logic;
SIGNAL \cp4|fifo[29][0]~feeder_combout\ : std_logic;
SIGNAL \cp4|fifo[29][0]~q\ : std_logic;
SIGNAL \cp4|fifo[30][0]~feeder_combout\ : std_logic;
SIGNAL \cp4|fifo[30][0]~q\ : std_logic;
SIGNAL \cp4|fifo[31][0]~q\ : std_logic;
SIGNAL \cp4|Add29~1\ : std_logic;
SIGNAL \cp4|Add29~3\ : std_logic;
SIGNAL \cp4|Add29~5\ : std_logic;
SIGNAL \cp4|Add29~7\ : std_logic;
SIGNAL \cp4|Add29~9\ : std_logic;
SIGNAL \cp4|Add29~11\ : std_logic;
SIGNAL \cp4|Add29~13\ : std_logic;
SIGNAL \cp4|Add29~15\ : std_logic;
SIGNAL \cp4|Add29~17\ : std_logic;
SIGNAL \cp4|Add29~18_combout\ : std_logic;
SIGNAL \cp4|Add29~16_combout\ : std_logic;
SIGNAL \cp4|Add27~1\ : std_logic;
SIGNAL \cp4|Add27~3\ : std_logic;
SIGNAL \cp4|Add27~5\ : std_logic;
SIGNAL \cp4|Add27~7\ : std_logic;
SIGNAL \cp4|Add27~9\ : std_logic;
SIGNAL \cp4|Add27~11\ : std_logic;
SIGNAL \cp4|Add27~13\ : std_logic;
SIGNAL \cp4|Add27~14_combout\ : std_logic;
SIGNAL \cp4|Add25~1\ : std_logic;
SIGNAL \cp4|Add25~3\ : std_logic;
SIGNAL \cp4|Add25~5\ : std_logic;
SIGNAL \cp4|Add25~7\ : std_logic;
SIGNAL \cp4|Add25~9\ : std_logic;
SIGNAL \cp4|Add25~11\ : std_logic;
SIGNAL \cp4|Add25~12_combout\ : std_logic;
SIGNAL \cp4|Add25~10_combout\ : std_logic;
SIGNAL \cp4|Add27~8_combout\ : std_logic;
SIGNAL \cp4|Add27~6_combout\ : std_logic;
SIGNAL \cp4|Add27~4_combout\ : std_logic;
SIGNAL \cp4|Add25~2_combout\ : std_logic;
SIGNAL \cp4|Add25~0_combout\ : std_logic;
SIGNAL \cp4|Add26~1\ : std_logic;
SIGNAL \cp4|Add26~3\ : std_logic;
SIGNAL \cp4|Add26~5\ : std_logic;
SIGNAL \cp4|Add26~7\ : std_logic;
SIGNAL \cp4|Add26~9\ : std_logic;
SIGNAL \cp4|Add26~11\ : std_logic;
SIGNAL \cp4|Add26~13\ : std_logic;
SIGNAL \cp4|Add26~14_combout\ : std_logic;
SIGNAL \cp4|Add26~12_combout\ : std_logic;
SIGNAL \cp4|Add26~10_combout\ : std_logic;
SIGNAL \cp4|Add29~8_combout\ : std_logic;
SIGNAL \cp4|Add29~6_combout\ : std_logic;
SIGNAL \cp4|Add26~4_combout\ : std_logic;
SIGNAL \cp4|Add29~2_combout\ : std_logic;
SIGNAL \cp4|Add26~0_combout\ : std_logic;
SIGNAL \cp4|Add28~1\ : std_logic;
SIGNAL \cp4|Add28~3\ : std_logic;
SIGNAL \cp4|Add28~5\ : std_logic;
SIGNAL \cp4|Add28~7\ : std_logic;
SIGNAL \cp4|Add28~9\ : std_logic;
SIGNAL \cp4|Add28~11\ : std_logic;
SIGNAL \cp4|Add28~13\ : std_logic;
SIGNAL \cp4|Add28~15\ : std_logic;
SIGNAL \cp4|Add28~17\ : std_logic;
SIGNAL \cp4|Add28~18_combout\ : std_logic;
SIGNAL \cp4|Add28~16_combout\ : std_logic;
SIGNAL \cp4|Add20~14_combout\ : std_logic;
SIGNAL \cp4|Add20~12_combout\ : std_logic;
SIGNAL \cp4|Add20~10_combout\ : std_logic;
SIGNAL \cp4|Add20~8_combout\ : std_logic;
SIGNAL \cp4|Add20~6_combout\ : std_logic;
SIGNAL \cp4|Add28~4_combout\ : std_logic;
SIGNAL \cp4|Add20~2_combout\ : std_logic;
SIGNAL \cp4|Add28~0_combout\ : std_logic;
SIGNAL \cp4|Add24~1\ : std_logic;
SIGNAL \cp4|Add24~3\ : std_logic;
SIGNAL \cp4|Add24~5\ : std_logic;
SIGNAL \cp4|Add24~7\ : std_logic;
SIGNAL \cp4|Add24~9\ : std_logic;
SIGNAL \cp4|Add24~11\ : std_logic;
SIGNAL \cp4|Add24~13\ : std_logic;
SIGNAL \cp4|Add24~15\ : std_logic;
SIGNAL \cp4|Add24~17\ : std_logic;
SIGNAL \cp4|Add24~19\ : std_logic;
SIGNAL \cp4|Add24~20_combout\ : std_logic;
SIGNAL \cp4|Add16~18_combout\ : std_logic;
SIGNAL \cp4|Add16~16_combout\ : std_logic;
SIGNAL \cp4|Add16~14_combout\ : std_logic;
SIGNAL \cp4|Add16~12_combout\ : std_logic;
SIGNAL \cp4|Add16~10_combout\ : std_logic;
SIGNAL \cp4|Add16~8_combout\ : std_logic;
SIGNAL \cp4|Add16~6_combout\ : std_logic;
SIGNAL \cp4|Add24~4_combout\ : std_logic;
SIGNAL \cp4|Add24~2_combout\ : std_logic;
SIGNAL \cp4|Add16~0_combout\ : std_logic;
SIGNAL \cp4|Add30~1_cout\ : std_logic;
SIGNAL \cp4|Add30~3_cout\ : std_logic;
SIGNAL \cp4|Add30~5_cout\ : std_logic;
SIGNAL \cp4|Add30~7_cout\ : std_logic;
SIGNAL \cp4|Add30~9_cout\ : std_logic;
SIGNAL \cp4|dato_out[0]~1\ : std_logic;
SIGNAL \cp4|dato_out[1]~3\ : std_logic;
SIGNAL \cp4|dato_out[2]~5\ : std_logic;
SIGNAL \cp4|dato_out[3]~7\ : std_logic;
SIGNAL \cp4|dato_out[4]~9\ : std_logic;
SIGNAL \cp4|dato_out[5]~11\ : std_logic;
SIGNAL \cp4|dato_out[6]~13\ : std_logic;
SIGNAL \cp4|dato_out[7]~14_combout\ : std_logic;
SIGNAL \cp4|Add30~12_combout\ : std_logic;
SIGNAL \cp3|cp1|Q[15]~1_combout\ : std_logic;
SIGNAL \cp4|Add22~21\ : std_logic;
SIGNAL \cp4|Add22~22_combout\ : std_logic;
SIGNAL \cp4|Add20~21\ : std_logic;
SIGNAL \cp4|Add20~23\ : std_logic;
SIGNAL \cp4|Add20~24_combout\ : std_logic;
SIGNAL \cp4|Add20~22_combout\ : std_logic;
SIGNAL \cp4|Add24~21\ : std_logic;
SIGNAL \cp4|Add24~23\ : std_logic;
SIGNAL \cp4|Add24~25\ : std_logic;
SIGNAL \cp4|Add24~26_combout\ : std_logic;
SIGNAL \cp4|dato_out[7]~15\ : std_logic;
SIGNAL \cp4|dato_out[8]~16_combout\ : std_logic;
SIGNAL \cp4|Add30~11_combout\ : std_logic;
SIGNAL \cp4|Add8~25\ : std_logic;
SIGNAL \cp4|Add8~26_combout\ : std_logic;
SIGNAL \cp4|Add14~25\ : std_logic;
SIGNAL \cp4|Add14~26_combout\ : std_logic;
SIGNAL \cp4|Add16~25\ : std_logic;
SIGNAL \cp4|Add16~27\ : std_logic;
SIGNAL \cp4|Add16~28_combout\ : std_logic;
SIGNAL \cp4|dato_out[8]~17\ : std_logic;
SIGNAL \cp4|dato_out[9]~18_combout\ : std_logic;
SIGNAL \cp4|Add30~10_combout\ : std_logic;
SIGNAL \cp3|cp1|Q~4_combout\ : std_logic;
SIGNAL \cp3|cp1|Q~3_combout\ : std_logic;
SIGNAL \cp3|cp1|Q~2_combout\ : std_logic;
SIGNAL \cp3|cp1|Q~0_combout\ : std_logic;
SIGNAL \cp3|cp5|sdo~0_combout\ : std_logic;
SIGNAL \cp3|cp2|contador\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \cp3|cp1|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \cp3|cp4|Q\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \cp1|clkadc|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \cp2|contador\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \cp1|clkadc|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \cp3|cp2|ALT_INV_clkout~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \cp3|cp3|ALT_INV_estado.e1~q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_sdi <= sdi;
ww_en <= en;
sck_dac <= ww_sck_dac;
cs_dac <= ww_cs_dac;
sck_adc <= ww_sck_adc;
cs_adc <= ww_cs_adc;
eop <= ww_eop;
sdo <= ww_sdo;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\cp1|clkadc|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \clk~input_o\);

\cp1|clkadc|altpll_component|auto_generated|wire_pll1_clk\(0) <= \cp1|clkadc|altpll_component|auto_generated|pll1_CLK_bus\(0);
\cp1|clkadc|altpll_component|auto_generated|wire_pll1_clk\(1) <= \cp1|clkadc|altpll_component|auto_generated|pll1_CLK_bus\(1);
\cp1|clkadc|altpll_component|auto_generated|wire_pll1_clk\(2) <= \cp1|clkadc|altpll_component|auto_generated|pll1_CLK_bus\(2);
\cp1|clkadc|altpll_component|auto_generated|wire_pll1_clk\(3) <= \cp1|clkadc|altpll_component|auto_generated|pll1_CLK_bus\(3);
\cp1|clkadc|altpll_component|auto_generated|wire_pll1_clk\(4) <= \cp1|clkadc|altpll_component|auto_generated|pll1_CLK_bus\(4);

\cp3|cp2|clkout~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \cp3|cp2|clkout~q\);

\cp2|clkout~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \cp2|clkout~q\);

\cp1|clkadc|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \cp1|clkadc|altpll_component|auto_generated|wire_pll1_clk\(0));

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\cp1|clkadc|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\ <= NOT \cp1|clkadc|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\;
\cp3|cp2|ALT_INV_clkout~clkctrl_outclk\ <= NOT \cp3|cp2|clkout~clkctrl_outclk\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\cp3|cp3|ALT_INV_estado.e1~q\ <= NOT \cp3|cp3|estado.e1~q\;

-- Location: LCCOMB_X24_Y19_N10
\cp2|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp2|Add0~4_combout\ = (\cp2|contador\(2) & (\cp2|Add0~3\ $ (GND))) # (!\cp2|contador\(2) & (!\cp2|Add0~3\ & VCC))
-- \cp2|Add0~5\ = CARRY((\cp2|contador\(2) & !\cp2|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp2|contador\(2),
	datad => VCC,
	cin => \cp2|Add0~3\,
	combout => \cp2|Add0~4_combout\,
	cout => \cp2|Add0~5\);

-- Location: LCCOMB_X24_Y19_N22
\cp2|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp2|Add0~16_combout\ = (\cp2|contador\(8) & (\cp2|Add0~15\ $ (GND))) # (!\cp2|contador\(8) & (!\cp2|Add0~15\ & VCC))
-- \cp2|Add0~17\ = CARRY((\cp2|contador\(8) & !\cp2|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp2|contador\(8),
	datad => VCC,
	cin => \cp2|Add0~15\,
	combout => \cp2|Add0~16_combout\,
	cout => \cp2|Add0~17\);

-- Location: LCCOMB_X28_Y20_N20
\cp4|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add0~10_combout\ = (\cp4|fifo[0][5]~q\ & ((\cp4|fifo[1][5]~q\ & (\cp4|Add0~9\ & VCC)) # (!\cp4|fifo[1][5]~q\ & (!\cp4|Add0~9\)))) # (!\cp4|fifo[0][5]~q\ & ((\cp4|fifo[1][5]~q\ & (!\cp4|Add0~9\)) # (!\cp4|fifo[1][5]~q\ & ((\cp4|Add0~9\) # (GND)))))
-- \cp4|Add0~11\ = CARRY((\cp4|fifo[0][5]~q\ & (!\cp4|fifo[1][5]~q\ & !\cp4|Add0~9\)) # (!\cp4|fifo[0][5]~q\ & ((!\cp4|Add0~9\) # (!\cp4|fifo[1][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[0][5]~q\,
	datab => \cp4|fifo[1][5]~q\,
	datad => VCC,
	cin => \cp4|Add0~9\,
	combout => \cp4|Add0~10_combout\,
	cout => \cp4|Add0~11\);

-- Location: LCCOMB_X28_Y20_N28
\cp4|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add0~18_combout\ = (\cp4|fifo[0][9]~q\ & ((\cp4|fifo[1][9]~q\ & (\cp4|Add0~17\ & VCC)) # (!\cp4|fifo[1][9]~q\ & (!\cp4|Add0~17\)))) # (!\cp4|fifo[0][9]~q\ & ((\cp4|fifo[1][9]~q\ & (!\cp4|Add0~17\)) # (!\cp4|fifo[1][9]~q\ & ((\cp4|Add0~17\) # 
-- (GND)))))
-- \cp4|Add0~19\ = CARRY((\cp4|fifo[0][9]~q\ & (!\cp4|fifo[1][9]~q\ & !\cp4|Add0~17\)) # (!\cp4|fifo[0][9]~q\ & ((!\cp4|Add0~17\) # (!\cp4|fifo[1][9]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[0][9]~q\,
	datab => \cp4|fifo[1][9]~q\,
	datad => VCC,
	cin => \cp4|Add0~17\,
	combout => \cp4|Add0~18_combout\,
	cout => \cp4|Add0~19\);

-- Location: LCCOMB_X28_Y20_N30
\cp4|Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add0~20_combout\ = !\cp4|Add0~19\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \cp4|Add0~19\,
	combout => \cp4|Add0~20_combout\);

-- Location: LCCOMB_X29_Y20_N8
\cp4|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add1~0_combout\ = (\cp4|fifo[2][0]~q\ & (\cp4|fifo[3][0]~q\ $ (VCC))) # (!\cp4|fifo[2][0]~q\ & (\cp4|fifo[3][0]~q\ & VCC))
-- \cp4|Add1~1\ = CARRY((\cp4|fifo[2][0]~q\ & \cp4|fifo[3][0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[2][0]~q\,
	datab => \cp4|fifo[3][0]~q\,
	datad => VCC,
	combout => \cp4|Add1~0_combout\,
	cout => \cp4|Add1~1\);

-- Location: LCCOMB_X29_Y20_N10
\cp4|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add1~2_combout\ = (\cp4|fifo[2][1]~q\ & ((\cp4|fifo[3][1]~q\ & (\cp4|Add1~1\ & VCC)) # (!\cp4|fifo[3][1]~q\ & (!\cp4|Add1~1\)))) # (!\cp4|fifo[2][1]~q\ & ((\cp4|fifo[3][1]~q\ & (!\cp4|Add1~1\)) # (!\cp4|fifo[3][1]~q\ & ((\cp4|Add1~1\) # (GND)))))
-- \cp4|Add1~3\ = CARRY((\cp4|fifo[2][1]~q\ & (!\cp4|fifo[3][1]~q\ & !\cp4|Add1~1\)) # (!\cp4|fifo[2][1]~q\ & ((!\cp4|Add1~1\) # (!\cp4|fifo[3][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[2][1]~q\,
	datab => \cp4|fifo[3][1]~q\,
	datad => VCC,
	cin => \cp4|Add1~1\,
	combout => \cp4|Add1~2_combout\,
	cout => \cp4|Add1~3\);

-- Location: LCCOMB_X29_Y20_N12
\cp4|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add1~4_combout\ = ((\cp4|fifo[2][2]~q\ $ (\cp4|fifo[3][2]~q\ $ (!\cp4|Add1~3\)))) # (GND)
-- \cp4|Add1~5\ = CARRY((\cp4|fifo[2][2]~q\ & ((\cp4|fifo[3][2]~q\) # (!\cp4|Add1~3\))) # (!\cp4|fifo[2][2]~q\ & (\cp4|fifo[3][2]~q\ & !\cp4|Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[2][2]~q\,
	datab => \cp4|fifo[3][2]~q\,
	datad => VCC,
	cin => \cp4|Add1~3\,
	combout => \cp4|Add1~4_combout\,
	cout => \cp4|Add1~5\);

-- Location: LCCOMB_X29_Y20_N14
\cp4|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add1~6_combout\ = (\cp4|fifo[3][3]~q\ & ((\cp4|fifo[2][3]~q\ & (\cp4|Add1~5\ & VCC)) # (!\cp4|fifo[2][3]~q\ & (!\cp4|Add1~5\)))) # (!\cp4|fifo[3][3]~q\ & ((\cp4|fifo[2][3]~q\ & (!\cp4|Add1~5\)) # (!\cp4|fifo[2][3]~q\ & ((\cp4|Add1~5\) # (GND)))))
-- \cp4|Add1~7\ = CARRY((\cp4|fifo[3][3]~q\ & (!\cp4|fifo[2][3]~q\ & !\cp4|Add1~5\)) # (!\cp4|fifo[3][3]~q\ & ((!\cp4|Add1~5\) # (!\cp4|fifo[2][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[3][3]~q\,
	datab => \cp4|fifo[2][3]~q\,
	datad => VCC,
	cin => \cp4|Add1~5\,
	combout => \cp4|Add1~6_combout\,
	cout => \cp4|Add1~7\);

-- Location: LCCOMB_X29_Y20_N16
\cp4|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add1~8_combout\ = ((\cp4|fifo[3][4]~q\ $ (\cp4|fifo[2][4]~q\ $ (!\cp4|Add1~7\)))) # (GND)
-- \cp4|Add1~9\ = CARRY((\cp4|fifo[3][4]~q\ & ((\cp4|fifo[2][4]~q\) # (!\cp4|Add1~7\))) # (!\cp4|fifo[3][4]~q\ & (\cp4|fifo[2][4]~q\ & !\cp4|Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[3][4]~q\,
	datab => \cp4|fifo[2][4]~q\,
	datad => VCC,
	cin => \cp4|Add1~7\,
	combout => \cp4|Add1~8_combout\,
	cout => \cp4|Add1~9\);

-- Location: LCCOMB_X29_Y20_N20
\cp4|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add1~12_combout\ = ((\cp4|fifo[2][6]~q\ $ (\cp4|fifo[3][6]~q\ $ (!\cp4|Add1~11\)))) # (GND)
-- \cp4|Add1~13\ = CARRY((\cp4|fifo[2][6]~q\ & ((\cp4|fifo[3][6]~q\) # (!\cp4|Add1~11\))) # (!\cp4|fifo[2][6]~q\ & (\cp4|fifo[3][6]~q\ & !\cp4|Add1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[2][6]~q\,
	datab => \cp4|fifo[3][6]~q\,
	datad => VCC,
	cin => \cp4|Add1~11\,
	combout => \cp4|Add1~12_combout\,
	cout => \cp4|Add1~13\);

-- Location: LCCOMB_X29_Y20_N22
\cp4|Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add1~14_combout\ = (\cp4|fifo[2][7]~q\ & ((\cp4|fifo[3][7]~q\ & (\cp4|Add1~13\ & VCC)) # (!\cp4|fifo[3][7]~q\ & (!\cp4|Add1~13\)))) # (!\cp4|fifo[2][7]~q\ & ((\cp4|fifo[3][7]~q\ & (!\cp4|Add1~13\)) # (!\cp4|fifo[3][7]~q\ & ((\cp4|Add1~13\) # 
-- (GND)))))
-- \cp4|Add1~15\ = CARRY((\cp4|fifo[2][7]~q\ & (!\cp4|fifo[3][7]~q\ & !\cp4|Add1~13\)) # (!\cp4|fifo[2][7]~q\ & ((!\cp4|Add1~13\) # (!\cp4|fifo[3][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[2][7]~q\,
	datab => \cp4|fifo[3][7]~q\,
	datad => VCC,
	cin => \cp4|Add1~13\,
	combout => \cp4|Add1~14_combout\,
	cout => \cp4|Add1~15\);

-- Location: LCCOMB_X29_Y20_N24
\cp4|Add1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add1~16_combout\ = ((\cp4|fifo[3][8]~q\ $ (\cp4|fifo[2][8]~q\ $ (!\cp4|Add1~15\)))) # (GND)
-- \cp4|Add1~17\ = CARRY((\cp4|fifo[3][8]~q\ & ((\cp4|fifo[2][8]~q\) # (!\cp4|Add1~15\))) # (!\cp4|fifo[3][8]~q\ & (\cp4|fifo[2][8]~q\ & !\cp4|Add1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[3][8]~q\,
	datab => \cp4|fifo[2][8]~q\,
	datad => VCC,
	cin => \cp4|Add1~15\,
	combout => \cp4|Add1~16_combout\,
	cout => \cp4|Add1~17\);

-- Location: LCCOMB_X29_Y20_N26
\cp4|Add1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add1~18_combout\ = (\cp4|fifo[3][9]~q\ & ((\cp4|fifo[2][9]~q\ & (\cp4|Add1~17\ & VCC)) # (!\cp4|fifo[2][9]~q\ & (!\cp4|Add1~17\)))) # (!\cp4|fifo[3][9]~q\ & ((\cp4|fifo[2][9]~q\ & (!\cp4|Add1~17\)) # (!\cp4|fifo[2][9]~q\ & ((\cp4|Add1~17\) # 
-- (GND)))))
-- \cp4|Add1~19\ = CARRY((\cp4|fifo[3][9]~q\ & (!\cp4|fifo[2][9]~q\ & !\cp4|Add1~17\)) # (!\cp4|fifo[3][9]~q\ & ((!\cp4|Add1~17\) # (!\cp4|fifo[2][9]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[3][9]~q\,
	datab => \cp4|fifo[2][9]~q\,
	datad => VCC,
	cin => \cp4|Add1~17\,
	combout => \cp4|Add1~18_combout\,
	cout => \cp4|Add1~19\);

-- Location: LCCOMB_X27_Y20_N4
\cp4|Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add2~0_combout\ = (\cp4|Add1~0_combout\ & (\cp4|Add0~0_combout\ $ (VCC))) # (!\cp4|Add1~0_combout\ & (\cp4|Add0~0_combout\ & VCC))
-- \cp4|Add2~1\ = CARRY((\cp4|Add1~0_combout\ & \cp4|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add1~0_combout\,
	datab => \cp4|Add0~0_combout\,
	datad => VCC,
	combout => \cp4|Add2~0_combout\,
	cout => \cp4|Add2~1\);

-- Location: LCCOMB_X27_Y20_N6
\cp4|Add2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add2~2_combout\ = (\cp4|Add1~2_combout\ & ((\cp4|Add0~2_combout\ & (\cp4|Add2~1\ & VCC)) # (!\cp4|Add0~2_combout\ & (!\cp4|Add2~1\)))) # (!\cp4|Add1~2_combout\ & ((\cp4|Add0~2_combout\ & (!\cp4|Add2~1\)) # (!\cp4|Add0~2_combout\ & ((\cp4|Add2~1\) # 
-- (GND)))))
-- \cp4|Add2~3\ = CARRY((\cp4|Add1~2_combout\ & (!\cp4|Add0~2_combout\ & !\cp4|Add2~1\)) # (!\cp4|Add1~2_combout\ & ((!\cp4|Add2~1\) # (!\cp4|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add1~2_combout\,
	datab => \cp4|Add0~2_combout\,
	datad => VCC,
	cin => \cp4|Add2~1\,
	combout => \cp4|Add2~2_combout\,
	cout => \cp4|Add2~3\);

-- Location: LCCOMB_X27_Y20_N20
\cp4|Add2~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add2~16_combout\ = ((\cp4|Add1~16_combout\ $ (\cp4|Add0~16_combout\ $ (!\cp4|Add2~15\)))) # (GND)
-- \cp4|Add2~17\ = CARRY((\cp4|Add1~16_combout\ & ((\cp4|Add0~16_combout\) # (!\cp4|Add2~15\))) # (!\cp4|Add1~16_combout\ & (\cp4|Add0~16_combout\ & !\cp4|Add2~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add1~16_combout\,
	datab => \cp4|Add0~16_combout\,
	datad => VCC,
	cin => \cp4|Add2~15\,
	combout => \cp4|Add2~16_combout\,
	cout => \cp4|Add2~17\);

-- Location: LCCOMB_X27_Y20_N24
\cp4|Add2~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add2~20_combout\ = ((\cp4|Add0~20_combout\ $ (\cp4|Add1~20_combout\ $ (!\cp4|Add2~19\)))) # (GND)
-- \cp4|Add2~21\ = CARRY((\cp4|Add0~20_combout\ & ((\cp4|Add1~20_combout\) # (!\cp4|Add2~19\))) # (!\cp4|Add0~20_combout\ & (\cp4|Add1~20_combout\ & !\cp4|Add2~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add0~20_combout\,
	datab => \cp4|Add1~20_combout\,
	datad => VCC,
	cin => \cp4|Add2~19\,
	combout => \cp4|Add2~20_combout\,
	cout => \cp4|Add2~21\);

-- Location: LCCOMB_X27_Y20_N26
\cp4|Add2~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add2~22_combout\ = \cp4|Add2~21\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \cp4|Add2~21\,
	combout => \cp4|Add2~22_combout\);

-- Location: LCCOMB_X26_Y20_N6
\cp4|Add3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add3~2_combout\ = (\cp4|Add2~2_combout\ & ((\cp4|fifo[4][1]~q\ & (\cp4|Add3~1\ & VCC)) # (!\cp4|fifo[4][1]~q\ & (!\cp4|Add3~1\)))) # (!\cp4|Add2~2_combout\ & ((\cp4|fifo[4][1]~q\ & (!\cp4|Add3~1\)) # (!\cp4|fifo[4][1]~q\ & ((\cp4|Add3~1\) # (GND)))))
-- \cp4|Add3~3\ = CARRY((\cp4|Add2~2_combout\ & (!\cp4|fifo[4][1]~q\ & !\cp4|Add3~1\)) # (!\cp4|Add2~2_combout\ & ((!\cp4|Add3~1\) # (!\cp4|fifo[4][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add2~2_combout\,
	datab => \cp4|fifo[4][1]~q\,
	datad => VCC,
	cin => \cp4|Add3~1\,
	combout => \cp4|Add3~2_combout\,
	cout => \cp4|Add3~3\);

-- Location: LCCOMB_X26_Y20_N10
\cp4|Add3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add3~6_combout\ = (\cp4|fifo[4][3]~q\ & ((\cp4|Add2~6_combout\ & (\cp4|Add3~5\ & VCC)) # (!\cp4|Add2~6_combout\ & (!\cp4|Add3~5\)))) # (!\cp4|fifo[4][3]~q\ & ((\cp4|Add2~6_combout\ & (!\cp4|Add3~5\)) # (!\cp4|Add2~6_combout\ & ((\cp4|Add3~5\) # 
-- (GND)))))
-- \cp4|Add3~7\ = CARRY((\cp4|fifo[4][3]~q\ & (!\cp4|Add2~6_combout\ & !\cp4|Add3~5\)) # (!\cp4|fifo[4][3]~q\ & ((!\cp4|Add3~5\) # (!\cp4|Add2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[4][3]~q\,
	datab => \cp4|Add2~6_combout\,
	datad => VCC,
	cin => \cp4|Add3~5\,
	combout => \cp4|Add3~6_combout\,
	cout => \cp4|Add3~7\);

-- Location: LCCOMB_X26_Y20_N12
\cp4|Add3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add3~8_combout\ = ((\cp4|fifo[4][4]~q\ $ (\cp4|Add2~8_combout\ $ (!\cp4|Add3~7\)))) # (GND)
-- \cp4|Add3~9\ = CARRY((\cp4|fifo[4][4]~q\ & ((\cp4|Add2~8_combout\) # (!\cp4|Add3~7\))) # (!\cp4|fifo[4][4]~q\ & (\cp4|Add2~8_combout\ & !\cp4|Add3~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[4][4]~q\,
	datab => \cp4|Add2~8_combout\,
	datad => VCC,
	cin => \cp4|Add3~7\,
	combout => \cp4|Add3~8_combout\,
	cout => \cp4|Add3~9\);

-- Location: LCCOMB_X26_Y20_N16
\cp4|Add3~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add3~12_combout\ = ((\cp4|fifo[4][6]~q\ $ (\cp4|Add2~12_combout\ $ (!\cp4|Add3~11\)))) # (GND)
-- \cp4|Add3~13\ = CARRY((\cp4|fifo[4][6]~q\ & ((\cp4|Add2~12_combout\) # (!\cp4|Add3~11\))) # (!\cp4|fifo[4][6]~q\ & (\cp4|Add2~12_combout\ & !\cp4|Add3~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[4][6]~q\,
	datab => \cp4|Add2~12_combout\,
	datad => VCC,
	cin => \cp4|Add3~11\,
	combout => \cp4|Add3~12_combout\,
	cout => \cp4|Add3~13\);

-- Location: LCCOMB_X26_Y20_N18
\cp4|Add3~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add3~14_combout\ = (\cp4|fifo[4][7]~q\ & ((\cp4|Add2~14_combout\ & (\cp4|Add3~13\ & VCC)) # (!\cp4|Add2~14_combout\ & (!\cp4|Add3~13\)))) # (!\cp4|fifo[4][7]~q\ & ((\cp4|Add2~14_combout\ & (!\cp4|Add3~13\)) # (!\cp4|Add2~14_combout\ & 
-- ((\cp4|Add3~13\) # (GND)))))
-- \cp4|Add3~15\ = CARRY((\cp4|fifo[4][7]~q\ & (!\cp4|Add2~14_combout\ & !\cp4|Add3~13\)) # (!\cp4|fifo[4][7]~q\ & ((!\cp4|Add3~13\) # (!\cp4|Add2~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[4][7]~q\,
	datab => \cp4|Add2~14_combout\,
	datad => VCC,
	cin => \cp4|Add3~13\,
	combout => \cp4|Add3~14_combout\,
	cout => \cp4|Add3~15\);

-- Location: LCCOMB_X26_Y20_N20
\cp4|Add3~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add3~16_combout\ = ((\cp4|Add2~16_combout\ $ (\cp4|fifo[4][8]~q\ $ (!\cp4|Add3~15\)))) # (GND)
-- \cp4|Add3~17\ = CARRY((\cp4|Add2~16_combout\ & ((\cp4|fifo[4][8]~q\) # (!\cp4|Add3~15\))) # (!\cp4|Add2~16_combout\ & (\cp4|fifo[4][8]~q\ & !\cp4|Add3~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add2~16_combout\,
	datab => \cp4|fifo[4][8]~q\,
	datad => VCC,
	cin => \cp4|Add3~15\,
	combout => \cp4|Add3~16_combout\,
	cout => \cp4|Add3~17\);

-- Location: LCCOMB_X26_Y20_N22
\cp4|Add3~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add3~18_combout\ = (\cp4|fifo[4][9]~q\ & ((\cp4|Add2~18_combout\ & (\cp4|Add3~17\ & VCC)) # (!\cp4|Add2~18_combout\ & (!\cp4|Add3~17\)))) # (!\cp4|fifo[4][9]~q\ & ((\cp4|Add2~18_combout\ & (!\cp4|Add3~17\)) # (!\cp4|Add2~18_combout\ & 
-- ((\cp4|Add3~17\) # (GND)))))
-- \cp4|Add3~19\ = CARRY((\cp4|fifo[4][9]~q\ & (!\cp4|Add2~18_combout\ & !\cp4|Add3~17\)) # (!\cp4|fifo[4][9]~q\ & ((!\cp4|Add3~17\) # (!\cp4|Add2~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[4][9]~q\,
	datab => \cp4|Add2~18_combout\,
	datad => VCC,
	cin => \cp4|Add3~17\,
	combout => \cp4|Add3~18_combout\,
	cout => \cp4|Add3~19\);

-- Location: LCCOMB_X23_Y21_N6
\cp4|Add5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add5~0_combout\ = (\cp4|fifo[7][0]~q\ & (\cp4|fifo[6][0]~q\ $ (VCC))) # (!\cp4|fifo[7][0]~q\ & (\cp4|fifo[6][0]~q\ & VCC))
-- \cp4|Add5~1\ = CARRY((\cp4|fifo[7][0]~q\ & \cp4|fifo[6][0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[7][0]~q\,
	datab => \cp4|fifo[6][0]~q\,
	datad => VCC,
	combout => \cp4|Add5~0_combout\,
	cout => \cp4|Add5~1\);

-- Location: LCCOMB_X23_Y21_N8
\cp4|Add5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add5~2_combout\ = (\cp4|fifo[6][1]~q\ & ((\cp4|fifo[7][1]~q\ & (\cp4|Add5~1\ & VCC)) # (!\cp4|fifo[7][1]~q\ & (!\cp4|Add5~1\)))) # (!\cp4|fifo[6][1]~q\ & ((\cp4|fifo[7][1]~q\ & (!\cp4|Add5~1\)) # (!\cp4|fifo[7][1]~q\ & ((\cp4|Add5~1\) # (GND)))))
-- \cp4|Add5~3\ = CARRY((\cp4|fifo[6][1]~q\ & (!\cp4|fifo[7][1]~q\ & !\cp4|Add5~1\)) # (!\cp4|fifo[6][1]~q\ & ((!\cp4|Add5~1\) # (!\cp4|fifo[7][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[6][1]~q\,
	datab => \cp4|fifo[7][1]~q\,
	datad => VCC,
	cin => \cp4|Add5~1\,
	combout => \cp4|Add5~2_combout\,
	cout => \cp4|Add5~3\);

-- Location: LCCOMB_X23_Y21_N10
\cp4|Add5~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add5~4_combout\ = ((\cp4|fifo[6][2]~q\ $ (\cp4|fifo[7][2]~q\ $ (!\cp4|Add5~3\)))) # (GND)
-- \cp4|Add5~5\ = CARRY((\cp4|fifo[6][2]~q\ & ((\cp4|fifo[7][2]~q\) # (!\cp4|Add5~3\))) # (!\cp4|fifo[6][2]~q\ & (\cp4|fifo[7][2]~q\ & !\cp4|Add5~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[6][2]~q\,
	datab => \cp4|fifo[7][2]~q\,
	datad => VCC,
	cin => \cp4|Add5~3\,
	combout => \cp4|Add5~4_combout\,
	cout => \cp4|Add5~5\);

-- Location: LCCOMB_X23_Y21_N12
\cp4|Add5~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add5~6_combout\ = (\cp4|fifo[6][3]~q\ & ((\cp4|fifo[7][3]~q\ & (\cp4|Add5~5\ & VCC)) # (!\cp4|fifo[7][3]~q\ & (!\cp4|Add5~5\)))) # (!\cp4|fifo[6][3]~q\ & ((\cp4|fifo[7][3]~q\ & (!\cp4|Add5~5\)) # (!\cp4|fifo[7][3]~q\ & ((\cp4|Add5~5\) # (GND)))))
-- \cp4|Add5~7\ = CARRY((\cp4|fifo[6][3]~q\ & (!\cp4|fifo[7][3]~q\ & !\cp4|Add5~5\)) # (!\cp4|fifo[6][3]~q\ & ((!\cp4|Add5~5\) # (!\cp4|fifo[7][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[6][3]~q\,
	datab => \cp4|fifo[7][3]~q\,
	datad => VCC,
	cin => \cp4|Add5~5\,
	combout => \cp4|Add5~6_combout\,
	cout => \cp4|Add5~7\);

-- Location: LCCOMB_X23_Y21_N14
\cp4|Add5~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add5~8_combout\ = ((\cp4|fifo[6][4]~q\ $ (\cp4|fifo[7][4]~q\ $ (!\cp4|Add5~7\)))) # (GND)
-- \cp4|Add5~9\ = CARRY((\cp4|fifo[6][4]~q\ & ((\cp4|fifo[7][4]~q\) # (!\cp4|Add5~7\))) # (!\cp4|fifo[6][4]~q\ & (\cp4|fifo[7][4]~q\ & !\cp4|Add5~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[6][4]~q\,
	datab => \cp4|fifo[7][4]~q\,
	datad => VCC,
	cin => \cp4|Add5~7\,
	combout => \cp4|Add5~8_combout\,
	cout => \cp4|Add5~9\);

-- Location: LCCOMB_X23_Y21_N16
\cp4|Add5~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add5~10_combout\ = (\cp4|fifo[6][5]~q\ & ((\cp4|fifo[7][5]~q\ & (\cp4|Add5~9\ & VCC)) # (!\cp4|fifo[7][5]~q\ & (!\cp4|Add5~9\)))) # (!\cp4|fifo[6][5]~q\ & ((\cp4|fifo[7][5]~q\ & (!\cp4|Add5~9\)) # (!\cp4|fifo[7][5]~q\ & ((\cp4|Add5~9\) # (GND)))))
-- \cp4|Add5~11\ = CARRY((\cp4|fifo[6][5]~q\ & (!\cp4|fifo[7][5]~q\ & !\cp4|Add5~9\)) # (!\cp4|fifo[6][5]~q\ & ((!\cp4|Add5~9\) # (!\cp4|fifo[7][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[6][5]~q\,
	datab => \cp4|fifo[7][5]~q\,
	datad => VCC,
	cin => \cp4|Add5~9\,
	combout => \cp4|Add5~10_combout\,
	cout => \cp4|Add5~11\);

-- Location: LCCOMB_X23_Y21_N22
\cp4|Add5~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add5~16_combout\ = ((\cp4|fifo[7][8]~q\ $ (\cp4|fifo[6][8]~q\ $ (!\cp4|Add5~15\)))) # (GND)
-- \cp4|Add5~17\ = CARRY((\cp4|fifo[7][8]~q\ & ((\cp4|fifo[6][8]~q\) # (!\cp4|Add5~15\))) # (!\cp4|fifo[7][8]~q\ & (\cp4|fifo[6][8]~q\ & !\cp4|Add5~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[7][8]~q\,
	datab => \cp4|fifo[6][8]~q\,
	datad => VCC,
	cin => \cp4|Add5~15\,
	combout => \cp4|Add5~16_combout\,
	cout => \cp4|Add5~17\);

-- Location: LCCOMB_X23_Y21_N24
\cp4|Add5~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add5~18_combout\ = (\cp4|fifo[6][9]~q\ & ((\cp4|fifo[7][9]~q\ & (\cp4|Add5~17\ & VCC)) # (!\cp4|fifo[7][9]~q\ & (!\cp4|Add5~17\)))) # (!\cp4|fifo[6][9]~q\ & ((\cp4|fifo[7][9]~q\ & (!\cp4|Add5~17\)) # (!\cp4|fifo[7][9]~q\ & ((\cp4|Add5~17\) # 
-- (GND)))))
-- \cp4|Add5~19\ = CARRY((\cp4|fifo[6][9]~q\ & (!\cp4|fifo[7][9]~q\ & !\cp4|Add5~17\)) # (!\cp4|fifo[6][9]~q\ & ((!\cp4|Add5~17\) # (!\cp4|fifo[7][9]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[6][9]~q\,
	datab => \cp4|fifo[7][9]~q\,
	datad => VCC,
	cin => \cp4|Add5~17\,
	combout => \cp4|Add5~18_combout\,
	cout => \cp4|Add5~19\);

-- Location: LCCOMB_X23_Y21_N26
\cp4|Add5~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add5~20_combout\ = !\cp4|Add5~19\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \cp4|Add5~19\,
	combout => \cp4|Add5~20_combout\);

-- Location: LCCOMB_X24_Y21_N0
\cp4|Add4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add4~0_combout\ = (\cp4|Add5~0_combout\ & (\cp4|fifo[5][0]~q\ $ (VCC))) # (!\cp4|Add5~0_combout\ & (\cp4|fifo[5][0]~q\ & VCC))
-- \cp4|Add4~1\ = CARRY((\cp4|Add5~0_combout\ & \cp4|fifo[5][0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add5~0_combout\,
	datab => \cp4|fifo[5][0]~q\,
	datad => VCC,
	combout => \cp4|Add4~0_combout\,
	cout => \cp4|Add4~1\);

-- Location: LCCOMB_X24_Y21_N4
\cp4|Add4~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add4~4_combout\ = ((\cp4|Add5~4_combout\ $ (\cp4|fifo[5][2]~q\ $ (!\cp4|Add4~3\)))) # (GND)
-- \cp4|Add4~5\ = CARRY((\cp4|Add5~4_combout\ & ((\cp4|fifo[5][2]~q\) # (!\cp4|Add4~3\))) # (!\cp4|Add5~4_combout\ & (\cp4|fifo[5][2]~q\ & !\cp4|Add4~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add5~4_combout\,
	datab => \cp4|fifo[5][2]~q\,
	datad => VCC,
	cin => \cp4|Add4~3\,
	combout => \cp4|Add4~4_combout\,
	cout => \cp4|Add4~5\);

-- Location: LCCOMB_X24_Y21_N10
\cp4|Add4~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add4~10_combout\ = (\cp4|Add5~10_combout\ & ((\cp4|fifo[5][5]~q\ & (\cp4|Add4~9\ & VCC)) # (!\cp4|fifo[5][5]~q\ & (!\cp4|Add4~9\)))) # (!\cp4|Add5~10_combout\ & ((\cp4|fifo[5][5]~q\ & (!\cp4|Add4~9\)) # (!\cp4|fifo[5][5]~q\ & ((\cp4|Add4~9\) # 
-- (GND)))))
-- \cp4|Add4~11\ = CARRY((\cp4|Add5~10_combout\ & (!\cp4|fifo[5][5]~q\ & !\cp4|Add4~9\)) # (!\cp4|Add5~10_combout\ & ((!\cp4|Add4~9\) # (!\cp4|fifo[5][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add5~10_combout\,
	datab => \cp4|fifo[5][5]~q\,
	datad => VCC,
	cin => \cp4|Add4~9\,
	combout => \cp4|Add4~10_combout\,
	cout => \cp4|Add4~11\);

-- Location: LCCOMB_X24_Y21_N18
\cp4|Add4~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add4~18_combout\ = (\cp4|fifo[5][9]~q\ & ((\cp4|Add5~18_combout\ & (\cp4|Add4~17\ & VCC)) # (!\cp4|Add5~18_combout\ & (!\cp4|Add4~17\)))) # (!\cp4|fifo[5][9]~q\ & ((\cp4|Add5~18_combout\ & (!\cp4|Add4~17\)) # (!\cp4|Add5~18_combout\ & 
-- ((\cp4|Add4~17\) # (GND)))))
-- \cp4|Add4~19\ = CARRY((\cp4|fifo[5][9]~q\ & (!\cp4|Add5~18_combout\ & !\cp4|Add4~17\)) # (!\cp4|fifo[5][9]~q\ & ((!\cp4|Add4~17\) # (!\cp4|Add5~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[5][9]~q\,
	datab => \cp4|Add5~18_combout\,
	datad => VCC,
	cin => \cp4|Add4~17\,
	combout => \cp4|Add4~18_combout\,
	cout => \cp4|Add4~19\);

-- Location: LCCOMB_X24_Y21_N20
\cp4|Add4~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add4~20_combout\ = (\cp4|Add5~20_combout\ & (\cp4|Add4~19\ $ (GND))) # (!\cp4|Add5~20_combout\ & (!\cp4|Add4~19\ & VCC))
-- \cp4|Add4~21\ = CARRY((\cp4|Add5~20_combout\ & !\cp4|Add4~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add5~20_combout\,
	datad => VCC,
	cin => \cp4|Add4~19\,
	combout => \cp4|Add4~20_combout\,
	cout => \cp4|Add4~21\);

-- Location: LCCOMB_X24_Y21_N22
\cp4|Add4~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add4~22_combout\ = \cp4|Add4~21\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \cp4|Add4~21\,
	combout => \cp4|Add4~22_combout\);

-- Location: LCCOMB_X24_Y20_N6
\cp4|Add6~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add6~4_combout\ = ((\cp4|Add4~4_combout\ $ (\cp4|Add3~4_combout\ $ (!\cp4|Add6~3\)))) # (GND)
-- \cp4|Add6~5\ = CARRY((\cp4|Add4~4_combout\ & ((\cp4|Add3~4_combout\) # (!\cp4|Add6~3\))) # (!\cp4|Add4~4_combout\ & (\cp4|Add3~4_combout\ & !\cp4|Add6~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add4~4_combout\,
	datab => \cp4|Add3~4_combout\,
	datad => VCC,
	cin => \cp4|Add6~3\,
	combout => \cp4|Add6~4_combout\,
	cout => \cp4|Add6~5\);

-- Location: LCCOMB_X24_Y20_N20
\cp4|Add6~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add6~18_combout\ = (\cp4|Add3~18_combout\ & ((\cp4|Add4~18_combout\ & (\cp4|Add6~17\ & VCC)) # (!\cp4|Add4~18_combout\ & (!\cp4|Add6~17\)))) # (!\cp4|Add3~18_combout\ & ((\cp4|Add4~18_combout\ & (!\cp4|Add6~17\)) # (!\cp4|Add4~18_combout\ & 
-- ((\cp4|Add6~17\) # (GND)))))
-- \cp4|Add6~19\ = CARRY((\cp4|Add3~18_combout\ & (!\cp4|Add4~18_combout\ & !\cp4|Add6~17\)) # (!\cp4|Add3~18_combout\ & ((!\cp4|Add6~17\) # (!\cp4|Add4~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add3~18_combout\,
	datab => \cp4|Add4~18_combout\,
	datad => VCC,
	cin => \cp4|Add6~17\,
	combout => \cp4|Add6~18_combout\,
	cout => \cp4|Add6~19\);

-- Location: LCCOMB_X22_Y21_N4
\cp4|Add7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add7~0_combout\ = (\cp4|fifo[8][0]~q\ & (\cp4|fifo[9][0]~q\ $ (VCC))) # (!\cp4|fifo[8][0]~q\ & (\cp4|fifo[9][0]~q\ & VCC))
-- \cp4|Add7~1\ = CARRY((\cp4|fifo[8][0]~q\ & \cp4|fifo[9][0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[8][0]~q\,
	datab => \cp4|fifo[9][0]~q\,
	datad => VCC,
	combout => \cp4|Add7~0_combout\,
	cout => \cp4|Add7~1\);

-- Location: LCCOMB_X22_Y21_N6
\cp4|Add7~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add7~2_combout\ = (\cp4|fifo[9][1]~q\ & ((\cp4|fifo[8][1]~q\ & (\cp4|Add7~1\ & VCC)) # (!\cp4|fifo[8][1]~q\ & (!\cp4|Add7~1\)))) # (!\cp4|fifo[9][1]~q\ & ((\cp4|fifo[8][1]~q\ & (!\cp4|Add7~1\)) # (!\cp4|fifo[8][1]~q\ & ((\cp4|Add7~1\) # (GND)))))
-- \cp4|Add7~3\ = CARRY((\cp4|fifo[9][1]~q\ & (!\cp4|fifo[8][1]~q\ & !\cp4|Add7~1\)) # (!\cp4|fifo[9][1]~q\ & ((!\cp4|Add7~1\) # (!\cp4|fifo[8][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[9][1]~q\,
	datab => \cp4|fifo[8][1]~q\,
	datad => VCC,
	cin => \cp4|Add7~1\,
	combout => \cp4|Add7~2_combout\,
	cout => \cp4|Add7~3\);

-- Location: LCCOMB_X22_Y21_N10
\cp4|Add7~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add7~6_combout\ = (\cp4|fifo[8][3]~q\ & ((\cp4|fifo[9][3]~q\ & (\cp4|Add7~5\ & VCC)) # (!\cp4|fifo[9][3]~q\ & (!\cp4|Add7~5\)))) # (!\cp4|fifo[8][3]~q\ & ((\cp4|fifo[9][3]~q\ & (!\cp4|Add7~5\)) # (!\cp4|fifo[9][3]~q\ & ((\cp4|Add7~5\) # (GND)))))
-- \cp4|Add7~7\ = CARRY((\cp4|fifo[8][3]~q\ & (!\cp4|fifo[9][3]~q\ & !\cp4|Add7~5\)) # (!\cp4|fifo[8][3]~q\ & ((!\cp4|Add7~5\) # (!\cp4|fifo[9][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[8][3]~q\,
	datab => \cp4|fifo[9][3]~q\,
	datad => VCC,
	cin => \cp4|Add7~5\,
	combout => \cp4|Add7~6_combout\,
	cout => \cp4|Add7~7\);

-- Location: LCCOMB_X22_Y21_N12
\cp4|Add7~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add7~8_combout\ = ((\cp4|fifo[8][4]~q\ $ (\cp4|fifo[9][4]~q\ $ (!\cp4|Add7~7\)))) # (GND)
-- \cp4|Add7~9\ = CARRY((\cp4|fifo[8][4]~q\ & ((\cp4|fifo[9][4]~q\) # (!\cp4|Add7~7\))) # (!\cp4|fifo[8][4]~q\ & (\cp4|fifo[9][4]~q\ & !\cp4|Add7~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[8][4]~q\,
	datab => \cp4|fifo[9][4]~q\,
	datad => VCC,
	cin => \cp4|Add7~7\,
	combout => \cp4|Add7~8_combout\,
	cout => \cp4|Add7~9\);

-- Location: LCCOMB_X22_Y21_N14
\cp4|Add7~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add7~10_combout\ = (\cp4|fifo[9][5]~q\ & ((\cp4|fifo[8][5]~q\ & (\cp4|Add7~9\ & VCC)) # (!\cp4|fifo[8][5]~q\ & (!\cp4|Add7~9\)))) # (!\cp4|fifo[9][5]~q\ & ((\cp4|fifo[8][5]~q\ & (!\cp4|Add7~9\)) # (!\cp4|fifo[8][5]~q\ & ((\cp4|Add7~9\) # (GND)))))
-- \cp4|Add7~11\ = CARRY((\cp4|fifo[9][5]~q\ & (!\cp4|fifo[8][5]~q\ & !\cp4|Add7~9\)) # (!\cp4|fifo[9][5]~q\ & ((!\cp4|Add7~9\) # (!\cp4|fifo[8][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[9][5]~q\,
	datab => \cp4|fifo[8][5]~q\,
	datad => VCC,
	cin => \cp4|Add7~9\,
	combout => \cp4|Add7~10_combout\,
	cout => \cp4|Add7~11\);

-- Location: LCCOMB_X22_Y21_N16
\cp4|Add7~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add7~12_combout\ = ((\cp4|fifo[8][6]~q\ $ (\cp4|fifo[9][6]~q\ $ (!\cp4|Add7~11\)))) # (GND)
-- \cp4|Add7~13\ = CARRY((\cp4|fifo[8][6]~q\ & ((\cp4|fifo[9][6]~q\) # (!\cp4|Add7~11\))) # (!\cp4|fifo[8][6]~q\ & (\cp4|fifo[9][6]~q\ & !\cp4|Add7~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[8][6]~q\,
	datab => \cp4|fifo[9][6]~q\,
	datad => VCC,
	cin => \cp4|Add7~11\,
	combout => \cp4|Add7~12_combout\,
	cout => \cp4|Add7~13\);

-- Location: LCCOMB_X22_Y21_N18
\cp4|Add7~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add7~14_combout\ = (\cp4|fifo[8][7]~q\ & ((\cp4|fifo[9][7]~q\ & (\cp4|Add7~13\ & VCC)) # (!\cp4|fifo[9][7]~q\ & (!\cp4|Add7~13\)))) # (!\cp4|fifo[8][7]~q\ & ((\cp4|fifo[9][7]~q\ & (!\cp4|Add7~13\)) # (!\cp4|fifo[9][7]~q\ & ((\cp4|Add7~13\) # 
-- (GND)))))
-- \cp4|Add7~15\ = CARRY((\cp4|fifo[8][7]~q\ & (!\cp4|fifo[9][7]~q\ & !\cp4|Add7~13\)) # (!\cp4|fifo[8][7]~q\ & ((!\cp4|Add7~13\) # (!\cp4|fifo[9][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[8][7]~q\,
	datab => \cp4|fifo[9][7]~q\,
	datad => VCC,
	cin => \cp4|Add7~13\,
	combout => \cp4|Add7~14_combout\,
	cout => \cp4|Add7~15\);

-- Location: LCCOMB_X22_Y21_N20
\cp4|Add7~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add7~16_combout\ = ((\cp4|fifo[9][8]~q\ $ (\cp4|fifo[8][8]~q\ $ (!\cp4|Add7~15\)))) # (GND)
-- \cp4|Add7~17\ = CARRY((\cp4|fifo[9][8]~q\ & ((\cp4|fifo[8][8]~q\) # (!\cp4|Add7~15\))) # (!\cp4|fifo[9][8]~q\ & (\cp4|fifo[8][8]~q\ & !\cp4|Add7~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[9][8]~q\,
	datab => \cp4|fifo[8][8]~q\,
	datad => VCC,
	cin => \cp4|Add7~15\,
	combout => \cp4|Add7~16_combout\,
	cout => \cp4|Add7~17\);

-- Location: LCCOMB_X22_Y21_N22
\cp4|Add7~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add7~18_combout\ = (\cp4|fifo[8][9]~q\ & ((\cp4|fifo[9][9]~q\ & (\cp4|Add7~17\ & VCC)) # (!\cp4|fifo[9][9]~q\ & (!\cp4|Add7~17\)))) # (!\cp4|fifo[8][9]~q\ & ((\cp4|fifo[9][9]~q\ & (!\cp4|Add7~17\)) # (!\cp4|fifo[9][9]~q\ & ((\cp4|Add7~17\) # 
-- (GND)))))
-- \cp4|Add7~19\ = CARRY((\cp4|fifo[8][9]~q\ & (!\cp4|fifo[9][9]~q\ & !\cp4|Add7~17\)) # (!\cp4|fifo[8][9]~q\ & ((!\cp4|Add7~17\) # (!\cp4|fifo[9][9]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[8][9]~q\,
	datab => \cp4|fifo[9][9]~q\,
	datad => VCC,
	cin => \cp4|Add7~17\,
	combout => \cp4|Add7~18_combout\,
	cout => \cp4|Add7~19\);

-- Location: LCCOMB_X22_Y21_N24
\cp4|Add7~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add7~20_combout\ = !\cp4|Add7~19\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \cp4|Add7~19\,
	combout => \cp4|Add7~20_combout\);

-- Location: LCCOMB_X23_Y20_N6
\cp4|Add8~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add8~2_combout\ = (\cp4|Add7~2_combout\ & ((\cp4|Add6~2_combout\ & (\cp4|Add8~1\ & VCC)) # (!\cp4|Add6~2_combout\ & (!\cp4|Add8~1\)))) # (!\cp4|Add7~2_combout\ & ((\cp4|Add6~2_combout\ & (!\cp4|Add8~1\)) # (!\cp4|Add6~2_combout\ & ((\cp4|Add8~1\) # 
-- (GND)))))
-- \cp4|Add8~3\ = CARRY((\cp4|Add7~2_combout\ & (!\cp4|Add6~2_combout\ & !\cp4|Add8~1\)) # (!\cp4|Add7~2_combout\ & ((!\cp4|Add8~1\) # (!\cp4|Add6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add7~2_combout\,
	datab => \cp4|Add6~2_combout\,
	datad => VCC,
	cin => \cp4|Add8~1\,
	combout => \cp4|Add8~2_combout\,
	cout => \cp4|Add8~3\);

-- Location: LCCOMB_X23_Y20_N20
\cp4|Add8~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add8~16_combout\ = ((\cp4|Add7~16_combout\ $ (\cp4|Add6~16_combout\ $ (!\cp4|Add8~15\)))) # (GND)
-- \cp4|Add8~17\ = CARRY((\cp4|Add7~16_combout\ & ((\cp4|Add6~16_combout\) # (!\cp4|Add8~15\))) # (!\cp4|Add7~16_combout\ & (\cp4|Add6~16_combout\ & !\cp4|Add8~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add7~16_combout\,
	datab => \cp4|Add6~16_combout\,
	datad => VCC,
	cin => \cp4|Add8~15\,
	combout => \cp4|Add8~16_combout\,
	cout => \cp4|Add8~17\);

-- Location: LCCOMB_X20_Y21_N8
\cp4|Add11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add11~0_combout\ = (\cp4|fifo[13][0]~q\ & (\cp4|fifo[12][0]~q\ $ (VCC))) # (!\cp4|fifo[13][0]~q\ & (\cp4|fifo[12][0]~q\ & VCC))
-- \cp4|Add11~1\ = CARRY((\cp4|fifo[13][0]~q\ & \cp4|fifo[12][0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[13][0]~q\,
	datab => \cp4|fifo[12][0]~q\,
	datad => VCC,
	combout => \cp4|Add11~0_combout\,
	cout => \cp4|Add11~1\);

-- Location: LCCOMB_X20_Y21_N12
\cp4|Add11~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add11~4_combout\ = ((\cp4|fifo[12][2]~q\ $ (\cp4|fifo[13][2]~q\ $ (!\cp4|Add11~3\)))) # (GND)
-- \cp4|Add11~5\ = CARRY((\cp4|fifo[12][2]~q\ & ((\cp4|fifo[13][2]~q\) # (!\cp4|Add11~3\))) # (!\cp4|fifo[12][2]~q\ & (\cp4|fifo[13][2]~q\ & !\cp4|Add11~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[12][2]~q\,
	datab => \cp4|fifo[13][2]~q\,
	datad => VCC,
	cin => \cp4|Add11~3\,
	combout => \cp4|Add11~4_combout\,
	cout => \cp4|Add11~5\);

-- Location: LCCOMB_X20_Y21_N16
\cp4|Add11~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add11~8_combout\ = ((\cp4|fifo[12][4]~q\ $ (\cp4|fifo[13][4]~q\ $ (!\cp4|Add11~7\)))) # (GND)
-- \cp4|Add11~9\ = CARRY((\cp4|fifo[12][4]~q\ & ((\cp4|fifo[13][4]~q\) # (!\cp4|Add11~7\))) # (!\cp4|fifo[12][4]~q\ & (\cp4|fifo[13][4]~q\ & !\cp4|Add11~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[12][4]~q\,
	datab => \cp4|fifo[13][4]~q\,
	datad => VCC,
	cin => \cp4|Add11~7\,
	combout => \cp4|Add11~8_combout\,
	cout => \cp4|Add11~9\);

-- Location: LCCOMB_X20_Y21_N20
\cp4|Add11~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add11~12_combout\ = ((\cp4|fifo[13][6]~q\ $ (\cp4|fifo[12][6]~q\ $ (!\cp4|Add11~11\)))) # (GND)
-- \cp4|Add11~13\ = CARRY((\cp4|fifo[13][6]~q\ & ((\cp4|fifo[12][6]~q\) # (!\cp4|Add11~11\))) # (!\cp4|fifo[13][6]~q\ & (\cp4|fifo[12][6]~q\ & !\cp4|Add11~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[13][6]~q\,
	datab => \cp4|fifo[12][6]~q\,
	datad => VCC,
	cin => \cp4|Add11~11\,
	combout => \cp4|Add11~12_combout\,
	cout => \cp4|Add11~13\);

-- Location: LCCOMB_X20_Y21_N22
\cp4|Add11~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add11~14_combout\ = (\cp4|fifo[12][7]~q\ & ((\cp4|fifo[13][7]~q\ & (\cp4|Add11~13\ & VCC)) # (!\cp4|fifo[13][7]~q\ & (!\cp4|Add11~13\)))) # (!\cp4|fifo[12][7]~q\ & ((\cp4|fifo[13][7]~q\ & (!\cp4|Add11~13\)) # (!\cp4|fifo[13][7]~q\ & ((\cp4|Add11~13\) 
-- # (GND)))))
-- \cp4|Add11~15\ = CARRY((\cp4|fifo[12][7]~q\ & (!\cp4|fifo[13][7]~q\ & !\cp4|Add11~13\)) # (!\cp4|fifo[12][7]~q\ & ((!\cp4|Add11~13\) # (!\cp4|fifo[13][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[12][7]~q\,
	datab => \cp4|fifo[13][7]~q\,
	datad => VCC,
	cin => \cp4|Add11~13\,
	combout => \cp4|Add11~14_combout\,
	cout => \cp4|Add11~15\);

-- Location: LCCOMB_X20_Y21_N24
\cp4|Add11~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add11~16_combout\ = ((\cp4|fifo[13][8]~q\ $ (\cp4|fifo[12][8]~q\ $ (!\cp4|Add11~15\)))) # (GND)
-- \cp4|Add11~17\ = CARRY((\cp4|fifo[13][8]~q\ & ((\cp4|fifo[12][8]~q\) # (!\cp4|Add11~15\))) # (!\cp4|fifo[13][8]~q\ & (\cp4|fifo[12][8]~q\ & !\cp4|Add11~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[13][8]~q\,
	datab => \cp4|fifo[12][8]~q\,
	datad => VCC,
	cin => \cp4|Add11~15\,
	combout => \cp4|Add11~16_combout\,
	cout => \cp4|Add11~17\);

-- Location: LCCOMB_X20_Y21_N26
\cp4|Add11~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add11~18_combout\ = (\cp4|fifo[13][9]~q\ & ((\cp4|fifo[12][9]~q\ & (\cp4|Add11~17\ & VCC)) # (!\cp4|fifo[12][9]~q\ & (!\cp4|Add11~17\)))) # (!\cp4|fifo[13][9]~q\ & ((\cp4|fifo[12][9]~q\ & (!\cp4|Add11~17\)) # (!\cp4|fifo[12][9]~q\ & ((\cp4|Add11~17\) 
-- # (GND)))))
-- \cp4|Add11~19\ = CARRY((\cp4|fifo[13][9]~q\ & (!\cp4|fifo[12][9]~q\ & !\cp4|Add11~17\)) # (!\cp4|fifo[13][9]~q\ & ((!\cp4|Add11~17\) # (!\cp4|fifo[12][9]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[13][9]~q\,
	datab => \cp4|fifo[12][9]~q\,
	datad => VCC,
	cin => \cp4|Add11~17\,
	combout => \cp4|Add11~18_combout\,
	cout => \cp4|Add11~19\);

-- Location: LCCOMB_X20_Y21_N28
\cp4|Add11~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add11~20_combout\ = !\cp4|Add11~19\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \cp4|Add11~19\,
	combout => \cp4|Add11~20_combout\);

-- Location: LCCOMB_X21_Y21_N6
\cp4|Add9~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add9~2_combout\ = (\cp4|fifo[11][1]~q\ & ((\cp4|fifo[10][1]~q\ & (\cp4|Add9~1\ & VCC)) # (!\cp4|fifo[10][1]~q\ & (!\cp4|Add9~1\)))) # (!\cp4|fifo[11][1]~q\ & ((\cp4|fifo[10][1]~q\ & (!\cp4|Add9~1\)) # (!\cp4|fifo[10][1]~q\ & ((\cp4|Add9~1\) # 
-- (GND)))))
-- \cp4|Add9~3\ = CARRY((\cp4|fifo[11][1]~q\ & (!\cp4|fifo[10][1]~q\ & !\cp4|Add9~1\)) # (!\cp4|fifo[11][1]~q\ & ((!\cp4|Add9~1\) # (!\cp4|fifo[10][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[11][1]~q\,
	datab => \cp4|fifo[10][1]~q\,
	datad => VCC,
	cin => \cp4|Add9~1\,
	combout => \cp4|Add9~2_combout\,
	cout => \cp4|Add9~3\);

-- Location: LCCOMB_X21_Y21_N10
\cp4|Add9~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add9~6_combout\ = (\cp4|fifo[11][3]~q\ & ((\cp4|fifo[10][3]~q\ & (\cp4|Add9~5\ & VCC)) # (!\cp4|fifo[10][3]~q\ & (!\cp4|Add9~5\)))) # (!\cp4|fifo[11][3]~q\ & ((\cp4|fifo[10][3]~q\ & (!\cp4|Add9~5\)) # (!\cp4|fifo[10][3]~q\ & ((\cp4|Add9~5\) # 
-- (GND)))))
-- \cp4|Add9~7\ = CARRY((\cp4|fifo[11][3]~q\ & (!\cp4|fifo[10][3]~q\ & !\cp4|Add9~5\)) # (!\cp4|fifo[11][3]~q\ & ((!\cp4|Add9~5\) # (!\cp4|fifo[10][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[11][3]~q\,
	datab => \cp4|fifo[10][3]~q\,
	datad => VCC,
	cin => \cp4|Add9~5\,
	combout => \cp4|Add9~6_combout\,
	cout => \cp4|Add9~7\);

-- Location: LCCOMB_X21_Y21_N14
\cp4|Add9~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add9~10_combout\ = (\cp4|fifo[11][5]~q\ & ((\cp4|fifo[10][5]~q\ & (\cp4|Add9~9\ & VCC)) # (!\cp4|fifo[10][5]~q\ & (!\cp4|Add9~9\)))) # (!\cp4|fifo[11][5]~q\ & ((\cp4|fifo[10][5]~q\ & (!\cp4|Add9~9\)) # (!\cp4|fifo[10][5]~q\ & ((\cp4|Add9~9\) # 
-- (GND)))))
-- \cp4|Add9~11\ = CARRY((\cp4|fifo[11][5]~q\ & (!\cp4|fifo[10][5]~q\ & !\cp4|Add9~9\)) # (!\cp4|fifo[11][5]~q\ & ((!\cp4|Add9~9\) # (!\cp4|fifo[10][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[11][5]~q\,
	datab => \cp4|fifo[10][5]~q\,
	datad => VCC,
	cin => \cp4|Add9~9\,
	combout => \cp4|Add9~10_combout\,
	cout => \cp4|Add9~11\);

-- Location: LCCOMB_X21_Y21_N16
\cp4|Add9~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add9~12_combout\ = ((\cp4|fifo[11][6]~q\ $ (\cp4|fifo[10][6]~q\ $ (!\cp4|Add9~11\)))) # (GND)
-- \cp4|Add9~13\ = CARRY((\cp4|fifo[11][6]~q\ & ((\cp4|fifo[10][6]~q\) # (!\cp4|Add9~11\))) # (!\cp4|fifo[11][6]~q\ & (\cp4|fifo[10][6]~q\ & !\cp4|Add9~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[11][6]~q\,
	datab => \cp4|fifo[10][6]~q\,
	datad => VCC,
	cin => \cp4|Add9~11\,
	combout => \cp4|Add9~12_combout\,
	cout => \cp4|Add9~13\);

-- Location: LCCOMB_X21_Y21_N20
\cp4|Add9~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add9~16_combout\ = ((\cp4|fifo[11][8]~q\ $ (\cp4|fifo[10][8]~q\ $ (!\cp4|Add9~15\)))) # (GND)
-- \cp4|Add9~17\ = CARRY((\cp4|fifo[11][8]~q\ & ((\cp4|fifo[10][8]~q\) # (!\cp4|Add9~15\))) # (!\cp4|fifo[11][8]~q\ & (\cp4|fifo[10][8]~q\ & !\cp4|Add9~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[11][8]~q\,
	datab => \cp4|fifo[10][8]~q\,
	datad => VCC,
	cin => \cp4|Add9~15\,
	combout => \cp4|Add9~16_combout\,
	cout => \cp4|Add9~17\);

-- Location: LCCOMB_X21_Y21_N22
\cp4|Add9~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add9~18_combout\ = (\cp4|fifo[11][9]~q\ & ((\cp4|fifo[10][9]~q\ & (\cp4|Add9~17\ & VCC)) # (!\cp4|fifo[10][9]~q\ & (!\cp4|Add9~17\)))) # (!\cp4|fifo[11][9]~q\ & ((\cp4|fifo[10][9]~q\ & (!\cp4|Add9~17\)) # (!\cp4|fifo[10][9]~q\ & ((\cp4|Add9~17\) # 
-- (GND)))))
-- \cp4|Add9~19\ = CARRY((\cp4|fifo[11][9]~q\ & (!\cp4|fifo[10][9]~q\ & !\cp4|Add9~17\)) # (!\cp4|fifo[11][9]~q\ & ((!\cp4|Add9~17\) # (!\cp4|fifo[10][9]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[11][9]~q\,
	datab => \cp4|fifo[10][9]~q\,
	datad => VCC,
	cin => \cp4|Add9~17\,
	combout => \cp4|Add9~18_combout\,
	cout => \cp4|Add9~19\);

-- Location: LCCOMB_X21_Y21_N24
\cp4|Add9~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add9~20_combout\ = !\cp4|Add9~19\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \cp4|Add9~19\,
	combout => \cp4|Add9~20_combout\);

-- Location: LCCOMB_X20_Y19_N2
\cp4|Add10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add10~0_combout\ = (\cp4|Add11~0_combout\ & (\cp4|Add9~0_combout\ $ (VCC))) # (!\cp4|Add11~0_combout\ & (\cp4|Add9~0_combout\ & VCC))
-- \cp4|Add10~1\ = CARRY((\cp4|Add11~0_combout\ & \cp4|Add9~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add11~0_combout\,
	datab => \cp4|Add9~0_combout\,
	datad => VCC,
	combout => \cp4|Add10~0_combout\,
	cout => \cp4|Add10~1\);

-- Location: LCCOMB_X20_Y19_N8
\cp4|Add10~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add10~6_combout\ = (\cp4|Add9~6_combout\ & ((\cp4|Add11~6_combout\ & (\cp4|Add10~5\ & VCC)) # (!\cp4|Add11~6_combout\ & (!\cp4|Add10~5\)))) # (!\cp4|Add9~6_combout\ & ((\cp4|Add11~6_combout\ & (!\cp4|Add10~5\)) # (!\cp4|Add11~6_combout\ & 
-- ((\cp4|Add10~5\) # (GND)))))
-- \cp4|Add10~7\ = CARRY((\cp4|Add9~6_combout\ & (!\cp4|Add11~6_combout\ & !\cp4|Add10~5\)) # (!\cp4|Add9~6_combout\ & ((!\cp4|Add10~5\) # (!\cp4|Add11~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add9~6_combout\,
	datab => \cp4|Add11~6_combout\,
	datad => VCC,
	cin => \cp4|Add10~5\,
	combout => \cp4|Add10~6_combout\,
	cout => \cp4|Add10~7\);

-- Location: LCCOMB_X20_Y19_N10
\cp4|Add10~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add10~8_combout\ = ((\cp4|Add11~8_combout\ $ (\cp4|Add9~8_combout\ $ (!\cp4|Add10~7\)))) # (GND)
-- \cp4|Add10~9\ = CARRY((\cp4|Add11~8_combout\ & ((\cp4|Add9~8_combout\) # (!\cp4|Add10~7\))) # (!\cp4|Add11~8_combout\ & (\cp4|Add9~8_combout\ & !\cp4|Add10~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add11~8_combout\,
	datab => \cp4|Add9~8_combout\,
	datad => VCC,
	cin => \cp4|Add10~7\,
	combout => \cp4|Add10~8_combout\,
	cout => \cp4|Add10~9\);

-- Location: LCCOMB_X20_Y19_N12
\cp4|Add10~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add10~10_combout\ = (\cp4|Add9~10_combout\ & ((\cp4|Add11~10_combout\ & (\cp4|Add10~9\ & VCC)) # (!\cp4|Add11~10_combout\ & (!\cp4|Add10~9\)))) # (!\cp4|Add9~10_combout\ & ((\cp4|Add11~10_combout\ & (!\cp4|Add10~9\)) # (!\cp4|Add11~10_combout\ & 
-- ((\cp4|Add10~9\) # (GND)))))
-- \cp4|Add10~11\ = CARRY((\cp4|Add9~10_combout\ & (!\cp4|Add11~10_combout\ & !\cp4|Add10~9\)) # (!\cp4|Add9~10_combout\ & ((!\cp4|Add10~9\) # (!\cp4|Add11~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add9~10_combout\,
	datab => \cp4|Add11~10_combout\,
	datad => VCC,
	cin => \cp4|Add10~9\,
	combout => \cp4|Add10~10_combout\,
	cout => \cp4|Add10~11\);

-- Location: LCCOMB_X20_Y19_N14
\cp4|Add10~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add10~12_combout\ = ((\cp4|Add9~12_combout\ $ (\cp4|Add11~12_combout\ $ (!\cp4|Add10~11\)))) # (GND)
-- \cp4|Add10~13\ = CARRY((\cp4|Add9~12_combout\ & ((\cp4|Add11~12_combout\) # (!\cp4|Add10~11\))) # (!\cp4|Add9~12_combout\ & (\cp4|Add11~12_combout\ & !\cp4|Add10~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add9~12_combout\,
	datab => \cp4|Add11~12_combout\,
	datad => VCC,
	cin => \cp4|Add10~11\,
	combout => \cp4|Add10~12_combout\,
	cout => \cp4|Add10~13\);

-- Location: LCCOMB_X20_Y19_N16
\cp4|Add10~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add10~14_combout\ = (\cp4|Add11~14_combout\ & ((\cp4|Add9~14_combout\ & (\cp4|Add10~13\ & VCC)) # (!\cp4|Add9~14_combout\ & (!\cp4|Add10~13\)))) # (!\cp4|Add11~14_combout\ & ((\cp4|Add9~14_combout\ & (!\cp4|Add10~13\)) # (!\cp4|Add9~14_combout\ & 
-- ((\cp4|Add10~13\) # (GND)))))
-- \cp4|Add10~15\ = CARRY((\cp4|Add11~14_combout\ & (!\cp4|Add9~14_combout\ & !\cp4|Add10~13\)) # (!\cp4|Add11~14_combout\ & ((!\cp4|Add10~13\) # (!\cp4|Add9~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add11~14_combout\,
	datab => \cp4|Add9~14_combout\,
	datad => VCC,
	cin => \cp4|Add10~13\,
	combout => \cp4|Add10~14_combout\,
	cout => \cp4|Add10~15\);

-- Location: LCCOMB_X20_Y19_N18
\cp4|Add10~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add10~16_combout\ = ((\cp4|Add11~16_combout\ $ (\cp4|Add9~16_combout\ $ (!\cp4|Add10~15\)))) # (GND)
-- \cp4|Add10~17\ = CARRY((\cp4|Add11~16_combout\ & ((\cp4|Add9~16_combout\) # (!\cp4|Add10~15\))) # (!\cp4|Add11~16_combout\ & (\cp4|Add9~16_combout\ & !\cp4|Add10~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add11~16_combout\,
	datab => \cp4|Add9~16_combout\,
	datad => VCC,
	cin => \cp4|Add10~15\,
	combout => \cp4|Add10~16_combout\,
	cout => \cp4|Add10~17\);

-- Location: LCCOMB_X20_Y19_N20
\cp4|Add10~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add10~18_combout\ = (\cp4|Add11~18_combout\ & ((\cp4|Add9~18_combout\ & (\cp4|Add10~17\ & VCC)) # (!\cp4|Add9~18_combout\ & (!\cp4|Add10~17\)))) # (!\cp4|Add11~18_combout\ & ((\cp4|Add9~18_combout\ & (!\cp4|Add10~17\)) # (!\cp4|Add9~18_combout\ & 
-- ((\cp4|Add10~17\) # (GND)))))
-- \cp4|Add10~19\ = CARRY((\cp4|Add11~18_combout\ & (!\cp4|Add9~18_combout\ & !\cp4|Add10~17\)) # (!\cp4|Add11~18_combout\ & ((!\cp4|Add10~17\) # (!\cp4|Add9~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add11~18_combout\,
	datab => \cp4|Add9~18_combout\,
	datad => VCC,
	cin => \cp4|Add10~17\,
	combout => \cp4|Add10~18_combout\,
	cout => \cp4|Add10~19\);

-- Location: LCCOMB_X20_Y19_N22
\cp4|Add10~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add10~20_combout\ = ((\cp4|Add11~20_combout\ $ (\cp4|Add9~20_combout\ $ (!\cp4|Add10~19\)))) # (GND)
-- \cp4|Add10~21\ = CARRY((\cp4|Add11~20_combout\ & ((\cp4|Add9~20_combout\) # (!\cp4|Add10~19\))) # (!\cp4|Add11~20_combout\ & (\cp4|Add9~20_combout\ & !\cp4|Add10~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add11~20_combout\,
	datab => \cp4|Add9~20_combout\,
	datad => VCC,
	cin => \cp4|Add10~19\,
	combout => \cp4|Add10~20_combout\,
	cout => \cp4|Add10~21\);

-- Location: LCCOMB_X20_Y19_N24
\cp4|Add10~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add10~22_combout\ = \cp4|Add10~21\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \cp4|Add10~21\,
	combout => \cp4|Add10~22_combout\);

-- Location: LCCOMB_X17_Y21_N2
\cp4|Add13~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add13~2_combout\ = (\cp4|fifo[14][1]~q\ & ((\cp4|fifo[15][1]~q\ & (\cp4|Add13~1\ & VCC)) # (!\cp4|fifo[15][1]~q\ & (!\cp4|Add13~1\)))) # (!\cp4|fifo[14][1]~q\ & ((\cp4|fifo[15][1]~q\ & (!\cp4|Add13~1\)) # (!\cp4|fifo[15][1]~q\ & ((\cp4|Add13~1\) # 
-- (GND)))))
-- \cp4|Add13~3\ = CARRY((\cp4|fifo[14][1]~q\ & (!\cp4|fifo[15][1]~q\ & !\cp4|Add13~1\)) # (!\cp4|fifo[14][1]~q\ & ((!\cp4|Add13~1\) # (!\cp4|fifo[15][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[14][1]~q\,
	datab => \cp4|fifo[15][1]~q\,
	datad => VCC,
	cin => \cp4|Add13~1\,
	combout => \cp4|Add13~2_combout\,
	cout => \cp4|Add13~3\);

-- Location: LCCOMB_X17_Y21_N4
\cp4|Add13~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add13~4_combout\ = ((\cp4|fifo[14][2]~q\ $ (\cp4|fifo[15][2]~q\ $ (!\cp4|Add13~3\)))) # (GND)
-- \cp4|Add13~5\ = CARRY((\cp4|fifo[14][2]~q\ & ((\cp4|fifo[15][2]~q\) # (!\cp4|Add13~3\))) # (!\cp4|fifo[14][2]~q\ & (\cp4|fifo[15][2]~q\ & !\cp4|Add13~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[14][2]~q\,
	datab => \cp4|fifo[15][2]~q\,
	datad => VCC,
	cin => \cp4|Add13~3\,
	combout => \cp4|Add13~4_combout\,
	cout => \cp4|Add13~5\);

-- Location: LCCOMB_X17_Y21_N14
\cp4|Add13~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add13~14_combout\ = (\cp4|fifo[15][7]~q\ & ((\cp4|fifo[14][7]~q\ & (\cp4|Add13~13\ & VCC)) # (!\cp4|fifo[14][7]~q\ & (!\cp4|Add13~13\)))) # (!\cp4|fifo[15][7]~q\ & ((\cp4|fifo[14][7]~q\ & (!\cp4|Add13~13\)) # (!\cp4|fifo[14][7]~q\ & ((\cp4|Add13~13\) 
-- # (GND)))))
-- \cp4|Add13~15\ = CARRY((\cp4|fifo[15][7]~q\ & (!\cp4|fifo[14][7]~q\ & !\cp4|Add13~13\)) # (!\cp4|fifo[15][7]~q\ & ((!\cp4|Add13~13\) # (!\cp4|fifo[14][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[15][7]~q\,
	datab => \cp4|fifo[14][7]~q\,
	datad => VCC,
	cin => \cp4|Add13~13\,
	combout => \cp4|Add13~14_combout\,
	cout => \cp4|Add13~15\);

-- Location: LCCOMB_X17_Y21_N16
\cp4|Add13~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add13~16_combout\ = ((\cp4|fifo[15][8]~q\ $ (\cp4|fifo[14][8]~q\ $ (!\cp4|Add13~15\)))) # (GND)
-- \cp4|Add13~17\ = CARRY((\cp4|fifo[15][8]~q\ & ((\cp4|fifo[14][8]~q\) # (!\cp4|Add13~15\))) # (!\cp4|fifo[15][8]~q\ & (\cp4|fifo[14][8]~q\ & !\cp4|Add13~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[15][8]~q\,
	datab => \cp4|fifo[14][8]~q\,
	datad => VCC,
	cin => \cp4|Add13~15\,
	combout => \cp4|Add13~16_combout\,
	cout => \cp4|Add13~17\);

-- Location: LCCOMB_X17_Y21_N18
\cp4|Add13~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add13~18_combout\ = (\cp4|fifo[15][9]~q\ & ((\cp4|fifo[14][9]~q\ & (\cp4|Add13~17\ & VCC)) # (!\cp4|fifo[14][9]~q\ & (!\cp4|Add13~17\)))) # (!\cp4|fifo[15][9]~q\ & ((\cp4|fifo[14][9]~q\ & (!\cp4|Add13~17\)) # (!\cp4|fifo[14][9]~q\ & ((\cp4|Add13~17\) 
-- # (GND)))))
-- \cp4|Add13~19\ = CARRY((\cp4|fifo[15][9]~q\ & (!\cp4|fifo[14][9]~q\ & !\cp4|Add13~17\)) # (!\cp4|fifo[15][9]~q\ & ((!\cp4|Add13~17\) # (!\cp4|fifo[14][9]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[15][9]~q\,
	datab => \cp4|fifo[14][9]~q\,
	datad => VCC,
	cin => \cp4|Add13~17\,
	combout => \cp4|Add13~18_combout\,
	cout => \cp4|Add13~19\);

-- Location: LCCOMB_X17_Y21_N20
\cp4|Add13~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add13~20_combout\ = !\cp4|Add13~19\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \cp4|Add13~19\,
	combout => \cp4|Add13~20_combout\);

-- Location: LCCOMB_X21_Y19_N6
\cp4|Add12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add12~0_combout\ = (\cp4|Add10~0_combout\ & (\cp4|Add13~0_combout\ $ (VCC))) # (!\cp4|Add10~0_combout\ & (\cp4|Add13~0_combout\ & VCC))
-- \cp4|Add12~1\ = CARRY((\cp4|Add10~0_combout\ & \cp4|Add13~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add10~0_combout\,
	datab => \cp4|Add13~0_combout\,
	datad => VCC,
	combout => \cp4|Add12~0_combout\,
	cout => \cp4|Add12~1\);

-- Location: LCCOMB_X21_Y19_N10
\cp4|Add12~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add12~4_combout\ = ((\cp4|Add13~4_combout\ $ (\cp4|Add10~4_combout\ $ (!\cp4|Add12~3\)))) # (GND)
-- \cp4|Add12~5\ = CARRY((\cp4|Add13~4_combout\ & ((\cp4|Add10~4_combout\) # (!\cp4|Add12~3\))) # (!\cp4|Add13~4_combout\ & (\cp4|Add10~4_combout\ & !\cp4|Add12~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add13~4_combout\,
	datab => \cp4|Add10~4_combout\,
	datad => VCC,
	cin => \cp4|Add12~3\,
	combout => \cp4|Add12~4_combout\,
	cout => \cp4|Add12~5\);

-- Location: LCCOMB_X21_Y19_N12
\cp4|Add12~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add12~6_combout\ = (\cp4|Add10~6_combout\ & ((\cp4|Add13~6_combout\ & (\cp4|Add12~5\ & VCC)) # (!\cp4|Add13~6_combout\ & (!\cp4|Add12~5\)))) # (!\cp4|Add10~6_combout\ & ((\cp4|Add13~6_combout\ & (!\cp4|Add12~5\)) # (!\cp4|Add13~6_combout\ & 
-- ((\cp4|Add12~5\) # (GND)))))
-- \cp4|Add12~7\ = CARRY((\cp4|Add10~6_combout\ & (!\cp4|Add13~6_combout\ & !\cp4|Add12~5\)) # (!\cp4|Add10~6_combout\ & ((!\cp4|Add12~5\) # (!\cp4|Add13~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add10~6_combout\,
	datab => \cp4|Add13~6_combout\,
	datad => VCC,
	cin => \cp4|Add12~5\,
	combout => \cp4|Add12~6_combout\,
	cout => \cp4|Add12~7\);

-- Location: LCCOMB_X21_Y19_N14
\cp4|Add12~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add12~8_combout\ = ((\cp4|Add10~8_combout\ $ (\cp4|Add13~8_combout\ $ (!\cp4|Add12~7\)))) # (GND)
-- \cp4|Add12~9\ = CARRY((\cp4|Add10~8_combout\ & ((\cp4|Add13~8_combout\) # (!\cp4|Add12~7\))) # (!\cp4|Add10~8_combout\ & (\cp4|Add13~8_combout\ & !\cp4|Add12~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add10~8_combout\,
	datab => \cp4|Add13~8_combout\,
	datad => VCC,
	cin => \cp4|Add12~7\,
	combout => \cp4|Add12~8_combout\,
	cout => \cp4|Add12~9\);

-- Location: LCCOMB_X21_Y19_N16
\cp4|Add12~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add12~10_combout\ = (\cp4|Add10~10_combout\ & ((\cp4|Add13~10_combout\ & (\cp4|Add12~9\ & VCC)) # (!\cp4|Add13~10_combout\ & (!\cp4|Add12~9\)))) # (!\cp4|Add10~10_combout\ & ((\cp4|Add13~10_combout\ & (!\cp4|Add12~9\)) # (!\cp4|Add13~10_combout\ & 
-- ((\cp4|Add12~9\) # (GND)))))
-- \cp4|Add12~11\ = CARRY((\cp4|Add10~10_combout\ & (!\cp4|Add13~10_combout\ & !\cp4|Add12~9\)) # (!\cp4|Add10~10_combout\ & ((!\cp4|Add12~9\) # (!\cp4|Add13~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add10~10_combout\,
	datab => \cp4|Add13~10_combout\,
	datad => VCC,
	cin => \cp4|Add12~9\,
	combout => \cp4|Add12~10_combout\,
	cout => \cp4|Add12~11\);

-- Location: LCCOMB_X21_Y19_N18
\cp4|Add12~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add12~12_combout\ = ((\cp4|Add10~12_combout\ $ (\cp4|Add13~12_combout\ $ (!\cp4|Add12~11\)))) # (GND)
-- \cp4|Add12~13\ = CARRY((\cp4|Add10~12_combout\ & ((\cp4|Add13~12_combout\) # (!\cp4|Add12~11\))) # (!\cp4|Add10~12_combout\ & (\cp4|Add13~12_combout\ & !\cp4|Add12~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add10~12_combout\,
	datab => \cp4|Add13~12_combout\,
	datad => VCC,
	cin => \cp4|Add12~11\,
	combout => \cp4|Add12~12_combout\,
	cout => \cp4|Add12~13\);

-- Location: LCCOMB_X21_Y19_N20
\cp4|Add12~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add12~14_combout\ = (\cp4|Add10~14_combout\ & ((\cp4|Add13~14_combout\ & (\cp4|Add12~13\ & VCC)) # (!\cp4|Add13~14_combout\ & (!\cp4|Add12~13\)))) # (!\cp4|Add10~14_combout\ & ((\cp4|Add13~14_combout\ & (!\cp4|Add12~13\)) # (!\cp4|Add13~14_combout\ & 
-- ((\cp4|Add12~13\) # (GND)))))
-- \cp4|Add12~15\ = CARRY((\cp4|Add10~14_combout\ & (!\cp4|Add13~14_combout\ & !\cp4|Add12~13\)) # (!\cp4|Add10~14_combout\ & ((!\cp4|Add12~13\) # (!\cp4|Add13~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add10~14_combout\,
	datab => \cp4|Add13~14_combout\,
	datad => VCC,
	cin => \cp4|Add12~13\,
	combout => \cp4|Add12~14_combout\,
	cout => \cp4|Add12~15\);

-- Location: LCCOMB_X21_Y19_N22
\cp4|Add12~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add12~16_combout\ = ((\cp4|Add13~16_combout\ $ (\cp4|Add10~16_combout\ $ (!\cp4|Add12~15\)))) # (GND)
-- \cp4|Add12~17\ = CARRY((\cp4|Add13~16_combout\ & ((\cp4|Add10~16_combout\) # (!\cp4|Add12~15\))) # (!\cp4|Add13~16_combout\ & (\cp4|Add10~16_combout\ & !\cp4|Add12~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add13~16_combout\,
	datab => \cp4|Add10~16_combout\,
	datad => VCC,
	cin => \cp4|Add12~15\,
	combout => \cp4|Add12~16_combout\,
	cout => \cp4|Add12~17\);

-- Location: LCCOMB_X21_Y19_N24
\cp4|Add12~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add12~18_combout\ = (\cp4|Add13~18_combout\ & ((\cp4|Add10~18_combout\ & (\cp4|Add12~17\ & VCC)) # (!\cp4|Add10~18_combout\ & (!\cp4|Add12~17\)))) # (!\cp4|Add13~18_combout\ & ((\cp4|Add10~18_combout\ & (!\cp4|Add12~17\)) # (!\cp4|Add10~18_combout\ & 
-- ((\cp4|Add12~17\) # (GND)))))
-- \cp4|Add12~19\ = CARRY((\cp4|Add13~18_combout\ & (!\cp4|Add10~18_combout\ & !\cp4|Add12~17\)) # (!\cp4|Add13~18_combout\ & ((!\cp4|Add12~17\) # (!\cp4|Add10~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add13~18_combout\,
	datab => \cp4|Add10~18_combout\,
	datad => VCC,
	cin => \cp4|Add12~17\,
	combout => \cp4|Add12~18_combout\,
	cout => \cp4|Add12~19\);

-- Location: LCCOMB_X21_Y19_N26
\cp4|Add12~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add12~20_combout\ = ((\cp4|Add13~20_combout\ $ (\cp4|Add10~20_combout\ $ (!\cp4|Add12~19\)))) # (GND)
-- \cp4|Add12~21\ = CARRY((\cp4|Add13~20_combout\ & ((\cp4|Add10~20_combout\) # (!\cp4|Add12~19\))) # (!\cp4|Add13~20_combout\ & (\cp4|Add10~20_combout\ & !\cp4|Add12~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add13~20_combout\,
	datab => \cp4|Add10~20_combout\,
	datad => VCC,
	cin => \cp4|Add12~19\,
	combout => \cp4|Add12~20_combout\,
	cout => \cp4|Add12~21\);

-- Location: LCCOMB_X21_Y19_N28
\cp4|Add12~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add12~22_combout\ = (\cp4|Add10~22_combout\ & (!\cp4|Add12~21\)) # (!\cp4|Add10~22_combout\ & ((\cp4|Add12~21\) # (GND)))
-- \cp4|Add12~23\ = CARRY((!\cp4|Add12~21\) # (!\cp4|Add10~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cp4|Add10~22_combout\,
	datad => VCC,
	cin => \cp4|Add12~21\,
	combout => \cp4|Add12~22_combout\,
	cout => \cp4|Add12~23\);

-- Location: LCCOMB_X21_Y19_N30
\cp4|Add12~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add12~24_combout\ = !\cp4|Add12~23\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \cp4|Add12~23\,
	combout => \cp4|Add12~24_combout\);

-- Location: LCCOMB_X22_Y20_N0
\cp4|Add14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add14~0_combout\ = (\cp4|Add12~0_combout\ & (\cp4|Add8~0_combout\ $ (VCC))) # (!\cp4|Add12~0_combout\ & (\cp4|Add8~0_combout\ & VCC))
-- \cp4|Add14~1\ = CARRY((\cp4|Add12~0_combout\ & \cp4|Add8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add12~0_combout\,
	datab => \cp4|Add8~0_combout\,
	datad => VCC,
	combout => \cp4|Add14~0_combout\,
	cout => \cp4|Add14~1\);

-- Location: LCCOMB_X22_Y20_N2
\cp4|Add14~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add14~2_combout\ = (\cp4|Add8~2_combout\ & ((\cp4|Add12~2_combout\ & (\cp4|Add14~1\ & VCC)) # (!\cp4|Add12~2_combout\ & (!\cp4|Add14~1\)))) # (!\cp4|Add8~2_combout\ & ((\cp4|Add12~2_combout\ & (!\cp4|Add14~1\)) # (!\cp4|Add12~2_combout\ & 
-- ((\cp4|Add14~1\) # (GND)))))
-- \cp4|Add14~3\ = CARRY((\cp4|Add8~2_combout\ & (!\cp4|Add12~2_combout\ & !\cp4|Add14~1\)) # (!\cp4|Add8~2_combout\ & ((!\cp4|Add14~1\) # (!\cp4|Add12~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add8~2_combout\,
	datab => \cp4|Add12~2_combout\,
	datad => VCC,
	cin => \cp4|Add14~1\,
	combout => \cp4|Add14~2_combout\,
	cout => \cp4|Add14~3\);

-- Location: LCCOMB_X22_Y20_N4
\cp4|Add14~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add14~4_combout\ = ((\cp4|Add12~4_combout\ $ (\cp4|Add8~4_combout\ $ (!\cp4|Add14~3\)))) # (GND)
-- \cp4|Add14~5\ = CARRY((\cp4|Add12~4_combout\ & ((\cp4|Add8~4_combout\) # (!\cp4|Add14~3\))) # (!\cp4|Add12~4_combout\ & (\cp4|Add8~4_combout\ & !\cp4|Add14~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add12~4_combout\,
	datab => \cp4|Add8~4_combout\,
	datad => VCC,
	cin => \cp4|Add14~3\,
	combout => \cp4|Add14~4_combout\,
	cout => \cp4|Add14~5\);

-- Location: LCCOMB_X22_Y20_N6
\cp4|Add14~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add14~6_combout\ = (\cp4|Add12~6_combout\ & ((\cp4|Add8~6_combout\ & (\cp4|Add14~5\ & VCC)) # (!\cp4|Add8~6_combout\ & (!\cp4|Add14~5\)))) # (!\cp4|Add12~6_combout\ & ((\cp4|Add8~6_combout\ & (!\cp4|Add14~5\)) # (!\cp4|Add8~6_combout\ & 
-- ((\cp4|Add14~5\) # (GND)))))
-- \cp4|Add14~7\ = CARRY((\cp4|Add12~6_combout\ & (!\cp4|Add8~6_combout\ & !\cp4|Add14~5\)) # (!\cp4|Add12~6_combout\ & ((!\cp4|Add14~5\) # (!\cp4|Add8~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add12~6_combout\,
	datab => \cp4|Add8~6_combout\,
	datad => VCC,
	cin => \cp4|Add14~5\,
	combout => \cp4|Add14~6_combout\,
	cout => \cp4|Add14~7\);

-- Location: LCCOMB_X22_Y20_N20
\cp4|Add14~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add14~20_combout\ = ((\cp4|Add12~20_combout\ $ (\cp4|Add8~20_combout\ $ (!\cp4|Add14~19\)))) # (GND)
-- \cp4|Add14~21\ = CARRY((\cp4|Add12~20_combout\ & ((\cp4|Add8~20_combout\) # (!\cp4|Add14~19\))) # (!\cp4|Add12~20_combout\ & (\cp4|Add8~20_combout\ & !\cp4|Add14~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add12~20_combout\,
	datab => \cp4|Add8~20_combout\,
	datad => VCC,
	cin => \cp4|Add14~19\,
	combout => \cp4|Add14~20_combout\,
	cout => \cp4|Add14~21\);

-- Location: LCCOMB_X17_Y20_N8
\cp4|Add15~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add15~8_combout\ = ((\cp4|fifo[17][4]~q\ $ (\cp4|fifo[16][4]~q\ $ (!\cp4|Add15~7\)))) # (GND)
-- \cp4|Add15~9\ = CARRY((\cp4|fifo[17][4]~q\ & ((\cp4|fifo[16][4]~q\) # (!\cp4|Add15~7\))) # (!\cp4|fifo[17][4]~q\ & (\cp4|fifo[16][4]~q\ & !\cp4|Add15~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[17][4]~q\,
	datab => \cp4|fifo[16][4]~q\,
	datad => VCC,
	cin => \cp4|Add15~7\,
	combout => \cp4|Add15~8_combout\,
	cout => \cp4|Add15~9\);

-- Location: LCCOMB_X17_Y20_N10
\cp4|Add15~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add15~10_combout\ = (\cp4|fifo[17][5]~q\ & ((\cp4|fifo[16][5]~q\ & (\cp4|Add15~9\ & VCC)) # (!\cp4|fifo[16][5]~q\ & (!\cp4|Add15~9\)))) # (!\cp4|fifo[17][5]~q\ & ((\cp4|fifo[16][5]~q\ & (!\cp4|Add15~9\)) # (!\cp4|fifo[16][5]~q\ & ((\cp4|Add15~9\) # 
-- (GND)))))
-- \cp4|Add15~11\ = CARRY((\cp4|fifo[17][5]~q\ & (!\cp4|fifo[16][5]~q\ & !\cp4|Add15~9\)) # (!\cp4|fifo[17][5]~q\ & ((!\cp4|Add15~9\) # (!\cp4|fifo[16][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[17][5]~q\,
	datab => \cp4|fifo[16][5]~q\,
	datad => VCC,
	cin => \cp4|Add15~9\,
	combout => \cp4|Add15~10_combout\,
	cout => \cp4|Add15~11\);

-- Location: LCCOMB_X17_Y20_N12
\cp4|Add15~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add15~12_combout\ = ((\cp4|fifo[16][6]~q\ $ (\cp4|fifo[17][6]~q\ $ (!\cp4|Add15~11\)))) # (GND)
-- \cp4|Add15~13\ = CARRY((\cp4|fifo[16][6]~q\ & ((\cp4|fifo[17][6]~q\) # (!\cp4|Add15~11\))) # (!\cp4|fifo[16][6]~q\ & (\cp4|fifo[17][6]~q\ & !\cp4|Add15~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[16][6]~q\,
	datab => \cp4|fifo[17][6]~q\,
	datad => VCC,
	cin => \cp4|Add15~11\,
	combout => \cp4|Add15~12_combout\,
	cout => \cp4|Add15~13\);

-- Location: LCCOMB_X17_Y20_N14
\cp4|Add15~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add15~14_combout\ = (\cp4|fifo[17][7]~q\ & ((\cp4|fifo[16][7]~q\ & (\cp4|Add15~13\ & VCC)) # (!\cp4|fifo[16][7]~q\ & (!\cp4|Add15~13\)))) # (!\cp4|fifo[17][7]~q\ & ((\cp4|fifo[16][7]~q\ & (!\cp4|Add15~13\)) # (!\cp4|fifo[16][7]~q\ & ((\cp4|Add15~13\) 
-- # (GND)))))
-- \cp4|Add15~15\ = CARRY((\cp4|fifo[17][7]~q\ & (!\cp4|fifo[16][7]~q\ & !\cp4|Add15~13\)) # (!\cp4|fifo[17][7]~q\ & ((!\cp4|Add15~13\) # (!\cp4|fifo[16][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[17][7]~q\,
	datab => \cp4|fifo[16][7]~q\,
	datad => VCC,
	cin => \cp4|Add15~13\,
	combout => \cp4|Add15~14_combout\,
	cout => \cp4|Add15~15\);

-- Location: LCCOMB_X17_Y20_N16
\cp4|Add15~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add15~16_combout\ = ((\cp4|fifo[17][8]~q\ $ (\cp4|fifo[16][8]~q\ $ (!\cp4|Add15~15\)))) # (GND)
-- \cp4|Add15~17\ = CARRY((\cp4|fifo[17][8]~q\ & ((\cp4|fifo[16][8]~q\) # (!\cp4|Add15~15\))) # (!\cp4|fifo[17][8]~q\ & (\cp4|fifo[16][8]~q\ & !\cp4|Add15~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[17][8]~q\,
	datab => \cp4|fifo[16][8]~q\,
	datad => VCC,
	cin => \cp4|Add15~15\,
	combout => \cp4|Add15~16_combout\,
	cout => \cp4|Add15~17\);

-- Location: LCCOMB_X17_Y20_N18
\cp4|Add15~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add15~18_combout\ = (\cp4|fifo[17][9]~q\ & ((\cp4|fifo[16][9]~q\ & (\cp4|Add15~17\ & VCC)) # (!\cp4|fifo[16][9]~q\ & (!\cp4|Add15~17\)))) # (!\cp4|fifo[17][9]~q\ & ((\cp4|fifo[16][9]~q\ & (!\cp4|Add15~17\)) # (!\cp4|fifo[16][9]~q\ & ((\cp4|Add15~17\) 
-- # (GND)))))
-- \cp4|Add15~19\ = CARRY((\cp4|fifo[17][9]~q\ & (!\cp4|fifo[16][9]~q\ & !\cp4|Add15~17\)) # (!\cp4|fifo[17][9]~q\ & ((!\cp4|Add15~17\) # (!\cp4|fifo[16][9]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[17][9]~q\,
	datab => \cp4|fifo[16][9]~q\,
	datad => VCC,
	cin => \cp4|Add15~17\,
	combout => \cp4|Add15~18_combout\,
	cout => \cp4|Add15~19\);

-- Location: LCCOMB_X21_Y20_N2
\cp4|Add16~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add16~2_combout\ = (\cp4|Add14~2_combout\ & ((\cp4|Add15~2_combout\ & (\cp4|Add16~1\ & VCC)) # (!\cp4|Add15~2_combout\ & (!\cp4|Add16~1\)))) # (!\cp4|Add14~2_combout\ & ((\cp4|Add15~2_combout\ & (!\cp4|Add16~1\)) # (!\cp4|Add15~2_combout\ & 
-- ((\cp4|Add16~1\) # (GND)))))
-- \cp4|Add16~3\ = CARRY((\cp4|Add14~2_combout\ & (!\cp4|Add15~2_combout\ & !\cp4|Add16~1\)) # (!\cp4|Add14~2_combout\ & ((!\cp4|Add16~1\) # (!\cp4|Add15~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add14~2_combout\,
	datab => \cp4|Add15~2_combout\,
	datad => VCC,
	cin => \cp4|Add16~1\,
	combout => \cp4|Add16~2_combout\,
	cout => \cp4|Add16~3\);

-- Location: LCCOMB_X21_Y20_N4
\cp4|Add16~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add16~4_combout\ = ((\cp4|Add14~4_combout\ $ (\cp4|Add15~4_combout\ $ (!\cp4|Add16~3\)))) # (GND)
-- \cp4|Add16~5\ = CARRY((\cp4|Add14~4_combout\ & ((\cp4|Add15~4_combout\) # (!\cp4|Add16~3\))) # (!\cp4|Add14~4_combout\ & (\cp4|Add15~4_combout\ & !\cp4|Add16~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add14~4_combout\,
	datab => \cp4|Add15~4_combout\,
	datad => VCC,
	cin => \cp4|Add16~3\,
	combout => \cp4|Add16~4_combout\,
	cout => \cp4|Add16~5\);

-- Location: LCCOMB_X21_Y20_N20
\cp4|Add16~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add16~20_combout\ = ((\cp4|Add14~20_combout\ $ (\cp4|Add15~20_combout\ $ (!\cp4|Add16~19\)))) # (GND)
-- \cp4|Add16~21\ = CARRY((\cp4|Add14~20_combout\ & ((\cp4|Add15~20_combout\) # (!\cp4|Add16~19\))) # (!\cp4|Add14~20_combout\ & (\cp4|Add15~20_combout\ & !\cp4|Add16~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add14~20_combout\,
	datab => \cp4|Add15~20_combout\,
	datad => VCC,
	cin => \cp4|Add16~19\,
	combout => \cp4|Add16~20_combout\,
	cout => \cp4|Add16~21\);

-- Location: LCCOMB_X21_Y20_N26
\cp4|Add16~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add16~26_combout\ = (\cp4|Add14~26_combout\ & (!\cp4|Add16~25\)) # (!\cp4|Add14~26_combout\ & ((\cp4|Add16~25\) # (GND)))
-- \cp4|Add16~27\ = CARRY((!\cp4|Add16~25\) # (!\cp4|Add14~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cp4|Add14~26_combout\,
	datad => VCC,
	cin => \cp4|Add16~25\,
	combout => \cp4|Add16~26_combout\,
	cout => \cp4|Add16~27\);

-- Location: LCCOMB_X12_Y21_N6
\cp4|Add27~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add27~0_combout\ = (\cp4|fifo[28][0]~q\ & (\cp4|fifo[29][0]~q\ $ (VCC))) # (!\cp4|fifo[28][0]~q\ & (\cp4|fifo[29][0]~q\ & VCC))
-- \cp4|Add27~1\ = CARRY((\cp4|fifo[28][0]~q\ & \cp4|fifo[29][0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[28][0]~q\,
	datab => \cp4|fifo[29][0]~q\,
	datad => VCC,
	combout => \cp4|Add27~0_combout\,
	cout => \cp4|Add27~1\);

-- Location: LCCOMB_X12_Y21_N8
\cp4|Add27~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add27~2_combout\ = (\cp4|fifo[29][1]~q\ & ((\cp4|fifo[28][1]~q\ & (\cp4|Add27~1\ & VCC)) # (!\cp4|fifo[28][1]~q\ & (!\cp4|Add27~1\)))) # (!\cp4|fifo[29][1]~q\ & ((\cp4|fifo[28][1]~q\ & (!\cp4|Add27~1\)) # (!\cp4|fifo[28][1]~q\ & ((\cp4|Add27~1\) # 
-- (GND)))))
-- \cp4|Add27~3\ = CARRY((\cp4|fifo[29][1]~q\ & (!\cp4|fifo[28][1]~q\ & !\cp4|Add27~1\)) # (!\cp4|fifo[29][1]~q\ & ((!\cp4|Add27~1\) # (!\cp4|fifo[28][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[29][1]~q\,
	datab => \cp4|fifo[28][1]~q\,
	datad => VCC,
	cin => \cp4|Add27~1\,
	combout => \cp4|Add27~2_combout\,
	cout => \cp4|Add27~3\);

-- Location: LCCOMB_X12_Y21_N16
\cp4|Add27~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add27~10_combout\ = (\cp4|fifo[29][5]~q\ & ((\cp4|fifo[28][5]~q\ & (\cp4|Add27~9\ & VCC)) # (!\cp4|fifo[28][5]~q\ & (!\cp4|Add27~9\)))) # (!\cp4|fifo[29][5]~q\ & ((\cp4|fifo[28][5]~q\ & (!\cp4|Add27~9\)) # (!\cp4|fifo[28][5]~q\ & ((\cp4|Add27~9\) # 
-- (GND)))))
-- \cp4|Add27~11\ = CARRY((\cp4|fifo[29][5]~q\ & (!\cp4|fifo[28][5]~q\ & !\cp4|Add27~9\)) # (!\cp4|fifo[29][5]~q\ & ((!\cp4|Add27~9\) # (!\cp4|fifo[28][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[29][5]~q\,
	datab => \cp4|fifo[28][5]~q\,
	datad => VCC,
	cin => \cp4|Add27~9\,
	combout => \cp4|Add27~10_combout\,
	cout => \cp4|Add27~11\);

-- Location: LCCOMB_X12_Y21_N18
\cp4|Add27~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add27~12_combout\ = ((\cp4|fifo[28][6]~q\ $ (\cp4|fifo[29][6]~q\ $ (!\cp4|Add27~11\)))) # (GND)
-- \cp4|Add27~13\ = CARRY((\cp4|fifo[28][6]~q\ & ((\cp4|fifo[29][6]~q\) # (!\cp4|Add27~11\))) # (!\cp4|fifo[28][6]~q\ & (\cp4|fifo[29][6]~q\ & !\cp4|Add27~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[28][6]~q\,
	datab => \cp4|fifo[29][6]~q\,
	datad => VCC,
	cin => \cp4|Add27~11\,
	combout => \cp4|Add27~12_combout\,
	cout => \cp4|Add27~13\);

-- Location: LCCOMB_X12_Y21_N20
\cp4|Add27~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add27~14_combout\ = (\cp4|fifo[29][7]~q\ & ((\cp4|fifo[28][7]~q\ & (\cp4|Add27~13\ & VCC)) # (!\cp4|fifo[28][7]~q\ & (!\cp4|Add27~13\)))) # (!\cp4|fifo[29][7]~q\ & ((\cp4|fifo[28][7]~q\ & (!\cp4|Add27~13\)) # (!\cp4|fifo[28][7]~q\ & ((\cp4|Add27~13\) 
-- # (GND)))))
-- \cp4|Add27~15\ = CARRY((\cp4|fifo[29][7]~q\ & (!\cp4|fifo[28][7]~q\ & !\cp4|Add27~13\)) # (!\cp4|fifo[29][7]~q\ & ((!\cp4|Add27~13\) # (!\cp4|fifo[28][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[29][7]~q\,
	datab => \cp4|fifo[28][7]~q\,
	datad => VCC,
	cin => \cp4|Add27~13\,
	combout => \cp4|Add27~14_combout\,
	cout => \cp4|Add27~15\);

-- Location: LCCOMB_X12_Y21_N22
\cp4|Add27~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add27~16_combout\ = ((\cp4|fifo[28][8]~q\ $ (\cp4|fifo[29][8]~q\ $ (!\cp4|Add27~15\)))) # (GND)
-- \cp4|Add27~17\ = CARRY((\cp4|fifo[28][8]~q\ & ((\cp4|fifo[29][8]~q\) # (!\cp4|Add27~15\))) # (!\cp4|fifo[28][8]~q\ & (\cp4|fifo[29][8]~q\ & !\cp4|Add27~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[28][8]~q\,
	datab => \cp4|fifo[29][8]~q\,
	datad => VCC,
	cin => \cp4|Add27~15\,
	combout => \cp4|Add27~16_combout\,
	cout => \cp4|Add27~17\);

-- Location: LCCOMB_X12_Y21_N24
\cp4|Add27~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add27~18_combout\ = (\cp4|fifo[29][9]~q\ & ((\cp4|fifo[28][9]~q\ & (\cp4|Add27~17\ & VCC)) # (!\cp4|fifo[28][9]~q\ & (!\cp4|Add27~17\)))) # (!\cp4|fifo[29][9]~q\ & ((\cp4|fifo[28][9]~q\ & (!\cp4|Add27~17\)) # (!\cp4|fifo[28][9]~q\ & ((\cp4|Add27~17\) 
-- # (GND)))))
-- \cp4|Add27~19\ = CARRY((\cp4|fifo[29][9]~q\ & (!\cp4|fifo[28][9]~q\ & !\cp4|Add27~17\)) # (!\cp4|fifo[29][9]~q\ & ((!\cp4|Add27~17\) # (!\cp4|fifo[28][9]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[29][9]~q\,
	datab => \cp4|fifo[28][9]~q\,
	datad => VCC,
	cin => \cp4|Add27~17\,
	combout => \cp4|Add27~18_combout\,
	cout => \cp4|Add27~19\);

-- Location: LCCOMB_X12_Y21_N26
\cp4|Add27~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add27~20_combout\ = !\cp4|Add27~19\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \cp4|Add27~19\,
	combout => \cp4|Add27~20_combout\);

-- Location: LCCOMB_X11_Y21_N4
\cp4|Add25~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add25~4_combout\ = ((\cp4|fifo[27][2]~q\ $ (\cp4|fifo[26][2]~q\ $ (!\cp4|Add25~3\)))) # (GND)
-- \cp4|Add25~5\ = CARRY((\cp4|fifo[27][2]~q\ & ((\cp4|fifo[26][2]~q\) # (!\cp4|Add25~3\))) # (!\cp4|fifo[27][2]~q\ & (\cp4|fifo[26][2]~q\ & !\cp4|Add25~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[27][2]~q\,
	datab => \cp4|fifo[26][2]~q\,
	datad => VCC,
	cin => \cp4|Add25~3\,
	combout => \cp4|Add25~4_combout\,
	cout => \cp4|Add25~5\);

-- Location: LCCOMB_X11_Y21_N6
\cp4|Add25~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add25~6_combout\ = (\cp4|fifo[26][3]~q\ & ((\cp4|fifo[27][3]~q\ & (\cp4|Add25~5\ & VCC)) # (!\cp4|fifo[27][3]~q\ & (!\cp4|Add25~5\)))) # (!\cp4|fifo[26][3]~q\ & ((\cp4|fifo[27][3]~q\ & (!\cp4|Add25~5\)) # (!\cp4|fifo[27][3]~q\ & ((\cp4|Add25~5\) # 
-- (GND)))))
-- \cp4|Add25~7\ = CARRY((\cp4|fifo[26][3]~q\ & (!\cp4|fifo[27][3]~q\ & !\cp4|Add25~5\)) # (!\cp4|fifo[26][3]~q\ & ((!\cp4|Add25~5\) # (!\cp4|fifo[27][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[26][3]~q\,
	datab => \cp4|fifo[27][3]~q\,
	datad => VCC,
	cin => \cp4|Add25~5\,
	combout => \cp4|Add25~6_combout\,
	cout => \cp4|Add25~7\);

-- Location: LCCOMB_X11_Y21_N8
\cp4|Add25~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add25~8_combout\ = ((\cp4|fifo[26][4]~q\ $ (\cp4|fifo[27][4]~q\ $ (!\cp4|Add25~7\)))) # (GND)
-- \cp4|Add25~9\ = CARRY((\cp4|fifo[26][4]~q\ & ((\cp4|fifo[27][4]~q\) # (!\cp4|Add25~7\))) # (!\cp4|fifo[26][4]~q\ & (\cp4|fifo[27][4]~q\ & !\cp4|Add25~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[26][4]~q\,
	datab => \cp4|fifo[27][4]~q\,
	datad => VCC,
	cin => \cp4|Add25~7\,
	combout => \cp4|Add25~8_combout\,
	cout => \cp4|Add25~9\);

-- Location: LCCOMB_X11_Y21_N12
\cp4|Add25~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add25~12_combout\ = ((\cp4|fifo[27][6]~q\ $ (\cp4|fifo[26][6]~q\ $ (!\cp4|Add25~11\)))) # (GND)
-- \cp4|Add25~13\ = CARRY((\cp4|fifo[27][6]~q\ & ((\cp4|fifo[26][6]~q\) # (!\cp4|Add25~11\))) # (!\cp4|fifo[27][6]~q\ & (\cp4|fifo[26][6]~q\ & !\cp4|Add25~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[27][6]~q\,
	datab => \cp4|fifo[26][6]~q\,
	datad => VCC,
	cin => \cp4|Add25~11\,
	combout => \cp4|Add25~12_combout\,
	cout => \cp4|Add25~13\);

-- Location: LCCOMB_X11_Y21_N14
\cp4|Add25~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add25~14_combout\ = (\cp4|fifo[27][7]~q\ & ((\cp4|fifo[26][7]~q\ & (\cp4|Add25~13\ & VCC)) # (!\cp4|fifo[26][7]~q\ & (!\cp4|Add25~13\)))) # (!\cp4|fifo[27][7]~q\ & ((\cp4|fifo[26][7]~q\ & (!\cp4|Add25~13\)) # (!\cp4|fifo[26][7]~q\ & ((\cp4|Add25~13\) 
-- # (GND)))))
-- \cp4|Add25~15\ = CARRY((\cp4|fifo[27][7]~q\ & (!\cp4|fifo[26][7]~q\ & !\cp4|Add25~13\)) # (!\cp4|fifo[27][7]~q\ & ((!\cp4|Add25~13\) # (!\cp4|fifo[26][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[27][7]~q\,
	datab => \cp4|fifo[26][7]~q\,
	datad => VCC,
	cin => \cp4|Add25~13\,
	combout => \cp4|Add25~14_combout\,
	cout => \cp4|Add25~15\);

-- Location: LCCOMB_X11_Y21_N16
\cp4|Add25~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add25~16_combout\ = ((\cp4|fifo[27][8]~q\ $ (\cp4|fifo[26][8]~q\ $ (!\cp4|Add25~15\)))) # (GND)
-- \cp4|Add25~17\ = CARRY((\cp4|fifo[27][8]~q\ & ((\cp4|fifo[26][8]~q\) # (!\cp4|Add25~15\))) # (!\cp4|fifo[27][8]~q\ & (\cp4|fifo[26][8]~q\ & !\cp4|Add25~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[27][8]~q\,
	datab => \cp4|fifo[26][8]~q\,
	datad => VCC,
	cin => \cp4|Add25~15\,
	combout => \cp4|Add25~16_combout\,
	cout => \cp4|Add25~17\);

-- Location: LCCOMB_X11_Y21_N18
\cp4|Add25~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add25~18_combout\ = (\cp4|fifo[26][9]~q\ & ((\cp4|fifo[27][9]~q\ & (\cp4|Add25~17\ & VCC)) # (!\cp4|fifo[27][9]~q\ & (!\cp4|Add25~17\)))) # (!\cp4|fifo[26][9]~q\ & ((\cp4|fifo[27][9]~q\ & (!\cp4|Add25~17\)) # (!\cp4|fifo[27][9]~q\ & ((\cp4|Add25~17\) 
-- # (GND)))))
-- \cp4|Add25~19\ = CARRY((\cp4|fifo[26][9]~q\ & (!\cp4|fifo[27][9]~q\ & !\cp4|Add25~17\)) # (!\cp4|fifo[26][9]~q\ & ((!\cp4|Add25~17\) # (!\cp4|fifo[27][9]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[26][9]~q\,
	datab => \cp4|fifo[27][9]~q\,
	datad => VCC,
	cin => \cp4|Add25~17\,
	combout => \cp4|Add25~18_combout\,
	cout => \cp4|Add25~19\);

-- Location: LCCOMB_X11_Y21_N20
\cp4|Add25~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add25~20_combout\ = !\cp4|Add25~19\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \cp4|Add25~19\,
	combout => \cp4|Add25~20_combout\);

-- Location: LCCOMB_X15_Y21_N2
\cp4|Add26~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add26~2_combout\ = (\cp4|Add27~2_combout\ & ((\cp4|Add25~2_combout\ & (\cp4|Add26~1\ & VCC)) # (!\cp4|Add25~2_combout\ & (!\cp4|Add26~1\)))) # (!\cp4|Add27~2_combout\ & ((\cp4|Add25~2_combout\ & (!\cp4|Add26~1\)) # (!\cp4|Add25~2_combout\ & 
-- ((\cp4|Add26~1\) # (GND)))))
-- \cp4|Add26~3\ = CARRY((\cp4|Add27~2_combout\ & (!\cp4|Add25~2_combout\ & !\cp4|Add26~1\)) # (!\cp4|Add27~2_combout\ & ((!\cp4|Add26~1\) # (!\cp4|Add25~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add27~2_combout\,
	datab => \cp4|Add25~2_combout\,
	datad => VCC,
	cin => \cp4|Add26~1\,
	combout => \cp4|Add26~2_combout\,
	cout => \cp4|Add26~3\);

-- Location: LCCOMB_X15_Y21_N6
\cp4|Add26~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add26~6_combout\ = (\cp4|Add25~6_combout\ & ((\cp4|Add27~6_combout\ & (\cp4|Add26~5\ & VCC)) # (!\cp4|Add27~6_combout\ & (!\cp4|Add26~5\)))) # (!\cp4|Add25~6_combout\ & ((\cp4|Add27~6_combout\ & (!\cp4|Add26~5\)) # (!\cp4|Add27~6_combout\ & 
-- ((\cp4|Add26~5\) # (GND)))))
-- \cp4|Add26~7\ = CARRY((\cp4|Add25~6_combout\ & (!\cp4|Add27~6_combout\ & !\cp4|Add26~5\)) # (!\cp4|Add25~6_combout\ & ((!\cp4|Add26~5\) # (!\cp4|Add27~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add25~6_combout\,
	datab => \cp4|Add27~6_combout\,
	datad => VCC,
	cin => \cp4|Add26~5\,
	combout => \cp4|Add26~6_combout\,
	cout => \cp4|Add26~7\);

-- Location: LCCOMB_X15_Y21_N8
\cp4|Add26~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add26~8_combout\ = ((\cp4|Add25~8_combout\ $ (\cp4|Add27~8_combout\ $ (!\cp4|Add26~7\)))) # (GND)
-- \cp4|Add26~9\ = CARRY((\cp4|Add25~8_combout\ & ((\cp4|Add27~8_combout\) # (!\cp4|Add26~7\))) # (!\cp4|Add25~8_combout\ & (\cp4|Add27~8_combout\ & !\cp4|Add26~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add25~8_combout\,
	datab => \cp4|Add27~8_combout\,
	datad => VCC,
	cin => \cp4|Add26~7\,
	combout => \cp4|Add26~8_combout\,
	cout => \cp4|Add26~9\);

-- Location: LCCOMB_X15_Y21_N14
\cp4|Add26~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add26~14_combout\ = (\cp4|Add25~14_combout\ & ((\cp4|Add27~14_combout\ & (\cp4|Add26~13\ & VCC)) # (!\cp4|Add27~14_combout\ & (!\cp4|Add26~13\)))) # (!\cp4|Add25~14_combout\ & ((\cp4|Add27~14_combout\ & (!\cp4|Add26~13\)) # (!\cp4|Add27~14_combout\ & 
-- ((\cp4|Add26~13\) # (GND)))))
-- \cp4|Add26~15\ = CARRY((\cp4|Add25~14_combout\ & (!\cp4|Add27~14_combout\ & !\cp4|Add26~13\)) # (!\cp4|Add25~14_combout\ & ((!\cp4|Add26~13\) # (!\cp4|Add27~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add25~14_combout\,
	datab => \cp4|Add27~14_combout\,
	datad => VCC,
	cin => \cp4|Add26~13\,
	combout => \cp4|Add26~14_combout\,
	cout => \cp4|Add26~15\);

-- Location: LCCOMB_X15_Y21_N16
\cp4|Add26~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add26~16_combout\ = ((\cp4|Add27~16_combout\ $ (\cp4|Add25~16_combout\ $ (!\cp4|Add26~15\)))) # (GND)
-- \cp4|Add26~17\ = CARRY((\cp4|Add27~16_combout\ & ((\cp4|Add25~16_combout\) # (!\cp4|Add26~15\))) # (!\cp4|Add27~16_combout\ & (\cp4|Add25~16_combout\ & !\cp4|Add26~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add27~16_combout\,
	datab => \cp4|Add25~16_combout\,
	datad => VCC,
	cin => \cp4|Add26~15\,
	combout => \cp4|Add26~16_combout\,
	cout => \cp4|Add26~17\);

-- Location: LCCOMB_X15_Y21_N18
\cp4|Add26~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add26~18_combout\ = (\cp4|Add25~18_combout\ & ((\cp4|Add27~18_combout\ & (\cp4|Add26~17\ & VCC)) # (!\cp4|Add27~18_combout\ & (!\cp4|Add26~17\)))) # (!\cp4|Add25~18_combout\ & ((\cp4|Add27~18_combout\ & (!\cp4|Add26~17\)) # (!\cp4|Add27~18_combout\ & 
-- ((\cp4|Add26~17\) # (GND)))))
-- \cp4|Add26~19\ = CARRY((\cp4|Add25~18_combout\ & (!\cp4|Add27~18_combout\ & !\cp4|Add26~17\)) # (!\cp4|Add25~18_combout\ & ((!\cp4|Add26~17\) # (!\cp4|Add27~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add25~18_combout\,
	datab => \cp4|Add27~18_combout\,
	datad => VCC,
	cin => \cp4|Add26~17\,
	combout => \cp4|Add26~18_combout\,
	cout => \cp4|Add26~19\);

-- Location: LCCOMB_X15_Y21_N20
\cp4|Add26~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add26~20_combout\ = ((\cp4|Add27~20_combout\ $ (\cp4|Add25~20_combout\ $ (!\cp4|Add26~19\)))) # (GND)
-- \cp4|Add26~21\ = CARRY((\cp4|Add27~20_combout\ & ((\cp4|Add25~20_combout\) # (!\cp4|Add26~19\))) # (!\cp4|Add27~20_combout\ & (\cp4|Add25~20_combout\ & !\cp4|Add26~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add27~20_combout\,
	datab => \cp4|Add25~20_combout\,
	datad => VCC,
	cin => \cp4|Add26~19\,
	combout => \cp4|Add26~20_combout\,
	cout => \cp4|Add26~21\);

-- Location: LCCOMB_X15_Y21_N22
\cp4|Add26~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add26~22_combout\ = \cp4|Add26~21\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \cp4|Add26~21\,
	combout => \cp4|Add26~22_combout\);

-- Location: LCCOMB_X14_Y22_N8
\cp4|Add29~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add29~0_combout\ = (\cp4|fifo[30][0]~q\ & (\cp4|fifo[31][0]~q\ $ (VCC))) # (!\cp4|fifo[30][0]~q\ & (\cp4|fifo[31][0]~q\ & VCC))
-- \cp4|Add29~1\ = CARRY((\cp4|fifo[30][0]~q\ & \cp4|fifo[31][0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[30][0]~q\,
	datab => \cp4|fifo[31][0]~q\,
	datad => VCC,
	combout => \cp4|Add29~0_combout\,
	cout => \cp4|Add29~1\);

-- Location: LCCOMB_X14_Y22_N12
\cp4|Add29~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add29~4_combout\ = ((\cp4|fifo[30][2]~q\ $ (\cp4|fifo[31][2]~q\ $ (!\cp4|Add29~3\)))) # (GND)
-- \cp4|Add29~5\ = CARRY((\cp4|fifo[30][2]~q\ & ((\cp4|fifo[31][2]~q\) # (!\cp4|Add29~3\))) # (!\cp4|fifo[30][2]~q\ & (\cp4|fifo[31][2]~q\ & !\cp4|Add29~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[30][2]~q\,
	datab => \cp4|fifo[31][2]~q\,
	datad => VCC,
	cin => \cp4|Add29~3\,
	combout => \cp4|Add29~4_combout\,
	cout => \cp4|Add29~5\);

-- Location: LCCOMB_X14_Y22_N18
\cp4|Add29~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add29~10_combout\ = (\cp4|fifo[31][5]~q\ & ((\cp4|fifo[30][5]~q\ & (\cp4|Add29~9\ & VCC)) # (!\cp4|fifo[30][5]~q\ & (!\cp4|Add29~9\)))) # (!\cp4|fifo[31][5]~q\ & ((\cp4|fifo[30][5]~q\ & (!\cp4|Add29~9\)) # (!\cp4|fifo[30][5]~q\ & ((\cp4|Add29~9\) # 
-- (GND)))))
-- \cp4|Add29~11\ = CARRY((\cp4|fifo[31][5]~q\ & (!\cp4|fifo[30][5]~q\ & !\cp4|Add29~9\)) # (!\cp4|fifo[31][5]~q\ & ((!\cp4|Add29~9\) # (!\cp4|fifo[30][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[31][5]~q\,
	datab => \cp4|fifo[30][5]~q\,
	datad => VCC,
	cin => \cp4|Add29~9\,
	combout => \cp4|Add29~10_combout\,
	cout => \cp4|Add29~11\);

-- Location: LCCOMB_X14_Y22_N20
\cp4|Add29~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add29~12_combout\ = ((\cp4|fifo[31][6]~q\ $ (\cp4|fifo[30][6]~q\ $ (!\cp4|Add29~11\)))) # (GND)
-- \cp4|Add29~13\ = CARRY((\cp4|fifo[31][6]~q\ & ((\cp4|fifo[30][6]~q\) # (!\cp4|Add29~11\))) # (!\cp4|fifo[31][6]~q\ & (\cp4|fifo[30][6]~q\ & !\cp4|Add29~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[31][6]~q\,
	datab => \cp4|fifo[30][6]~q\,
	datad => VCC,
	cin => \cp4|Add29~11\,
	combout => \cp4|Add29~12_combout\,
	cout => \cp4|Add29~13\);

-- Location: LCCOMB_X14_Y22_N22
\cp4|Add29~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add29~14_combout\ = (\cp4|fifo[30][7]~q\ & ((\cp4|fifo[31][7]~q\ & (\cp4|Add29~13\ & VCC)) # (!\cp4|fifo[31][7]~q\ & (!\cp4|Add29~13\)))) # (!\cp4|fifo[30][7]~q\ & ((\cp4|fifo[31][7]~q\ & (!\cp4|Add29~13\)) # (!\cp4|fifo[31][7]~q\ & ((\cp4|Add29~13\) 
-- # (GND)))))
-- \cp4|Add29~15\ = CARRY((\cp4|fifo[30][7]~q\ & (!\cp4|fifo[31][7]~q\ & !\cp4|Add29~13\)) # (!\cp4|fifo[30][7]~q\ & ((!\cp4|Add29~13\) # (!\cp4|fifo[31][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[30][7]~q\,
	datab => \cp4|fifo[31][7]~q\,
	datad => VCC,
	cin => \cp4|Add29~13\,
	combout => \cp4|Add29~14_combout\,
	cout => \cp4|Add29~15\);

-- Location: LCCOMB_X14_Y22_N26
\cp4|Add29~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add29~18_combout\ = (\cp4|fifo[30][9]~q\ & ((\cp4|fifo[31][9]~q\ & (\cp4|Add29~17\ & VCC)) # (!\cp4|fifo[31][9]~q\ & (!\cp4|Add29~17\)))) # (!\cp4|fifo[30][9]~q\ & ((\cp4|fifo[31][9]~q\ & (!\cp4|Add29~17\)) # (!\cp4|fifo[31][9]~q\ & ((\cp4|Add29~17\) 
-- # (GND)))))
-- \cp4|Add29~19\ = CARRY((\cp4|fifo[30][9]~q\ & (!\cp4|fifo[31][9]~q\ & !\cp4|Add29~17\)) # (!\cp4|fifo[30][9]~q\ & ((!\cp4|Add29~17\) # (!\cp4|fifo[31][9]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[30][9]~q\,
	datab => \cp4|fifo[31][9]~q\,
	datad => VCC,
	cin => \cp4|Add29~17\,
	combout => \cp4|Add29~18_combout\,
	cout => \cp4|Add29~19\);

-- Location: LCCOMB_X14_Y22_N28
\cp4|Add29~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add29~20_combout\ = !\cp4|Add29~19\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \cp4|Add29~19\,
	combout => \cp4|Add29~20_combout\);

-- Location: LCCOMB_X19_Y22_N4
\cp4|Add28~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add28~2_combout\ = (\cp4|Add26~2_combout\ & ((\cp4|Add29~2_combout\ & (\cp4|Add28~1\ & VCC)) # (!\cp4|Add29~2_combout\ & (!\cp4|Add28~1\)))) # (!\cp4|Add26~2_combout\ & ((\cp4|Add29~2_combout\ & (!\cp4|Add28~1\)) # (!\cp4|Add29~2_combout\ & 
-- ((\cp4|Add28~1\) # (GND)))))
-- \cp4|Add28~3\ = CARRY((\cp4|Add26~2_combout\ & (!\cp4|Add29~2_combout\ & !\cp4|Add28~1\)) # (!\cp4|Add26~2_combout\ & ((!\cp4|Add28~1\) # (!\cp4|Add29~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add26~2_combout\,
	datab => \cp4|Add29~2_combout\,
	datad => VCC,
	cin => \cp4|Add28~1\,
	combout => \cp4|Add28~2_combout\,
	cout => \cp4|Add28~3\);

-- Location: LCCOMB_X19_Y22_N8
\cp4|Add28~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add28~6_combout\ = (\cp4|Add26~6_combout\ & ((\cp4|Add29~6_combout\ & (\cp4|Add28~5\ & VCC)) # (!\cp4|Add29~6_combout\ & (!\cp4|Add28~5\)))) # (!\cp4|Add26~6_combout\ & ((\cp4|Add29~6_combout\ & (!\cp4|Add28~5\)) # (!\cp4|Add29~6_combout\ & 
-- ((\cp4|Add28~5\) # (GND)))))
-- \cp4|Add28~7\ = CARRY((\cp4|Add26~6_combout\ & (!\cp4|Add29~6_combout\ & !\cp4|Add28~5\)) # (!\cp4|Add26~6_combout\ & ((!\cp4|Add28~5\) # (!\cp4|Add29~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add26~6_combout\,
	datab => \cp4|Add29~6_combout\,
	datad => VCC,
	cin => \cp4|Add28~5\,
	combout => \cp4|Add28~6_combout\,
	cout => \cp4|Add28~7\);

-- Location: LCCOMB_X19_Y22_N10
\cp4|Add28~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add28~8_combout\ = ((\cp4|Add26~8_combout\ $ (\cp4|Add29~8_combout\ $ (!\cp4|Add28~7\)))) # (GND)
-- \cp4|Add28~9\ = CARRY((\cp4|Add26~8_combout\ & ((\cp4|Add29~8_combout\) # (!\cp4|Add28~7\))) # (!\cp4|Add26~8_combout\ & (\cp4|Add29~8_combout\ & !\cp4|Add28~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add26~8_combout\,
	datab => \cp4|Add29~8_combout\,
	datad => VCC,
	cin => \cp4|Add28~7\,
	combout => \cp4|Add28~8_combout\,
	cout => \cp4|Add28~9\);

-- Location: LCCOMB_X19_Y22_N12
\cp4|Add28~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add28~10_combout\ = (\cp4|Add29~10_combout\ & ((\cp4|Add26~10_combout\ & (\cp4|Add28~9\ & VCC)) # (!\cp4|Add26~10_combout\ & (!\cp4|Add28~9\)))) # (!\cp4|Add29~10_combout\ & ((\cp4|Add26~10_combout\ & (!\cp4|Add28~9\)) # (!\cp4|Add26~10_combout\ & 
-- ((\cp4|Add28~9\) # (GND)))))
-- \cp4|Add28~11\ = CARRY((\cp4|Add29~10_combout\ & (!\cp4|Add26~10_combout\ & !\cp4|Add28~9\)) # (!\cp4|Add29~10_combout\ & ((!\cp4|Add28~9\) # (!\cp4|Add26~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add29~10_combout\,
	datab => \cp4|Add26~10_combout\,
	datad => VCC,
	cin => \cp4|Add28~9\,
	combout => \cp4|Add28~10_combout\,
	cout => \cp4|Add28~11\);

-- Location: LCCOMB_X19_Y22_N14
\cp4|Add28~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add28~12_combout\ = ((\cp4|Add29~12_combout\ $ (\cp4|Add26~12_combout\ $ (!\cp4|Add28~11\)))) # (GND)
-- \cp4|Add28~13\ = CARRY((\cp4|Add29~12_combout\ & ((\cp4|Add26~12_combout\) # (!\cp4|Add28~11\))) # (!\cp4|Add29~12_combout\ & (\cp4|Add26~12_combout\ & !\cp4|Add28~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add29~12_combout\,
	datab => \cp4|Add26~12_combout\,
	datad => VCC,
	cin => \cp4|Add28~11\,
	combout => \cp4|Add28~12_combout\,
	cout => \cp4|Add28~13\);

-- Location: LCCOMB_X19_Y22_N16
\cp4|Add28~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add28~14_combout\ = (\cp4|Add29~14_combout\ & ((\cp4|Add26~14_combout\ & (\cp4|Add28~13\ & VCC)) # (!\cp4|Add26~14_combout\ & (!\cp4|Add28~13\)))) # (!\cp4|Add29~14_combout\ & ((\cp4|Add26~14_combout\ & (!\cp4|Add28~13\)) # (!\cp4|Add26~14_combout\ & 
-- ((\cp4|Add28~13\) # (GND)))))
-- \cp4|Add28~15\ = CARRY((\cp4|Add29~14_combout\ & (!\cp4|Add26~14_combout\ & !\cp4|Add28~13\)) # (!\cp4|Add29~14_combout\ & ((!\cp4|Add28~13\) # (!\cp4|Add26~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add29~14_combout\,
	datab => \cp4|Add26~14_combout\,
	datad => VCC,
	cin => \cp4|Add28~13\,
	combout => \cp4|Add28~14_combout\,
	cout => \cp4|Add28~15\);

-- Location: LCCOMB_X19_Y22_N20
\cp4|Add28~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add28~18_combout\ = (\cp4|Add26~18_combout\ & ((\cp4|Add29~18_combout\ & (\cp4|Add28~17\ & VCC)) # (!\cp4|Add29~18_combout\ & (!\cp4|Add28~17\)))) # (!\cp4|Add26~18_combout\ & ((\cp4|Add29~18_combout\ & (!\cp4|Add28~17\)) # (!\cp4|Add29~18_combout\ & 
-- ((\cp4|Add28~17\) # (GND)))))
-- \cp4|Add28~19\ = CARRY((\cp4|Add26~18_combout\ & (!\cp4|Add29~18_combout\ & !\cp4|Add28~17\)) # (!\cp4|Add26~18_combout\ & ((!\cp4|Add28~17\) # (!\cp4|Add29~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add26~18_combout\,
	datab => \cp4|Add29~18_combout\,
	datad => VCC,
	cin => \cp4|Add28~17\,
	combout => \cp4|Add28~18_combout\,
	cout => \cp4|Add28~19\);

-- Location: LCCOMB_X19_Y22_N22
\cp4|Add28~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add28~20_combout\ = ((\cp4|Add26~20_combout\ $ (\cp4|Add29~20_combout\ $ (!\cp4|Add28~19\)))) # (GND)
-- \cp4|Add28~21\ = CARRY((\cp4|Add26~20_combout\ & ((\cp4|Add29~20_combout\) # (!\cp4|Add28~19\))) # (!\cp4|Add26~20_combout\ & (\cp4|Add29~20_combout\ & !\cp4|Add28~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add26~20_combout\,
	datab => \cp4|Add29~20_combout\,
	datad => VCC,
	cin => \cp4|Add28~19\,
	combout => \cp4|Add28~20_combout\,
	cout => \cp4|Add28~21\);

-- Location: LCCOMB_X19_Y22_N24
\cp4|Add28~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add28~22_combout\ = (\cp4|Add26~22_combout\ & (!\cp4|Add28~21\)) # (!\cp4|Add26~22_combout\ & ((\cp4|Add28~21\) # (GND)))
-- \cp4|Add28~23\ = CARRY((!\cp4|Add28~21\) # (!\cp4|Add26~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add26~22_combout\,
	datad => VCC,
	cin => \cp4|Add28~21\,
	combout => \cp4|Add28~22_combout\,
	cout => \cp4|Add28~23\);

-- Location: LCCOMB_X19_Y22_N26
\cp4|Add28~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add28~24_combout\ = !\cp4|Add28~23\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \cp4|Add28~23\,
	combout => \cp4|Add28~24_combout\);

-- Location: LCCOMB_X14_Y20_N8
\cp4|Add23~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add23~0_combout\ = (\cp4|fifo[25][0]~q\ & (\cp4|fifo[24][0]~q\ $ (VCC))) # (!\cp4|fifo[25][0]~q\ & (\cp4|fifo[24][0]~q\ & VCC))
-- \cp4|Add23~1\ = CARRY((\cp4|fifo[25][0]~q\ & \cp4|fifo[24][0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[25][0]~q\,
	datab => \cp4|fifo[24][0]~q\,
	datad => VCC,
	combout => \cp4|Add23~0_combout\,
	cout => \cp4|Add23~1\);

-- Location: LCCOMB_X14_Y20_N12
\cp4|Add23~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add23~4_combout\ = ((\cp4|fifo[24][2]~q\ $ (\cp4|fifo[25][2]~q\ $ (!\cp4|Add23~3\)))) # (GND)
-- \cp4|Add23~5\ = CARRY((\cp4|fifo[24][2]~q\ & ((\cp4|fifo[25][2]~q\) # (!\cp4|Add23~3\))) # (!\cp4|fifo[24][2]~q\ & (\cp4|fifo[25][2]~q\ & !\cp4|Add23~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[24][2]~q\,
	datab => \cp4|fifo[25][2]~q\,
	datad => VCC,
	cin => \cp4|Add23~3\,
	combout => \cp4|Add23~4_combout\,
	cout => \cp4|Add23~5\);

-- Location: LCCOMB_X14_Y20_N16
\cp4|Add23~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add23~8_combout\ = ((\cp4|fifo[24][4]~q\ $ (\cp4|fifo[25][4]~q\ $ (!\cp4|Add23~7\)))) # (GND)
-- \cp4|Add23~9\ = CARRY((\cp4|fifo[24][4]~q\ & ((\cp4|fifo[25][4]~q\) # (!\cp4|Add23~7\))) # (!\cp4|fifo[24][4]~q\ & (\cp4|fifo[25][4]~q\ & !\cp4|Add23~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[24][4]~q\,
	datab => \cp4|fifo[25][4]~q\,
	datad => VCC,
	cin => \cp4|Add23~7\,
	combout => \cp4|Add23~8_combout\,
	cout => \cp4|Add23~9\);

-- Location: LCCOMB_X14_Y20_N20
\cp4|Add23~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add23~12_combout\ = ((\cp4|fifo[25][6]~q\ $ (\cp4|fifo[24][6]~q\ $ (!\cp4|Add23~11\)))) # (GND)
-- \cp4|Add23~13\ = CARRY((\cp4|fifo[25][6]~q\ & ((\cp4|fifo[24][6]~q\) # (!\cp4|Add23~11\))) # (!\cp4|fifo[25][6]~q\ & (\cp4|fifo[24][6]~q\ & !\cp4|Add23~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[25][6]~q\,
	datab => \cp4|fifo[24][6]~q\,
	datad => VCC,
	cin => \cp4|Add23~11\,
	combout => \cp4|Add23~12_combout\,
	cout => \cp4|Add23~13\);

-- Location: LCCOMB_X14_Y20_N22
\cp4|Add23~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add23~14_combout\ = (\cp4|fifo[25][7]~q\ & ((\cp4|fifo[24][7]~q\ & (\cp4|Add23~13\ & VCC)) # (!\cp4|fifo[24][7]~q\ & (!\cp4|Add23~13\)))) # (!\cp4|fifo[25][7]~q\ & ((\cp4|fifo[24][7]~q\ & (!\cp4|Add23~13\)) # (!\cp4|fifo[24][7]~q\ & ((\cp4|Add23~13\) 
-- # (GND)))))
-- \cp4|Add23~15\ = CARRY((\cp4|fifo[25][7]~q\ & (!\cp4|fifo[24][7]~q\ & !\cp4|Add23~13\)) # (!\cp4|fifo[25][7]~q\ & ((!\cp4|Add23~13\) # (!\cp4|fifo[24][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[25][7]~q\,
	datab => \cp4|fifo[24][7]~q\,
	datad => VCC,
	cin => \cp4|Add23~13\,
	combout => \cp4|Add23~14_combout\,
	cout => \cp4|Add23~15\);

-- Location: LCCOMB_X14_Y20_N24
\cp4|Add23~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add23~16_combout\ = ((\cp4|fifo[25][8]~q\ $ (\cp4|fifo[24][8]~q\ $ (!\cp4|Add23~15\)))) # (GND)
-- \cp4|Add23~17\ = CARRY((\cp4|fifo[25][8]~q\ & ((\cp4|fifo[24][8]~q\) # (!\cp4|Add23~15\))) # (!\cp4|fifo[25][8]~q\ & (\cp4|fifo[24][8]~q\ & !\cp4|Add23~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[25][8]~q\,
	datab => \cp4|fifo[24][8]~q\,
	datad => VCC,
	cin => \cp4|Add23~15\,
	combout => \cp4|Add23~16_combout\,
	cout => \cp4|Add23~17\);

-- Location: LCCOMB_X14_Y20_N26
\cp4|Add23~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add23~18_combout\ = (\cp4|fifo[25][9]~q\ & ((\cp4|fifo[24][9]~q\ & (\cp4|Add23~17\ & VCC)) # (!\cp4|fifo[24][9]~q\ & (!\cp4|Add23~17\)))) # (!\cp4|fifo[25][9]~q\ & ((\cp4|fifo[24][9]~q\ & (!\cp4|Add23~17\)) # (!\cp4|fifo[24][9]~q\ & ((\cp4|Add23~17\) 
-- # (GND)))))
-- \cp4|Add23~19\ = CARRY((\cp4|fifo[25][9]~q\ & (!\cp4|fifo[24][9]~q\ & !\cp4|Add23~17\)) # (!\cp4|fifo[25][9]~q\ & ((!\cp4|Add23~17\) # (!\cp4|fifo[24][9]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[25][9]~q\,
	datab => \cp4|fifo[24][9]~q\,
	datad => VCC,
	cin => \cp4|Add23~17\,
	combout => \cp4|Add23~18_combout\,
	cout => \cp4|Add23~19\);

-- Location: LCCOMB_X14_Y20_N28
\cp4|Add23~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add23~20_combout\ = !\cp4|Add23~19\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \cp4|Add23~19\,
	combout => \cp4|Add23~20_combout\);

-- Location: LCCOMB_X15_Y20_N12
\cp4|Add21~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add21~2_combout\ = (\cp4|fifo[22][1]~q\ & ((\cp4|fifo[23][1]~q\ & (\cp4|Add21~1\ & VCC)) # (!\cp4|fifo[23][1]~q\ & (!\cp4|Add21~1\)))) # (!\cp4|fifo[22][1]~q\ & ((\cp4|fifo[23][1]~q\ & (!\cp4|Add21~1\)) # (!\cp4|fifo[23][1]~q\ & ((\cp4|Add21~1\) # 
-- (GND)))))
-- \cp4|Add21~3\ = CARRY((\cp4|fifo[22][1]~q\ & (!\cp4|fifo[23][1]~q\ & !\cp4|Add21~1\)) # (!\cp4|fifo[22][1]~q\ & ((!\cp4|Add21~1\) # (!\cp4|fifo[23][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[22][1]~q\,
	datab => \cp4|fifo[23][1]~q\,
	datad => VCC,
	cin => \cp4|Add21~1\,
	combout => \cp4|Add21~2_combout\,
	cout => \cp4|Add21~3\);

-- Location: LCCOMB_X15_Y20_N16
\cp4|Add21~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add21~6_combout\ = (\cp4|fifo[23][3]~q\ & ((\cp4|fifo[22][3]~q\ & (\cp4|Add21~5\ & VCC)) # (!\cp4|fifo[22][3]~q\ & (!\cp4|Add21~5\)))) # (!\cp4|fifo[23][3]~q\ & ((\cp4|fifo[22][3]~q\ & (!\cp4|Add21~5\)) # (!\cp4|fifo[22][3]~q\ & ((\cp4|Add21~5\) # 
-- (GND)))))
-- \cp4|Add21~7\ = CARRY((\cp4|fifo[23][3]~q\ & (!\cp4|fifo[22][3]~q\ & !\cp4|Add21~5\)) # (!\cp4|fifo[23][3]~q\ & ((!\cp4|Add21~5\) # (!\cp4|fifo[22][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[23][3]~q\,
	datab => \cp4|fifo[22][3]~q\,
	datad => VCC,
	cin => \cp4|Add21~5\,
	combout => \cp4|Add21~6_combout\,
	cout => \cp4|Add21~7\);

-- Location: LCCOMB_X15_Y20_N20
\cp4|Add21~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add21~10_combout\ = (\cp4|fifo[23][5]~q\ & ((\cp4|fifo[22][5]~q\ & (\cp4|Add21~9\ & VCC)) # (!\cp4|fifo[22][5]~q\ & (!\cp4|Add21~9\)))) # (!\cp4|fifo[23][5]~q\ & ((\cp4|fifo[22][5]~q\ & (!\cp4|Add21~9\)) # (!\cp4|fifo[22][5]~q\ & ((\cp4|Add21~9\) # 
-- (GND)))))
-- \cp4|Add21~11\ = CARRY((\cp4|fifo[23][5]~q\ & (!\cp4|fifo[22][5]~q\ & !\cp4|Add21~9\)) # (!\cp4|fifo[23][5]~q\ & ((!\cp4|Add21~9\) # (!\cp4|fifo[22][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[23][5]~q\,
	datab => \cp4|fifo[22][5]~q\,
	datad => VCC,
	cin => \cp4|Add21~9\,
	combout => \cp4|Add21~10_combout\,
	cout => \cp4|Add21~11\);

-- Location: LCCOMB_X15_Y20_N22
\cp4|Add21~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add21~12_combout\ = ((\cp4|fifo[23][6]~q\ $ (\cp4|fifo[22][6]~q\ $ (!\cp4|Add21~11\)))) # (GND)
-- \cp4|Add21~13\ = CARRY((\cp4|fifo[23][6]~q\ & ((\cp4|fifo[22][6]~q\) # (!\cp4|Add21~11\))) # (!\cp4|fifo[23][6]~q\ & (\cp4|fifo[22][6]~q\ & !\cp4|Add21~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[23][6]~q\,
	datab => \cp4|fifo[22][6]~q\,
	datad => VCC,
	cin => \cp4|Add21~11\,
	combout => \cp4|Add21~12_combout\,
	cout => \cp4|Add21~13\);

-- Location: LCCOMB_X14_Y21_N8
\cp4|Add22~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add22~0_combout\ = (\cp4|Add23~0_combout\ & (\cp4|Add21~0_combout\ $ (VCC))) # (!\cp4|Add23~0_combout\ & (\cp4|Add21~0_combout\ & VCC))
-- \cp4|Add22~1\ = CARRY((\cp4|Add23~0_combout\ & \cp4|Add21~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add23~0_combout\,
	datab => \cp4|Add21~0_combout\,
	datad => VCC,
	combout => \cp4|Add22~0_combout\,
	cout => \cp4|Add22~1\);

-- Location: LCCOMB_X14_Y21_N12
\cp4|Add22~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add22~4_combout\ = ((\cp4|Add23~4_combout\ $ (\cp4|Add21~4_combout\ $ (!\cp4|Add22~3\)))) # (GND)
-- \cp4|Add22~5\ = CARRY((\cp4|Add23~4_combout\ & ((\cp4|Add21~4_combout\) # (!\cp4|Add22~3\))) # (!\cp4|Add23~4_combout\ & (\cp4|Add21~4_combout\ & !\cp4|Add22~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add23~4_combout\,
	datab => \cp4|Add21~4_combout\,
	datad => VCC,
	cin => \cp4|Add22~3\,
	combout => \cp4|Add22~4_combout\,
	cout => \cp4|Add22~5\);

-- Location: LCCOMB_X14_Y21_N18
\cp4|Add22~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add22~10_combout\ = (\cp4|Add21~10_combout\ & ((\cp4|Add23~10_combout\ & (\cp4|Add22~9\ & VCC)) # (!\cp4|Add23~10_combout\ & (!\cp4|Add22~9\)))) # (!\cp4|Add21~10_combout\ & ((\cp4|Add23~10_combout\ & (!\cp4|Add22~9\)) # (!\cp4|Add23~10_combout\ & 
-- ((\cp4|Add22~9\) # (GND)))))
-- \cp4|Add22~11\ = CARRY((\cp4|Add21~10_combout\ & (!\cp4|Add23~10_combout\ & !\cp4|Add22~9\)) # (!\cp4|Add21~10_combout\ & ((!\cp4|Add22~9\) # (!\cp4|Add23~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add21~10_combout\,
	datab => \cp4|Add23~10_combout\,
	datad => VCC,
	cin => \cp4|Add22~9\,
	combout => \cp4|Add22~10_combout\,
	cout => \cp4|Add22~11\);

-- Location: LCCOMB_X14_Y21_N20
\cp4|Add22~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add22~12_combout\ = ((\cp4|Add21~12_combout\ $ (\cp4|Add23~12_combout\ $ (!\cp4|Add22~11\)))) # (GND)
-- \cp4|Add22~13\ = CARRY((\cp4|Add21~12_combout\ & ((\cp4|Add23~12_combout\) # (!\cp4|Add22~11\))) # (!\cp4|Add21~12_combout\ & (\cp4|Add23~12_combout\ & !\cp4|Add22~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add21~12_combout\,
	datab => \cp4|Add23~12_combout\,
	datad => VCC,
	cin => \cp4|Add22~11\,
	combout => \cp4|Add22~12_combout\,
	cout => \cp4|Add22~13\);

-- Location: LCCOMB_X14_Y21_N22
\cp4|Add22~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add22~14_combout\ = (\cp4|Add23~14_combout\ & ((\cp4|Add21~14_combout\ & (\cp4|Add22~13\ & VCC)) # (!\cp4|Add21~14_combout\ & (!\cp4|Add22~13\)))) # (!\cp4|Add23~14_combout\ & ((\cp4|Add21~14_combout\ & (!\cp4|Add22~13\)) # (!\cp4|Add21~14_combout\ & 
-- ((\cp4|Add22~13\) # (GND)))))
-- \cp4|Add22~15\ = CARRY((\cp4|Add23~14_combout\ & (!\cp4|Add21~14_combout\ & !\cp4|Add22~13\)) # (!\cp4|Add23~14_combout\ & ((!\cp4|Add22~13\) # (!\cp4|Add21~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add23~14_combout\,
	datab => \cp4|Add21~14_combout\,
	datad => VCC,
	cin => \cp4|Add22~13\,
	combout => \cp4|Add22~14_combout\,
	cout => \cp4|Add22~15\);

-- Location: LCCOMB_X14_Y21_N24
\cp4|Add22~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add22~16_combout\ = ((\cp4|Add23~16_combout\ $ (\cp4|Add21~16_combout\ $ (!\cp4|Add22~15\)))) # (GND)
-- \cp4|Add22~17\ = CARRY((\cp4|Add23~16_combout\ & ((\cp4|Add21~16_combout\) # (!\cp4|Add22~15\))) # (!\cp4|Add23~16_combout\ & (\cp4|Add21~16_combout\ & !\cp4|Add22~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add23~16_combout\,
	datab => \cp4|Add21~16_combout\,
	datad => VCC,
	cin => \cp4|Add22~15\,
	combout => \cp4|Add22~16_combout\,
	cout => \cp4|Add22~17\);

-- Location: LCCOMB_X15_Y22_N8
\cp4|Add19~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add19~6_combout\ = (\cp4|fifo[20][3]~q\ & ((\cp4|fifo[21][3]~q\ & (\cp4|Add19~5\ & VCC)) # (!\cp4|fifo[21][3]~q\ & (!\cp4|Add19~5\)))) # (!\cp4|fifo[20][3]~q\ & ((\cp4|fifo[21][3]~q\ & (!\cp4|Add19~5\)) # (!\cp4|fifo[21][3]~q\ & ((\cp4|Add19~5\) # 
-- (GND)))))
-- \cp4|Add19~7\ = CARRY((\cp4|fifo[20][3]~q\ & (!\cp4|fifo[21][3]~q\ & !\cp4|Add19~5\)) # (!\cp4|fifo[20][3]~q\ & ((!\cp4|Add19~5\) # (!\cp4|fifo[21][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[20][3]~q\,
	datab => \cp4|fifo[21][3]~q\,
	datad => VCC,
	cin => \cp4|Add19~5\,
	combout => \cp4|Add19~6_combout\,
	cout => \cp4|Add19~7\);

-- Location: LCCOMB_X15_Y22_N10
\cp4|Add19~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add19~8_combout\ = ((\cp4|fifo[20][4]~q\ $ (\cp4|fifo[21][4]~q\ $ (!\cp4|Add19~7\)))) # (GND)
-- \cp4|Add19~9\ = CARRY((\cp4|fifo[20][4]~q\ & ((\cp4|fifo[21][4]~q\) # (!\cp4|Add19~7\))) # (!\cp4|fifo[20][4]~q\ & (\cp4|fifo[21][4]~q\ & !\cp4|Add19~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[20][4]~q\,
	datab => \cp4|fifo[21][4]~q\,
	datad => VCC,
	cin => \cp4|Add19~7\,
	combout => \cp4|Add19~8_combout\,
	cout => \cp4|Add19~9\);

-- Location: LCCOMB_X15_Y22_N12
\cp4|Add19~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add19~10_combout\ = (\cp4|fifo[20][5]~q\ & ((\cp4|fifo[21][5]~q\ & (\cp4|Add19~9\ & VCC)) # (!\cp4|fifo[21][5]~q\ & (!\cp4|Add19~9\)))) # (!\cp4|fifo[20][5]~q\ & ((\cp4|fifo[21][5]~q\ & (!\cp4|Add19~9\)) # (!\cp4|fifo[21][5]~q\ & ((\cp4|Add19~9\) # 
-- (GND)))))
-- \cp4|Add19~11\ = CARRY((\cp4|fifo[20][5]~q\ & (!\cp4|fifo[21][5]~q\ & !\cp4|Add19~9\)) # (!\cp4|fifo[20][5]~q\ & ((!\cp4|Add19~9\) # (!\cp4|fifo[21][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[20][5]~q\,
	datab => \cp4|fifo[21][5]~q\,
	datad => VCC,
	cin => \cp4|Add19~9\,
	combout => \cp4|Add19~10_combout\,
	cout => \cp4|Add19~11\);

-- Location: LCCOMB_X15_Y22_N14
\cp4|Add19~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add19~12_combout\ = ((\cp4|fifo[21][6]~q\ $ (\cp4|fifo[20][6]~q\ $ (!\cp4|Add19~11\)))) # (GND)
-- \cp4|Add19~13\ = CARRY((\cp4|fifo[21][6]~q\ & ((\cp4|fifo[20][6]~q\) # (!\cp4|Add19~11\))) # (!\cp4|fifo[21][6]~q\ & (\cp4|fifo[20][6]~q\ & !\cp4|Add19~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[21][6]~q\,
	datab => \cp4|fifo[20][6]~q\,
	datad => VCC,
	cin => \cp4|Add19~11\,
	combout => \cp4|Add19~12_combout\,
	cout => \cp4|Add19~13\);

-- Location: LCCOMB_X15_Y22_N16
\cp4|Add19~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add19~14_combout\ = (\cp4|fifo[20][7]~q\ & ((\cp4|fifo[21][7]~q\ & (\cp4|Add19~13\ & VCC)) # (!\cp4|fifo[21][7]~q\ & (!\cp4|Add19~13\)))) # (!\cp4|fifo[20][7]~q\ & ((\cp4|fifo[21][7]~q\ & (!\cp4|Add19~13\)) # (!\cp4|fifo[21][7]~q\ & ((\cp4|Add19~13\) 
-- # (GND)))))
-- \cp4|Add19~15\ = CARRY((\cp4|fifo[20][7]~q\ & (!\cp4|fifo[21][7]~q\ & !\cp4|Add19~13\)) # (!\cp4|fifo[20][7]~q\ & ((!\cp4|Add19~13\) # (!\cp4|fifo[21][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[20][7]~q\,
	datab => \cp4|fifo[21][7]~q\,
	datad => VCC,
	cin => \cp4|Add19~13\,
	combout => \cp4|Add19~14_combout\,
	cout => \cp4|Add19~15\);

-- Location: LCCOMB_X15_Y22_N18
\cp4|Add19~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add19~16_combout\ = ((\cp4|fifo[20][8]~q\ $ (\cp4|fifo[21][8]~q\ $ (!\cp4|Add19~15\)))) # (GND)
-- \cp4|Add19~17\ = CARRY((\cp4|fifo[20][8]~q\ & ((\cp4|fifo[21][8]~q\) # (!\cp4|Add19~15\))) # (!\cp4|fifo[20][8]~q\ & (\cp4|fifo[21][8]~q\ & !\cp4|Add19~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[20][8]~q\,
	datab => \cp4|fifo[21][8]~q\,
	datad => VCC,
	cin => \cp4|Add19~15\,
	combout => \cp4|Add19~16_combout\,
	cout => \cp4|Add19~17\);

-- Location: LCCOMB_X15_Y22_N20
\cp4|Add19~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add19~18_combout\ = (\cp4|fifo[21][9]~q\ & ((\cp4|fifo[20][9]~q\ & (\cp4|Add19~17\ & VCC)) # (!\cp4|fifo[20][9]~q\ & (!\cp4|Add19~17\)))) # (!\cp4|fifo[21][9]~q\ & ((\cp4|fifo[20][9]~q\ & (!\cp4|Add19~17\)) # (!\cp4|fifo[20][9]~q\ & ((\cp4|Add19~17\) 
-- # (GND)))))
-- \cp4|Add19~19\ = CARRY((\cp4|fifo[21][9]~q\ & (!\cp4|fifo[20][9]~q\ & !\cp4|Add19~17\)) # (!\cp4|fifo[21][9]~q\ & ((!\cp4|Add19~17\) # (!\cp4|fifo[20][9]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[21][9]~q\,
	datab => \cp4|fifo[20][9]~q\,
	datad => VCC,
	cin => \cp4|Add19~17\,
	combout => \cp4|Add19~18_combout\,
	cout => \cp4|Add19~19\);

-- Location: LCCOMB_X15_Y22_N22
\cp4|Add19~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add19~20_combout\ = !\cp4|Add19~19\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \cp4|Add19~19\,
	combout => \cp4|Add19~20_combout\);

-- Location: LCCOMB_X16_Y22_N8
\cp4|Add17~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add17~0_combout\ = (\cp4|fifo[18][0]~q\ & (\cp4|fifo[19][0]~q\ $ (VCC))) # (!\cp4|fifo[18][0]~q\ & (\cp4|fifo[19][0]~q\ & VCC))
-- \cp4|Add17~1\ = CARRY((\cp4|fifo[18][0]~q\ & \cp4|fifo[19][0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[18][0]~q\,
	datab => \cp4|fifo[19][0]~q\,
	datad => VCC,
	combout => \cp4|Add17~0_combout\,
	cout => \cp4|Add17~1\);

-- Location: LCCOMB_X16_Y22_N10
\cp4|Add17~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add17~2_combout\ = (\cp4|fifo[19][1]~q\ & ((\cp4|fifo[18][1]~q\ & (\cp4|Add17~1\ & VCC)) # (!\cp4|fifo[18][1]~q\ & (!\cp4|Add17~1\)))) # (!\cp4|fifo[19][1]~q\ & ((\cp4|fifo[18][1]~q\ & (!\cp4|Add17~1\)) # (!\cp4|fifo[18][1]~q\ & ((\cp4|Add17~1\) # 
-- (GND)))))
-- \cp4|Add17~3\ = CARRY((\cp4|fifo[19][1]~q\ & (!\cp4|fifo[18][1]~q\ & !\cp4|Add17~1\)) # (!\cp4|fifo[19][1]~q\ & ((!\cp4|Add17~1\) # (!\cp4|fifo[18][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[19][1]~q\,
	datab => \cp4|fifo[18][1]~q\,
	datad => VCC,
	cin => \cp4|Add17~1\,
	combout => \cp4|Add17~2_combout\,
	cout => \cp4|Add17~3\);

-- Location: LCCOMB_X16_Y22_N12
\cp4|Add17~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add17~4_combout\ = ((\cp4|fifo[19][2]~q\ $ (\cp4|fifo[18][2]~q\ $ (!\cp4|Add17~3\)))) # (GND)
-- \cp4|Add17~5\ = CARRY((\cp4|fifo[19][2]~q\ & ((\cp4|fifo[18][2]~q\) # (!\cp4|Add17~3\))) # (!\cp4|fifo[19][2]~q\ & (\cp4|fifo[18][2]~q\ & !\cp4|Add17~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[19][2]~q\,
	datab => \cp4|fifo[18][2]~q\,
	datad => VCC,
	cin => \cp4|Add17~3\,
	combout => \cp4|Add17~4_combout\,
	cout => \cp4|Add17~5\);

-- Location: LCCOMB_X16_Y22_N18
\cp4|Add17~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add17~10_combout\ = (\cp4|fifo[18][5]~q\ & ((\cp4|fifo[19][5]~q\ & (\cp4|Add17~9\ & VCC)) # (!\cp4|fifo[19][5]~q\ & (!\cp4|Add17~9\)))) # (!\cp4|fifo[18][5]~q\ & ((\cp4|fifo[19][5]~q\ & (!\cp4|Add17~9\)) # (!\cp4|fifo[19][5]~q\ & ((\cp4|Add17~9\) # 
-- (GND)))))
-- \cp4|Add17~11\ = CARRY((\cp4|fifo[18][5]~q\ & (!\cp4|fifo[19][5]~q\ & !\cp4|Add17~9\)) # (!\cp4|fifo[18][5]~q\ & ((!\cp4|Add17~9\) # (!\cp4|fifo[19][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[18][5]~q\,
	datab => \cp4|fifo[19][5]~q\,
	datad => VCC,
	cin => \cp4|Add17~9\,
	combout => \cp4|Add17~10_combout\,
	cout => \cp4|Add17~11\);

-- Location: LCCOMB_X16_Y22_N24
\cp4|Add17~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add17~16_combout\ = ((\cp4|fifo[19][8]~q\ $ (\cp4|fifo[18][8]~q\ $ (!\cp4|Add17~15\)))) # (GND)
-- \cp4|Add17~17\ = CARRY((\cp4|fifo[19][8]~q\ & ((\cp4|fifo[18][8]~q\) # (!\cp4|Add17~15\))) # (!\cp4|fifo[19][8]~q\ & (\cp4|fifo[18][8]~q\ & !\cp4|Add17~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[19][8]~q\,
	datab => \cp4|fifo[18][8]~q\,
	datad => VCC,
	cin => \cp4|Add17~15\,
	combout => \cp4|Add17~16_combout\,
	cout => \cp4|Add17~17\);

-- Location: LCCOMB_X16_Y22_N26
\cp4|Add17~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add17~18_combout\ = (\cp4|fifo[18][9]~q\ & ((\cp4|fifo[19][9]~q\ & (\cp4|Add17~17\ & VCC)) # (!\cp4|fifo[19][9]~q\ & (!\cp4|Add17~17\)))) # (!\cp4|fifo[18][9]~q\ & ((\cp4|fifo[19][9]~q\ & (!\cp4|Add17~17\)) # (!\cp4|fifo[19][9]~q\ & ((\cp4|Add17~17\) 
-- # (GND)))))
-- \cp4|Add17~19\ = CARRY((\cp4|fifo[18][9]~q\ & (!\cp4|fifo[19][9]~q\ & !\cp4|Add17~17\)) # (!\cp4|fifo[18][9]~q\ & ((!\cp4|Add17~17\) # (!\cp4|fifo[19][9]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[18][9]~q\,
	datab => \cp4|fifo[19][9]~q\,
	datad => VCC,
	cin => \cp4|Add17~17\,
	combout => \cp4|Add17~18_combout\,
	cout => \cp4|Add17~19\);

-- Location: LCCOMB_X16_Y22_N28
\cp4|Add17~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add17~20_combout\ = !\cp4|Add17~19\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \cp4|Add17~19\,
	combout => \cp4|Add17~20_combout\);

-- Location: LCCOMB_X17_Y22_N8
\cp4|Add18~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add18~2_combout\ = (\cp4|Add17~2_combout\ & ((\cp4|Add19~2_combout\ & (\cp4|Add18~1\ & VCC)) # (!\cp4|Add19~2_combout\ & (!\cp4|Add18~1\)))) # (!\cp4|Add17~2_combout\ & ((\cp4|Add19~2_combout\ & (!\cp4|Add18~1\)) # (!\cp4|Add19~2_combout\ & 
-- ((\cp4|Add18~1\) # (GND)))))
-- \cp4|Add18~3\ = CARRY((\cp4|Add17~2_combout\ & (!\cp4|Add19~2_combout\ & !\cp4|Add18~1\)) # (!\cp4|Add17~2_combout\ & ((!\cp4|Add18~1\) # (!\cp4|Add19~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add17~2_combout\,
	datab => \cp4|Add19~2_combout\,
	datad => VCC,
	cin => \cp4|Add18~1\,
	combout => \cp4|Add18~2_combout\,
	cout => \cp4|Add18~3\);

-- Location: LCCOMB_X17_Y22_N12
\cp4|Add18~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add18~6_combout\ = (\cp4|Add19~6_combout\ & ((\cp4|Add17~6_combout\ & (\cp4|Add18~5\ & VCC)) # (!\cp4|Add17~6_combout\ & (!\cp4|Add18~5\)))) # (!\cp4|Add19~6_combout\ & ((\cp4|Add17~6_combout\ & (!\cp4|Add18~5\)) # (!\cp4|Add17~6_combout\ & 
-- ((\cp4|Add18~5\) # (GND)))))
-- \cp4|Add18~7\ = CARRY((\cp4|Add19~6_combout\ & (!\cp4|Add17~6_combout\ & !\cp4|Add18~5\)) # (!\cp4|Add19~6_combout\ & ((!\cp4|Add18~5\) # (!\cp4|Add17~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add19~6_combout\,
	datab => \cp4|Add17~6_combout\,
	datad => VCC,
	cin => \cp4|Add18~5\,
	combout => \cp4|Add18~6_combout\,
	cout => \cp4|Add18~7\);

-- Location: LCCOMB_X17_Y22_N14
\cp4|Add18~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add18~8_combout\ = ((\cp4|Add19~8_combout\ $ (\cp4|Add17~8_combout\ $ (!\cp4|Add18~7\)))) # (GND)
-- \cp4|Add18~9\ = CARRY((\cp4|Add19~8_combout\ & ((\cp4|Add17~8_combout\) # (!\cp4|Add18~7\))) # (!\cp4|Add19~8_combout\ & (\cp4|Add17~8_combout\ & !\cp4|Add18~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add19~8_combout\,
	datab => \cp4|Add17~8_combout\,
	datad => VCC,
	cin => \cp4|Add18~7\,
	combout => \cp4|Add18~8_combout\,
	cout => \cp4|Add18~9\);

-- Location: LCCOMB_X17_Y22_N22
\cp4|Add18~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add18~16_combout\ = ((\cp4|Add19~16_combout\ $ (\cp4|Add17~16_combout\ $ (!\cp4|Add18~15\)))) # (GND)
-- \cp4|Add18~17\ = CARRY((\cp4|Add19~16_combout\ & ((\cp4|Add17~16_combout\) # (!\cp4|Add18~15\))) # (!\cp4|Add19~16_combout\ & (\cp4|Add17~16_combout\ & !\cp4|Add18~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add19~16_combout\,
	datab => \cp4|Add17~16_combout\,
	datad => VCC,
	cin => \cp4|Add18~15\,
	combout => \cp4|Add18~16_combout\,
	cout => \cp4|Add18~17\);

-- Location: LCCOMB_X17_Y22_N24
\cp4|Add18~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add18~18_combout\ = (\cp4|Add17~18_combout\ & ((\cp4|Add19~18_combout\ & (\cp4|Add18~17\ & VCC)) # (!\cp4|Add19~18_combout\ & (!\cp4|Add18~17\)))) # (!\cp4|Add17~18_combout\ & ((\cp4|Add19~18_combout\ & (!\cp4|Add18~17\)) # (!\cp4|Add19~18_combout\ & 
-- ((\cp4|Add18~17\) # (GND)))))
-- \cp4|Add18~19\ = CARRY((\cp4|Add17~18_combout\ & (!\cp4|Add19~18_combout\ & !\cp4|Add18~17\)) # (!\cp4|Add17~18_combout\ & ((!\cp4|Add18~17\) # (!\cp4|Add19~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add17~18_combout\,
	datab => \cp4|Add19~18_combout\,
	datad => VCC,
	cin => \cp4|Add18~17\,
	combout => \cp4|Add18~18_combout\,
	cout => \cp4|Add18~19\);

-- Location: LCCOMB_X17_Y22_N26
\cp4|Add18~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add18~20_combout\ = ((\cp4|Add19~20_combout\ $ (\cp4|Add17~20_combout\ $ (!\cp4|Add18~19\)))) # (GND)
-- \cp4|Add18~21\ = CARRY((\cp4|Add19~20_combout\ & ((\cp4|Add17~20_combout\) # (!\cp4|Add18~19\))) # (!\cp4|Add19~20_combout\ & (\cp4|Add17~20_combout\ & !\cp4|Add18~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add19~20_combout\,
	datab => \cp4|Add17~20_combout\,
	datad => VCC,
	cin => \cp4|Add18~19\,
	combout => \cp4|Add18~20_combout\,
	cout => \cp4|Add18~21\);

-- Location: LCCOMB_X17_Y22_N28
\cp4|Add18~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add18~22_combout\ = \cp4|Add18~21\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \cp4|Add18~21\,
	combout => \cp4|Add18~22_combout\);

-- Location: LCCOMB_X21_Y22_N6
\cp4|Add20~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add20~0_combout\ = (\cp4|Add22~0_combout\ & (\cp4|Add18~0_combout\ $ (VCC))) # (!\cp4|Add22~0_combout\ & (\cp4|Add18~0_combout\ & VCC))
-- \cp4|Add20~1\ = CARRY((\cp4|Add22~0_combout\ & \cp4|Add18~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add22~0_combout\,
	datab => \cp4|Add18~0_combout\,
	datad => VCC,
	combout => \cp4|Add20~0_combout\,
	cout => \cp4|Add20~1\);

-- Location: LCCOMB_X21_Y22_N10
\cp4|Add20~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add20~4_combout\ = ((\cp4|Add22~4_combout\ $ (\cp4|Add18~4_combout\ $ (!\cp4|Add20~3\)))) # (GND)
-- \cp4|Add20~5\ = CARRY((\cp4|Add22~4_combout\ & ((\cp4|Add18~4_combout\) # (!\cp4|Add20~3\))) # (!\cp4|Add22~4_combout\ & (\cp4|Add18~4_combout\ & !\cp4|Add20~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add22~4_combout\,
	datab => \cp4|Add18~4_combout\,
	datad => VCC,
	cin => \cp4|Add20~3\,
	combout => \cp4|Add20~4_combout\,
	cout => \cp4|Add20~5\);

-- Location: LCCOMB_X21_Y22_N22
\cp4|Add20~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add20~16_combout\ = ((\cp4|Add22~16_combout\ $ (\cp4|Add18~16_combout\ $ (!\cp4|Add20~15\)))) # (GND)
-- \cp4|Add20~17\ = CARRY((\cp4|Add22~16_combout\ & ((\cp4|Add18~16_combout\) # (!\cp4|Add20~15\))) # (!\cp4|Add22~16_combout\ & (\cp4|Add18~16_combout\ & !\cp4|Add20~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add22~16_combout\,
	datab => \cp4|Add18~16_combout\,
	datad => VCC,
	cin => \cp4|Add20~15\,
	combout => \cp4|Add20~16_combout\,
	cout => \cp4|Add20~17\);

-- Location: LCCOMB_X21_Y22_N24
\cp4|Add20~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add20~18_combout\ = (\cp4|Add18~18_combout\ & ((\cp4|Add22~18_combout\ & (\cp4|Add20~17\ & VCC)) # (!\cp4|Add22~18_combout\ & (!\cp4|Add20~17\)))) # (!\cp4|Add18~18_combout\ & ((\cp4|Add22~18_combout\ & (!\cp4|Add20~17\)) # (!\cp4|Add22~18_combout\ & 
-- ((\cp4|Add20~17\) # (GND)))))
-- \cp4|Add20~19\ = CARRY((\cp4|Add18~18_combout\ & (!\cp4|Add22~18_combout\ & !\cp4|Add20~17\)) # (!\cp4|Add18~18_combout\ & ((!\cp4|Add20~17\) # (!\cp4|Add22~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add18~18_combout\,
	datab => \cp4|Add22~18_combout\,
	datad => VCC,
	cin => \cp4|Add20~17\,
	combout => \cp4|Add20~18_combout\,
	cout => \cp4|Add20~19\);

-- Location: LCCOMB_X20_Y22_N0
\cp4|Add24~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add24~0_combout\ = (\cp4|Add20~0_combout\ & (\cp4|Add28~0_combout\ $ (VCC))) # (!\cp4|Add20~0_combout\ & (\cp4|Add28~0_combout\ & VCC))
-- \cp4|Add24~1\ = CARRY((\cp4|Add20~0_combout\ & \cp4|Add28~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add20~0_combout\,
	datab => \cp4|Add28~0_combout\,
	datad => VCC,
	combout => \cp4|Add24~0_combout\,
	cout => \cp4|Add24~1\);

-- Location: LCCOMB_X20_Y22_N6
\cp4|Add24~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add24~6_combout\ = (\cp4|Add28~6_combout\ & ((\cp4|Add20~6_combout\ & (\cp4|Add24~5\ & VCC)) # (!\cp4|Add20~6_combout\ & (!\cp4|Add24~5\)))) # (!\cp4|Add28~6_combout\ & ((\cp4|Add20~6_combout\ & (!\cp4|Add24~5\)) # (!\cp4|Add20~6_combout\ & 
-- ((\cp4|Add24~5\) # (GND)))))
-- \cp4|Add24~7\ = CARRY((\cp4|Add28~6_combout\ & (!\cp4|Add20~6_combout\ & !\cp4|Add24~5\)) # (!\cp4|Add28~6_combout\ & ((!\cp4|Add24~5\) # (!\cp4|Add20~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add28~6_combout\,
	datab => \cp4|Add20~6_combout\,
	datad => VCC,
	cin => \cp4|Add24~5\,
	combout => \cp4|Add24~6_combout\,
	cout => \cp4|Add24~7\);

-- Location: LCCOMB_X20_Y22_N8
\cp4|Add24~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add24~8_combout\ = ((\cp4|Add28~8_combout\ $ (\cp4|Add20~8_combout\ $ (!\cp4|Add24~7\)))) # (GND)
-- \cp4|Add24~9\ = CARRY((\cp4|Add28~8_combout\ & ((\cp4|Add20~8_combout\) # (!\cp4|Add24~7\))) # (!\cp4|Add28~8_combout\ & (\cp4|Add20~8_combout\ & !\cp4|Add24~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add28~8_combout\,
	datab => \cp4|Add20~8_combout\,
	datad => VCC,
	cin => \cp4|Add24~7\,
	combout => \cp4|Add24~8_combout\,
	cout => \cp4|Add24~9\);

-- Location: LCCOMB_X20_Y22_N10
\cp4|Add24~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add24~10_combout\ = (\cp4|Add28~10_combout\ & ((\cp4|Add20~10_combout\ & (\cp4|Add24~9\ & VCC)) # (!\cp4|Add20~10_combout\ & (!\cp4|Add24~9\)))) # (!\cp4|Add28~10_combout\ & ((\cp4|Add20~10_combout\ & (!\cp4|Add24~9\)) # (!\cp4|Add20~10_combout\ & 
-- ((\cp4|Add24~9\) # (GND)))))
-- \cp4|Add24~11\ = CARRY((\cp4|Add28~10_combout\ & (!\cp4|Add20~10_combout\ & !\cp4|Add24~9\)) # (!\cp4|Add28~10_combout\ & ((!\cp4|Add24~9\) # (!\cp4|Add20~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add28~10_combout\,
	datab => \cp4|Add20~10_combout\,
	datad => VCC,
	cin => \cp4|Add24~9\,
	combout => \cp4|Add24~10_combout\,
	cout => \cp4|Add24~11\);

-- Location: LCCOMB_X20_Y22_N12
\cp4|Add24~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add24~12_combout\ = ((\cp4|Add28~12_combout\ $ (\cp4|Add20~12_combout\ $ (!\cp4|Add24~11\)))) # (GND)
-- \cp4|Add24~13\ = CARRY((\cp4|Add28~12_combout\ & ((\cp4|Add20~12_combout\) # (!\cp4|Add24~11\))) # (!\cp4|Add28~12_combout\ & (\cp4|Add20~12_combout\ & !\cp4|Add24~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add28~12_combout\,
	datab => \cp4|Add20~12_combout\,
	datad => VCC,
	cin => \cp4|Add24~11\,
	combout => \cp4|Add24~12_combout\,
	cout => \cp4|Add24~13\);

-- Location: LCCOMB_X20_Y22_N14
\cp4|Add24~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add24~14_combout\ = (\cp4|Add28~14_combout\ & ((\cp4|Add20~14_combout\ & (\cp4|Add24~13\ & VCC)) # (!\cp4|Add20~14_combout\ & (!\cp4|Add24~13\)))) # (!\cp4|Add28~14_combout\ & ((\cp4|Add20~14_combout\ & (!\cp4|Add24~13\)) # (!\cp4|Add20~14_combout\ & 
-- ((\cp4|Add24~13\) # (GND)))))
-- \cp4|Add24~15\ = CARRY((\cp4|Add28~14_combout\ & (!\cp4|Add20~14_combout\ & !\cp4|Add24~13\)) # (!\cp4|Add28~14_combout\ & ((!\cp4|Add24~13\) # (!\cp4|Add20~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add28~14_combout\,
	datab => \cp4|Add20~14_combout\,
	datad => VCC,
	cin => \cp4|Add24~13\,
	combout => \cp4|Add24~14_combout\,
	cout => \cp4|Add24~15\);

-- Location: LCCOMB_X20_Y22_N16
\cp4|Add24~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add24~16_combout\ = ((\cp4|Add20~16_combout\ $ (\cp4|Add28~16_combout\ $ (!\cp4|Add24~15\)))) # (GND)
-- \cp4|Add24~17\ = CARRY((\cp4|Add20~16_combout\ & ((\cp4|Add28~16_combout\) # (!\cp4|Add24~15\))) # (!\cp4|Add20~16_combout\ & (\cp4|Add28~16_combout\ & !\cp4|Add24~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add20~16_combout\,
	datab => \cp4|Add28~16_combout\,
	datad => VCC,
	cin => \cp4|Add24~15\,
	combout => \cp4|Add24~16_combout\,
	cout => \cp4|Add24~17\);

-- Location: LCCOMB_X20_Y22_N18
\cp4|Add24~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add24~18_combout\ = (\cp4|Add20~18_combout\ & ((\cp4|Add28~18_combout\ & (\cp4|Add24~17\ & VCC)) # (!\cp4|Add28~18_combout\ & (!\cp4|Add24~17\)))) # (!\cp4|Add20~18_combout\ & ((\cp4|Add28~18_combout\ & (!\cp4|Add24~17\)) # (!\cp4|Add28~18_combout\ & 
-- ((\cp4|Add24~17\) # (GND)))))
-- \cp4|Add24~19\ = CARRY((\cp4|Add20~18_combout\ & (!\cp4|Add28~18_combout\ & !\cp4|Add24~17\)) # (!\cp4|Add20~18_combout\ & ((!\cp4|Add24~17\) # (!\cp4|Add28~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add20~18_combout\,
	datab => \cp4|Add28~18_combout\,
	datad => VCC,
	cin => \cp4|Add24~17\,
	combout => \cp4|Add24~18_combout\,
	cout => \cp4|Add24~19\);

-- Location: LCCOMB_X20_Y22_N22
\cp4|Add24~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add24~22_combout\ = (\cp4|Add28~22_combout\ & ((\cp4|Add20~22_combout\ & (\cp4|Add24~21\ & VCC)) # (!\cp4|Add20~22_combout\ & (!\cp4|Add24~21\)))) # (!\cp4|Add28~22_combout\ & ((\cp4|Add20~22_combout\ & (!\cp4|Add24~21\)) # (!\cp4|Add20~22_combout\ & 
-- ((\cp4|Add24~21\) # (GND)))))
-- \cp4|Add24~23\ = CARRY((\cp4|Add28~22_combout\ & (!\cp4|Add20~22_combout\ & !\cp4|Add24~21\)) # (!\cp4|Add28~22_combout\ & ((!\cp4|Add24~21\) # (!\cp4|Add20~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add28~22_combout\,
	datab => \cp4|Add20~22_combout\,
	datad => VCC,
	cin => \cp4|Add24~21\,
	combout => \cp4|Add24~22_combout\,
	cout => \cp4|Add24~23\);

-- Location: LCCOMB_X20_Y22_N24
\cp4|Add24~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add24~24_combout\ = ((\cp4|Add28~24_combout\ $ (\cp4|Add20~24_combout\ $ (!\cp4|Add24~23\)))) # (GND)
-- \cp4|Add24~25\ = CARRY((\cp4|Add28~24_combout\ & ((\cp4|Add20~24_combout\) # (!\cp4|Add24~23\))) # (!\cp4|Add28~24_combout\ & (\cp4|Add20~24_combout\ & !\cp4|Add24~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add28~24_combout\,
	datab => \cp4|Add20~24_combout\,
	datad => VCC,
	cin => \cp4|Add24~23\,
	combout => \cp4|Add24~24_combout\,
	cout => \cp4|Add24~25\);

-- Location: LCCOMB_X20_Y20_N10
\cp4|dato_out[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|dato_out[0]~0_combout\ = (\cp4|Add24~10_combout\ & ((\cp4|Add16~10_combout\ & (\cp4|Add30~9_cout\ & VCC)) # (!\cp4|Add16~10_combout\ & (!\cp4|Add30~9_cout\)))) # (!\cp4|Add24~10_combout\ & ((\cp4|Add16~10_combout\ & (!\cp4|Add30~9_cout\)) # 
-- (!\cp4|Add16~10_combout\ & ((\cp4|Add30~9_cout\) # (GND)))))
-- \cp4|dato_out[0]~1\ = CARRY((\cp4|Add24~10_combout\ & (!\cp4|Add16~10_combout\ & !\cp4|Add30~9_cout\)) # (!\cp4|Add24~10_combout\ & ((!\cp4|Add30~9_cout\) # (!\cp4|Add16~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add24~10_combout\,
	datab => \cp4|Add16~10_combout\,
	datad => VCC,
	cin => \cp4|Add30~9_cout\,
	combout => \cp4|dato_out[0]~0_combout\,
	cout => \cp4|dato_out[0]~1\);

-- Location: LCCOMB_X20_Y20_N12
\cp4|dato_out[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|dato_out[1]~2_combout\ = ((\cp4|Add24~12_combout\ $ (\cp4|Add16~12_combout\ $ (!\cp4|dato_out[0]~1\)))) # (GND)
-- \cp4|dato_out[1]~3\ = CARRY((\cp4|Add24~12_combout\ & ((\cp4|Add16~12_combout\) # (!\cp4|dato_out[0]~1\))) # (!\cp4|Add24~12_combout\ & (\cp4|Add16~12_combout\ & !\cp4|dato_out[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add24~12_combout\,
	datab => \cp4|Add16~12_combout\,
	datad => VCC,
	cin => \cp4|dato_out[0]~1\,
	combout => \cp4|dato_out[1]~2_combout\,
	cout => \cp4|dato_out[1]~3\);

-- Location: LCCOMB_X20_Y20_N14
\cp4|dato_out[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|dato_out[2]~4_combout\ = (\cp4|Add24~14_combout\ & ((\cp4|Add16~14_combout\ & (\cp4|dato_out[1]~3\ & VCC)) # (!\cp4|Add16~14_combout\ & (!\cp4|dato_out[1]~3\)))) # (!\cp4|Add24~14_combout\ & ((\cp4|Add16~14_combout\ & (!\cp4|dato_out[1]~3\)) # 
-- (!\cp4|Add16~14_combout\ & ((\cp4|dato_out[1]~3\) # (GND)))))
-- \cp4|dato_out[2]~5\ = CARRY((\cp4|Add24~14_combout\ & (!\cp4|Add16~14_combout\ & !\cp4|dato_out[1]~3\)) # (!\cp4|Add24~14_combout\ & ((!\cp4|dato_out[1]~3\) # (!\cp4|Add16~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add24~14_combout\,
	datab => \cp4|Add16~14_combout\,
	datad => VCC,
	cin => \cp4|dato_out[1]~3\,
	combout => \cp4|dato_out[2]~4_combout\,
	cout => \cp4|dato_out[2]~5\);

-- Location: LCCOMB_X20_Y20_N16
\cp4|dato_out[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|dato_out[3]~6_combout\ = ((\cp4|Add24~16_combout\ $ (\cp4|Add16~16_combout\ $ (!\cp4|dato_out[2]~5\)))) # (GND)
-- \cp4|dato_out[3]~7\ = CARRY((\cp4|Add24~16_combout\ & ((\cp4|Add16~16_combout\) # (!\cp4|dato_out[2]~5\))) # (!\cp4|Add24~16_combout\ & (\cp4|Add16~16_combout\ & !\cp4|dato_out[2]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add24~16_combout\,
	datab => \cp4|Add16~16_combout\,
	datad => VCC,
	cin => \cp4|dato_out[2]~5\,
	combout => \cp4|dato_out[3]~6_combout\,
	cout => \cp4|dato_out[3]~7\);

-- Location: LCCOMB_X20_Y20_N18
\cp4|dato_out[4]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|dato_out[4]~8_combout\ = (\cp4|Add24~18_combout\ & ((\cp4|Add16~18_combout\ & (\cp4|dato_out[3]~7\ & VCC)) # (!\cp4|Add16~18_combout\ & (!\cp4|dato_out[3]~7\)))) # (!\cp4|Add24~18_combout\ & ((\cp4|Add16~18_combout\ & (!\cp4|dato_out[3]~7\)) # 
-- (!\cp4|Add16~18_combout\ & ((\cp4|dato_out[3]~7\) # (GND)))))
-- \cp4|dato_out[4]~9\ = CARRY((\cp4|Add24~18_combout\ & (!\cp4|Add16~18_combout\ & !\cp4|dato_out[3]~7\)) # (!\cp4|Add24~18_combout\ & ((!\cp4|dato_out[3]~7\) # (!\cp4|Add16~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add24~18_combout\,
	datab => \cp4|Add16~18_combout\,
	datad => VCC,
	cin => \cp4|dato_out[3]~7\,
	combout => \cp4|dato_out[4]~8_combout\,
	cout => \cp4|dato_out[4]~9\);

-- Location: LCCOMB_X20_Y20_N20
\cp4|dato_out[5]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|dato_out[5]~10_combout\ = ((\cp4|Add16~20_combout\ $ (\cp4|Add24~20_combout\ $ (!\cp4|dato_out[4]~9\)))) # (GND)
-- \cp4|dato_out[5]~11\ = CARRY((\cp4|Add16~20_combout\ & ((\cp4|Add24~20_combout\) # (!\cp4|dato_out[4]~9\))) # (!\cp4|Add16~20_combout\ & (\cp4|Add24~20_combout\ & !\cp4|dato_out[4]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add16~20_combout\,
	datab => \cp4|Add24~20_combout\,
	datad => VCC,
	cin => \cp4|dato_out[4]~9\,
	combout => \cp4|dato_out[5]~10_combout\,
	cout => \cp4|dato_out[5]~11\);

-- Location: LCCOMB_X20_Y20_N22
\cp4|dato_out[6]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|dato_out[6]~12_combout\ = (\cp4|Add24~22_combout\ & ((\cp4|Add16~22_combout\ & (\cp4|dato_out[5]~11\ & VCC)) # (!\cp4|Add16~22_combout\ & (!\cp4|dato_out[5]~11\)))) # (!\cp4|Add24~22_combout\ & ((\cp4|Add16~22_combout\ & (!\cp4|dato_out[5]~11\)) # 
-- (!\cp4|Add16~22_combout\ & ((\cp4|dato_out[5]~11\) # (GND)))))
-- \cp4|dato_out[6]~13\ = CARRY((\cp4|Add24~22_combout\ & (!\cp4|Add16~22_combout\ & !\cp4|dato_out[5]~11\)) # (!\cp4|Add24~22_combout\ & ((!\cp4|dato_out[5]~11\) # (!\cp4|Add16~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add24~22_combout\,
	datab => \cp4|Add16~22_combout\,
	datad => VCC,
	cin => \cp4|dato_out[5]~11\,
	combout => \cp4|dato_out[6]~12_combout\,
	cout => \cp4|dato_out[6]~13\);

-- Location: FF_X20_Y20_N31
\cp3|cp1|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp3|cp2|ALT_INV_clkout~clkctrl_outclk\,
	d => \cp3|cp1|Q~5_combout\,
	asdata => \cp4|dato_out[0]~0_combout\,
	clrn => \reset~input_o\,
	sload => \cp3|cp3|estado.e1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp3|cp1|Q\(2));

-- Location: FF_X22_Y25_N13
\cp3|cp2|contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cp3|cp2|contador~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp3|cp2|contador\(0));

-- Location: FF_X16_Y20_N31
\cp3|cp5|est.e1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp3|cp2|clkout~clkctrl_outclk\,
	d => \cp3|cp5|est~7_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp3|cp5|est.e1~q\);

-- Location: LCCOMB_X22_Y25_N12
\cp3|cp2|contador~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp3|cp2|contador~2_combout\ = (!\cp3|cp2|contador\(0) & !\cp3|cp2|contador\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cp3|cp2|contador\(0),
	datad => \cp3|cp2|contador\(2),
	combout => \cp3|cp2|contador~2_combout\);

-- Location: LCCOMB_X16_Y20_N30
\cp3|cp5|est~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp3|cp5|est~7_combout\ = (\cp3|cp3|estado.e1~q\ & !\cp3|cp5|est.e0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cp3|cp3|estado.e1~q\,
	datad => \cp3|cp5|est.e0~q\,
	combout => \cp3|cp5|est~7_combout\);

-- Location: LCCOMB_X28_Y18_N0
\cp1|sc_prev~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp1|sc_prev~2_combout\ = (\cp1|datoin:indice[1]~q\ & (!\cp1|datoin:indice[0]~q\ & (\cp1|datoin:indice[3]~q\ & !\cp1|datoin:indice[2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp1|datoin:indice[1]~q\,
	datab => \cp1|datoin:indice[0]~q\,
	datac => \cp1|datoin:indice[3]~q\,
	datad => \cp1|datoin:indice[2]~q\,
	combout => \cp1|sc_prev~2_combout\);

-- Location: FF_X24_Y19_N31
\cp2|contador[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cp2|contador~4_combout\,
	clrn => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp2|contador\(8));

-- Location: FF_X23_Y19_N13
\cp2|contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cp2|contador~9_combout\,
	clrn => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp2|contador\(2));

-- Location: LCCOMB_X27_Y19_N22
\cp1|datoin~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp1|datoin~1_combout\ = (\cp1|datoin:indice[3]~q\ & ((\cp1|datoin:indice[2]~q\) # ((\cp1|datoin:indice[0]~q\ & \cp1|datoin:indice[1]~q\)))) # (!\cp1|datoin:indice[3]~q\ & (!\cp1|datoin:indice[0]~q\ & (!\cp1|datoin:indice[1]~q\ & 
-- !\cp1|datoin:indice[2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp1|datoin:indice[0]~q\,
	datab => \cp1|datoin:indice[3]~q\,
	datac => \cp1|datoin:indice[1]~q\,
	datad => \cp1|datoin:indice[2]~q\,
	combout => \cp1|datoin~1_combout\);

-- Location: FF_X26_Y19_N23
\cp1|datoin:altaimp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp1|clkadc|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \cp1|altaimp~3_combout\,
	clrn => \reset~input_o\,
	ena => \cp1|indice~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp1|datoin:altaimp[0]~q\);

-- Location: LCCOMB_X27_Y19_N6
\cp1|Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp1|Add2~0_combout\ = \cp1|datoin:indice[2]~q\ $ (((\cp1|datoin:indice[0]~q\ & \cp1|datoin:indice[1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp1|datoin:indice[2]~q\,
	datab => \cp1|datoin:indice[0]~q\,
	datac => \cp1|datoin:indice[1]~q\,
	combout => \cp1|Add2~0_combout\);

-- Location: LCCOMB_X24_Y19_N30
\cp2|contador~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp2|contador~4_combout\ = (\cp2|Add0~16_combout\ & \cp2|contador~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cp2|Add0~16_combout\,
	datad => \cp2|contador~0_combout\,
	combout => \cp2|contador~4_combout\);

-- Location: LCCOMB_X23_Y19_N12
\cp2|contador~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp2|contador~9_combout\ = (\cp2|contador~0_combout\ & \cp2|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cp2|contador~0_combout\,
	datac => \cp2|Add0~4_combout\,
	combout => \cp2|contador~9_combout\);

-- Location: LCCOMB_X26_Y19_N22
\cp1|altaimp~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp1|altaimp~3_combout\ = (!\cp1|datoin:scint~q\ & (!\cp1|datoin:altaimp[0]~q\ & !\cp2|clkout~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cp1|datoin:scint~q\,
	datac => \cp1|datoin:altaimp[0]~q\,
	datad => \cp2|clkout~q\,
	combout => \cp1|altaimp~3_combout\);

-- Location: LCCOMB_X26_Y19_N12
\cp1|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp1|Add0~0_combout\ = \cp1|datoin:altaimp[3]~q\ $ (((\cp1|datoin:altaimp[0]~q\ & (\cp1|datoin:altaimp[2]~q\ & \cp1|datoin:altaimp[1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp1|datoin:altaimp[0]~q\,
	datab => \cp1|datoin:altaimp[3]~q\,
	datac => \cp1|datoin:altaimp[2]~q\,
	datad => \cp1|datoin:altaimp[1]~q\,
	combout => \cp1|Add0~0_combout\);

-- Location: FF_X14_Y22_N23
\cp4|fifo[31][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[30][6]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[31][6]~q\);

-- Location: FF_X14_Y22_N19
\cp4|fifo[31][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[30][5]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[31][5]~q\);

-- Location: FF_X14_Y22_N15
\cp4|fifo[31][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[30][3]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[31][3]~q\);

-- Location: FF_X28_Y19_N3
\cp1|datoin:dato[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp1|clkadc|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \cp1|dato~6_combout\,
	ena => \cp1|datoin:dato[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp1|datoin:dato[3]~q\);

-- Location: LCCOMB_X27_Y19_N2
\cp1|Decoder0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp1|Decoder0~0_combout\ = (\cp1|datoin:indice[0]~q\ & (!\cp1|datoin:indice[3]~q\ & (!\cp1|datoin:indice[1]~q\ & !\cp1|datoin:indice[2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp1|datoin:indice[0]~q\,
	datab => \cp1|datoin:indice[3]~q\,
	datac => \cp1|datoin:indice[1]~q\,
	datad => \cp1|datoin:indice[2]~q\,
	combout => \cp1|Decoder0~0_combout\);

-- Location: LCCOMB_X28_Y18_N18
\cp1|Decoder0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp1|Decoder0~1_combout\ = (\cp1|datoin:indice[1]~q\ & (!\cp1|datoin:indice[0]~q\ & (!\cp1|datoin:indice[3]~q\ & !\cp1|datoin:indice[2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp1|datoin:indice[1]~q\,
	datab => \cp1|datoin:indice[0]~q\,
	datac => \cp1|datoin:indice[3]~q\,
	datad => \cp1|datoin:indice[2]~q\,
	combout => \cp1|Decoder0~1_combout\);

-- Location: LCCOMB_X28_Y19_N4
\cp1|Decoder0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp1|Decoder0~2_combout\ = (!\cp1|datoin:indice[2]~q\ & (\cp1|datoin:indice[1]~q\ & (\cp1|datoin:indice[0]~q\ & !\cp1|datoin:indice[3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp1|datoin:indice[2]~q\,
	datab => \cp1|datoin:indice[1]~q\,
	datac => \cp1|datoin:indice[0]~q\,
	datad => \cp1|datoin:indice[3]~q\,
	combout => \cp1|Decoder0~2_combout\);

-- Location: LCCOMB_X27_Y19_N12
\cp1|Decoder0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp1|Decoder0~3_combout\ = (!\cp1|datoin:indice[0]~q\ & (!\cp1|datoin:indice[3]~q\ & (!\cp1|datoin:indice[1]~q\ & \cp1|datoin:indice[2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp1|datoin:indice[0]~q\,
	datab => \cp1|datoin:indice[3]~q\,
	datac => \cp1|datoin:indice[1]~q\,
	datad => \cp1|datoin:indice[2]~q\,
	combout => \cp1|Decoder0~3_combout\);

-- Location: LCCOMB_X28_Y19_N6
\cp1|Decoder0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp1|Decoder0~4_combout\ = (\cp1|datoin:indice[2]~q\ & (!\cp1|datoin:indice[1]~q\ & (\cp1|datoin:indice[0]~q\ & !\cp1|datoin:indice[3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp1|datoin:indice[2]~q\,
	datab => \cp1|datoin:indice[1]~q\,
	datac => \cp1|datoin:indice[0]~q\,
	datad => \cp1|datoin:indice[3]~q\,
	combout => \cp1|Decoder0~4_combout\);

-- Location: LCCOMB_X27_Y19_N8
\cp1|Decoder0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp1|Decoder0~5_combout\ = (!\cp1|datoin:indice[0]~q\ & (!\cp1|datoin:indice[3]~q\ & (\cp1|datoin:indice[1]~q\ & \cp1|datoin:indice[2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp1|datoin:indice[0]~q\,
	datab => \cp1|datoin:indice[3]~q\,
	datac => \cp1|datoin:indice[1]~q\,
	datad => \cp1|datoin:indice[2]~q\,
	combout => \cp1|Decoder0~5_combout\);

-- Location: LCCOMB_X27_Y19_N10
\cp1|Decoder0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp1|Decoder0~6_combout\ = (\cp1|datoin:indice[0]~q\ & (\cp1|datoin:indice[2]~q\ & (\cp1|datoin:indice[1]~q\ & !\cp1|datoin:indice[3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp1|datoin:indice[0]~q\,
	datab => \cp1|datoin:indice[2]~q\,
	datac => \cp1|datoin:indice[1]~q\,
	datad => \cp1|datoin:indice[3]~q\,
	combout => \cp1|Decoder0~6_combout\);

-- Location: LCCOMB_X28_Y19_N2
\cp1|dato~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp1|dato~6_combout\ = (\cp1|datoin~3_combout\ & ((\cp1|Decoder0~6_combout\ & ((\sdi~input_o\))) # (!\cp1|Decoder0~6_combout\ & (\cp1|datoin:dato[3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp1|Decoder0~6_combout\,
	datab => \cp1|datoin~3_combout\,
	datac => \cp1|datoin:dato[3]~q\,
	datad => \sdi~input_o\,
	combout => \cp1|dato~6_combout\);

-- Location: LCCOMB_X28_Y19_N20
\cp1|Decoder0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp1|Decoder0~7_combout\ = (!\cp1|datoin:indice[2]~q\ & (!\cp1|datoin:indice[1]~q\ & (!\cp1|datoin:indice[0]~q\ & \cp1|datoin:indice[3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp1|datoin:indice[2]~q\,
	datab => \cp1|datoin:indice[1]~q\,
	datac => \cp1|datoin:indice[0]~q\,
	datad => \cp1|datoin:indice[3]~q\,
	combout => \cp1|Decoder0~7_combout\);

-- Location: LCCOMB_X28_Y19_N10
\cp1|Decoder0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp1|Decoder0~8_combout\ = (!\cp1|datoin:indice[2]~q\ & (!\cp1|datoin:indice[1]~q\ & (\cp1|datoin:indice[0]~q\ & \cp1|datoin:indice[3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp1|datoin:indice[2]~q\,
	datab => \cp1|datoin:indice[1]~q\,
	datac => \cp1|datoin:indice[0]~q\,
	datad => \cp1|datoin:indice[3]~q\,
	combout => \cp1|Decoder0~8_combout\);

-- Location: FF_X19_Y20_N23
\cp3|cp1|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp3|cp2|ALT_INV_clkout~clkctrl_outclk\,
	d => \cp4|Add30~13_combout\,
	clrn => \reset~input_o\,
	ena => \cp3|cp1|Q[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp3|cp1|Q\(8));

-- Location: FF_X19_Y20_N9
\cp3|cp1|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp3|cp2|ALT_INV_clkout~clkctrl_outclk\,
	d => \cp4|Add30~14_combout\,
	clrn => \reset~input_o\,
	ena => \cp3|cp1|Q[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp3|cp1|Q\(7));

-- Location: LCCOMB_X19_Y20_N22
\cp4|Add30~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add30~13_combout\ = (\cp3|cp3|estado.e1~q\ & ((\cp4|dato_out[6]~12_combout\))) # (!\cp3|cp3|estado.e1~q\ & (\cp3|cp1|Q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cp3|cp1|Q\(7),
	datac => \cp3|cp3|estado.e1~q\,
	datad => \cp4|dato_out[6]~12_combout\,
	combout => \cp4|Add30~13_combout\);

-- Location: FF_X19_Y20_N19
\cp3|cp1|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp3|cp2|ALT_INV_clkout~clkctrl_outclk\,
	d => \cp4|Add30~15_combout\,
	clrn => \reset~input_o\,
	ena => \cp3|cp1|Q[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp3|cp1|Q\(6));

-- Location: LCCOMB_X19_Y20_N8
\cp4|Add30~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add30~14_combout\ = (\cp3|cp3|estado.e1~q\ & (\cp4|dato_out[5]~10_combout\)) # (!\cp3|cp3|estado.e1~q\ & ((\cp3|cp1|Q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cp3|cp3|estado.e1~q\,
	datac => \cp4|dato_out[5]~10_combout\,
	datad => \cp3|cp1|Q\(6),
	combout => \cp4|Add30~14_combout\);

-- Location: FF_X19_Y20_N13
\cp3|cp1|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp3|cp2|ALT_INV_clkout~clkctrl_outclk\,
	d => \cp4|Add30~16_combout\,
	clrn => \reset~input_o\,
	ena => \cp3|cp1|Q[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp3|cp1|Q\(5));

-- Location: LCCOMB_X19_Y20_N18
\cp4|Add30~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add30~15_combout\ = (\cp3|cp3|estado.e1~q\ & ((\cp4|dato_out[4]~8_combout\))) # (!\cp3|cp3|estado.e1~q\ & (\cp3|cp1|Q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp3|cp1|Q\(5),
	datac => \cp3|cp3|estado.e1~q\,
	datad => \cp4|dato_out[4]~8_combout\,
	combout => \cp4|Add30~15_combout\);

-- Location: FF_X19_Y20_N11
\cp3|cp1|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp3|cp2|ALT_INV_clkout~clkctrl_outclk\,
	d => \cp4|Add30~17_combout\,
	clrn => \reset~input_o\,
	ena => \cp3|cp1|Q[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp3|cp1|Q\(4));

-- Location: LCCOMB_X19_Y20_N12
\cp4|Add30~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add30~16_combout\ = (\cp3|cp3|estado.e1~q\ & ((\cp4|dato_out[3]~6_combout\))) # (!\cp3|cp3|estado.e1~q\ & (\cp3|cp1|Q\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp3|cp1|Q\(4),
	datac => \cp3|cp3|estado.e1~q\,
	datad => \cp4|dato_out[3]~6_combout\,
	combout => \cp4|Add30~16_combout\);

-- Location: FF_X19_Y20_N21
\cp3|cp1|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp3|cp2|ALT_INV_clkout~clkctrl_outclk\,
	d => \cp4|Add30~18_combout\,
	clrn => \reset~input_o\,
	ena => \cp3|cp1|Q[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp3|cp1|Q\(3));

-- Location: LCCOMB_X19_Y20_N10
\cp4|Add30~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add30~17_combout\ = (\cp3|cp3|estado.e1~q\ & ((\cp4|dato_out[2]~4_combout\))) # (!\cp3|cp3|estado.e1~q\ & (\cp3|cp1|Q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cp3|cp1|Q\(3),
	datac => \cp3|cp3|estado.e1~q\,
	datad => \cp4|dato_out[2]~4_combout\,
	combout => \cp4|Add30~17_combout\);

-- Location: LCCOMB_X19_Y20_N20
\cp4|Add30~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add30~18_combout\ = (\cp3|cp3|estado.e1~q\ & ((\cp4|dato_out[1]~2_combout\))) # (!\cp3|cp3|estado.e1~q\ & (\cp3|cp1|Q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp3|cp1|Q\(2),
	datab => \cp3|cp3|estado.e1~q\,
	datac => \cp4|dato_out[1]~2_combout\,
	combout => \cp4|Add30~18_combout\);

-- Location: LCCOMB_X20_Y20_N30
\cp3|cp1|Q~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp3|cp1|Q~5_combout\ = (\cp3|cp1|Q\(2) & !\cp3|cp5|est.e2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cp3|cp1|Q\(2),
	datad => \cp3|cp5|est.e2~q\,
	combout => \cp3|cp1|Q~5_combout\);

-- Location: CLKCTRL_G10
\cp3|cp2|clkout~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \cp3|cp2|clkout~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \cp3|cp2|clkout~clkctrl_outclk\);

-- Location: CLKCTRL_G7
\cp2|clkout~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \cp2|clkout~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \cp2|clkout~clkctrl_outclk\);

-- Location: CLKCTRL_G9
\clk~inputclkctrl\ : cycloneiii_clkctrl
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

-- Location: IOOBUF_X28_Y0_N16
\sck_dac~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cp3|cp5|sck~0_combout\,
	devoe => ww_devoe,
	o => ww_sck_dac);

-- Location: IOOBUF_X28_Y0_N23
\cs_dac~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cp3|cp5|Selector2~0_combout\,
	devoe => ww_devoe,
	o => ww_cs_dac);

-- Location: IOOBUF_X37_Y0_N2
\sck_adc~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cp1|clkadc|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	devoe => ww_devoe,
	o => ww_sck_adc);

-- Location: IOOBUF_X39_Y0_N30
\cs_adc~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cp1|cs~q\,
	devoe => ww_devoe,
	o => ww_cs_adc);

-- Location: IOOBUF_X0_Y20_N9
\eop~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cp3|cp4|fin~combout\,
	devoe => ww_devoe,
	o => ww_eop);

-- Location: IOOBUF_X26_Y0_N16
\sdo~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cp3|cp5|sdo~0_combout\,
	devoe => ww_devoe,
	o => ww_sdo);

-- Location: LCCOMB_X16_Y20_N12
\cp3|cp4|Q[1]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp3|cp4|Q[1]~4_combout\ = (\cp3|cp4|Q\(0) & (\cp3|cp4|Q\(1) $ (VCC))) # (!\cp3|cp4|Q\(0) & (\cp3|cp4|Q\(1) & VCC))
-- \cp3|cp4|Q[1]~5\ = CARRY((\cp3|cp4|Q\(0) & \cp3|cp4|Q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp3|cp4|Q\(0),
	datab => \cp3|cp4|Q\(1),
	datad => VCC,
	combout => \cp3|cp4|Q[1]~4_combout\,
	cout => \cp3|cp4|Q[1]~5\);

-- Location: LCCOMB_X24_Y19_N6
\cp2|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp2|Add0~0_combout\ = \cp2|contador\(0) $ (GND)
-- \cp2|Add0~1\ = CARRY(!\cp2|contador\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp2|contador\(0),
	datad => VCC,
	combout => \cp2|Add0~0_combout\,
	cout => \cp2|Add0~1\);

-- Location: LCCOMB_X24_Y19_N8
\cp2|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp2|Add0~2_combout\ = (\cp2|contador\(1) & (!\cp2|Add0~1\)) # (!\cp2|contador\(1) & ((\cp2|Add0~1\) # (GND)))
-- \cp2|Add0~3\ = CARRY((!\cp2|Add0~1\) # (!\cp2|contador\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp2|contador\(1),
	datad => VCC,
	cin => \cp2|Add0~1\,
	combout => \cp2|Add0~2_combout\,
	cout => \cp2|Add0~3\);

-- Location: LCCOMB_X24_Y19_N12
\cp2|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp2|Add0~6_combout\ = (\cp2|contador\(3) & (!\cp2|Add0~5\)) # (!\cp2|contador\(3) & ((\cp2|Add0~5\) # (GND)))
-- \cp2|Add0~7\ = CARRY((!\cp2|Add0~5\) # (!\cp2|contador\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp2|contador\(3),
	datad => VCC,
	cin => \cp2|Add0~5\,
	combout => \cp2|Add0~6_combout\,
	cout => \cp2|Add0~7\);

-- Location: LCCOMB_X24_Y19_N14
\cp2|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp2|Add0~8_combout\ = (\cp2|contador\(4) & (\cp2|Add0~7\ $ (GND))) # (!\cp2|contador\(4) & (!\cp2|Add0~7\ & VCC))
-- \cp2|Add0~9\ = CARRY((\cp2|contador\(4) & !\cp2|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp2|contador\(4),
	datad => VCC,
	cin => \cp2|Add0~7\,
	combout => \cp2|Add0~8_combout\,
	cout => \cp2|Add0~9\);

-- Location: LCCOMB_X23_Y19_N16
\cp2|contador~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp2|contador~7_combout\ = (\cp2|contador~0_combout\ & \cp2|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cp2|contador~0_combout\,
	datac => \cp2|Add0~8_combout\,
	combout => \cp2|contador~7_combout\);

-- Location: IOIBUF_X0_Y24_N1
\en~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_en,
	o => \en~input_o\);

-- Location: FF_X23_Y19_N17
\cp2|contador[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cp2|contador~7_combout\,
	clrn => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp2|contador\(4));

-- Location: LCCOMB_X24_Y19_N16
\cp2|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp2|Add0~10_combout\ = (\cp2|contador\(5) & (!\cp2|Add0~9\)) # (!\cp2|contador\(5) & ((\cp2|Add0~9\) # (GND)))
-- \cp2|Add0~11\ = CARRY((!\cp2|Add0~9\) # (!\cp2|contador\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cp2|contador\(5),
	datad => VCC,
	cin => \cp2|Add0~9\,
	combout => \cp2|Add0~10_combout\,
	cout => \cp2|Add0~11\);

-- Location: LCCOMB_X23_Y19_N6
\cp2|contador~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp2|contador~2_combout\ = (\cp2|contador~0_combout\ & \cp2|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cp2|contador~0_combout\,
	datad => \cp2|Add0~10_combout\,
	combout => \cp2|contador~2_combout\);

-- Location: FF_X23_Y19_N7
\cp2|contador[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cp2|contador~2_combout\,
	clrn => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp2|contador\(5));

-- Location: LCCOMB_X24_Y19_N18
\cp2|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp2|Add0~12_combout\ = (\cp2|contador\(6) & (\cp2|Add0~11\ $ (GND))) # (!\cp2|contador\(6) & (!\cp2|Add0~11\ & VCC))
-- \cp2|Add0~13\ = CARRY((\cp2|contador\(6) & !\cp2|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cp2|contador\(6),
	datad => VCC,
	cin => \cp2|Add0~11\,
	combout => \cp2|Add0~12_combout\,
	cout => \cp2|Add0~13\);

-- Location: LCCOMB_X24_Y19_N0
\cp2|contador~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp2|contador~6_combout\ = (\cp2|contador~0_combout\ & \cp2|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp2|contador~0_combout\,
	datad => \cp2|Add0~12_combout\,
	combout => \cp2|contador~6_combout\);

-- Location: FF_X24_Y19_N1
\cp2|contador[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cp2|contador~6_combout\,
	clrn => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp2|contador\(6));

-- Location: LCCOMB_X24_Y19_N20
\cp2|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp2|Add0~14_combout\ = (\cp2|contador\(7) & (!\cp2|Add0~13\)) # (!\cp2|contador\(7) & ((\cp2|Add0~13\) # (GND)))
-- \cp2|Add0~15\ = CARRY((!\cp2|Add0~13\) # (!\cp2|contador\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cp2|contador\(7),
	datad => VCC,
	cin => \cp2|Add0~13\,
	combout => \cp2|Add0~14_combout\,
	cout => \cp2|Add0~15\);

-- Location: LCCOMB_X24_Y19_N28
\cp2|contador~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp2|contador~5_combout\ = (\cp2|contador~0_combout\ & \cp2|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp2|contador~0_combout\,
	datad => \cp2|Add0~14_combout\,
	combout => \cp2|contador~5_combout\);

-- Location: FF_X24_Y19_N29
\cp2|contador[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cp2|contador~5_combout\,
	clrn => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp2|contador\(7));

-- Location: LCCOMB_X24_Y19_N24
\cp2|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp2|Add0~18_combout\ = (\cp2|contador\(9) & (!\cp2|Add0~17\)) # (!\cp2|contador\(9) & ((\cp2|Add0~17\) # (GND)))
-- \cp2|Add0~19\ = CARRY((!\cp2|Add0~17\) # (!\cp2|contador\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cp2|contador\(9),
	datad => VCC,
	cin => \cp2|Add0~17\,
	combout => \cp2|Add0~18_combout\,
	cout => \cp2|Add0~19\);

-- Location: LCCOMB_X24_Y19_N4
\cp2|contador~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp2|contador~3_combout\ = (\cp2|contador~0_combout\ & \cp2|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp2|contador~0_combout\,
	datad => \cp2|Add0~18_combout\,
	combout => \cp2|contador~3_combout\);

-- Location: FF_X24_Y19_N5
\cp2|contador[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cp2|contador~3_combout\,
	clrn => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp2|contador\(9));

-- Location: LCCOMB_X24_Y19_N2
\cp2|LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp2|LessThan1~0_combout\ = (\cp2|contador\(8) & (\cp2|contador\(7) & (\cp2|contador\(9) & \cp2|contador\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp2|contador\(8),
	datab => \cp2|contador\(7),
	datac => \cp2|contador\(9),
	datad => \cp2|contador\(6),
	combout => \cp2|LessThan1~0_combout\);

-- Location: LCCOMB_X23_Y19_N14
\cp2|contador~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp2|contador~0_combout\ = (((!\cp2|contador\(5) & !\cp2|contador\(4))) # (!\cp2|LessThan1~0_combout\)) # (!\cp2|contador\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp2|contador\(5),
	datab => \cp2|contador\(4),
	datac => \cp2|contador\(10),
	datad => \cp2|LessThan1~0_combout\,
	combout => \cp2|contador~0_combout\);

-- Location: LCCOMB_X24_Y19_N26
\cp2|Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp2|Add0~20_combout\ = \cp2|Add0~19\ $ (!\cp2|contador\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \cp2|contador\(10),
	cin => \cp2|Add0~19\,
	combout => \cp2|Add0~20_combout\);

-- Location: LCCOMB_X23_Y19_N24
\cp2|contador~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp2|contador~1_combout\ = (\cp2|contador~0_combout\ & \cp2|Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cp2|contador~0_combout\,
	datad => \cp2|Add0~20_combout\,
	combout => \cp2|contador~1_combout\);

-- Location: FF_X23_Y19_N25
\cp2|contador[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cp2|contador~1_combout\,
	clrn => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp2|contador\(10));

-- Location: LCCOMB_X23_Y19_N2
\cp2|contador~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp2|contador~10_combout\ = (\cp2|contador~0_combout\ & \cp2|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cp2|contador~0_combout\,
	datac => \cp2|Add0~2_combout\,
	combout => \cp2|contador~10_combout\);

-- Location: FF_X23_Y19_N3
\cp2|contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cp2|contador~10_combout\,
	clrn => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp2|contador\(1));

-- Location: LCCOMB_X23_Y19_N10
\cp2|contador~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp2|contador~8_combout\ = (\cp2|contador~0_combout\ & \cp2|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cp2|contador~0_combout\,
	datac => \cp2|Add0~6_combout\,
	combout => \cp2|contador~8_combout\);

-- Location: FF_X23_Y19_N11
\cp2|contador[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cp2|contador~8_combout\,
	clrn => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp2|contador\(3));

-- Location: LCCOMB_X23_Y19_N0
\cp2|contador~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp2|contador~11_combout\ = (\cp2|contador~0_combout\ & !\cp2|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cp2|contador~0_combout\,
	datad => \cp2|Add0~0_combout\,
	combout => \cp2|contador~11_combout\);

-- Location: FF_X23_Y19_N1
\cp2|contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cp2|contador~11_combout\,
	clrn => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp2|contador\(0));

-- Location: LCCOMB_X23_Y19_N22
\cp2|LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp2|LessThan1~1_combout\ = (\cp2|contador\(3) & ((\cp2|contador\(2)) # ((\cp2|contador\(1)) # (!\cp2|contador\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp2|contador\(2),
	datab => \cp2|contador\(1),
	datac => \cp2|contador\(3),
	datad => \cp2|contador\(0),
	combout => \cp2|LessThan1~1_combout\);

-- Location: LCCOMB_X23_Y19_N8
\cp2|LessThan1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp2|LessThan1~2_combout\ = (\cp2|contador\(5) & (\cp2|LessThan1~0_combout\ & ((\cp2|contador\(4)) # (\cp2|LessThan1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp2|contador\(5),
	datab => \cp2|contador\(4),
	datac => \cp2|LessThan1~1_combout\,
	datad => \cp2|LessThan1~0_combout\,
	combout => \cp2|LessThan1~2_combout\);

-- Location: LCCOMB_X27_Y19_N28
\cp2|LessThan1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp2|LessThan1~3_combout\ = (!\cp2|contador\(10) & !\cp2|LessThan1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cp2|contador\(10),
	datad => \cp2|LessThan1~2_combout\,
	combout => \cp2|LessThan1~3_combout\);

-- Location: FF_X27_Y19_N29
\cp2|clkout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cp2|LessThan1~3_combout\,
	clrn => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp2|clkout~q\);

-- Location: LCCOMB_X16_Y20_N4
\cp3|cp3|Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp3|cp3|Selector0~0_combout\ = (\cp3|cp3|estado.e1~q\) # (!\cp2|clkout~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cp2|clkout~q\,
	datad => \cp3|cp3|estado.e1~q\,
	combout => \cp3|cp3|Selector0~0_combout\);

-- Location: IOIBUF_X0_Y23_N1
\reset~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: FF_X16_Y20_N23
\cp3|cp3|estado.e0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp3|cp2|clkout~clkctrl_outclk\,
	asdata => \cp3|cp3|Selector0~0_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp3|cp3|estado.e0~q\);

-- Location: LCCOMB_X16_Y20_N22
\cp3|cp3|estado~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp3|cp3|estado~8_combout\ = (!\cp3|cp3|estado.e0~q\ & !\cp2|clkout~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cp3|cp3|estado.e0~q\,
	datad => \cp2|clkout~q\,
	combout => \cp3|cp3|estado~8_combout\);

-- Location: FF_X16_Y20_N1
\cp3|cp3|estado.e1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp3|cp2|clkout~clkctrl_outclk\,
	asdata => \cp3|cp3|estado~8_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp3|cp3|estado.e1~q\);

-- Location: LCCOMB_X16_Y20_N16
\cp3|cp4|Q[3]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp3|cp4|Q[3]~8_combout\ = (\cp3|cp4|Q\(3) & (\cp3|cp4|Q[2]~7\ $ (GND))) # (!\cp3|cp4|Q\(3) & (!\cp3|cp4|Q[2]~7\ & VCC))
-- \cp3|cp4|Q[3]~9\ = CARRY((\cp3|cp4|Q\(3) & !\cp3|cp4|Q[2]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cp3|cp4|Q\(3),
	datad => VCC,
	cin => \cp3|cp4|Q[2]~7\,
	combout => \cp3|cp4|Q[3]~8_combout\,
	cout => \cp3|cp4|Q[3]~9\);

-- Location: LCCOMB_X16_Y20_N18
\cp3|cp4|Q[4]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp3|cp4|Q[4]~10_combout\ = \cp3|cp4|Q[3]~9\ $ (\cp3|cp4|Q\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \cp3|cp4|Q\(4),
	cin => \cp3|cp4|Q[3]~9\,
	combout => \cp3|cp4|Q[4]~10_combout\);

-- Location: FF_X16_Y20_N19
\cp3|cp4|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp3|cp2|ALT_INV_clkout~clkctrl_outclk\,
	d => \cp3|cp4|Q[4]~10_combout\,
	clrn => \cp3|cp3|ALT_INV_estado.e1~q\,
	ena => \cp3|cp5|est.e2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp3|cp4|Q\(4));

-- Location: LCCOMB_X16_Y20_N8
\cp3|cp5|Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp3|cp5|Selector1~0_combout\ = (\cp3|cp5|est.e1~q\) # ((\cp3|cp5|est.e2~q\ & ((!\cp3|cp4|fin~0_combout\) # (!\cp3|cp4|Q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp3|cp5|est.e1~q\,
	datab => \cp3|cp4|Q\(4),
	datac => \cp3|cp5|est.e2~q\,
	datad => \cp3|cp4|fin~0_combout\,
	combout => \cp3|cp5|Selector1~0_combout\);

-- Location: FF_X16_Y20_N9
\cp3|cp5|est.e2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp3|cp2|clkout~clkctrl_outclk\,
	d => \cp3|cp5|Selector1~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp3|cp5|est.e2~q\);

-- Location: FF_X16_Y20_N13
\cp3|cp4|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp3|cp2|ALT_INV_clkout~clkctrl_outclk\,
	d => \cp3|cp4|Q[1]~4_combout\,
	clrn => \cp3|cp3|ALT_INV_estado.e1~q\,
	ena => \cp3|cp5|est.e2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp3|cp4|Q\(1));

-- Location: LCCOMB_X16_Y20_N14
\cp3|cp4|Q[2]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp3|cp4|Q[2]~6_combout\ = (\cp3|cp4|Q\(2) & (!\cp3|cp4|Q[1]~5\)) # (!\cp3|cp4|Q\(2) & ((\cp3|cp4|Q[1]~5\) # (GND)))
-- \cp3|cp4|Q[2]~7\ = CARRY((!\cp3|cp4|Q[1]~5\) # (!\cp3|cp4|Q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cp3|cp4|Q\(2),
	datad => VCC,
	cin => \cp3|cp4|Q[1]~5\,
	combout => \cp3|cp4|Q[2]~6_combout\,
	cout => \cp3|cp4|Q[2]~7\);

-- Location: FF_X16_Y20_N15
\cp3|cp4|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp3|cp2|ALT_INV_clkout~clkctrl_outclk\,
	d => \cp3|cp4|Q[2]~6_combout\,
	clrn => \cp3|cp3|ALT_INV_estado.e1~q\,
	ena => \cp3|cp5|est.e2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp3|cp4|Q\(2));

-- Location: FF_X16_Y20_N17
\cp3|cp4|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp3|cp2|ALT_INV_clkout~clkctrl_outclk\,
	d => \cp3|cp4|Q[3]~8_combout\,
	clrn => \cp3|cp3|ALT_INV_estado.e1~q\,
	ena => \cp3|cp5|est.e2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp3|cp4|Q\(3));

-- Location: LCCOMB_X15_Y20_N2
\cp3|cp4|Q[0]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp3|cp4|Q[0]~12_combout\ = \cp3|cp5|est.e2~q\ $ (\cp3|cp4|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cp3|cp5|est.e2~q\,
	datac => \cp3|cp4|Q\(0),
	combout => \cp3|cp4|Q[0]~12_combout\);

-- Location: FF_X15_Y20_N3
\cp3|cp4|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp3|cp2|ALT_INV_clkout~clkctrl_outclk\,
	d => \cp3|cp4|Q[0]~12_combout\,
	clrn => \cp3|cp3|ALT_INV_estado.e1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp3|cp4|Q\(0));

-- Location: LCCOMB_X16_Y20_N6
\cp3|cp4|fin~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp3|cp4|fin~0_combout\ = (!\cp3|cp4|Q\(1) & (!\cp3|cp4|Q\(3) & (!\cp3|cp4|Q\(2) & !\cp3|cp4|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp3|cp4|Q\(1),
	datab => \cp3|cp4|Q\(3),
	datac => \cp3|cp4|Q\(2),
	datad => \cp3|cp4|Q\(0),
	combout => \cp3|cp4|fin~0_combout\);

-- Location: LCCOMB_X22_Y25_N2
\cp3|cp2|contador~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp3|cp2|contador~1_combout\ = (!\cp3|cp2|contador\(2) & (\cp3|cp2|contador\(0) $ (!\cp3|cp2|contador\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp3|cp2|contador\(0),
	datac => \cp3|cp2|contador\(1),
	datad => \cp3|cp2|contador\(2),
	combout => \cp3|cp2|contador~1_combout\);

-- Location: FF_X22_Y25_N3
\cp3|cp2|contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cp3|cp2|contador~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp3|cp2|contador\(1));

-- Location: LCCOMB_X22_Y25_N0
\cp3|cp2|contador~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp3|cp2|contador~0_combout\ = (\cp3|cp2|contador\(0) & (\cp3|cp2|contador\(2) & !\cp3|cp2|contador\(1))) # (!\cp3|cp2|contador\(0) & (!\cp3|cp2|contador\(2) & \cp3|cp2|contador\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp3|cp2|contador\(0),
	datac => \cp3|cp2|contador\(2),
	datad => \cp3|cp2|contador\(1),
	combout => \cp3|cp2|contador~0_combout\);

-- Location: FF_X22_Y25_N1
\cp3|cp2|contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cp3|cp2|contador~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp3|cp2|contador\(2));

-- Location: LCCOMB_X22_Y25_N6
\cp3|cp2|LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp3|cp2|LessThan1~0_combout\ = (!\cp3|cp2|contador\(2) & ((\cp3|cp2|contador\(0)) # (!\cp3|cp2|contador\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp3|cp2|contador\(0),
	datab => \cp3|cp2|contador\(2),
	datad => \cp3|cp2|contador\(1),
	combout => \cp3|cp2|LessThan1~0_combout\);

-- Location: LCCOMB_X19_Y25_N4
\cp3|cp2|clkout~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp3|cp2|clkout~feeder_combout\ = \cp3|cp2|LessThan1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cp3|cp2|LessThan1~0_combout\,
	combout => \cp3|cp2|clkout~feeder_combout\);

-- Location: FF_X19_Y25_N5
\cp3|cp2|clkout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cp3|cp2|clkout~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp3|cp2|clkout~q\);

-- Location: LCCOMB_X16_Y20_N20
\cp3|cp5|sck~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp3|cp5|sck~0_combout\ = (\cp3|cp2|clkout~q\ & (\cp3|cp5|est.e2~q\ & ((!\cp3|cp4|Q\(4)) # (!\cp3|cp4|fin~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp3|cp4|fin~0_combout\,
	datab => \cp3|cp2|clkout~q\,
	datac => \cp3|cp5|est.e2~q\,
	datad => \cp3|cp4|Q\(4),
	combout => \cp3|cp5|sck~0_combout\);

-- Location: LCCOMB_X16_Y20_N26
\cp3|cp5|Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp3|cp5|Selector0~0_combout\ = (!\cp3|cp3|estado.e1~q\ & !\cp3|cp5|est.e0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cp3|cp3|estado.e1~q\,
	datad => \cp3|cp5|est.e0~q\,
	combout => \cp3|cp5|Selector0~0_combout\);

-- Location: LCCOMB_X16_Y20_N2
\cp3|cp5|Selector0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp3|cp5|Selector0~1_combout\ = (!\cp3|cp5|Selector0~0_combout\ & (((!\cp3|cp4|fin~0_combout\) # (!\cp3|cp4|Q\(4))) # (!\cp3|cp5|est.e2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp3|cp5|est.e2~q\,
	datab => \cp3|cp4|Q\(4),
	datac => \cp3|cp5|Selector0~0_combout\,
	datad => \cp3|cp4|fin~0_combout\,
	combout => \cp3|cp5|Selector0~1_combout\);

-- Location: FF_X16_Y20_N3
\cp3|cp5|est.e0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp3|cp2|clkout~clkctrl_outclk\,
	d => \cp3|cp5|Selector0~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp3|cp5|est.e0~q\);

-- Location: LCCOMB_X16_Y20_N28
\cp3|cp5|Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp3|cp5|Selector2~0_combout\ = ((\cp3|cp4|fin~0_combout\ & (\cp3|cp5|est.e2~q\ & \cp3|cp4|Q\(4)))) # (!\cp3|cp5|est.e0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp3|cp4|fin~0_combout\,
	datab => \cp3|cp5|est.e0~q\,
	datac => \cp3|cp5|est.e2~q\,
	datad => \cp3|cp4|Q\(4),
	combout => \cp3|cp5|Selector2~0_combout\);

-- Location: IOIBUF_X41_Y15_N1
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: PLL_2
\cp1|clkadc|altpll_component|auto_generated|pll1\ : cycloneiii_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 250,
	c0_initial => 1,
	c0_low => 250,
	c0_mode => "even",
	c0_ph => 0,
	c1_high => 0,
	c1_initial => 0,
	c1_low => 0,
	c1_mode => "bypass",
	c1_ph => 0,
	c1_use_casc_in => "off",
	c2_high => 0,
	c2_initial => 0,
	c2_low => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	c2_use_casc_in => "off",
	c3_high => 0,
	c3_initial => 0,
	c3_low => 0,
	c3_mode => "bypass",
	c3_ph => 0,
	c3_use_casc_in => "off",
	c4_high => 0,
	c4_initial => 0,
	c4_low => 0,
	c4_mode => "bypass",
	c4_ph => 0,
	c4_use_casc_in => "off",
	charge_pump_current_bits => 1,
	clk0_counter => "c0",
	clk0_divide_by => 50,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 1,
	clk0_phase_shift => "0",
	clk1_counter => "unused",
	clk1_divide_by => 0,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 0,
	clk1_phase_shift => "0",
	clk2_counter => "unused",
	clk2_divide_by => 0,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 0,
	clk2_phase_shift => "0",
	clk3_counter => "unused",
	clk3_divide_by => 0,
	clk3_duty_cycle => 50,
	clk3_multiply_by => 0,
	clk3_phase_shift => "0",
	clk4_counter => "unused",
	clk4_divide_by => 0,
	clk4_duty_cycle => 50,
	clk4_multiply_by => 0,
	clk4_phase_shift => "0",
	compensate_clock => "clock0",
	inclk0_input_frequency => 20000,
	inclk1_input_frequency => 0,
	loop_filter_c_bits => 0,
	loop_filter_r_bits => 27,
	m => 10,
	m_initial => 1,
	m_ph => 0,
	n => 1,
	operation_mode => "normal",
	pfd_max => 200000,
	pfd_min => 3076,
	pll_compensation_delay => 5052,
	self_reset_on_loss_lock => "off",
	simulation_type => "timing",
	switch_over_type => "auto",
	vco_center => 1538,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 3333,
	vco_min => 1538,
	vco_multiply_by => 0,
	vco_phase_shift_step => 250,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	areset => \ALT_INV_reset~input_o\,
	fbin => \cp1|clkadc|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \cp1|clkadc|altpll_component|auto_generated|pll1_INCLK_bus\,
	fbout => \cp1|clkadc|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \cp1|clkadc|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_G8
\cp1|clkadc|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \cp1|clkadc|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \cp1|clkadc|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\);

-- Location: LCCOMB_X26_Y19_N4
\cp1|datoin:scint~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp1|datoin:scint~0_combout\ = (\cp1|sc_prev~2_combout\) # (\cp1|datoin:scint~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp1|sc_prev~2_combout\,
	datac => \cp1|datoin:scint~q\,
	combout => \cp1|datoin:scint~0_combout\);

-- Location: FF_X26_Y19_N5
\cp1|datoin:scint\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp1|clkadc|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \cp1|datoin:scint~0_combout\,
	clrn => \reset~input_o\,
	sclr => \cp2|clkout~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp1|datoin:scint~q\);

-- Location: LCCOMB_X26_Y19_N30
\cp1|sc_prev~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp1|sc_prev~3_combout\ = (\cp1|datoin:scint~q\ & (((\cp1|sc_prev~q\)))) # (!\cp1|datoin:scint~q\ & ((\cp2|clkout~q\ & ((\cp1|sc_prev~q\))) # (!\cp2|clkout~q\ & (!\cp1|sc_prev~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp1|sc_prev~2_combout\,
	datab => \cp1|datoin:scint~q\,
	datac => \cp1|sc_prev~q\,
	datad => \cp2|clkout~q\,
	combout => \cp1|sc_prev~3_combout\);

-- Location: FF_X26_Y19_N31
\cp1|sc_prev\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp1|clkadc|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \cp1|sc_prev~3_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp1|sc_prev~q\);

-- Location: LCCOMB_X35_Y16_N16
\cp1|cs~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp1|cs~0_combout\ = !\cp1|sc_prev~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cp1|sc_prev~q\,
	combout => \cp1|cs~0_combout\);

-- Location: FF_X35_Y16_N17
\cp1|cs\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp1|clkadc|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \cp1|cs~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp1|cs~q\);

-- Location: LCCOMB_X10_Y20_N16
\cp3|cp4|fin\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp3|cp4|fin~combout\ = (\cp3|cp4|fin~0_combout\ & \cp3|cp4|Q\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cp3|cp4|fin~0_combout\,
	datad => \cp3|cp4|Q\(4),
	combout => \cp3|cp4|fin~combout\);

-- Location: LCCOMB_X26_Y19_N2
\cp1|altaimp~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp1|altaimp~5_combout\ = (\cp1|Add0~0_combout\ & (!\cp1|datoin:scint~q\ & !\cp2|clkout~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp1|Add0~0_combout\,
	datab => \cp1|datoin:scint~q\,
	datad => \cp2|clkout~q\,
	combout => \cp1|altaimp~5_combout\);

-- Location: LCCOMB_X26_Y19_N10
\cp1|indice~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp1|indice~0_combout\ = (\cp2|clkout~q\) # (!\cp1|datoin:scint~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cp1|datoin:scint~q\,
	datad => \cp2|clkout~q\,
	combout => \cp1|indice~0_combout\);

-- Location: FF_X26_Y19_N3
\cp1|datoin:altaimp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp1|clkadc|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \cp1|altaimp~5_combout\,
	clrn => \reset~input_o\,
	ena => \cp1|indice~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp1|datoin:altaimp[3]~q\);

-- Location: LCCOMB_X27_Y19_N0
\cp1|datoin~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp1|datoin~0_combout\ = (\cp1|datoin:scint~q\) # (\cp2|clkout~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cp1|datoin:scint~q\,
	datad => \cp2|clkout~q\,
	combout => \cp1|datoin~0_combout\);

-- Location: LCCOMB_X26_Y19_N0
\cp1|altaimp~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp1|altaimp~2_combout\ = (!\cp1|datoin:scint~q\ & (!\cp2|clkout~q\ & (\cp1|datoin:altaimp[0]~q\ $ (\cp1|datoin:altaimp[1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp1|datoin:altaimp[0]~q\,
	datab => \cp1|datoin:scint~q\,
	datac => \cp1|datoin:altaimp[1]~q\,
	datad => \cp2|clkout~q\,
	combout => \cp1|altaimp~2_combout\);

-- Location: FF_X26_Y19_N1
\cp1|datoin:altaimp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp1|clkadc|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \cp1|altaimp~2_combout\,
	clrn => \reset~input_o\,
	ena => \cp1|indice~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp1|datoin:altaimp[1]~q\);

-- Location: LCCOMB_X26_Y19_N8
\cp1|altaimp~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp1|altaimp~4_combout\ = (!\cp1|datoin~0_combout\ & (\cp1|datoin:altaimp[2]~q\ $ (((\cp1|datoin:altaimp[0]~q\ & \cp1|datoin:altaimp[1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp1|datoin:altaimp[0]~q\,
	datab => \cp1|datoin~0_combout\,
	datac => \cp1|datoin:altaimp[2]~q\,
	datad => \cp1|datoin:altaimp[1]~q\,
	combout => \cp1|altaimp~4_combout\);

-- Location: FF_X26_Y19_N9
\cp1|datoin:altaimp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp1|clkadc|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \cp1|altaimp~4_combout\,
	clrn => \reset~input_o\,
	ena => \cp1|indice~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp1|datoin:altaimp[2]~q\);

-- Location: LCCOMB_X26_Y19_N24
\cp1|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp1|LessThan0~0_combout\ = (\cp1|datoin:altaimp[3]~q\ & (\cp1|datoin:altaimp[0]~q\ & (\cp1|datoin:altaimp[2]~q\ & \cp1|datoin:altaimp[1]~q\))) # (!\cp1|datoin:altaimp[3]~q\ & (!\cp1|datoin:altaimp[2]~q\ & ((!\cp1|datoin:altaimp[1]~q\) # 
-- (!\cp1|datoin:altaimp[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp1|datoin:altaimp[0]~q\,
	datab => \cp1|datoin:altaimp[3]~q\,
	datac => \cp1|datoin:altaimp[2]~q\,
	datad => \cp1|datoin:altaimp[1]~q\,
	combout => \cp1|LessThan0~0_combout\);

-- Location: IOIBUF_X7_Y0_N15
\sdi~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sdi,
	o => \sdi~input_o\);

-- Location: LCCOMB_X27_Y19_N14
\cp1|datoin:indice[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp1|datoin:indice[0]~1_combout\ = (!\cp2|clkout~q\ & ((\cp1|datoin:scint~q\) # (\cp1|datoin~1_combout\ $ (!\cp1|datoin~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp1|datoin~1_combout\,
	datab => \cp1|datoin~3_combout\,
	datac => \cp1|datoin:scint~q\,
	datad => \cp2|clkout~q\,
	combout => \cp1|datoin:indice[0]~1_combout\);

-- Location: LCCOMB_X27_Y19_N24
\cp1|datoin:indice[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp1|datoin:indice[0]~2_combout\ = (!\cp1|datoin~0_combout\ & ((\sdi~input_o\) # ((\cp1|LessThan0~0_combout\) # (!\cp1|datoin~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdi~input_o\,
	datab => \cp1|LessThan0~0_combout\,
	datac => \cp1|datoin~2_combout\,
	datad => \cp1|datoin~0_combout\,
	combout => \cp1|datoin:indice[0]~2_combout\);

-- Location: LCCOMB_X27_Y19_N4
\cp1|datoin:indice[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp1|datoin:indice[2]~0_combout\ = (\cp1|datoin:indice[0]~1_combout\ & (((\cp1|datoin:indice[2]~q\)))) # (!\cp1|datoin:indice[0]~1_combout\ & (\cp1|Add2~0_combout\ & ((\cp1|datoin:indice[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp1|Add2~0_combout\,
	datab => \cp1|datoin:indice[0]~1_combout\,
	datac => \cp1|datoin:indice[2]~q\,
	datad => \cp1|datoin:indice[0]~2_combout\,
	combout => \cp1|datoin:indice[2]~0_combout\);

-- Location: FF_X27_Y19_N5
\cp1|datoin:indice[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp1|clkadc|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \cp1|datoin:indice[2]~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp1|datoin:indice[2]~q\);

-- Location: LCCOMB_X27_Y19_N26
\cp1|datoin:indice[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp1|datoin:indice[1]~0_combout\ = (\cp1|datoin:indice[0]~1_combout\ & (((\cp1|datoin:indice[1]~q\)))) # (!\cp1|datoin:indice[0]~1_combout\ & (\cp1|datoin:indice[0]~2_combout\ & (\cp1|datoin:indice[0]~q\ $ (\cp1|datoin:indice[1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp1|datoin:indice[0]~q\,
	datab => \cp1|datoin:indice[0]~1_combout\,
	datac => \cp1|datoin:indice[1]~q\,
	datad => \cp1|datoin:indice[0]~2_combout\,
	combout => \cp1|datoin:indice[1]~0_combout\);

-- Location: FF_X27_Y19_N27
\cp1|datoin:indice[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp1|clkadc|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \cp1|datoin:indice[1]~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp1|datoin:indice[1]~q\);

-- Location: LCCOMB_X27_Y19_N30
\cp1|datoin:indice[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp1|datoin:indice[0]~0_combout\ = (\cp1|datoin:indice[0]~2_combout\ & ((!\cp1|datoin:indice[0]~q\))) # (!\cp1|datoin:indice[0]~2_combout\ & (!\cp1|datoin~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cp1|datoin~0_combout\,
	datac => \cp1|datoin:indice[0]~q\,
	datad => \cp1|datoin:indice[0]~2_combout\,
	combout => \cp1|datoin:indice[0]~0_combout\);

-- Location: FF_X27_Y19_N31
\cp1|datoin:indice[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp1|clkadc|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \cp1|datoin:indice[0]~0_combout\,
	asdata => \cp1|datoin:indice[0]~q\,
	clrn => \reset~input_o\,
	sload => \cp1|datoin:indice[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp1|datoin:indice[0]~q\);

-- Location: LCCOMB_X27_Y19_N18
\cp1|datoin:indice[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp1|datoin:indice[3]~0_combout\ = (\cp1|datoin:indice[1]~q\ & (!\cp1|datoin:scint~q\ & (\cp1|datoin:indice[0]~q\ & \cp1|datoin:indice[2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp1|datoin:indice[1]~q\,
	datab => \cp1|datoin:scint~q\,
	datac => \cp1|datoin:indice[0]~q\,
	datad => \cp1|datoin:indice[2]~q\,
	combout => \cp1|datoin:indice[3]~0_combout\);

-- Location: LCCOMB_X28_Y19_N28
\cp1|datoin:indice[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp1|datoin:indice[3]~1_combout\ = (!\cp2|clkout~q\ & ((\cp1|datoin:indice[3]~q\) # (\cp1|datoin:indice[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cp2|clkout~q\,
	datac => \cp1|datoin:indice[3]~q\,
	datad => \cp1|datoin:indice[3]~0_combout\,
	combout => \cp1|datoin:indice[3]~1_combout\);

-- Location: FF_X28_Y19_N29
\cp1|datoin:indice[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp1|clkadc|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \cp1|datoin:indice[3]~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp1|datoin:indice[3]~q\);

-- Location: LCCOMB_X27_Y19_N16
\cp1|datoin~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp1|datoin~2_combout\ = (!\cp1|datoin:indice[0]~q\ & (!\cp1|datoin:indice[2]~q\ & (!\cp1|datoin:indice[1]~q\ & !\cp1|datoin:indice[3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp1|datoin:indice[0]~q\,
	datab => \cp1|datoin:indice[2]~q\,
	datac => \cp1|datoin:indice[1]~q\,
	datad => \cp1|datoin:indice[3]~q\,
	combout => \cp1|datoin~2_combout\);

-- Location: LCCOMB_X27_Y19_N20
\cp1|datoin~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp1|datoin~3_combout\ = (\cp1|LessThan0~0_combout\) # ((\sdi~input_o\) # (!\cp1|datoin~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cp1|LessThan0~0_combout\,
	datac => \sdi~input_o\,
	datad => \cp1|datoin~2_combout\,
	combout => \cp1|datoin~3_combout\);

-- Location: LCCOMB_X28_Y19_N22
\cp1|dato~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp1|dato~0_combout\ = (\cp1|datoin~3_combout\ & ((\cp1|Decoder0~0_combout\ & ((\sdi~input_o\))) # (!\cp1|Decoder0~0_combout\ & (\cp1|datoin:dato[9]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp1|Decoder0~0_combout\,
	datab => \cp1|datoin~3_combout\,
	datac => \cp1|datoin:dato[9]~q\,
	datad => \sdi~input_o\,
	combout => \cp1|dato~0_combout\);

-- Location: LCCOMB_X28_Y19_N18
\cp1|datoin:dato[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp1|datoin:dato[0]~0_combout\ = (\reset~input_o\ & (!\cp1|datoin:scint~q\ & !\cp2|clkout~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \cp1|datoin:scint~q\,
	datad => \cp2|clkout~q\,
	combout => \cp1|datoin:dato[0]~0_combout\);

-- Location: FF_X28_Y19_N23
\cp1|datoin:dato[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp1|clkadc|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \cp1|dato~0_combout\,
	ena => \cp1|datoin:dato[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp1|datoin:dato[9]~q\);

-- Location: FF_X28_Y20_N31
\cp4|fifo[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp1|datoin:dato[9]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[0][9]~q\);

-- Location: FF_X28_Y20_N29
\cp4|fifo[1][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[0][9]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[1][9]~q\);

-- Location: LCCOMB_X30_Y20_N12
\cp4|fifo[2][9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|fifo[2][9]~feeder_combout\ = \cp4|fifo[1][9]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cp4|fifo[1][9]~q\,
	combout => \cp4|fifo[2][9]~feeder_combout\);

-- Location: FF_X30_Y20_N13
\cp4|fifo[2][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp4|fifo[2][9]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[2][9]~q\);

-- Location: LCCOMB_X28_Y19_N16
\cp1|dato~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp1|dato~1_combout\ = (\cp1|datoin~3_combout\ & ((\cp1|Decoder0~1_combout\ & ((\sdi~input_o\))) # (!\cp1|Decoder0~1_combout\ & (\cp1|datoin:dato[8]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp1|Decoder0~1_combout\,
	datab => \cp1|datoin~3_combout\,
	datac => \cp1|datoin:dato[8]~q\,
	datad => \sdi~input_o\,
	combout => \cp1|dato~1_combout\);

-- Location: FF_X28_Y19_N17
\cp1|datoin:dato[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp1|clkadc|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \cp1|dato~1_combout\,
	ena => \cp1|datoin:dato[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp1|datoin:dato[8]~q\);

-- Location: FF_X28_Y20_N27
\cp4|fifo[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp1|datoin:dato[8]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[0][8]~q\);

-- Location: FF_X28_Y20_N11
\cp4|fifo[1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[0][8]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[1][8]~q\);

-- Location: FF_X29_Y20_N25
\cp4|fifo[2][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[1][8]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[2][8]~q\);

-- Location: LCCOMB_X28_Y19_N26
\cp1|dato~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp1|dato~2_combout\ = (\cp1|datoin~3_combout\ & ((\cp1|Decoder0~2_combout\ & ((\sdi~input_o\))) # (!\cp1|Decoder0~2_combout\ & (\cp1|datoin:dato[7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp1|Decoder0~2_combout\,
	datab => \cp1|datoin~3_combout\,
	datac => \cp1|datoin:dato[7]~q\,
	datad => \sdi~input_o\,
	combout => \cp1|dato~2_combout\);

-- Location: FF_X28_Y19_N27
\cp1|datoin:dato[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp1|clkadc|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \cp1|dato~2_combout\,
	ena => \cp1|datoin:dato[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp1|datoin:dato[7]~q\);

-- Location: FF_X28_Y20_N25
\cp4|fifo[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp1|datoin:dato[7]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[0][7]~q\);

-- Location: FF_X28_Y20_N13
\cp4|fifo[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[0][7]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[1][7]~q\);

-- Location: FF_X29_Y20_N23
\cp4|fifo[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[1][7]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[2][7]~q\);

-- Location: FF_X29_Y20_N9
\cp4|fifo[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[2][7]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[3][7]~q\);

-- Location: LCCOMB_X28_Y19_N12
\cp1|dato~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp1|dato~3_combout\ = (\cp1|datoin~3_combout\ & ((\cp1|Decoder0~3_combout\ & ((\sdi~input_o\))) # (!\cp1|Decoder0~3_combout\ & (\cp1|datoin:dato[6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp1|Decoder0~3_combout\,
	datab => \cp1|datoin~3_combout\,
	datac => \cp1|datoin:dato[6]~q\,
	datad => \sdi~input_o\,
	combout => \cp1|dato~3_combout\);

-- Location: FF_X28_Y19_N13
\cp1|datoin:dato[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp1|clkadc|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \cp1|dato~3_combout\,
	ena => \cp1|datoin:dato[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp1|datoin:dato[6]~q\);

-- Location: FF_X28_Y20_N15
\cp4|fifo[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp1|datoin:dato[6]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[0][6]~q\);

-- Location: FF_X28_Y20_N23
\cp4|fifo[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[0][6]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[1][6]~q\);

-- Location: FF_X29_Y20_N11
\cp4|fifo[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[1][6]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[2][6]~q\);

-- Location: FF_X29_Y20_N21
\cp4|fifo[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[2][6]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[3][6]~q\);

-- Location: LCCOMB_X28_Y19_N30
\cp1|dato~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp1|dato~4_combout\ = (\cp1|datoin~3_combout\ & ((\cp1|Decoder0~4_combout\ & ((\sdi~input_o\))) # (!\cp1|Decoder0~4_combout\ & (\cp1|datoin:dato[5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp1|Decoder0~4_combout\,
	datab => \cp1|datoin~3_combout\,
	datac => \cp1|datoin:dato[5]~q\,
	datad => \sdi~input_o\,
	combout => \cp1|dato~4_combout\);

-- Location: FF_X28_Y19_N31
\cp1|datoin:dato[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp1|clkadc|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \cp1|dato~4_combout\,
	ena => \cp1|datoin:dato[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp1|datoin:dato[5]~q\);

-- Location: FF_X28_Y20_N21
\cp4|fifo[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp1|datoin:dato[5]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[0][5]~q\);

-- Location: FF_X28_Y20_N17
\cp4|fifo[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[0][5]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[1][5]~q\);

-- Location: FF_X29_Y20_N19
\cp4|fifo[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[1][5]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[2][5]~q\);

-- Location: FF_X29_Y20_N29
\cp4|fifo[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[2][5]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[3][5]~q\);

-- Location: LCCOMB_X28_Y19_N0
\cp1|dato~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp1|dato~5_combout\ = (\cp1|datoin~3_combout\ & ((\cp1|Decoder0~5_combout\ & ((\sdi~input_o\))) # (!\cp1|Decoder0~5_combout\ & (\cp1|datoin:dato[4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp1|Decoder0~5_combout\,
	datab => \cp1|datoin~3_combout\,
	datac => \cp1|datoin:dato[4]~q\,
	datad => \sdi~input_o\,
	combout => \cp1|dato~5_combout\);

-- Location: FF_X28_Y19_N1
\cp1|datoin:dato[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp1|clkadc|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \cp1|dato~5_combout\,
	ena => \cp1|datoin:dato[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp1|datoin:dato[4]~q\);

-- Location: LCCOMB_X27_Y20_N0
\cp4|fifo[0][4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|fifo[0][4]~feeder_combout\ = \cp1|datoin:dato[4]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cp1|datoin:dato[4]~q\,
	combout => \cp4|fifo[0][4]~feeder_combout\);

-- Location: FF_X27_Y20_N1
\cp4|fifo[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp4|fifo[0][4]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[0][4]~q\);

-- Location: FF_X28_Y20_N19
\cp4|fifo[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[0][4]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[1][4]~q\);

-- Location: FF_X29_Y20_N17
\cp4|fifo[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[1][4]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[2][4]~q\);

-- Location: LCCOMB_X28_Y20_N4
\cp4|fifo[0][3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|fifo[0][3]~feeder_combout\ = \cp1|datoin:dato[3]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp1|datoin:dato[3]~q\,
	combout => \cp4|fifo[0][3]~feeder_combout\);

-- Location: FF_X28_Y20_N5
\cp4|fifo[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp4|fifo[0][3]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[0][3]~q\);

-- Location: LCCOMB_X27_Y20_N30
\cp4|fifo[1][3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|fifo[1][3]~feeder_combout\ = \cp4|fifo[0][3]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cp4|fifo[0][3]~q\,
	combout => \cp4|fifo[1][3]~feeder_combout\);

-- Location: FF_X27_Y20_N31
\cp4|fifo[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp4|fifo[1][3]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[1][3]~q\);

-- Location: FF_X29_Y20_N15
\cp4|fifo[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[1][3]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[2][3]~q\);

-- Location: LCCOMB_X28_Y19_N8
\cp1|dato~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp1|dato~7_combout\ = (\cp1|datoin~3_combout\ & ((\cp1|Decoder0~7_combout\ & ((\sdi~input_o\))) # (!\cp1|Decoder0~7_combout\ & (\cp1|datoin:dato[2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp1|Decoder0~7_combout\,
	datab => \cp1|datoin~3_combout\,
	datac => \cp1|datoin:dato[2]~q\,
	datad => \sdi~input_o\,
	combout => \cp1|dato~7_combout\);

-- Location: FF_X28_Y19_N9
\cp1|datoin:dato[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp1|clkadc|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \cp1|dato~7_combout\,
	ena => \cp1|datoin:dato[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp1|datoin:dato[2]~q\);

-- Location: LCCOMB_X28_Y20_N8
\cp4|fifo[0][2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|fifo[0][2]~feeder_combout\ = \cp1|datoin:dato[2]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cp1|datoin:dato[2]~q\,
	combout => \cp4|fifo[0][2]~feeder_combout\);

-- Location: FF_X28_Y20_N9
\cp4|fifo[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp4|fifo[0][2]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[0][2]~q\);

-- Location: LCCOMB_X27_Y20_N28
\cp4|fifo[1][2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|fifo[1][2]~feeder_combout\ = \cp4|fifo[0][2]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cp4|fifo[0][2]~q\,
	combout => \cp4|fifo[1][2]~feeder_combout\);

-- Location: FF_X27_Y20_N29
\cp4|fifo[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp4|fifo[1][2]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[1][2]~q\);

-- Location: FF_X29_Y20_N13
\cp4|fifo[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[1][2]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[2][2]~q\);

-- Location: LCCOMB_X29_Y20_N2
\cp4|fifo[3][2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|fifo[3][2]~feeder_combout\ = \cp4|fifo[2][2]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cp4|fifo[2][2]~q\,
	combout => \cp4|fifo[3][2]~feeder_combout\);

-- Location: FF_X29_Y20_N3
\cp4|fifo[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp4|fifo[3][2]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[3][2]~q\);

-- Location: LCCOMB_X28_Y19_N14
\cp1|dato~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp1|dato~8_combout\ = (\cp1|datoin~3_combout\ & ((\cp1|Decoder0~8_combout\ & ((\sdi~input_o\))) # (!\cp1|Decoder0~8_combout\ & (\cp1|datoin:dato[1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp1|Decoder0~8_combout\,
	datab => \cp1|datoin~3_combout\,
	datac => \cp1|datoin:dato[1]~q\,
	datad => \sdi~input_o\,
	combout => \cp1|dato~8_combout\);

-- Location: FF_X28_Y19_N15
\cp1|datoin:dato[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp1|clkadc|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \cp1|dato~8_combout\,
	ena => \cp1|datoin:dato[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp1|datoin:dato[1]~q\);

-- Location: LCCOMB_X28_Y20_N2
\cp4|fifo[0][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|fifo[0][1]~feeder_combout\ = \cp1|datoin:dato[1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cp1|datoin:dato[1]~q\,
	combout => \cp4|fifo[0][1]~feeder_combout\);

-- Location: FF_X28_Y20_N3
\cp4|fifo[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp4|fifo[0][1]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[0][1]~q\);

-- Location: LCCOMB_X27_Y20_N2
\cp4|fifo[1][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|fifo[1][1]~feeder_combout\ = \cp4|fifo[0][1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cp4|fifo[0][1]~q\,
	combout => \cp4|fifo[1][1]~feeder_combout\);

-- Location: FF_X27_Y20_N3
\cp4|fifo[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp4|fifo[1][1]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[1][1]~q\);

-- Location: LCCOMB_X29_Y20_N6
\cp4|fifo[2][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|fifo[2][1]~feeder_combout\ = \cp4|fifo[1][1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cp4|fifo[1][1]~q\,
	combout => \cp4|fifo[2][1]~feeder_combout\);

-- Location: FF_X29_Y20_N7
\cp4|fifo[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp4|fifo[2][1]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[2][1]~q\);

-- Location: LCCOMB_X29_Y20_N4
\cp4|fifo[3][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|fifo[3][1]~feeder_combout\ = \cp4|fifo[2][1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cp4|fifo[2][1]~q\,
	combout => \cp4|fifo[3][1]~feeder_combout\);

-- Location: FF_X29_Y20_N5
\cp4|fifo[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp4|fifo[3][1]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[3][1]~q\);

-- Location: LCCOMB_X28_Y19_N24
\cp1|dato~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp1|dato~9_combout\ = (\cp1|datoin~3_combout\ & ((\cp1|sc_prev~2_combout\ & ((\sdi~input_o\))) # (!\cp1|sc_prev~2_combout\ & (\cp1|datoin:dato[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp1|sc_prev~2_combout\,
	datab => \cp1|datoin~3_combout\,
	datac => \cp1|datoin:dato[0]~q\,
	datad => \sdi~input_o\,
	combout => \cp1|dato~9_combout\);

-- Location: FF_X28_Y19_N25
\cp1|datoin:dato[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp1|clkadc|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \cp1|dato~9_combout\,
	ena => \cp1|datoin:dato[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp1|datoin:dato[0]~q\);

-- Location: LCCOMB_X28_Y20_N0
\cp4|fifo[0][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|fifo[0][0]~feeder_combout\ = \cp1|datoin:dato[0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cp1|datoin:dato[0]~q\,
	combout => \cp4|fifo[0][0]~feeder_combout\);

-- Location: FF_X28_Y20_N1
\cp4|fifo[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp4|fifo[0][0]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[0][0]~q\);

-- Location: LCCOMB_X28_Y20_N6
\cp4|fifo[1][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|fifo[1][0]~feeder_combout\ = \cp4|fifo[0][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cp4|fifo[0][0]~q\,
	combout => \cp4|fifo[1][0]~feeder_combout\);

-- Location: FF_X28_Y20_N7
\cp4|fifo[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp4|fifo[1][0]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[1][0]~q\);

-- Location: LCCOMB_X29_Y20_N30
\cp4|fifo[2][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|fifo[2][0]~feeder_combout\ = \cp4|fifo[1][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cp4|fifo[1][0]~q\,
	combout => \cp4|fifo[2][0]~feeder_combout\);

-- Location: FF_X29_Y20_N31
\cp4|fifo[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp4|fifo[2][0]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[2][0]~q\);

-- Location: LCCOMB_X29_Y20_N0
\cp4|fifo[3][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|fifo[3][0]~feeder_combout\ = \cp4|fifo[2][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cp4|fifo[2][0]~q\,
	combout => \cp4|fifo[3][0]~feeder_combout\);

-- Location: FF_X29_Y20_N1
\cp4|fifo[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp4|fifo[3][0]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[3][0]~q\);

-- Location: LCCOMB_X29_Y20_N18
\cp4|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add1~10_combout\ = (\cp4|fifo[2][5]~q\ & ((\cp4|fifo[3][5]~q\ & (\cp4|Add1~9\ & VCC)) # (!\cp4|fifo[3][5]~q\ & (!\cp4|Add1~9\)))) # (!\cp4|fifo[2][5]~q\ & ((\cp4|fifo[3][5]~q\ & (!\cp4|Add1~9\)) # (!\cp4|fifo[3][5]~q\ & ((\cp4|Add1~9\) # (GND)))))
-- \cp4|Add1~11\ = CARRY((\cp4|fifo[2][5]~q\ & (!\cp4|fifo[3][5]~q\ & !\cp4|Add1~9\)) # (!\cp4|fifo[2][5]~q\ & ((!\cp4|Add1~9\) # (!\cp4|fifo[3][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[2][5]~q\,
	datab => \cp4|fifo[3][5]~q\,
	datad => VCC,
	cin => \cp4|Add1~9\,
	combout => \cp4|Add1~10_combout\,
	cout => \cp4|Add1~11\);

-- Location: LCCOMB_X29_Y20_N28
\cp4|Add1~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add1~20_combout\ = !\cp4|Add1~19\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \cp4|Add1~19\,
	combout => \cp4|Add1~20_combout\);

-- Location: LCCOMB_X28_Y20_N10
\cp4|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add0~0_combout\ = (\cp4|fifo[1][0]~q\ & (\cp4|fifo[0][0]~q\ $ (VCC))) # (!\cp4|fifo[1][0]~q\ & (\cp4|fifo[0][0]~q\ & VCC))
-- \cp4|Add0~1\ = CARRY((\cp4|fifo[1][0]~q\ & \cp4|fifo[0][0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[1][0]~q\,
	datab => \cp4|fifo[0][0]~q\,
	datad => VCC,
	combout => \cp4|Add0~0_combout\,
	cout => \cp4|Add0~1\);

-- Location: LCCOMB_X28_Y20_N12
\cp4|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add0~2_combout\ = (\cp4|fifo[1][1]~q\ & ((\cp4|fifo[0][1]~q\ & (\cp4|Add0~1\ & VCC)) # (!\cp4|fifo[0][1]~q\ & (!\cp4|Add0~1\)))) # (!\cp4|fifo[1][1]~q\ & ((\cp4|fifo[0][1]~q\ & (!\cp4|Add0~1\)) # (!\cp4|fifo[0][1]~q\ & ((\cp4|Add0~1\) # (GND)))))
-- \cp4|Add0~3\ = CARRY((\cp4|fifo[1][1]~q\ & (!\cp4|fifo[0][1]~q\ & !\cp4|Add0~1\)) # (!\cp4|fifo[1][1]~q\ & ((!\cp4|Add0~1\) # (!\cp4|fifo[0][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[1][1]~q\,
	datab => \cp4|fifo[0][1]~q\,
	datad => VCC,
	cin => \cp4|Add0~1\,
	combout => \cp4|Add0~2_combout\,
	cout => \cp4|Add0~3\);

-- Location: LCCOMB_X28_Y20_N14
\cp4|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add0~4_combout\ = ((\cp4|fifo[0][2]~q\ $ (\cp4|fifo[1][2]~q\ $ (!\cp4|Add0~3\)))) # (GND)
-- \cp4|Add0~5\ = CARRY((\cp4|fifo[0][2]~q\ & ((\cp4|fifo[1][2]~q\) # (!\cp4|Add0~3\))) # (!\cp4|fifo[0][2]~q\ & (\cp4|fifo[1][2]~q\ & !\cp4|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[0][2]~q\,
	datab => \cp4|fifo[1][2]~q\,
	datad => VCC,
	cin => \cp4|Add0~3\,
	combout => \cp4|Add0~4_combout\,
	cout => \cp4|Add0~5\);

-- Location: LCCOMB_X28_Y20_N16
\cp4|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add0~6_combout\ = (\cp4|fifo[0][3]~q\ & ((\cp4|fifo[1][3]~q\ & (\cp4|Add0~5\ & VCC)) # (!\cp4|fifo[1][3]~q\ & (!\cp4|Add0~5\)))) # (!\cp4|fifo[0][3]~q\ & ((\cp4|fifo[1][3]~q\ & (!\cp4|Add0~5\)) # (!\cp4|fifo[1][3]~q\ & ((\cp4|Add0~5\) # (GND)))))
-- \cp4|Add0~7\ = CARRY((\cp4|fifo[0][3]~q\ & (!\cp4|fifo[1][3]~q\ & !\cp4|Add0~5\)) # (!\cp4|fifo[0][3]~q\ & ((!\cp4|Add0~5\) # (!\cp4|fifo[1][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[0][3]~q\,
	datab => \cp4|fifo[1][3]~q\,
	datad => VCC,
	cin => \cp4|Add0~5\,
	combout => \cp4|Add0~6_combout\,
	cout => \cp4|Add0~7\);

-- Location: LCCOMB_X28_Y20_N18
\cp4|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add0~8_combout\ = ((\cp4|fifo[0][4]~q\ $ (\cp4|fifo[1][4]~q\ $ (!\cp4|Add0~7\)))) # (GND)
-- \cp4|Add0~9\ = CARRY((\cp4|fifo[0][4]~q\ & ((\cp4|fifo[1][4]~q\) # (!\cp4|Add0~7\))) # (!\cp4|fifo[0][4]~q\ & (\cp4|fifo[1][4]~q\ & !\cp4|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[0][4]~q\,
	datab => \cp4|fifo[1][4]~q\,
	datad => VCC,
	cin => \cp4|Add0~7\,
	combout => \cp4|Add0~8_combout\,
	cout => \cp4|Add0~9\);

-- Location: LCCOMB_X28_Y20_N22
\cp4|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add0~12_combout\ = ((\cp4|fifo[1][6]~q\ $ (\cp4|fifo[0][6]~q\ $ (!\cp4|Add0~11\)))) # (GND)
-- \cp4|Add0~13\ = CARRY((\cp4|fifo[1][6]~q\ & ((\cp4|fifo[0][6]~q\) # (!\cp4|Add0~11\))) # (!\cp4|fifo[1][6]~q\ & (\cp4|fifo[0][6]~q\ & !\cp4|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[1][6]~q\,
	datab => \cp4|fifo[0][6]~q\,
	datad => VCC,
	cin => \cp4|Add0~11\,
	combout => \cp4|Add0~12_combout\,
	cout => \cp4|Add0~13\);

-- Location: LCCOMB_X28_Y20_N24
\cp4|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add0~14_combout\ = (\cp4|fifo[1][7]~q\ & ((\cp4|fifo[0][7]~q\ & (\cp4|Add0~13\ & VCC)) # (!\cp4|fifo[0][7]~q\ & (!\cp4|Add0~13\)))) # (!\cp4|fifo[1][7]~q\ & ((\cp4|fifo[0][7]~q\ & (!\cp4|Add0~13\)) # (!\cp4|fifo[0][7]~q\ & ((\cp4|Add0~13\) # 
-- (GND)))))
-- \cp4|Add0~15\ = CARRY((\cp4|fifo[1][7]~q\ & (!\cp4|fifo[0][7]~q\ & !\cp4|Add0~13\)) # (!\cp4|fifo[1][7]~q\ & ((!\cp4|Add0~13\) # (!\cp4|fifo[0][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[1][7]~q\,
	datab => \cp4|fifo[0][7]~q\,
	datad => VCC,
	cin => \cp4|Add0~13\,
	combout => \cp4|Add0~14_combout\,
	cout => \cp4|Add0~15\);

-- Location: LCCOMB_X28_Y20_N26
\cp4|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add0~16_combout\ = ((\cp4|fifo[1][8]~q\ $ (\cp4|fifo[0][8]~q\ $ (!\cp4|Add0~15\)))) # (GND)
-- \cp4|Add0~17\ = CARRY((\cp4|fifo[1][8]~q\ & ((\cp4|fifo[0][8]~q\) # (!\cp4|Add0~15\))) # (!\cp4|fifo[1][8]~q\ & (\cp4|fifo[0][8]~q\ & !\cp4|Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[1][8]~q\,
	datab => \cp4|fifo[0][8]~q\,
	datad => VCC,
	cin => \cp4|Add0~15\,
	combout => \cp4|Add0~16_combout\,
	cout => \cp4|Add0~17\);

-- Location: LCCOMB_X27_Y20_N8
\cp4|Add2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add2~4_combout\ = ((\cp4|Add1~4_combout\ $ (\cp4|Add0~4_combout\ $ (!\cp4|Add2~3\)))) # (GND)
-- \cp4|Add2~5\ = CARRY((\cp4|Add1~4_combout\ & ((\cp4|Add0~4_combout\) # (!\cp4|Add2~3\))) # (!\cp4|Add1~4_combout\ & (\cp4|Add0~4_combout\ & !\cp4|Add2~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add1~4_combout\,
	datab => \cp4|Add0~4_combout\,
	datad => VCC,
	cin => \cp4|Add2~3\,
	combout => \cp4|Add2~4_combout\,
	cout => \cp4|Add2~5\);

-- Location: LCCOMB_X27_Y20_N10
\cp4|Add2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add2~6_combout\ = (\cp4|Add1~6_combout\ & ((\cp4|Add0~6_combout\ & (\cp4|Add2~5\ & VCC)) # (!\cp4|Add0~6_combout\ & (!\cp4|Add2~5\)))) # (!\cp4|Add1~6_combout\ & ((\cp4|Add0~6_combout\ & (!\cp4|Add2~5\)) # (!\cp4|Add0~6_combout\ & ((\cp4|Add2~5\) # 
-- (GND)))))
-- \cp4|Add2~7\ = CARRY((\cp4|Add1~6_combout\ & (!\cp4|Add0~6_combout\ & !\cp4|Add2~5\)) # (!\cp4|Add1~6_combout\ & ((!\cp4|Add2~5\) # (!\cp4|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add1~6_combout\,
	datab => \cp4|Add0~6_combout\,
	datad => VCC,
	cin => \cp4|Add2~5\,
	combout => \cp4|Add2~6_combout\,
	cout => \cp4|Add2~7\);

-- Location: LCCOMB_X27_Y20_N12
\cp4|Add2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add2~8_combout\ = ((\cp4|Add1~8_combout\ $ (\cp4|Add0~8_combout\ $ (!\cp4|Add2~7\)))) # (GND)
-- \cp4|Add2~9\ = CARRY((\cp4|Add1~8_combout\ & ((\cp4|Add0~8_combout\) # (!\cp4|Add2~7\))) # (!\cp4|Add1~8_combout\ & (\cp4|Add0~8_combout\ & !\cp4|Add2~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add1~8_combout\,
	datab => \cp4|Add0~8_combout\,
	datad => VCC,
	cin => \cp4|Add2~7\,
	combout => \cp4|Add2~8_combout\,
	cout => \cp4|Add2~9\);

-- Location: LCCOMB_X27_Y20_N14
\cp4|Add2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add2~10_combout\ = (\cp4|Add0~10_combout\ & ((\cp4|Add1~10_combout\ & (\cp4|Add2~9\ & VCC)) # (!\cp4|Add1~10_combout\ & (!\cp4|Add2~9\)))) # (!\cp4|Add0~10_combout\ & ((\cp4|Add1~10_combout\ & (!\cp4|Add2~9\)) # (!\cp4|Add1~10_combout\ & 
-- ((\cp4|Add2~9\) # (GND)))))
-- \cp4|Add2~11\ = CARRY((\cp4|Add0~10_combout\ & (!\cp4|Add1~10_combout\ & !\cp4|Add2~9\)) # (!\cp4|Add0~10_combout\ & ((!\cp4|Add2~9\) # (!\cp4|Add1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add0~10_combout\,
	datab => \cp4|Add1~10_combout\,
	datad => VCC,
	cin => \cp4|Add2~9\,
	combout => \cp4|Add2~10_combout\,
	cout => \cp4|Add2~11\);

-- Location: LCCOMB_X27_Y20_N16
\cp4|Add2~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add2~12_combout\ = ((\cp4|Add1~12_combout\ $ (\cp4|Add0~12_combout\ $ (!\cp4|Add2~11\)))) # (GND)
-- \cp4|Add2~13\ = CARRY((\cp4|Add1~12_combout\ & ((\cp4|Add0~12_combout\) # (!\cp4|Add2~11\))) # (!\cp4|Add1~12_combout\ & (\cp4|Add0~12_combout\ & !\cp4|Add2~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add1~12_combout\,
	datab => \cp4|Add0~12_combout\,
	datad => VCC,
	cin => \cp4|Add2~11\,
	combout => \cp4|Add2~12_combout\,
	cout => \cp4|Add2~13\);

-- Location: LCCOMB_X27_Y20_N18
\cp4|Add2~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add2~14_combout\ = (\cp4|Add1~14_combout\ & ((\cp4|Add0~14_combout\ & (\cp4|Add2~13\ & VCC)) # (!\cp4|Add0~14_combout\ & (!\cp4|Add2~13\)))) # (!\cp4|Add1~14_combout\ & ((\cp4|Add0~14_combout\ & (!\cp4|Add2~13\)) # (!\cp4|Add0~14_combout\ & 
-- ((\cp4|Add2~13\) # (GND)))))
-- \cp4|Add2~15\ = CARRY((\cp4|Add1~14_combout\ & (!\cp4|Add0~14_combout\ & !\cp4|Add2~13\)) # (!\cp4|Add1~14_combout\ & ((!\cp4|Add2~13\) # (!\cp4|Add0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add1~14_combout\,
	datab => \cp4|Add0~14_combout\,
	datad => VCC,
	cin => \cp4|Add2~13\,
	combout => \cp4|Add2~14_combout\,
	cout => \cp4|Add2~15\);

-- Location: LCCOMB_X27_Y20_N22
\cp4|Add2~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add2~18_combout\ = (\cp4|Add1~18_combout\ & ((\cp4|Add0~18_combout\ & (\cp4|Add2~17\ & VCC)) # (!\cp4|Add0~18_combout\ & (!\cp4|Add2~17\)))) # (!\cp4|Add1~18_combout\ & ((\cp4|Add0~18_combout\ & (!\cp4|Add2~17\)) # (!\cp4|Add0~18_combout\ & 
-- ((\cp4|Add2~17\) # (GND)))))
-- \cp4|Add2~19\ = CARRY((\cp4|Add1~18_combout\ & (!\cp4|Add0~18_combout\ & !\cp4|Add2~17\)) # (!\cp4|Add1~18_combout\ & ((!\cp4|Add2~17\) # (!\cp4|Add0~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add1~18_combout\,
	datab => \cp4|Add0~18_combout\,
	datad => VCC,
	cin => \cp4|Add2~17\,
	combout => \cp4|Add2~18_combout\,
	cout => \cp4|Add2~19\);

-- Location: LCCOMB_X30_Y20_N26
\cp4|fifo[3][8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|fifo[3][8]~feeder_combout\ = \cp4|fifo[2][8]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cp4|fifo[2][8]~q\,
	combout => \cp4|fifo[3][8]~feeder_combout\);

-- Location: FF_X30_Y20_N27
\cp4|fifo[3][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp4|fifo[3][8]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[3][8]~q\);

-- Location: FF_X26_Y20_N21
\cp4|fifo[4][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[3][8]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[4][8]~q\);

-- Location: FF_X26_Y20_N7
\cp4|fifo[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[3][1]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[4][1]~q\);

-- Location: FF_X26_Y20_N5
\cp4|fifo[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[3][0]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[4][0]~q\);

-- Location: LCCOMB_X26_Y20_N4
\cp4|Add3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add3~0_combout\ = (\cp4|Add2~0_combout\ & (\cp4|fifo[4][0]~q\ $ (VCC))) # (!\cp4|Add2~0_combout\ & (\cp4|fifo[4][0]~q\ & VCC))
-- \cp4|Add3~1\ = CARRY((\cp4|Add2~0_combout\ & \cp4|fifo[4][0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add2~0_combout\,
	datab => \cp4|fifo[4][0]~q\,
	datad => VCC,
	combout => \cp4|Add3~0_combout\,
	cout => \cp4|Add3~1\);

-- Location: LCCOMB_X26_Y20_N8
\cp4|Add3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add3~4_combout\ = ((\cp4|fifo[4][2]~q\ $ (\cp4|Add2~4_combout\ $ (!\cp4|Add3~3\)))) # (GND)
-- \cp4|Add3~5\ = CARRY((\cp4|fifo[4][2]~q\ & ((\cp4|Add2~4_combout\) # (!\cp4|Add3~3\))) # (!\cp4|fifo[4][2]~q\ & (\cp4|Add2~4_combout\ & !\cp4|Add3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[4][2]~q\,
	datab => \cp4|Add2~4_combout\,
	datad => VCC,
	cin => \cp4|Add3~3\,
	combout => \cp4|Add3~4_combout\,
	cout => \cp4|Add3~5\);

-- Location: LCCOMB_X26_Y20_N14
\cp4|Add3~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add3~10_combout\ = (\cp4|fifo[4][5]~q\ & ((\cp4|Add2~10_combout\ & (\cp4|Add3~9\ & VCC)) # (!\cp4|Add2~10_combout\ & (!\cp4|Add3~9\)))) # (!\cp4|fifo[4][5]~q\ & ((\cp4|Add2~10_combout\ & (!\cp4|Add3~9\)) # (!\cp4|Add2~10_combout\ & ((\cp4|Add3~9\) # 
-- (GND)))))
-- \cp4|Add3~11\ = CARRY((\cp4|fifo[4][5]~q\ & (!\cp4|Add2~10_combout\ & !\cp4|Add3~9\)) # (!\cp4|fifo[4][5]~q\ & ((!\cp4|Add3~9\) # (!\cp4|Add2~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[4][5]~q\,
	datab => \cp4|Add2~10_combout\,
	datad => VCC,
	cin => \cp4|Add3~9\,
	combout => \cp4|Add3~10_combout\,
	cout => \cp4|Add3~11\);

-- Location: LCCOMB_X26_Y20_N24
\cp4|Add3~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add3~20_combout\ = (\cp4|Add2~20_combout\ & (\cp4|Add3~19\ $ (GND))) # (!\cp4|Add2~20_combout\ & (!\cp4|Add3~19\ & VCC))
-- \cp4|Add3~21\ = CARRY((\cp4|Add2~20_combout\ & !\cp4|Add3~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cp4|Add2~20_combout\,
	datad => VCC,
	cin => \cp4|Add3~19\,
	combout => \cp4|Add3~20_combout\,
	cout => \cp4|Add3~21\);

-- Location: LCCOMB_X26_Y20_N26
\cp4|Add3~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add3~22_combout\ = (\cp4|Add2~22_combout\ & (!\cp4|Add3~21\)) # (!\cp4|Add2~22_combout\ & ((\cp4|Add3~21\) # (GND)))
-- \cp4|Add3~23\ = CARRY((!\cp4|Add3~21\) # (!\cp4|Add2~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add2~22_combout\,
	datad => VCC,
	cin => \cp4|Add3~21\,
	combout => \cp4|Add3~22_combout\,
	cout => \cp4|Add3~23\);

-- Location: LCCOMB_X26_Y20_N28
\cp4|Add3~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add3~24_combout\ = !\cp4|Add3~23\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \cp4|Add3~23\,
	combout => \cp4|Add3~24_combout\);

-- Location: FF_X29_Y20_N27
\cp4|fifo[3][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[2][9]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[3][9]~q\);

-- Location: FF_X26_Y20_N23
\cp4|fifo[4][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[3][9]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[4][9]~q\);

-- Location: LCCOMB_X24_Y20_N0
\cp4|fifo[5][9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|fifo[5][9]~feeder_combout\ = \cp4|fifo[4][9]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cp4|fifo[4][9]~q\,
	combout => \cp4|fifo[5][9]~feeder_combout\);

-- Location: FF_X24_Y20_N1
\cp4|fifo[5][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp4|fifo[5][9]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[5][9]~q\);

-- Location: FF_X23_Y21_N7
\cp4|fifo[6][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[5][9]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[6][9]~q\);

-- Location: FF_X23_Y21_N25
\cp4|fifo[7][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[6][9]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[7][9]~q\);

-- Location: LCCOMB_X24_Y20_N28
\cp4|fifo[5][8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|fifo[5][8]~feeder_combout\ = \cp4|fifo[4][8]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cp4|fifo[4][8]~q\,
	combout => \cp4|fifo[5][8]~feeder_combout\);

-- Location: FF_X24_Y20_N29
\cp4|fifo[5][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp4|fifo[5][8]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[5][8]~q\);

-- Location: FF_X23_Y21_N23
\cp4|fifo[6][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[5][8]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[6][8]~q\);

-- Location: FF_X26_Y20_N19
\cp4|fifo[4][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[3][7]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[4][7]~q\);

-- Location: LCCOMB_X23_Y20_N0
\cp4|fifo[5][7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|fifo[5][7]~feeder_combout\ = \cp4|fifo[4][7]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cp4|fifo[4][7]~q\,
	combout => \cp4|fifo[5][7]~feeder_combout\);

-- Location: FF_X23_Y20_N1
\cp4|fifo[5][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp4|fifo[5][7]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[5][7]~q\);

-- Location: FF_X23_Y21_N21
\cp4|fifo[6][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[5][7]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[6][7]~q\);

-- Location: LCCOMB_X26_Y20_N0
\cp4|fifo[4][6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|fifo[4][6]~feeder_combout\ = \cp4|fifo[3][6]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cp4|fifo[3][6]~q\,
	combout => \cp4|fifo[4][6]~feeder_combout\);

-- Location: FF_X26_Y20_N1
\cp4|fifo[4][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp4|fifo[4][6]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[4][6]~q\);

-- Location: FF_X24_Y21_N13
\cp4|fifo[5][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[4][6]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[5][6]~q\);

-- Location: FF_X23_Y21_N27
\cp4|fifo[6][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[5][6]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[6][6]~q\);

-- Location: FF_X23_Y21_N19
\cp4|fifo[7][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[6][6]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[7][6]~q\);

-- Location: FF_X26_Y20_N15
\cp4|fifo[4][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[3][5]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[4][5]~q\);

-- Location: FF_X24_Y21_N11
\cp4|fifo[5][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[4][5]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[5][5]~q\);

-- Location: FF_X23_Y21_N17
\cp4|fifo[6][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[5][5]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[6][5]~q\);

-- Location: LCCOMB_X24_Y21_N24
\cp4|fifo[7][5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|fifo[7][5]~feeder_combout\ = \cp4|fifo[6][5]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cp4|fifo[6][5]~q\,
	combout => \cp4|fifo[7][5]~feeder_combout\);

-- Location: FF_X24_Y21_N25
\cp4|fifo[7][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp4|fifo[7][5]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[7][5]~q\);

-- Location: LCCOMB_X30_Y20_N4
\cp4|fifo[3][4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|fifo[3][4]~feeder_combout\ = \cp4|fifo[2][4]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cp4|fifo[2][4]~q\,
	combout => \cp4|fifo[3][4]~feeder_combout\);

-- Location: FF_X30_Y20_N5
\cp4|fifo[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp4|fifo[3][4]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[3][4]~q\);

-- Location: LCCOMB_X26_Y20_N30
\cp4|fifo[4][4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|fifo[4][4]~feeder_combout\ = \cp4|fifo[3][4]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cp4|fifo[3][4]~q\,
	combout => \cp4|fifo[4][4]~feeder_combout\);

-- Location: FF_X26_Y20_N31
\cp4|fifo[4][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp4|fifo[4][4]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[4][4]~q\);

-- Location: FF_X24_Y21_N9
\cp4|fifo[5][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[4][4]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[5][4]~q\);

-- Location: LCCOMB_X24_Y21_N28
\cp4|fifo[6][4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|fifo[6][4]~feeder_combout\ = \cp4|fifo[5][4]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cp4|fifo[5][4]~q\,
	combout => \cp4|fifo[6][4]~feeder_combout\);

-- Location: FF_X24_Y21_N29
\cp4|fifo[6][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp4|fifo[6][4]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[6][4]~q\);

-- Location: FF_X23_Y21_N15
\cp4|fifo[7][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[6][4]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[7][4]~q\);

-- Location: LCCOMB_X30_Y20_N2
\cp4|fifo[3][3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|fifo[3][3]~feeder_combout\ = \cp4|fifo[2][3]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cp4|fifo[2][3]~q\,
	combout => \cp4|fifo[3][3]~feeder_combout\);

-- Location: FF_X30_Y20_N3
\cp4|fifo[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp4|fifo[3][3]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[3][3]~q\);

-- Location: LCCOMB_X26_Y20_N2
\cp4|fifo[4][3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|fifo[4][3]~feeder_combout\ = \cp4|fifo[3][3]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cp4|fifo[3][3]~q\,
	combout => \cp4|fifo[4][3]~feeder_combout\);

-- Location: FF_X26_Y20_N3
\cp4|fifo[4][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp4|fifo[4][3]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[4][3]~q\);

-- Location: FF_X24_Y21_N7
\cp4|fifo[5][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[4][3]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[5][3]~q\);

-- Location: LCCOMB_X23_Y21_N4
\cp4|fifo[6][3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|fifo[6][3]~feeder_combout\ = \cp4|fifo[5][3]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cp4|fifo[5][3]~q\,
	combout => \cp4|fifo[6][3]~feeder_combout\);

-- Location: FF_X23_Y21_N5
\cp4|fifo[6][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp4|fifo[6][3]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[6][3]~q\);

-- Location: LCCOMB_X23_Y21_N2
\cp4|fifo[7][3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|fifo[7][3]~feeder_combout\ = \cp4|fifo[6][3]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cp4|fifo[6][3]~q\,
	combout => \cp4|fifo[7][3]~feeder_combout\);

-- Location: FF_X23_Y21_N3
\cp4|fifo[7][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp4|fifo[7][3]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[7][3]~q\);

-- Location: FF_X26_Y20_N9
\cp4|fifo[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[3][2]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[4][2]~q\);

-- Location: FF_X24_Y21_N5
\cp4|fifo[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[4][2]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[5][2]~q\);

-- Location: FF_X23_Y21_N13
\cp4|fifo[6][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[5][2]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[6][2]~q\);

-- Location: FF_X23_Y21_N11
\cp4|fifo[7][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[6][2]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[7][2]~q\);

-- Location: FF_X24_Y21_N3
\cp4|fifo[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[4][1]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[5][1]~q\);

-- Location: LCCOMB_X23_Y21_N30
\cp4|fifo[6][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|fifo[6][1]~feeder_combout\ = \cp4|fifo[5][1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cp4|fifo[5][1]~q\,
	combout => \cp4|fifo[6][1]~feeder_combout\);

-- Location: FF_X23_Y21_N31
\cp4|fifo[6][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp4|fifo[6][1]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[6][1]~q\);

-- Location: LCCOMB_X23_Y21_N0
\cp4|fifo[7][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|fifo[7][1]~feeder_combout\ = \cp4|fifo[6][1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cp4|fifo[6][1]~q\,
	combout => \cp4|fifo[7][1]~feeder_combout\);

-- Location: FF_X23_Y21_N1
\cp4|fifo[7][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp4|fifo[7][1]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[7][1]~q\);

-- Location: FF_X24_Y21_N1
\cp4|fifo[5][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[4][0]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[5][0]~q\);

-- Location: LCCOMB_X23_Y21_N28
\cp4|fifo[6][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|fifo[6][0]~feeder_combout\ = \cp4|fifo[5][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cp4|fifo[5][0]~q\,
	combout => \cp4|fifo[6][0]~feeder_combout\);

-- Location: FF_X23_Y21_N29
\cp4|fifo[6][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp4|fifo[6][0]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[6][0]~q\);

-- Location: LCCOMB_X23_Y21_N18
\cp4|Add5~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add5~12_combout\ = ((\cp4|fifo[6][6]~q\ $ (\cp4|fifo[7][6]~q\ $ (!\cp4|Add5~11\)))) # (GND)
-- \cp4|Add5~13\ = CARRY((\cp4|fifo[6][6]~q\ & ((\cp4|fifo[7][6]~q\) # (!\cp4|Add5~11\))) # (!\cp4|fifo[6][6]~q\ & (\cp4|fifo[7][6]~q\ & !\cp4|Add5~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[6][6]~q\,
	datab => \cp4|fifo[7][6]~q\,
	datad => VCC,
	cin => \cp4|Add5~11\,
	combout => \cp4|Add5~12_combout\,
	cout => \cp4|Add5~13\);

-- Location: LCCOMB_X23_Y21_N20
\cp4|Add5~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add5~14_combout\ = (\cp4|fifo[7][7]~q\ & ((\cp4|fifo[6][7]~q\ & (\cp4|Add5~13\ & VCC)) # (!\cp4|fifo[6][7]~q\ & (!\cp4|Add5~13\)))) # (!\cp4|fifo[7][7]~q\ & ((\cp4|fifo[6][7]~q\ & (!\cp4|Add5~13\)) # (!\cp4|fifo[6][7]~q\ & ((\cp4|Add5~13\) # 
-- (GND)))))
-- \cp4|Add5~15\ = CARRY((\cp4|fifo[7][7]~q\ & (!\cp4|fifo[6][7]~q\ & !\cp4|Add5~13\)) # (!\cp4|fifo[7][7]~q\ & ((!\cp4|Add5~13\) # (!\cp4|fifo[6][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[7][7]~q\,
	datab => \cp4|fifo[6][7]~q\,
	datad => VCC,
	cin => \cp4|Add5~13\,
	combout => \cp4|Add5~14_combout\,
	cout => \cp4|Add5~15\);

-- Location: LCCOMB_X24_Y21_N2
\cp4|Add4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add4~2_combout\ = (\cp4|Add5~2_combout\ & ((\cp4|fifo[5][1]~q\ & (\cp4|Add4~1\ & VCC)) # (!\cp4|fifo[5][1]~q\ & (!\cp4|Add4~1\)))) # (!\cp4|Add5~2_combout\ & ((\cp4|fifo[5][1]~q\ & (!\cp4|Add4~1\)) # (!\cp4|fifo[5][1]~q\ & ((\cp4|Add4~1\) # (GND)))))
-- \cp4|Add4~3\ = CARRY((\cp4|Add5~2_combout\ & (!\cp4|fifo[5][1]~q\ & !\cp4|Add4~1\)) # (!\cp4|Add5~2_combout\ & ((!\cp4|Add4~1\) # (!\cp4|fifo[5][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add5~2_combout\,
	datab => \cp4|fifo[5][1]~q\,
	datad => VCC,
	cin => \cp4|Add4~1\,
	combout => \cp4|Add4~2_combout\,
	cout => \cp4|Add4~3\);

-- Location: LCCOMB_X24_Y21_N6
\cp4|Add4~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add4~6_combout\ = (\cp4|Add5~6_combout\ & ((\cp4|fifo[5][3]~q\ & (\cp4|Add4~5\ & VCC)) # (!\cp4|fifo[5][3]~q\ & (!\cp4|Add4~5\)))) # (!\cp4|Add5~6_combout\ & ((\cp4|fifo[5][3]~q\ & (!\cp4|Add4~5\)) # (!\cp4|fifo[5][3]~q\ & ((\cp4|Add4~5\) # (GND)))))
-- \cp4|Add4~7\ = CARRY((\cp4|Add5~6_combout\ & (!\cp4|fifo[5][3]~q\ & !\cp4|Add4~5\)) # (!\cp4|Add5~6_combout\ & ((!\cp4|Add4~5\) # (!\cp4|fifo[5][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add5~6_combout\,
	datab => \cp4|fifo[5][3]~q\,
	datad => VCC,
	cin => \cp4|Add4~5\,
	combout => \cp4|Add4~6_combout\,
	cout => \cp4|Add4~7\);

-- Location: LCCOMB_X24_Y21_N8
\cp4|Add4~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add4~8_combout\ = ((\cp4|Add5~8_combout\ $ (\cp4|fifo[5][4]~q\ $ (!\cp4|Add4~7\)))) # (GND)
-- \cp4|Add4~9\ = CARRY((\cp4|Add5~8_combout\ & ((\cp4|fifo[5][4]~q\) # (!\cp4|Add4~7\))) # (!\cp4|Add5~8_combout\ & (\cp4|fifo[5][4]~q\ & !\cp4|Add4~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add5~8_combout\,
	datab => \cp4|fifo[5][4]~q\,
	datad => VCC,
	cin => \cp4|Add4~7\,
	combout => \cp4|Add4~8_combout\,
	cout => \cp4|Add4~9\);

-- Location: LCCOMB_X24_Y21_N12
\cp4|Add4~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add4~12_combout\ = ((\cp4|fifo[5][6]~q\ $ (\cp4|Add5~12_combout\ $ (!\cp4|Add4~11\)))) # (GND)
-- \cp4|Add4~13\ = CARRY((\cp4|fifo[5][6]~q\ & ((\cp4|Add5~12_combout\) # (!\cp4|Add4~11\))) # (!\cp4|fifo[5][6]~q\ & (\cp4|Add5~12_combout\ & !\cp4|Add4~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[5][6]~q\,
	datab => \cp4|Add5~12_combout\,
	datad => VCC,
	cin => \cp4|Add4~11\,
	combout => \cp4|Add4~12_combout\,
	cout => \cp4|Add4~13\);

-- Location: LCCOMB_X24_Y21_N14
\cp4|Add4~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add4~14_combout\ = (\cp4|fifo[5][7]~q\ & ((\cp4|Add5~14_combout\ & (\cp4|Add4~13\ & VCC)) # (!\cp4|Add5~14_combout\ & (!\cp4|Add4~13\)))) # (!\cp4|fifo[5][7]~q\ & ((\cp4|Add5~14_combout\ & (!\cp4|Add4~13\)) # (!\cp4|Add5~14_combout\ & 
-- ((\cp4|Add4~13\) # (GND)))))
-- \cp4|Add4~15\ = CARRY((\cp4|fifo[5][7]~q\ & (!\cp4|Add5~14_combout\ & !\cp4|Add4~13\)) # (!\cp4|fifo[5][7]~q\ & ((!\cp4|Add4~13\) # (!\cp4|Add5~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[5][7]~q\,
	datab => \cp4|Add5~14_combout\,
	datad => VCC,
	cin => \cp4|Add4~13\,
	combout => \cp4|Add4~14_combout\,
	cout => \cp4|Add4~15\);

-- Location: LCCOMB_X24_Y21_N16
\cp4|Add4~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add4~16_combout\ = ((\cp4|Add5~16_combout\ $ (\cp4|fifo[5][8]~q\ $ (!\cp4|Add4~15\)))) # (GND)
-- \cp4|Add4~17\ = CARRY((\cp4|Add5~16_combout\ & ((\cp4|fifo[5][8]~q\) # (!\cp4|Add4~15\))) # (!\cp4|Add5~16_combout\ & (\cp4|fifo[5][8]~q\ & !\cp4|Add4~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add5~16_combout\,
	datab => \cp4|fifo[5][8]~q\,
	datad => VCC,
	cin => \cp4|Add4~15\,
	combout => \cp4|Add4~16_combout\,
	cout => \cp4|Add4~17\);

-- Location: LCCOMB_X24_Y20_N2
\cp4|Add6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add6~0_combout\ = (\cp4|Add4~0_combout\ & (\cp4|Add3~0_combout\ $ (VCC))) # (!\cp4|Add4~0_combout\ & (\cp4|Add3~0_combout\ & VCC))
-- \cp4|Add6~1\ = CARRY((\cp4|Add4~0_combout\ & \cp4|Add3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add4~0_combout\,
	datab => \cp4|Add3~0_combout\,
	datad => VCC,
	combout => \cp4|Add6~0_combout\,
	cout => \cp4|Add6~1\);

-- Location: LCCOMB_X24_Y20_N4
\cp4|Add6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add6~2_combout\ = (\cp4|Add3~2_combout\ & ((\cp4|Add4~2_combout\ & (\cp4|Add6~1\ & VCC)) # (!\cp4|Add4~2_combout\ & (!\cp4|Add6~1\)))) # (!\cp4|Add3~2_combout\ & ((\cp4|Add4~2_combout\ & (!\cp4|Add6~1\)) # (!\cp4|Add4~2_combout\ & ((\cp4|Add6~1\) # 
-- (GND)))))
-- \cp4|Add6~3\ = CARRY((\cp4|Add3~2_combout\ & (!\cp4|Add4~2_combout\ & !\cp4|Add6~1\)) # (!\cp4|Add3~2_combout\ & ((!\cp4|Add6~1\) # (!\cp4|Add4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add3~2_combout\,
	datab => \cp4|Add4~2_combout\,
	datad => VCC,
	cin => \cp4|Add6~1\,
	combout => \cp4|Add6~2_combout\,
	cout => \cp4|Add6~3\);

-- Location: LCCOMB_X24_Y20_N8
\cp4|Add6~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add6~6_combout\ = (\cp4|Add3~6_combout\ & ((\cp4|Add4~6_combout\ & (\cp4|Add6~5\ & VCC)) # (!\cp4|Add4~6_combout\ & (!\cp4|Add6~5\)))) # (!\cp4|Add3~6_combout\ & ((\cp4|Add4~6_combout\ & (!\cp4|Add6~5\)) # (!\cp4|Add4~6_combout\ & ((\cp4|Add6~5\) # 
-- (GND)))))
-- \cp4|Add6~7\ = CARRY((\cp4|Add3~6_combout\ & (!\cp4|Add4~6_combout\ & !\cp4|Add6~5\)) # (!\cp4|Add3~6_combout\ & ((!\cp4|Add6~5\) # (!\cp4|Add4~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add3~6_combout\,
	datab => \cp4|Add4~6_combout\,
	datad => VCC,
	cin => \cp4|Add6~5\,
	combout => \cp4|Add6~6_combout\,
	cout => \cp4|Add6~7\);

-- Location: LCCOMB_X24_Y20_N10
\cp4|Add6~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add6~8_combout\ = ((\cp4|Add3~8_combout\ $ (\cp4|Add4~8_combout\ $ (!\cp4|Add6~7\)))) # (GND)
-- \cp4|Add6~9\ = CARRY((\cp4|Add3~8_combout\ & ((\cp4|Add4~8_combout\) # (!\cp4|Add6~7\))) # (!\cp4|Add3~8_combout\ & (\cp4|Add4~8_combout\ & !\cp4|Add6~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add3~8_combout\,
	datab => \cp4|Add4~8_combout\,
	datad => VCC,
	cin => \cp4|Add6~7\,
	combout => \cp4|Add6~8_combout\,
	cout => \cp4|Add6~9\);

-- Location: LCCOMB_X24_Y20_N12
\cp4|Add6~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add6~10_combout\ = (\cp4|Add4~10_combout\ & ((\cp4|Add3~10_combout\ & (\cp4|Add6~9\ & VCC)) # (!\cp4|Add3~10_combout\ & (!\cp4|Add6~9\)))) # (!\cp4|Add4~10_combout\ & ((\cp4|Add3~10_combout\ & (!\cp4|Add6~9\)) # (!\cp4|Add3~10_combout\ & 
-- ((\cp4|Add6~9\) # (GND)))))
-- \cp4|Add6~11\ = CARRY((\cp4|Add4~10_combout\ & (!\cp4|Add3~10_combout\ & !\cp4|Add6~9\)) # (!\cp4|Add4~10_combout\ & ((!\cp4|Add6~9\) # (!\cp4|Add3~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add4~10_combout\,
	datab => \cp4|Add3~10_combout\,
	datad => VCC,
	cin => \cp4|Add6~9\,
	combout => \cp4|Add6~10_combout\,
	cout => \cp4|Add6~11\);

-- Location: LCCOMB_X24_Y20_N14
\cp4|Add6~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add6~12_combout\ = ((\cp4|Add3~12_combout\ $ (\cp4|Add4~12_combout\ $ (!\cp4|Add6~11\)))) # (GND)
-- \cp4|Add6~13\ = CARRY((\cp4|Add3~12_combout\ & ((\cp4|Add4~12_combout\) # (!\cp4|Add6~11\))) # (!\cp4|Add3~12_combout\ & (\cp4|Add4~12_combout\ & !\cp4|Add6~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add3~12_combout\,
	datab => \cp4|Add4~12_combout\,
	datad => VCC,
	cin => \cp4|Add6~11\,
	combout => \cp4|Add6~12_combout\,
	cout => \cp4|Add6~13\);

-- Location: LCCOMB_X24_Y20_N16
\cp4|Add6~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add6~14_combout\ = (\cp4|Add3~14_combout\ & ((\cp4|Add4~14_combout\ & (\cp4|Add6~13\ & VCC)) # (!\cp4|Add4~14_combout\ & (!\cp4|Add6~13\)))) # (!\cp4|Add3~14_combout\ & ((\cp4|Add4~14_combout\ & (!\cp4|Add6~13\)) # (!\cp4|Add4~14_combout\ & 
-- ((\cp4|Add6~13\) # (GND)))))
-- \cp4|Add6~15\ = CARRY((\cp4|Add3~14_combout\ & (!\cp4|Add4~14_combout\ & !\cp4|Add6~13\)) # (!\cp4|Add3~14_combout\ & ((!\cp4|Add6~13\) # (!\cp4|Add4~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add3~14_combout\,
	datab => \cp4|Add4~14_combout\,
	datad => VCC,
	cin => \cp4|Add6~13\,
	combout => \cp4|Add6~14_combout\,
	cout => \cp4|Add6~15\);

-- Location: LCCOMB_X24_Y20_N18
\cp4|Add6~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add6~16_combout\ = ((\cp4|Add3~16_combout\ $ (\cp4|Add4~16_combout\ $ (!\cp4|Add6~15\)))) # (GND)
-- \cp4|Add6~17\ = CARRY((\cp4|Add3~16_combout\ & ((\cp4|Add4~16_combout\) # (!\cp4|Add6~15\))) # (!\cp4|Add3~16_combout\ & (\cp4|Add4~16_combout\ & !\cp4|Add6~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add3~16_combout\,
	datab => \cp4|Add4~16_combout\,
	datad => VCC,
	cin => \cp4|Add6~15\,
	combout => \cp4|Add6~16_combout\,
	cout => \cp4|Add6~17\);

-- Location: LCCOMB_X24_Y20_N22
\cp4|Add6~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add6~20_combout\ = ((\cp4|Add4~20_combout\ $ (\cp4|Add3~20_combout\ $ (!\cp4|Add6~19\)))) # (GND)
-- \cp4|Add6~21\ = CARRY((\cp4|Add4~20_combout\ & ((\cp4|Add3~20_combout\) # (!\cp4|Add6~19\))) # (!\cp4|Add4~20_combout\ & (\cp4|Add3~20_combout\ & !\cp4|Add6~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add4~20_combout\,
	datab => \cp4|Add3~20_combout\,
	datad => VCC,
	cin => \cp4|Add6~19\,
	combout => \cp4|Add6~20_combout\,
	cout => \cp4|Add6~21\);

-- Location: LCCOMB_X24_Y20_N24
\cp4|Add6~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add6~22_combout\ = (\cp4|Add4~22_combout\ & ((\cp4|Add3~22_combout\ & (\cp4|Add6~21\ & VCC)) # (!\cp4|Add3~22_combout\ & (!\cp4|Add6~21\)))) # (!\cp4|Add4~22_combout\ & ((\cp4|Add3~22_combout\ & (!\cp4|Add6~21\)) # (!\cp4|Add3~22_combout\ & 
-- ((\cp4|Add6~21\) # (GND)))))
-- \cp4|Add6~23\ = CARRY((\cp4|Add4~22_combout\ & (!\cp4|Add3~22_combout\ & !\cp4|Add6~21\)) # (!\cp4|Add4~22_combout\ & ((!\cp4|Add6~21\) # (!\cp4|Add3~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add4~22_combout\,
	datab => \cp4|Add3~22_combout\,
	datad => VCC,
	cin => \cp4|Add6~21\,
	combout => \cp4|Add6~22_combout\,
	cout => \cp4|Add6~23\);

-- Location: LCCOMB_X24_Y20_N26
\cp4|Add6~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add6~24_combout\ = \cp4|Add6~23\ $ (!\cp4|Add3~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \cp4|Add3~24_combout\,
	cin => \cp4|Add6~23\,
	combout => \cp4|Add6~24_combout\);

-- Location: FF_X22_Y21_N23
\cp4|fifo[8][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[7][9]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[8][9]~q\);

-- Location: LCCOMB_X22_Y21_N28
\cp4|fifo[9][9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|fifo[9][9]~feeder_combout\ = \cp4|fifo[8][9]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cp4|fifo[8][9]~q\,
	combout => \cp4|fifo[9][9]~feeder_combout\);

-- Location: FF_X22_Y21_N29
\cp4|fifo[9][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp4|fifo[9][9]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[9][9]~q\);

-- Location: FF_X23_Y21_N9
\cp4|fifo[7][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[6][8]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[7][8]~q\);

-- Location: FF_X22_Y21_N21
\cp4|fifo[8][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[7][8]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[8][8]~q\);

-- Location: LCCOMB_X24_Y21_N30
\cp4|fifo[7][7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|fifo[7][7]~feeder_combout\ = \cp4|fifo[6][7]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cp4|fifo[6][7]~q\,
	combout => \cp4|fifo[7][7]~feeder_combout\);

-- Location: FF_X24_Y21_N31
\cp4|fifo[7][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp4|fifo[7][7]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[7][7]~q\);

-- Location: FF_X24_Y21_N23
\cp4|fifo[8][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[7][7]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[8][7]~q\);

-- Location: FF_X22_Y21_N19
\cp4|fifo[9][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[8][7]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[9][7]~q\);

-- Location: LCCOMB_X22_Y21_N26
\cp4|fifo[8][6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|fifo[8][6]~feeder_combout\ = \cp4|fifo[7][6]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cp4|fifo[7][6]~q\,
	combout => \cp4|fifo[8][6]~feeder_combout\);

-- Location: FF_X22_Y21_N27
\cp4|fifo[8][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp4|fifo[8][6]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[8][6]~q\);

-- Location: LCCOMB_X19_Y21_N20
\cp4|fifo[9][6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|fifo[9][6]~feeder_combout\ = \cp4|fifo[8][6]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cp4|fifo[8][6]~q\,
	combout => \cp4|fifo[9][6]~feeder_combout\);

-- Location: FF_X19_Y21_N21
\cp4|fifo[9][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp4|fifo[9][6]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[9][6]~q\);

-- Location: FF_X22_Y21_N15
\cp4|fifo[8][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[7][5]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[8][5]~q\);

-- Location: FF_X22_Y21_N13
\cp4|fifo[8][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[7][4]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[8][4]~q\);

-- Location: FF_X22_Y21_N17
\cp4|fifo[9][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[8][4]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[9][4]~q\);

-- Location: FF_X22_Y21_N11
\cp4|fifo[8][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[7][3]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[8][3]~q\);

-- Location: FF_X22_Y21_N25
\cp4|fifo[9][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[8][3]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[9][3]~q\);

-- Location: FF_X22_Y21_N9
\cp4|fifo[8][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[7][2]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[8][2]~q\);

-- Location: FF_X22_Y21_N5
\cp4|fifo[9][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[8][2]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[9][2]~q\);

-- Location: FF_X24_Y21_N21
\cp4|fifo[8][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[7][1]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[8][1]~q\);

-- Location: LCCOMB_X24_Y21_N26
\cp4|fifo[7][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|fifo[7][0]~feeder_combout\ = \cp4|fifo[6][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cp4|fifo[6][0]~q\,
	combout => \cp4|fifo[7][0]~feeder_combout\);

-- Location: FF_X24_Y21_N27
\cp4|fifo[7][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp4|fifo[7][0]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[7][0]~q\);

-- Location: FF_X24_Y21_N15
\cp4|fifo[8][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[7][0]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[8][0]~q\);

-- Location: LCCOMB_X22_Y21_N0
\cp4|fifo[9][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|fifo[9][0]~feeder_combout\ = \cp4|fifo[8][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cp4|fifo[8][0]~q\,
	combout => \cp4|fifo[9][0]~feeder_combout\);

-- Location: FF_X22_Y21_N1
\cp4|fifo[9][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp4|fifo[9][0]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[9][0]~q\);

-- Location: LCCOMB_X22_Y21_N8
\cp4|Add7~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add7~4_combout\ = ((\cp4|fifo[8][2]~q\ $ (\cp4|fifo[9][2]~q\ $ (!\cp4|Add7~3\)))) # (GND)
-- \cp4|Add7~5\ = CARRY((\cp4|fifo[8][2]~q\ & ((\cp4|fifo[9][2]~q\) # (!\cp4|Add7~3\))) # (!\cp4|fifo[8][2]~q\ & (\cp4|fifo[9][2]~q\ & !\cp4|Add7~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[8][2]~q\,
	datab => \cp4|fifo[9][2]~q\,
	datad => VCC,
	cin => \cp4|Add7~3\,
	combout => \cp4|Add7~4_combout\,
	cout => \cp4|Add7~5\);

-- Location: LCCOMB_X23_Y20_N4
\cp4|Add8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add8~0_combout\ = (\cp4|Add7~0_combout\ & (\cp4|Add6~0_combout\ $ (VCC))) # (!\cp4|Add7~0_combout\ & (\cp4|Add6~0_combout\ & VCC))
-- \cp4|Add8~1\ = CARRY((\cp4|Add7~0_combout\ & \cp4|Add6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add7~0_combout\,
	datab => \cp4|Add6~0_combout\,
	datad => VCC,
	combout => \cp4|Add8~0_combout\,
	cout => \cp4|Add8~1\);

-- Location: LCCOMB_X23_Y20_N8
\cp4|Add8~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add8~4_combout\ = ((\cp4|Add6~4_combout\ $ (\cp4|Add7~4_combout\ $ (!\cp4|Add8~3\)))) # (GND)
-- \cp4|Add8~5\ = CARRY((\cp4|Add6~4_combout\ & ((\cp4|Add7~4_combout\) # (!\cp4|Add8~3\))) # (!\cp4|Add6~4_combout\ & (\cp4|Add7~4_combout\ & !\cp4|Add8~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add6~4_combout\,
	datab => \cp4|Add7~4_combout\,
	datad => VCC,
	cin => \cp4|Add8~3\,
	combout => \cp4|Add8~4_combout\,
	cout => \cp4|Add8~5\);

-- Location: LCCOMB_X23_Y20_N10
\cp4|Add8~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add8~6_combout\ = (\cp4|Add7~6_combout\ & ((\cp4|Add6~6_combout\ & (\cp4|Add8~5\ & VCC)) # (!\cp4|Add6~6_combout\ & (!\cp4|Add8~5\)))) # (!\cp4|Add7~6_combout\ & ((\cp4|Add6~6_combout\ & (!\cp4|Add8~5\)) # (!\cp4|Add6~6_combout\ & ((\cp4|Add8~5\) # 
-- (GND)))))
-- \cp4|Add8~7\ = CARRY((\cp4|Add7~6_combout\ & (!\cp4|Add6~6_combout\ & !\cp4|Add8~5\)) # (!\cp4|Add7~6_combout\ & ((!\cp4|Add8~5\) # (!\cp4|Add6~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add7~6_combout\,
	datab => \cp4|Add6~6_combout\,
	datad => VCC,
	cin => \cp4|Add8~5\,
	combout => \cp4|Add8~6_combout\,
	cout => \cp4|Add8~7\);

-- Location: LCCOMB_X23_Y20_N12
\cp4|Add8~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add8~8_combout\ = ((\cp4|Add7~8_combout\ $ (\cp4|Add6~8_combout\ $ (!\cp4|Add8~7\)))) # (GND)
-- \cp4|Add8~9\ = CARRY((\cp4|Add7~8_combout\ & ((\cp4|Add6~8_combout\) # (!\cp4|Add8~7\))) # (!\cp4|Add7~8_combout\ & (\cp4|Add6~8_combout\ & !\cp4|Add8~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add7~8_combout\,
	datab => \cp4|Add6~8_combout\,
	datad => VCC,
	cin => \cp4|Add8~7\,
	combout => \cp4|Add8~8_combout\,
	cout => \cp4|Add8~9\);

-- Location: LCCOMB_X23_Y20_N14
\cp4|Add8~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add8~10_combout\ = (\cp4|Add7~10_combout\ & ((\cp4|Add6~10_combout\ & (\cp4|Add8~9\ & VCC)) # (!\cp4|Add6~10_combout\ & (!\cp4|Add8~9\)))) # (!\cp4|Add7~10_combout\ & ((\cp4|Add6~10_combout\ & (!\cp4|Add8~9\)) # (!\cp4|Add6~10_combout\ & 
-- ((\cp4|Add8~9\) # (GND)))))
-- \cp4|Add8~11\ = CARRY((\cp4|Add7~10_combout\ & (!\cp4|Add6~10_combout\ & !\cp4|Add8~9\)) # (!\cp4|Add7~10_combout\ & ((!\cp4|Add8~9\) # (!\cp4|Add6~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add7~10_combout\,
	datab => \cp4|Add6~10_combout\,
	datad => VCC,
	cin => \cp4|Add8~9\,
	combout => \cp4|Add8~10_combout\,
	cout => \cp4|Add8~11\);

-- Location: LCCOMB_X23_Y20_N16
\cp4|Add8~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add8~12_combout\ = ((\cp4|Add7~12_combout\ $ (\cp4|Add6~12_combout\ $ (!\cp4|Add8~11\)))) # (GND)
-- \cp4|Add8~13\ = CARRY((\cp4|Add7~12_combout\ & ((\cp4|Add6~12_combout\) # (!\cp4|Add8~11\))) # (!\cp4|Add7~12_combout\ & (\cp4|Add6~12_combout\ & !\cp4|Add8~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add7~12_combout\,
	datab => \cp4|Add6~12_combout\,
	datad => VCC,
	cin => \cp4|Add8~11\,
	combout => \cp4|Add8~12_combout\,
	cout => \cp4|Add8~13\);

-- Location: LCCOMB_X23_Y20_N18
\cp4|Add8~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add8~14_combout\ = (\cp4|Add7~14_combout\ & ((\cp4|Add6~14_combout\ & (\cp4|Add8~13\ & VCC)) # (!\cp4|Add6~14_combout\ & (!\cp4|Add8~13\)))) # (!\cp4|Add7~14_combout\ & ((\cp4|Add6~14_combout\ & (!\cp4|Add8~13\)) # (!\cp4|Add6~14_combout\ & 
-- ((\cp4|Add8~13\) # (GND)))))
-- \cp4|Add8~15\ = CARRY((\cp4|Add7~14_combout\ & (!\cp4|Add6~14_combout\ & !\cp4|Add8~13\)) # (!\cp4|Add7~14_combout\ & ((!\cp4|Add8~13\) # (!\cp4|Add6~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add7~14_combout\,
	datab => \cp4|Add6~14_combout\,
	datad => VCC,
	cin => \cp4|Add8~13\,
	combout => \cp4|Add8~14_combout\,
	cout => \cp4|Add8~15\);

-- Location: LCCOMB_X23_Y20_N22
\cp4|Add8~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add8~18_combout\ = (\cp4|Add6~18_combout\ & ((\cp4|Add7~18_combout\ & (\cp4|Add8~17\ & VCC)) # (!\cp4|Add7~18_combout\ & (!\cp4|Add8~17\)))) # (!\cp4|Add6~18_combout\ & ((\cp4|Add7~18_combout\ & (!\cp4|Add8~17\)) # (!\cp4|Add7~18_combout\ & 
-- ((\cp4|Add8~17\) # (GND)))))
-- \cp4|Add8~19\ = CARRY((\cp4|Add6~18_combout\ & (!\cp4|Add7~18_combout\ & !\cp4|Add8~17\)) # (!\cp4|Add6~18_combout\ & ((!\cp4|Add8~17\) # (!\cp4|Add7~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add6~18_combout\,
	datab => \cp4|Add7~18_combout\,
	datad => VCC,
	cin => \cp4|Add8~17\,
	combout => \cp4|Add8~18_combout\,
	cout => \cp4|Add8~19\);

-- Location: LCCOMB_X23_Y20_N24
\cp4|Add8~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add8~20_combout\ = ((\cp4|Add7~20_combout\ $ (\cp4|Add6~20_combout\ $ (!\cp4|Add8~19\)))) # (GND)
-- \cp4|Add8~21\ = CARRY((\cp4|Add7~20_combout\ & ((\cp4|Add6~20_combout\) # (!\cp4|Add8~19\))) # (!\cp4|Add7~20_combout\ & (\cp4|Add6~20_combout\ & !\cp4|Add8~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add7~20_combout\,
	datab => \cp4|Add6~20_combout\,
	datad => VCC,
	cin => \cp4|Add8~19\,
	combout => \cp4|Add8~20_combout\,
	cout => \cp4|Add8~21\);

-- Location: LCCOMB_X23_Y20_N26
\cp4|Add8~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add8~22_combout\ = (\cp4|Add6~22_combout\ & (!\cp4|Add8~21\)) # (!\cp4|Add6~22_combout\ & ((\cp4|Add8~21\) # (GND)))
-- \cp4|Add8~23\ = CARRY((!\cp4|Add8~21\) # (!\cp4|Add6~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cp4|Add6~22_combout\,
	datad => VCC,
	cin => \cp4|Add8~21\,
	combout => \cp4|Add8~22_combout\,
	cout => \cp4|Add8~23\);

-- Location: LCCOMB_X23_Y20_N28
\cp4|Add8~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add8~24_combout\ = (\cp4|Add6~24_combout\ & (\cp4|Add8~23\ $ (GND))) # (!\cp4|Add6~24_combout\ & (!\cp4|Add8~23\ & VCC))
-- \cp4|Add8~25\ = CARRY((\cp4|Add6~24_combout\ & !\cp4|Add8~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cp4|Add6~24_combout\,
	datad => VCC,
	cin => \cp4|Add8~23\,
	combout => \cp4|Add8~24_combout\,
	cout => \cp4|Add8~25\);

-- Location: LCCOMB_X22_Y21_N30
\cp4|fifo[9][8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|fifo[9][8]~feeder_combout\ = \cp4|fifo[8][8]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cp4|fifo[8][8]~q\,
	combout => \cp4|fifo[9][8]~feeder_combout\);

-- Location: FF_X22_Y21_N31
\cp4|fifo[9][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp4|fifo[9][8]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[9][8]~q\);

-- Location: FF_X21_Y21_N21
\cp4|fifo[10][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[9][8]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[10][8]~q\);

-- Location: FF_X21_Y21_N19
\cp4|fifo[10][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[9][7]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[10][7]~q\);

-- Location: FF_X21_Y21_N5
\cp4|fifo[11][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[10][7]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[11][7]~q\);

-- Location: FF_X21_Y21_N17
\cp4|fifo[10][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[9][6]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[10][6]~q\);

-- Location: FF_X22_Y21_N7
\cp4|fifo[9][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[8][5]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[9][5]~q\);

-- Location: FF_X21_Y21_N15
\cp4|fifo[10][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[9][5]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[10][5]~q\);

-- Location: FF_X21_Y21_N25
\cp4|fifo[10][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[9][4]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[10][4]~q\);

-- Location: FF_X21_Y21_N11
\cp4|fifo[10][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[9][3]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[10][3]~q\);

-- Location: LCCOMB_X21_Y21_N30
\cp4|fifo[10][2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|fifo[10][2]~feeder_combout\ = \cp4|fifo[9][2]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cp4|fifo[9][2]~q\,
	combout => \cp4|fifo[10][2]~feeder_combout\);

-- Location: FF_X21_Y21_N31
\cp4|fifo[10][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp4|fifo[10][2]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[10][2]~q\);

-- Location: LCCOMB_X19_Y21_N26
\cp4|fifo[11][2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|fifo[11][2]~feeder_combout\ = \cp4|fifo[10][2]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cp4|fifo[10][2]~q\,
	combout => \cp4|fifo[11][2]~feeder_combout\);

-- Location: FF_X19_Y21_N27
\cp4|fifo[11][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp4|fifo[11][2]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[11][2]~q\);

-- Location: LCCOMB_X22_Y21_N2
\cp4|fifo[9][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|fifo[9][1]~feeder_combout\ = \cp4|fifo[8][1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cp4|fifo[8][1]~q\,
	combout => \cp4|fifo[9][1]~feeder_combout\);

-- Location: FF_X22_Y21_N3
\cp4|fifo[9][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp4|fifo[9][1]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[9][1]~q\);

-- Location: LCCOMB_X21_Y21_N2
\cp4|fifo[10][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|fifo[10][1]~feeder_combout\ = \cp4|fifo[9][1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cp4|fifo[9][1]~q\,
	combout => \cp4|fifo[10][1]~feeder_combout\);

-- Location: FF_X21_Y21_N3
\cp4|fifo[10][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp4|fifo[10][1]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[10][1]~q\);

-- Location: LCCOMB_X21_Y21_N26
\cp4|fifo[10][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|fifo[10][0]~feeder_combout\ = \cp4|fifo[9][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cp4|fifo[9][0]~q\,
	combout => \cp4|fifo[10][0]~feeder_combout\);

-- Location: FF_X21_Y21_N27
\cp4|fifo[10][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp4|fifo[10][0]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[10][0]~q\);

-- Location: LCCOMB_X19_Y21_N14
\cp4|fifo[11][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|fifo[11][0]~feeder_combout\ = \cp4|fifo[10][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cp4|fifo[10][0]~q\,
	combout => \cp4|fifo[11][0]~feeder_combout\);

-- Location: FF_X19_Y21_N15
\cp4|fifo[11][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp4|fifo[11][0]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[11][0]~q\);

-- Location: LCCOMB_X21_Y21_N4
\cp4|Add9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add9~0_combout\ = (\cp4|fifo[10][0]~q\ & (\cp4|fifo[11][0]~q\ $ (VCC))) # (!\cp4|fifo[10][0]~q\ & (\cp4|fifo[11][0]~q\ & VCC))
-- \cp4|Add9~1\ = CARRY((\cp4|fifo[10][0]~q\ & \cp4|fifo[11][0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[10][0]~q\,
	datab => \cp4|fifo[11][0]~q\,
	datad => VCC,
	combout => \cp4|Add9~0_combout\,
	cout => \cp4|Add9~1\);

-- Location: LCCOMB_X21_Y21_N8
\cp4|Add9~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add9~4_combout\ = ((\cp4|fifo[10][2]~q\ $ (\cp4|fifo[11][2]~q\ $ (!\cp4|Add9~3\)))) # (GND)
-- \cp4|Add9~5\ = CARRY((\cp4|fifo[10][2]~q\ & ((\cp4|fifo[11][2]~q\) # (!\cp4|Add9~3\))) # (!\cp4|fifo[10][2]~q\ & (\cp4|fifo[11][2]~q\ & !\cp4|Add9~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[10][2]~q\,
	datab => \cp4|fifo[11][2]~q\,
	datad => VCC,
	cin => \cp4|Add9~3\,
	combout => \cp4|Add9~4_combout\,
	cout => \cp4|Add9~5\);

-- Location: LCCOMB_X21_Y21_N12
\cp4|Add9~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add9~8_combout\ = ((\cp4|fifo[11][4]~q\ $ (\cp4|fifo[10][4]~q\ $ (!\cp4|Add9~7\)))) # (GND)
-- \cp4|Add9~9\ = CARRY((\cp4|fifo[11][4]~q\ & ((\cp4|fifo[10][4]~q\) # (!\cp4|Add9~7\))) # (!\cp4|fifo[11][4]~q\ & (\cp4|fifo[10][4]~q\ & !\cp4|Add9~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[11][4]~q\,
	datab => \cp4|fifo[10][4]~q\,
	datad => VCC,
	cin => \cp4|Add9~7\,
	combout => \cp4|Add9~8_combout\,
	cout => \cp4|Add9~9\);

-- Location: LCCOMB_X21_Y21_N18
\cp4|Add9~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add9~14_combout\ = (\cp4|fifo[10][7]~q\ & ((\cp4|fifo[11][7]~q\ & (\cp4|Add9~13\ & VCC)) # (!\cp4|fifo[11][7]~q\ & (!\cp4|Add9~13\)))) # (!\cp4|fifo[10][7]~q\ & ((\cp4|fifo[11][7]~q\ & (!\cp4|Add9~13\)) # (!\cp4|fifo[11][7]~q\ & ((\cp4|Add9~13\) # 
-- (GND)))))
-- \cp4|Add9~15\ = CARRY((\cp4|fifo[10][7]~q\ & (!\cp4|fifo[11][7]~q\ & !\cp4|Add9~13\)) # (!\cp4|fifo[10][7]~q\ & ((!\cp4|Add9~13\) # (!\cp4|fifo[11][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[10][7]~q\,
	datab => \cp4|fifo[11][7]~q\,
	datad => VCC,
	cin => \cp4|Add9~13\,
	combout => \cp4|Add9~14_combout\,
	cout => \cp4|Add9~15\);

-- Location: FF_X21_Y21_N7
\cp4|fifo[11][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[10][6]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[11][6]~q\);

-- Location: FF_X20_Y21_N21
\cp4|fifo[12][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[11][6]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[12][6]~q\);

-- Location: FF_X21_Y21_N9
\cp4|fifo[11][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[10][5]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[11][5]~q\);

-- Location: FF_X20_Y21_N19
\cp4|fifo[12][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[11][5]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[12][5]~q\);

-- Location: FF_X20_Y21_N9
\cp4|fifo[13][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[12][5]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[13][5]~q\);

-- Location: FF_X21_Y21_N13
\cp4|fifo[11][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[10][4]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[11][4]~q\);

-- Location: FF_X20_Y21_N17
\cp4|fifo[12][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[11][4]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[12][4]~q\);

-- Location: FF_X20_Y21_N29
\cp4|fifo[13][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[12][4]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[13][4]~q\);

-- Location: FF_X21_Y21_N23
\cp4|fifo[11][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[10][3]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[11][3]~q\);

-- Location: FF_X20_Y21_N15
\cp4|fifo[12][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[11][3]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[12][3]~q\);

-- Location: FF_X20_Y21_N13
\cp4|fifo[12][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[11][2]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[12][2]~q\);

-- Location: LCCOMB_X19_Y21_N30
\cp4|fifo[13][2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|fifo[13][2]~feeder_combout\ = \cp4|fifo[12][2]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cp4|fifo[12][2]~q\,
	combout => \cp4|fifo[13][2]~feeder_combout\);

-- Location: FF_X19_Y21_N31
\cp4|fifo[13][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp4|fifo[13][2]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[13][2]~q\);

-- Location: LCCOMB_X19_Y21_N4
\cp4|fifo[11][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|fifo[11][1]~feeder_combout\ = \cp4|fifo[10][1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cp4|fifo[10][1]~q\,
	combout => \cp4|fifo[11][1]~feeder_combout\);

-- Location: FF_X19_Y21_N5
\cp4|fifo[11][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp4|fifo[11][1]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[11][1]~q\);

-- Location: FF_X20_Y21_N11
\cp4|fifo[12][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[11][1]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[12][1]~q\);

-- Location: LCCOMB_X20_Y21_N4
\cp4|fifo[13][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|fifo[13][1]~feeder_combout\ = \cp4|fifo[12][1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cp4|fifo[12][1]~q\,
	combout => \cp4|fifo[13][1]~feeder_combout\);

-- Location: FF_X20_Y21_N5
\cp4|fifo[13][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp4|fifo[13][1]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[13][1]~q\);

-- Location: LCCOMB_X20_Y21_N2
\cp4|fifo[12][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|fifo[12][0]~feeder_combout\ = \cp4|fifo[11][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cp4|fifo[11][0]~q\,
	combout => \cp4|fifo[12][0]~feeder_combout\);

-- Location: FF_X20_Y21_N3
\cp4|fifo[12][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp4|fifo[12][0]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[12][0]~q\);

-- Location: LCCOMB_X20_Y21_N10
\cp4|Add11~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add11~2_combout\ = (\cp4|fifo[12][1]~q\ & ((\cp4|fifo[13][1]~q\ & (\cp4|Add11~1\ & VCC)) # (!\cp4|fifo[13][1]~q\ & (!\cp4|Add11~1\)))) # (!\cp4|fifo[12][1]~q\ & ((\cp4|fifo[13][1]~q\ & (!\cp4|Add11~1\)) # (!\cp4|fifo[13][1]~q\ & ((\cp4|Add11~1\) # 
-- (GND)))))
-- \cp4|Add11~3\ = CARRY((\cp4|fifo[12][1]~q\ & (!\cp4|fifo[13][1]~q\ & !\cp4|Add11~1\)) # (!\cp4|fifo[12][1]~q\ & ((!\cp4|Add11~1\) # (!\cp4|fifo[13][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[12][1]~q\,
	datab => \cp4|fifo[13][1]~q\,
	datad => VCC,
	cin => \cp4|Add11~1\,
	combout => \cp4|Add11~2_combout\,
	cout => \cp4|Add11~3\);

-- Location: LCCOMB_X20_Y21_N14
\cp4|Add11~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add11~6_combout\ = (\cp4|fifo[13][3]~q\ & ((\cp4|fifo[12][3]~q\ & (\cp4|Add11~5\ & VCC)) # (!\cp4|fifo[12][3]~q\ & (!\cp4|Add11~5\)))) # (!\cp4|fifo[13][3]~q\ & ((\cp4|fifo[12][3]~q\ & (!\cp4|Add11~5\)) # (!\cp4|fifo[12][3]~q\ & ((\cp4|Add11~5\) # 
-- (GND)))))
-- \cp4|Add11~7\ = CARRY((\cp4|fifo[13][3]~q\ & (!\cp4|fifo[12][3]~q\ & !\cp4|Add11~5\)) # (!\cp4|fifo[13][3]~q\ & ((!\cp4|Add11~5\) # (!\cp4|fifo[12][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[13][3]~q\,
	datab => \cp4|fifo[12][3]~q\,
	datad => VCC,
	cin => \cp4|Add11~5\,
	combout => \cp4|Add11~6_combout\,
	cout => \cp4|Add11~7\);

-- Location: LCCOMB_X20_Y21_N18
\cp4|Add11~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add11~10_combout\ = (\cp4|fifo[12][5]~q\ & ((\cp4|fifo[13][5]~q\ & (\cp4|Add11~9\ & VCC)) # (!\cp4|fifo[13][5]~q\ & (!\cp4|Add11~9\)))) # (!\cp4|fifo[12][5]~q\ & ((\cp4|fifo[13][5]~q\ & (!\cp4|Add11~9\)) # (!\cp4|fifo[13][5]~q\ & ((\cp4|Add11~9\) # 
-- (GND)))))
-- \cp4|Add11~11\ = CARRY((\cp4|fifo[12][5]~q\ & (!\cp4|fifo[13][5]~q\ & !\cp4|Add11~9\)) # (!\cp4|fifo[12][5]~q\ & ((!\cp4|Add11~9\) # (!\cp4|fifo[13][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[12][5]~q\,
	datab => \cp4|fifo[13][5]~q\,
	datad => VCC,
	cin => \cp4|Add11~9\,
	combout => \cp4|Add11~10_combout\,
	cout => \cp4|Add11~11\);

-- Location: LCCOMB_X20_Y19_N4
\cp4|Add10~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add10~2_combout\ = (\cp4|Add9~2_combout\ & ((\cp4|Add11~2_combout\ & (\cp4|Add10~1\ & VCC)) # (!\cp4|Add11~2_combout\ & (!\cp4|Add10~1\)))) # (!\cp4|Add9~2_combout\ & ((\cp4|Add11~2_combout\ & (!\cp4|Add10~1\)) # (!\cp4|Add11~2_combout\ & 
-- ((\cp4|Add10~1\) # (GND)))))
-- \cp4|Add10~3\ = CARRY((\cp4|Add9~2_combout\ & (!\cp4|Add11~2_combout\ & !\cp4|Add10~1\)) # (!\cp4|Add9~2_combout\ & ((!\cp4|Add10~1\) # (!\cp4|Add11~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add9~2_combout\,
	datab => \cp4|Add11~2_combout\,
	datad => VCC,
	cin => \cp4|Add10~1\,
	combout => \cp4|Add10~2_combout\,
	cout => \cp4|Add10~3\);

-- Location: LCCOMB_X20_Y19_N6
\cp4|Add10~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add10~4_combout\ = ((\cp4|Add11~4_combout\ $ (\cp4|Add9~4_combout\ $ (!\cp4|Add10~3\)))) # (GND)
-- \cp4|Add10~5\ = CARRY((\cp4|Add11~4_combout\ & ((\cp4|Add9~4_combout\) # (!\cp4|Add10~3\))) # (!\cp4|Add11~4_combout\ & (\cp4|Add9~4_combout\ & !\cp4|Add10~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add11~4_combout\,
	datab => \cp4|Add9~4_combout\,
	datad => VCC,
	cin => \cp4|Add10~3\,
	combout => \cp4|Add10~4_combout\,
	cout => \cp4|Add10~5\);

-- Location: FF_X20_Y21_N23
\cp4|fifo[12][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[11][7]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[12][7]~q\);

-- Location: LCCOMB_X20_Y21_N0
\cp4|fifo[13][7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|fifo[13][7]~feeder_combout\ = \cp4|fifo[12][7]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cp4|fifo[12][7]~q\,
	combout => \cp4|fifo[13][7]~feeder_combout\);

-- Location: FF_X20_Y21_N1
\cp4|fifo[13][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp4|fifo[13][7]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[13][7]~q\);

-- Location: FF_X17_Y21_N15
\cp4|fifo[14][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[13][7]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[14][7]~q\);

-- Location: LCCOMB_X20_Y21_N30
\cp4|fifo[13][6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|fifo[13][6]~feeder_combout\ = \cp4|fifo[12][6]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cp4|fifo[12][6]~q\,
	combout => \cp4|fifo[13][6]~feeder_combout\);

-- Location: FF_X20_Y21_N31
\cp4|fifo[13][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp4|fifo[13][6]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[13][6]~q\);

-- Location: FF_X17_Y21_N21
\cp4|fifo[14][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[13][6]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[14][6]~q\);

-- Location: FF_X17_Y21_N11
\cp4|fifo[14][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[13][5]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[14][5]~q\);

-- Location: FF_X17_Y21_N9
\cp4|fifo[15][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[14][5]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[15][5]~q\);

-- Location: LCCOMB_X16_Y21_N6
\cp4|fifo[14][4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|fifo[14][4]~feeder_combout\ = \cp4|fifo[13][4]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cp4|fifo[13][4]~q\,
	combout => \cp4|fifo[14][4]~feeder_combout\);

-- Location: FF_X16_Y21_N7
\cp4|fifo[14][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp4|fifo[14][4]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[14][4]~q\);

-- Location: FF_X17_Y20_N3
\cp4|fifo[15][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[14][4]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[15][4]~q\);

-- Location: LCCOMB_X19_Y21_N28
\cp4|fifo[13][3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|fifo[13][3]~feeder_combout\ = \cp4|fifo[12][3]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cp4|fifo[12][3]~q\,
	combout => \cp4|fifo[13][3]~feeder_combout\);

-- Location: FF_X19_Y21_N29
\cp4|fifo[13][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp4|fifo[13][3]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[13][3]~q\);

-- Location: FF_X17_Y21_N5
\cp4|fifo[14][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[13][3]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[14][3]~q\);

-- Location: LCCOMB_X17_Y21_N28
\cp4|fifo[14][2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|fifo[14][2]~feeder_combout\ = \cp4|fifo[13][2]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cp4|fifo[13][2]~q\,
	combout => \cp4|fifo[14][2]~feeder_combout\);

-- Location: FF_X17_Y21_N29
\cp4|fifo[14][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp4|fifo[14][2]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[14][2]~q\);

-- Location: FF_X17_Y20_N1
\cp4|fifo[15][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[14][2]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[15][2]~q\);

-- Location: FF_X17_Y21_N13
\cp4|fifo[14][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[13][1]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[14][1]~q\);

-- Location: LCCOMB_X17_Y21_N26
\cp4|fifo[15][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|fifo[15][1]~feeder_combout\ = \cp4|fifo[14][1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cp4|fifo[14][1]~q\,
	combout => \cp4|fifo[15][1]~feeder_combout\);

-- Location: FF_X17_Y21_N27
\cp4|fifo[15][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp4|fifo[15][1]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[15][1]~q\);

-- Location: LCCOMB_X20_Y21_N6
\cp4|fifo[13][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|fifo[13][0]~feeder_combout\ = \cp4|fifo[12][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cp4|fifo[12][0]~q\,
	combout => \cp4|fifo[13][0]~feeder_combout\);

-- Location: FF_X20_Y21_N7
\cp4|fifo[13][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp4|fifo[13][0]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[13][0]~q\);

-- Location: FF_X17_Y21_N1
\cp4|fifo[14][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[13][0]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[14][0]~q\);

-- Location: LCCOMB_X17_Y21_N0
\cp4|Add13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add13~0_combout\ = (\cp4|fifo[15][0]~q\ & (\cp4|fifo[14][0]~q\ $ (VCC))) # (!\cp4|fifo[15][0]~q\ & (\cp4|fifo[14][0]~q\ & VCC))
-- \cp4|Add13~1\ = CARRY((\cp4|fifo[15][0]~q\ & \cp4|fifo[14][0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[15][0]~q\,
	datab => \cp4|fifo[14][0]~q\,
	datad => VCC,
	combout => \cp4|Add13~0_combout\,
	cout => \cp4|Add13~1\);

-- Location: LCCOMB_X17_Y21_N6
\cp4|Add13~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add13~6_combout\ = (\cp4|fifo[15][3]~q\ & ((\cp4|fifo[14][3]~q\ & (\cp4|Add13~5\ & VCC)) # (!\cp4|fifo[14][3]~q\ & (!\cp4|Add13~5\)))) # (!\cp4|fifo[15][3]~q\ & ((\cp4|fifo[14][3]~q\ & (!\cp4|Add13~5\)) # (!\cp4|fifo[14][3]~q\ & ((\cp4|Add13~5\) # 
-- (GND)))))
-- \cp4|Add13~7\ = CARRY((\cp4|fifo[15][3]~q\ & (!\cp4|fifo[14][3]~q\ & !\cp4|Add13~5\)) # (!\cp4|fifo[15][3]~q\ & ((!\cp4|Add13~5\) # (!\cp4|fifo[14][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[15][3]~q\,
	datab => \cp4|fifo[14][3]~q\,
	datad => VCC,
	cin => \cp4|Add13~5\,
	combout => \cp4|Add13~6_combout\,
	cout => \cp4|Add13~7\);

-- Location: LCCOMB_X17_Y21_N8
\cp4|Add13~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add13~8_combout\ = ((\cp4|fifo[14][4]~q\ $ (\cp4|fifo[15][4]~q\ $ (!\cp4|Add13~7\)))) # (GND)
-- \cp4|Add13~9\ = CARRY((\cp4|fifo[14][4]~q\ & ((\cp4|fifo[15][4]~q\) # (!\cp4|Add13~7\))) # (!\cp4|fifo[14][4]~q\ & (\cp4|fifo[15][4]~q\ & !\cp4|Add13~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[14][4]~q\,
	datab => \cp4|fifo[15][4]~q\,
	datad => VCC,
	cin => \cp4|Add13~7\,
	combout => \cp4|Add13~8_combout\,
	cout => \cp4|Add13~9\);

-- Location: LCCOMB_X17_Y21_N10
\cp4|Add13~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add13~10_combout\ = (\cp4|fifo[14][5]~q\ & ((\cp4|fifo[15][5]~q\ & (\cp4|Add13~9\ & VCC)) # (!\cp4|fifo[15][5]~q\ & (!\cp4|Add13~9\)))) # (!\cp4|fifo[14][5]~q\ & ((\cp4|fifo[15][5]~q\ & (!\cp4|Add13~9\)) # (!\cp4|fifo[15][5]~q\ & ((\cp4|Add13~9\) # 
-- (GND)))))
-- \cp4|Add13~11\ = CARRY((\cp4|fifo[14][5]~q\ & (!\cp4|fifo[15][5]~q\ & !\cp4|Add13~9\)) # (!\cp4|fifo[14][5]~q\ & ((!\cp4|Add13~9\) # (!\cp4|fifo[15][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[14][5]~q\,
	datab => \cp4|fifo[15][5]~q\,
	datad => VCC,
	cin => \cp4|Add13~9\,
	combout => \cp4|Add13~10_combout\,
	cout => \cp4|Add13~11\);

-- Location: LCCOMB_X17_Y21_N12
\cp4|Add13~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add13~12_combout\ = ((\cp4|fifo[15][6]~q\ $ (\cp4|fifo[14][6]~q\ $ (!\cp4|Add13~11\)))) # (GND)
-- \cp4|Add13~13\ = CARRY((\cp4|fifo[15][6]~q\ & ((\cp4|fifo[14][6]~q\) # (!\cp4|Add13~11\))) # (!\cp4|fifo[15][6]~q\ & (\cp4|fifo[14][6]~q\ & !\cp4|Add13~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[15][6]~q\,
	datab => \cp4|fifo[14][6]~q\,
	datad => VCC,
	cin => \cp4|Add13~11\,
	combout => \cp4|Add13~12_combout\,
	cout => \cp4|Add13~13\);

-- Location: LCCOMB_X21_Y19_N8
\cp4|Add12~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add12~2_combout\ = (\cp4|Add13~2_combout\ & ((\cp4|Add10~2_combout\ & (\cp4|Add12~1\ & VCC)) # (!\cp4|Add10~2_combout\ & (!\cp4|Add12~1\)))) # (!\cp4|Add13~2_combout\ & ((\cp4|Add10~2_combout\ & (!\cp4|Add12~1\)) # (!\cp4|Add10~2_combout\ & 
-- ((\cp4|Add12~1\) # (GND)))))
-- \cp4|Add12~3\ = CARRY((\cp4|Add13~2_combout\ & (!\cp4|Add10~2_combout\ & !\cp4|Add12~1\)) # (!\cp4|Add13~2_combout\ & ((!\cp4|Add12~1\) # (!\cp4|Add10~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add13~2_combout\,
	datab => \cp4|Add10~2_combout\,
	datad => VCC,
	cin => \cp4|Add12~1\,
	combout => \cp4|Add12~2_combout\,
	cout => \cp4|Add12~3\);

-- Location: LCCOMB_X22_Y20_N8
\cp4|Add14~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add14~8_combout\ = ((\cp4|Add12~8_combout\ $ (\cp4|Add8~8_combout\ $ (!\cp4|Add14~7\)))) # (GND)
-- \cp4|Add14~9\ = CARRY((\cp4|Add12~8_combout\ & ((\cp4|Add8~8_combout\) # (!\cp4|Add14~7\))) # (!\cp4|Add12~8_combout\ & (\cp4|Add8~8_combout\ & !\cp4|Add14~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add12~8_combout\,
	datab => \cp4|Add8~8_combout\,
	datad => VCC,
	cin => \cp4|Add14~7\,
	combout => \cp4|Add14~8_combout\,
	cout => \cp4|Add14~9\);

-- Location: LCCOMB_X22_Y20_N10
\cp4|Add14~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add14~10_combout\ = (\cp4|Add12~10_combout\ & ((\cp4|Add8~10_combout\ & (\cp4|Add14~9\ & VCC)) # (!\cp4|Add8~10_combout\ & (!\cp4|Add14~9\)))) # (!\cp4|Add12~10_combout\ & ((\cp4|Add8~10_combout\ & (!\cp4|Add14~9\)) # (!\cp4|Add8~10_combout\ & 
-- ((\cp4|Add14~9\) # (GND)))))
-- \cp4|Add14~11\ = CARRY((\cp4|Add12~10_combout\ & (!\cp4|Add8~10_combout\ & !\cp4|Add14~9\)) # (!\cp4|Add12~10_combout\ & ((!\cp4|Add14~9\) # (!\cp4|Add8~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add12~10_combout\,
	datab => \cp4|Add8~10_combout\,
	datad => VCC,
	cin => \cp4|Add14~9\,
	combout => \cp4|Add14~10_combout\,
	cout => \cp4|Add14~11\);

-- Location: LCCOMB_X22_Y20_N12
\cp4|Add14~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add14~12_combout\ = ((\cp4|Add12~12_combout\ $ (\cp4|Add8~12_combout\ $ (!\cp4|Add14~11\)))) # (GND)
-- \cp4|Add14~13\ = CARRY((\cp4|Add12~12_combout\ & ((\cp4|Add8~12_combout\) # (!\cp4|Add14~11\))) # (!\cp4|Add12~12_combout\ & (\cp4|Add8~12_combout\ & !\cp4|Add14~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add12~12_combout\,
	datab => \cp4|Add8~12_combout\,
	datad => VCC,
	cin => \cp4|Add14~11\,
	combout => \cp4|Add14~12_combout\,
	cout => \cp4|Add14~13\);

-- Location: LCCOMB_X22_Y20_N14
\cp4|Add14~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add14~14_combout\ = (\cp4|Add12~14_combout\ & ((\cp4|Add8~14_combout\ & (\cp4|Add14~13\ & VCC)) # (!\cp4|Add8~14_combout\ & (!\cp4|Add14~13\)))) # (!\cp4|Add12~14_combout\ & ((\cp4|Add8~14_combout\ & (!\cp4|Add14~13\)) # (!\cp4|Add8~14_combout\ & 
-- ((\cp4|Add14~13\) # (GND)))))
-- \cp4|Add14~15\ = CARRY((\cp4|Add12~14_combout\ & (!\cp4|Add8~14_combout\ & !\cp4|Add14~13\)) # (!\cp4|Add12~14_combout\ & ((!\cp4|Add14~13\) # (!\cp4|Add8~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add12~14_combout\,
	datab => \cp4|Add8~14_combout\,
	datad => VCC,
	cin => \cp4|Add14~13\,
	combout => \cp4|Add14~14_combout\,
	cout => \cp4|Add14~15\);

-- Location: LCCOMB_X22_Y20_N16
\cp4|Add14~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add14~16_combout\ = ((\cp4|Add8~16_combout\ $ (\cp4|Add12~16_combout\ $ (!\cp4|Add14~15\)))) # (GND)
-- \cp4|Add14~17\ = CARRY((\cp4|Add8~16_combout\ & ((\cp4|Add12~16_combout\) # (!\cp4|Add14~15\))) # (!\cp4|Add8~16_combout\ & (\cp4|Add12~16_combout\ & !\cp4|Add14~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add8~16_combout\,
	datab => \cp4|Add12~16_combout\,
	datad => VCC,
	cin => \cp4|Add14~15\,
	combout => \cp4|Add14~16_combout\,
	cout => \cp4|Add14~17\);

-- Location: LCCOMB_X22_Y20_N18
\cp4|Add14~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add14~18_combout\ = (\cp4|Add12~18_combout\ & ((\cp4|Add8~18_combout\ & (\cp4|Add14~17\ & VCC)) # (!\cp4|Add8~18_combout\ & (!\cp4|Add14~17\)))) # (!\cp4|Add12~18_combout\ & ((\cp4|Add8~18_combout\ & (!\cp4|Add14~17\)) # (!\cp4|Add8~18_combout\ & 
-- ((\cp4|Add14~17\) # (GND)))))
-- \cp4|Add14~19\ = CARRY((\cp4|Add12~18_combout\ & (!\cp4|Add8~18_combout\ & !\cp4|Add14~17\)) # (!\cp4|Add12~18_combout\ & ((!\cp4|Add14~17\) # (!\cp4|Add8~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add12~18_combout\,
	datab => \cp4|Add8~18_combout\,
	datad => VCC,
	cin => \cp4|Add14~17\,
	combout => \cp4|Add14~18_combout\,
	cout => \cp4|Add14~19\);

-- Location: LCCOMB_X22_Y20_N22
\cp4|Add14~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add14~22_combout\ = (\cp4|Add12~22_combout\ & ((\cp4|Add8~22_combout\ & (\cp4|Add14~21\ & VCC)) # (!\cp4|Add8~22_combout\ & (!\cp4|Add14~21\)))) # (!\cp4|Add12~22_combout\ & ((\cp4|Add8~22_combout\ & (!\cp4|Add14~21\)) # (!\cp4|Add8~22_combout\ & 
-- ((\cp4|Add14~21\) # (GND)))))
-- \cp4|Add14~23\ = CARRY((\cp4|Add12~22_combout\ & (!\cp4|Add8~22_combout\ & !\cp4|Add14~21\)) # (!\cp4|Add12~22_combout\ & ((!\cp4|Add14~21\) # (!\cp4|Add8~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add12~22_combout\,
	datab => \cp4|Add8~22_combout\,
	datad => VCC,
	cin => \cp4|Add14~21\,
	combout => \cp4|Add14~22_combout\,
	cout => \cp4|Add14~23\);

-- Location: LCCOMB_X22_Y20_N24
\cp4|Add14~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add14~24_combout\ = ((\cp4|Add12~24_combout\ $ (\cp4|Add8~24_combout\ $ (!\cp4|Add14~23\)))) # (GND)
-- \cp4|Add14~25\ = CARRY((\cp4|Add12~24_combout\ & ((\cp4|Add8~24_combout\) # (!\cp4|Add14~23\))) # (!\cp4|Add12~24_combout\ & (\cp4|Add8~24_combout\ & !\cp4|Add14~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add12~24_combout\,
	datab => \cp4|Add8~24_combout\,
	datad => VCC,
	cin => \cp4|Add14~23\,
	combout => \cp4|Add14~24_combout\,
	cout => \cp4|Add14~25\);

-- Location: LCCOMB_X21_Y21_N28
\cp4|fifo[10][9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|fifo[10][9]~feeder_combout\ = \cp4|fifo[9][9]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cp4|fifo[9][9]~q\,
	combout => \cp4|fifo[10][9]~feeder_combout\);

-- Location: FF_X21_Y21_N29
\cp4|fifo[10][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp4|fifo[10][9]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[10][9]~q\);

-- Location: LCCOMB_X19_Y21_N16
\cp4|fifo[11][9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|fifo[11][9]~feeder_combout\ = \cp4|fifo[10][9]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cp4|fifo[10][9]~q\,
	combout => \cp4|fifo[11][9]~feeder_combout\);

-- Location: FF_X19_Y21_N17
\cp4|fifo[11][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp4|fifo[11][9]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[11][9]~q\);

-- Location: LCCOMB_X19_Y21_N22
\cp4|fifo[12][9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|fifo[12][9]~feeder_combout\ = \cp4|fifo[11][9]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cp4|fifo[11][9]~q\,
	combout => \cp4|fifo[12][9]~feeder_combout\);

-- Location: FF_X19_Y21_N23
\cp4|fifo[12][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp4|fifo[12][9]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[12][9]~q\);

-- Location: FF_X17_Y21_N19
\cp4|fifo[13][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[12][9]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[13][9]~q\);

-- Location: FF_X17_Y21_N3
\cp4|fifo[14][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[13][9]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[14][9]~q\);

-- Location: LCCOMB_X16_Y21_N12
\cp4|fifo[15][9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|fifo[15][9]~feeder_combout\ = \cp4|fifo[14][9]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cp4|fifo[14][9]~q\,
	combout => \cp4|fifo[15][9]~feeder_combout\);

-- Location: FF_X16_Y21_N13
\cp4|fifo[15][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp4|fifo[15][9]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[15][9]~q\);

-- Location: LCCOMB_X16_Y21_N20
\cp4|fifo[16][9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|fifo[16][9]~feeder_combout\ = \cp4|fifo[15][9]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cp4|fifo[15][9]~q\,
	combout => \cp4|fifo[16][9]~feeder_combout\);

-- Location: FF_X16_Y21_N21
\cp4|fifo[16][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp4|fifo[16][9]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[16][9]~q\);

-- Location: LCCOMB_X21_Y21_N0
\cp4|fifo[11][8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|fifo[11][8]~feeder_combout\ = \cp4|fifo[10][8]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cp4|fifo[10][8]~q\,
	combout => \cp4|fifo[11][8]~feeder_combout\);

-- Location: FF_X21_Y21_N1
\cp4|fifo[11][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp4|fifo[11][8]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[11][8]~q\);

-- Location: FF_X20_Y21_N25
\cp4|fifo[12][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[11][8]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[12][8]~q\);

-- Location: FF_X20_Y21_N27
\cp4|fifo[13][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[12][8]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[13][8]~q\);

-- Location: LCCOMB_X19_Y21_N24
\cp4|fifo[14][8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|fifo[14][8]~feeder_combout\ = \cp4|fifo[13][8]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cp4|fifo[13][8]~q\,
	combout => \cp4|fifo[14][8]~feeder_combout\);

-- Location: FF_X19_Y21_N25
\cp4|fifo[14][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp4|fifo[14][8]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[14][8]~q\);

-- Location: LCCOMB_X17_Y21_N30
\cp4|fifo[15][8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|fifo[15][8]~feeder_combout\ = \cp4|fifo[14][8]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cp4|fifo[14][8]~q\,
	combout => \cp4|fifo[15][8]~feeder_combout\);

-- Location: FF_X17_Y21_N31
\cp4|fifo[15][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp4|fifo[15][8]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[15][8]~q\);

-- Location: FF_X17_Y20_N7
\cp4|fifo[16][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[15][8]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[16][8]~q\);

-- Location: FF_X17_Y21_N7
\cp4|fifo[15][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[14][7]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[15][7]~q\);

-- Location: LCCOMB_X16_Y21_N24
\cp4|fifo[16][7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|fifo[16][7]~feeder_combout\ = \cp4|fifo[15][7]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cp4|fifo[15][7]~q\,
	combout => \cp4|fifo[16][7]~feeder_combout\);

-- Location: FF_X16_Y21_N25
\cp4|fifo[16][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp4|fifo[16][7]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[16][7]~q\);

-- Location: FF_X17_Y21_N17
\cp4|fifo[15][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[14][6]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[15][6]~q\);

-- Location: LCCOMB_X16_Y21_N30
\cp4|fifo[16][6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|fifo[16][6]~feeder_combout\ = \cp4|fifo[15][6]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cp4|fifo[15][6]~q\,
	combout => \cp4|fifo[16][6]~feeder_combout\);

-- Location: FF_X16_Y21_N31
\cp4|fifo[16][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp4|fifo[16][6]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[16][6]~q\);

-- Location: FF_X16_Y22_N9
\cp4|fifo[17][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[16][6]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[17][6]~q\);

-- Location: LCCOMB_X17_Y21_N24
\cp4|fifo[16][5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|fifo[16][5]~feeder_combout\ = \cp4|fifo[15][5]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cp4|fifo[15][5]~q\,
	combout => \cp4|fifo[16][5]~feeder_combout\);

-- Location: FF_X17_Y21_N25
\cp4|fifo[16][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp4|fifo[16][5]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[16][5]~q\);

-- Location: FF_X17_Y20_N9
\cp4|fifo[16][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[15][4]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[16][4]~q\);

-- Location: LCCOMB_X16_Y21_N16
\cp4|fifo[15][3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|fifo[15][3]~feeder_combout\ = \cp4|fifo[14][3]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cp4|fifo[14][3]~q\,
	combout => \cp4|fifo[15][3]~feeder_combout\);

-- Location: FF_X16_Y21_N17
\cp4|fifo[15][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp4|fifo[15][3]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[15][3]~q\);

-- Location: LCCOMB_X16_Y21_N28
\cp4|fifo[16][3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|fifo[16][3]~feeder_combout\ = \cp4|fifo[15][3]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cp4|fifo[15][3]~q\,
	combout => \cp4|fifo[16][3]~feeder_combout\);

-- Location: FF_X16_Y21_N29
\cp4|fifo[16][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp4|fifo[16][3]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[16][3]~q\);

-- Location: FF_X17_Y20_N21
\cp4|fifo[16][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[15][2]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[16][2]~q\);

-- Location: FF_X17_Y20_N5
\cp4|fifo[17][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[16][2]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[17][2]~q\);

-- Location: FF_X17_Y22_N25
\cp4|fifo[16][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[15][1]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[16][1]~q\);

-- Location: LCCOMB_X17_Y21_N22
\cp4|fifo[15][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|fifo[15][0]~feeder_combout\ = \cp4|fifo[14][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cp4|fifo[14][0]~q\,
	combout => \cp4|fifo[15][0]~feeder_combout\);

-- Location: FF_X17_Y21_N23
\cp4|fifo[15][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp4|fifo[15][0]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[15][0]~q\);

-- Location: FF_X17_Y22_N11
\cp4|fifo[16][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[15][0]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[16][0]~q\);

-- Location: LCCOMB_X17_Y20_N0
\cp4|Add15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add15~0_combout\ = (\cp4|fifo[17][0]~q\ & (\cp4|fifo[16][0]~q\ $ (VCC))) # (!\cp4|fifo[17][0]~q\ & (\cp4|fifo[16][0]~q\ & VCC))
-- \cp4|Add15~1\ = CARRY((\cp4|fifo[17][0]~q\ & \cp4|fifo[16][0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[17][0]~q\,
	datab => \cp4|fifo[16][0]~q\,
	datad => VCC,
	combout => \cp4|Add15~0_combout\,
	cout => \cp4|Add15~1\);

-- Location: LCCOMB_X17_Y20_N2
\cp4|Add15~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add15~2_combout\ = (\cp4|fifo[17][1]~q\ & ((\cp4|fifo[16][1]~q\ & (\cp4|Add15~1\ & VCC)) # (!\cp4|fifo[16][1]~q\ & (!\cp4|Add15~1\)))) # (!\cp4|fifo[17][1]~q\ & ((\cp4|fifo[16][1]~q\ & (!\cp4|Add15~1\)) # (!\cp4|fifo[16][1]~q\ & ((\cp4|Add15~1\) # 
-- (GND)))))
-- \cp4|Add15~3\ = CARRY((\cp4|fifo[17][1]~q\ & (!\cp4|fifo[16][1]~q\ & !\cp4|Add15~1\)) # (!\cp4|fifo[17][1]~q\ & ((!\cp4|Add15~1\) # (!\cp4|fifo[16][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[17][1]~q\,
	datab => \cp4|fifo[16][1]~q\,
	datad => VCC,
	cin => \cp4|Add15~1\,
	combout => \cp4|Add15~2_combout\,
	cout => \cp4|Add15~3\);

-- Location: LCCOMB_X17_Y20_N4
\cp4|Add15~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add15~4_combout\ = ((\cp4|fifo[16][2]~q\ $ (\cp4|fifo[17][2]~q\ $ (!\cp4|Add15~3\)))) # (GND)
-- \cp4|Add15~5\ = CARRY((\cp4|fifo[16][2]~q\ & ((\cp4|fifo[17][2]~q\) # (!\cp4|Add15~3\))) # (!\cp4|fifo[16][2]~q\ & (\cp4|fifo[17][2]~q\ & !\cp4|Add15~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[16][2]~q\,
	datab => \cp4|fifo[17][2]~q\,
	datad => VCC,
	cin => \cp4|Add15~3\,
	combout => \cp4|Add15~4_combout\,
	cout => \cp4|Add15~5\);

-- Location: LCCOMB_X17_Y20_N6
\cp4|Add15~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add15~6_combout\ = (\cp4|fifo[17][3]~q\ & ((\cp4|fifo[16][3]~q\ & (\cp4|Add15~5\ & VCC)) # (!\cp4|fifo[16][3]~q\ & (!\cp4|Add15~5\)))) # (!\cp4|fifo[17][3]~q\ & ((\cp4|fifo[16][3]~q\ & (!\cp4|Add15~5\)) # (!\cp4|fifo[16][3]~q\ & ((\cp4|Add15~5\) # 
-- (GND)))))
-- \cp4|Add15~7\ = CARRY((\cp4|fifo[17][3]~q\ & (!\cp4|fifo[16][3]~q\ & !\cp4|Add15~5\)) # (!\cp4|fifo[17][3]~q\ & ((!\cp4|Add15~5\) # (!\cp4|fifo[16][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[17][3]~q\,
	datab => \cp4|fifo[16][3]~q\,
	datad => VCC,
	cin => \cp4|Add15~5\,
	combout => \cp4|Add15~6_combout\,
	cout => \cp4|Add15~7\);

-- Location: LCCOMB_X17_Y20_N20
\cp4|Add15~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add15~20_combout\ = !\cp4|Add15~19\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \cp4|Add15~19\,
	combout => \cp4|Add15~20_combout\);

-- Location: LCCOMB_X21_Y20_N0
\cp4|Add16~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add16~0_combout\ = (\cp4|Add14~0_combout\ & (\cp4|Add15~0_combout\ $ (VCC))) # (!\cp4|Add14~0_combout\ & (\cp4|Add15~0_combout\ & VCC))
-- \cp4|Add16~1\ = CARRY((\cp4|Add14~0_combout\ & \cp4|Add15~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add14~0_combout\,
	datab => \cp4|Add15~0_combout\,
	datad => VCC,
	combout => \cp4|Add16~0_combout\,
	cout => \cp4|Add16~1\);

-- Location: LCCOMB_X21_Y20_N6
\cp4|Add16~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add16~6_combout\ = (\cp4|Add14~6_combout\ & ((\cp4|Add15~6_combout\ & (\cp4|Add16~5\ & VCC)) # (!\cp4|Add15~6_combout\ & (!\cp4|Add16~5\)))) # (!\cp4|Add14~6_combout\ & ((\cp4|Add15~6_combout\ & (!\cp4|Add16~5\)) # (!\cp4|Add15~6_combout\ & 
-- ((\cp4|Add16~5\) # (GND)))))
-- \cp4|Add16~7\ = CARRY((\cp4|Add14~6_combout\ & (!\cp4|Add15~6_combout\ & !\cp4|Add16~5\)) # (!\cp4|Add14~6_combout\ & ((!\cp4|Add16~5\) # (!\cp4|Add15~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add14~6_combout\,
	datab => \cp4|Add15~6_combout\,
	datad => VCC,
	cin => \cp4|Add16~5\,
	combout => \cp4|Add16~6_combout\,
	cout => \cp4|Add16~7\);

-- Location: LCCOMB_X21_Y20_N8
\cp4|Add16~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add16~8_combout\ = ((\cp4|Add15~8_combout\ $ (\cp4|Add14~8_combout\ $ (!\cp4|Add16~7\)))) # (GND)
-- \cp4|Add16~9\ = CARRY((\cp4|Add15~8_combout\ & ((\cp4|Add14~8_combout\) # (!\cp4|Add16~7\))) # (!\cp4|Add15~8_combout\ & (\cp4|Add14~8_combout\ & !\cp4|Add16~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add15~8_combout\,
	datab => \cp4|Add14~8_combout\,
	datad => VCC,
	cin => \cp4|Add16~7\,
	combout => \cp4|Add16~8_combout\,
	cout => \cp4|Add16~9\);

-- Location: LCCOMB_X21_Y20_N10
\cp4|Add16~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add16~10_combout\ = (\cp4|Add15~10_combout\ & ((\cp4|Add14~10_combout\ & (\cp4|Add16~9\ & VCC)) # (!\cp4|Add14~10_combout\ & (!\cp4|Add16~9\)))) # (!\cp4|Add15~10_combout\ & ((\cp4|Add14~10_combout\ & (!\cp4|Add16~9\)) # (!\cp4|Add14~10_combout\ & 
-- ((\cp4|Add16~9\) # (GND)))))
-- \cp4|Add16~11\ = CARRY((\cp4|Add15~10_combout\ & (!\cp4|Add14~10_combout\ & !\cp4|Add16~9\)) # (!\cp4|Add15~10_combout\ & ((!\cp4|Add16~9\) # (!\cp4|Add14~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add15~10_combout\,
	datab => \cp4|Add14~10_combout\,
	datad => VCC,
	cin => \cp4|Add16~9\,
	combout => \cp4|Add16~10_combout\,
	cout => \cp4|Add16~11\);

-- Location: LCCOMB_X21_Y20_N12
\cp4|Add16~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add16~12_combout\ = ((\cp4|Add15~12_combout\ $ (\cp4|Add14~12_combout\ $ (!\cp4|Add16~11\)))) # (GND)
-- \cp4|Add16~13\ = CARRY((\cp4|Add15~12_combout\ & ((\cp4|Add14~12_combout\) # (!\cp4|Add16~11\))) # (!\cp4|Add15~12_combout\ & (\cp4|Add14~12_combout\ & !\cp4|Add16~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add15~12_combout\,
	datab => \cp4|Add14~12_combout\,
	datad => VCC,
	cin => \cp4|Add16~11\,
	combout => \cp4|Add16~12_combout\,
	cout => \cp4|Add16~13\);

-- Location: LCCOMB_X21_Y20_N14
\cp4|Add16~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add16~14_combout\ = (\cp4|Add15~14_combout\ & ((\cp4|Add14~14_combout\ & (\cp4|Add16~13\ & VCC)) # (!\cp4|Add14~14_combout\ & (!\cp4|Add16~13\)))) # (!\cp4|Add15~14_combout\ & ((\cp4|Add14~14_combout\ & (!\cp4|Add16~13\)) # (!\cp4|Add14~14_combout\ & 
-- ((\cp4|Add16~13\) # (GND)))))
-- \cp4|Add16~15\ = CARRY((\cp4|Add15~14_combout\ & (!\cp4|Add14~14_combout\ & !\cp4|Add16~13\)) # (!\cp4|Add15~14_combout\ & ((!\cp4|Add16~13\) # (!\cp4|Add14~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add15~14_combout\,
	datab => \cp4|Add14~14_combout\,
	datad => VCC,
	cin => \cp4|Add16~13\,
	combout => \cp4|Add16~14_combout\,
	cout => \cp4|Add16~15\);

-- Location: LCCOMB_X21_Y20_N16
\cp4|Add16~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add16~16_combout\ = ((\cp4|Add15~16_combout\ $ (\cp4|Add14~16_combout\ $ (!\cp4|Add16~15\)))) # (GND)
-- \cp4|Add16~17\ = CARRY((\cp4|Add15~16_combout\ & ((\cp4|Add14~16_combout\) # (!\cp4|Add16~15\))) # (!\cp4|Add15~16_combout\ & (\cp4|Add14~16_combout\ & !\cp4|Add16~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add15~16_combout\,
	datab => \cp4|Add14~16_combout\,
	datad => VCC,
	cin => \cp4|Add16~15\,
	combout => \cp4|Add16~16_combout\,
	cout => \cp4|Add16~17\);

-- Location: LCCOMB_X21_Y20_N18
\cp4|Add16~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add16~18_combout\ = (\cp4|Add15~18_combout\ & ((\cp4|Add14~18_combout\ & (\cp4|Add16~17\ & VCC)) # (!\cp4|Add14~18_combout\ & (!\cp4|Add16~17\)))) # (!\cp4|Add15~18_combout\ & ((\cp4|Add14~18_combout\ & (!\cp4|Add16~17\)) # (!\cp4|Add14~18_combout\ & 
-- ((\cp4|Add16~17\) # (GND)))))
-- \cp4|Add16~19\ = CARRY((\cp4|Add15~18_combout\ & (!\cp4|Add14~18_combout\ & !\cp4|Add16~17\)) # (!\cp4|Add15~18_combout\ & ((!\cp4|Add16~17\) # (!\cp4|Add14~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add15~18_combout\,
	datab => \cp4|Add14~18_combout\,
	datad => VCC,
	cin => \cp4|Add16~17\,
	combout => \cp4|Add16~18_combout\,
	cout => \cp4|Add16~19\);

-- Location: LCCOMB_X21_Y20_N22
\cp4|Add16~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add16~22_combout\ = (\cp4|Add14~22_combout\ & (!\cp4|Add16~21\)) # (!\cp4|Add14~22_combout\ & ((\cp4|Add16~21\) # (GND)))
-- \cp4|Add16~23\ = CARRY((!\cp4|Add16~21\) # (!\cp4|Add14~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cp4|Add14~22_combout\,
	datad => VCC,
	cin => \cp4|Add16~21\,
	combout => \cp4|Add16~22_combout\,
	cout => \cp4|Add16~23\);

-- Location: LCCOMB_X21_Y20_N24
\cp4|Add16~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add16~24_combout\ = (\cp4|Add14~24_combout\ & (\cp4|Add16~23\ $ (GND))) # (!\cp4|Add14~24_combout\ & (!\cp4|Add16~23\ & VCC))
-- \cp4|Add16~25\ = CARRY((\cp4|Add14~24_combout\ & !\cp4|Add16~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cp4|Add14~24_combout\,
	datad => VCC,
	cin => \cp4|Add16~23\,
	combout => \cp4|Add16~24_combout\,
	cout => \cp4|Add16~25\);

-- Location: LCCOMB_X16_Y21_N18
\cp4|fifo[17][9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|fifo[17][9]~feeder_combout\ = \cp4|fifo[16][9]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cp4|fifo[16][9]~q\,
	combout => \cp4|fifo[17][9]~feeder_combout\);

-- Location: FF_X16_Y21_N19
\cp4|fifo[17][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp4|fifo[17][9]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[17][9]~q\);

-- Location: FF_X16_Y22_N27
\cp4|fifo[18][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[17][9]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[18][9]~q\);

-- Location: FF_X16_Y22_N21
\cp4|fifo[19][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[18][9]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[19][9]~q\);

-- Location: FF_X15_Y22_N15
\cp4|fifo[20][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[19][9]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[20][9]~q\);

-- Location: LCCOMB_X15_Y22_N0
\cp4|fifo[21][9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|fifo[21][9]~feeder_combout\ = \cp4|fifo[20][9]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cp4|fifo[20][9]~q\,
	combout => \cp4|fifo[21][9]~feeder_combout\);

-- Location: FF_X15_Y22_N1
\cp4|fifo[21][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp4|fifo[21][9]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[21][9]~q\);

-- Location: FF_X15_Y20_N11
\cp4|fifo[22][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[21][9]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[22][9]~q\);

-- Location: FF_X17_Y20_N17
\cp4|fifo[17][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[16][8]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[17][8]~q\);

-- Location: FF_X17_Y20_N25
\cp4|fifo[18][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[17][8]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[18][8]~q\);

-- Location: LCCOMB_X16_Y22_N6
\cp4|fifo[19][8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|fifo[19][8]~feeder_combout\ = \cp4|fifo[18][8]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cp4|fifo[18][8]~q\,
	combout => \cp4|fifo[19][8]~feeder_combout\);

-- Location: FF_X16_Y22_N7
\cp4|fifo[19][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp4|fifo[19][8]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[19][8]~q\);

-- Location: LCCOMB_X14_Y22_N0
\cp4|fifo[20][8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|fifo[20][8]~feeder_combout\ = \cp4|fifo[19][8]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cp4|fifo[19][8]~q\,
	combout => \cp4|fifo[20][8]~feeder_combout\);

-- Location: FF_X14_Y22_N1
\cp4|fifo[20][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp4|fifo[20][8]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[20][8]~q\);

-- Location: LCCOMB_X14_Y22_N4
\cp4|fifo[21][8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|fifo[21][8]~feeder_combout\ = \cp4|fifo[20][8]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cp4|fifo[20][8]~q\,
	combout => \cp4|fifo[21][8]~feeder_combout\);

-- Location: FF_X14_Y22_N5
\cp4|fifo[21][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp4|fifo[21][8]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[21][8]~q\);

-- Location: LCCOMB_X14_Y22_N2
\cp4|fifo[22][8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|fifo[22][8]~feeder_combout\ = \cp4|fifo[21][8]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cp4|fifo[21][8]~q\,
	combout => \cp4|fifo[22][8]~feeder_combout\);

-- Location: FF_X14_Y22_N3
\cp4|fifo[22][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp4|fifo[22][8]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[22][8]~q\);

-- Location: LCCOMB_X16_Y21_N14
\cp4|fifo[17][7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|fifo[17][7]~feeder_combout\ = \cp4|fifo[16][7]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cp4|fifo[16][7]~q\,
	combout => \cp4|fifo[17][7]~feeder_combout\);

-- Location: FF_X16_Y21_N15
\cp4|fifo[17][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp4|fifo[17][7]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[17][7]~q\);

-- Location: FF_X16_Y22_N23
\cp4|fifo[18][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[17][7]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[18][7]~q\);

-- Location: FF_X15_Y22_N23
\cp4|fifo[19][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[18][7]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[19][7]~q\);

-- Location: FF_X15_Y22_N17
\cp4|fifo[20][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[19][7]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[20][7]~q\);

-- Location: FF_X15_Y22_N19
\cp4|fifo[21][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[20][7]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[21][7]~q\);

-- Location: FF_X15_Y20_N27
\cp4|fifo[22][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[21][7]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[22][7]~q\);

-- Location: FF_X14_Y20_N23
\cp4|fifo[23][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[22][7]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[23][7]~q\);

-- Location: FF_X16_Y22_N29
\cp4|fifo[18][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[17][6]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[18][6]~q\);

-- Location: LCCOMB_X16_Y22_N2
\cp4|fifo[19][6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|fifo[19][6]~feeder_combout\ = \cp4|fifo[18][6]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cp4|fifo[18][6]~q\,
	combout => \cp4|fifo[19][6]~feeder_combout\);

-- Location: FF_X16_Y22_N3
\cp4|fifo[19][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp4|fifo[19][6]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[19][6]~q\);

-- Location: LCCOMB_X16_Y21_N26
\cp4|fifo[20][6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|fifo[20][6]~feeder_combout\ = \cp4|fifo[19][6]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cp4|fifo[19][6]~q\,
	combout => \cp4|fifo[20][6]~feeder_combout\);

-- Location: FF_X16_Y21_N27
\cp4|fifo[20][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp4|fifo[20][6]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[20][6]~q\);

-- Location: FF_X15_Y22_N7
\cp4|fifo[21][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[20][6]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[21][6]~q\);

-- Location: FF_X15_Y20_N29
\cp4|fifo[22][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[21][6]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[22][6]~q\);

-- Location: FF_X16_Y22_N17
\cp4|fifo[17][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[16][5]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[17][5]~q\);

-- Location: FF_X16_Y22_N11
\cp4|fifo[18][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[17][5]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[18][5]~q\);

-- Location: FF_X16_Y22_N25
\cp4|fifo[19][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[18][5]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[19][5]~q\);

-- Location: FF_X15_Y22_N13
\cp4|fifo[20][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[19][5]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[20][5]~q\);

-- Location: LCCOMB_X15_Y22_N28
\cp4|fifo[21][5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|fifo[21][5]~feeder_combout\ = \cp4|fifo[20][5]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cp4|fifo[20][5]~q\,
	combout => \cp4|fifo[21][5]~feeder_combout\);

-- Location: FF_X15_Y22_N29
\cp4|fifo[21][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp4|fifo[21][5]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[21][5]~q\);

-- Location: FF_X15_Y20_N19
\cp4|fifo[22][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[21][5]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[22][5]~q\);

-- Location: FF_X17_Y20_N11
\cp4|fifo[17][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[16][4]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[17][4]~q\);

-- Location: FF_X16_Y22_N19
\cp4|fifo[18][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[17][4]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[18][4]~q\);

-- Location: LCCOMB_X17_Y22_N2
\cp4|fifo[19][4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|fifo[19][4]~feeder_combout\ = \cp4|fifo[18][4]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cp4|fifo[18][4]~q\,
	combout => \cp4|fifo[19][4]~feeder_combout\);

-- Location: FF_X17_Y22_N3
\cp4|fifo[19][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp4|fifo[19][4]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[19][4]~q\);

-- Location: LCCOMB_X16_Y22_N4
\cp4|fifo[20][4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|fifo[20][4]~feeder_combout\ = \cp4|fifo[19][4]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cp4|fifo[19][4]~q\,
	combout => \cp4|fifo[20][4]~feeder_combout\);

-- Location: FF_X16_Y22_N5
\cp4|fifo[20][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp4|fifo[20][4]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[20][4]~q\);

-- Location: FF_X15_Y22_N3
\cp4|fifo[21][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[20][4]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[21][4]~q\);

-- Location: LCCOMB_X15_Y21_N24
\cp4|fifo[22][4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|fifo[22][4]~feeder_combout\ = \cp4|fifo[21][4]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cp4|fifo[21][4]~q\,
	combout => \cp4|fifo[22][4]~feeder_combout\);

-- Location: FF_X15_Y21_N25
\cp4|fifo[22][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp4|fifo[22][4]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[22][4]~q\);

-- Location: FF_X15_Y20_N15
\cp4|fifo[23][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[22][4]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[23][4]~q\);

-- Location: FF_X17_Y20_N13
\cp4|fifo[17][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[16][3]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[17][3]~q\);

-- Location: LCCOMB_X17_Y22_N30
\cp4|fifo[18][3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|fifo[18][3]~feeder_combout\ = \cp4|fifo[17][3]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cp4|fifo[17][3]~q\,
	combout => \cp4|fifo[18][3]~feeder_combout\);

-- Location: FF_X17_Y22_N31
\cp4|fifo[18][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp4|fifo[18][3]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[18][3]~q\);

-- Location: FF_X16_Y22_N15
\cp4|fifo[19][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[18][3]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[19][3]~q\);

-- Location: FF_X15_Y22_N11
\cp4|fifo[20][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[19][3]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[20][3]~q\);

-- Location: LCCOMB_X15_Y22_N30
\cp4|fifo[21][3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|fifo[21][3]~feeder_combout\ = \cp4|fifo[20][3]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cp4|fifo[20][3]~q\,
	combout => \cp4|fifo[21][3]~feeder_combout\);

-- Location: FF_X15_Y22_N31
\cp4|fifo[21][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp4|fifo[21][3]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[21][3]~q\);

-- Location: FF_X15_Y20_N17
\cp4|fifo[22][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[21][3]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[22][3]~q\);

-- Location: FF_X17_Y20_N19
\cp4|fifo[18][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[17][2]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[18][2]~q\);

-- Location: FF_X16_Y22_N13
\cp4|fifo[19][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[18][2]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[19][2]~q\);

-- Location: FF_X15_Y22_N21
\cp4|fifo[20][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[19][2]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[20][2]~q\);

-- Location: LCCOMB_X15_Y22_N26
\cp4|fifo[21][2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|fifo[21][2]~feeder_combout\ = \cp4|fifo[20][2]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cp4|fifo[20][2]~q\,
	combout => \cp4|fifo[21][2]~feeder_combout\);

-- Location: FF_X15_Y22_N27
\cp4|fifo[21][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp4|fifo[21][2]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[21][2]~q\);

-- Location: FF_X15_Y20_N13
\cp4|fifo[22][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[21][2]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[22][2]~q\);

-- Location: FF_X17_Y22_N13
\cp4|fifo[17][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[16][1]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[17][1]~q\);

-- Location: LCCOMB_X17_Y22_N0
\cp4|fifo[18][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|fifo[18][1]~feeder_combout\ = \cp4|fifo[17][1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cp4|fifo[17][1]~q\,
	combout => \cp4|fifo[18][1]~feeder_combout\);

-- Location: FF_X17_Y22_N1
\cp4|fifo[18][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp4|fifo[18][1]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[18][1]~q\);

-- Location: LCCOMB_X16_Y22_N30
\cp4|fifo[19][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|fifo[19][1]~feeder_combout\ = \cp4|fifo[18][1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cp4|fifo[18][1]~q\,
	combout => \cp4|fifo[19][1]~feeder_combout\);

-- Location: FF_X16_Y22_N31
\cp4|fifo[19][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp4|fifo[19][1]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[19][1]~q\);

-- Location: FF_X15_Y22_N9
\cp4|fifo[20][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[19][1]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[20][1]~q\);

-- Location: FF_X15_Y22_N5
\cp4|fifo[21][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[20][1]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[21][1]~q\);

-- Location: LCCOMB_X15_Y20_N6
\cp4|fifo[22][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|fifo[22][1]~feeder_combout\ = \cp4|fifo[21][1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cp4|fifo[21][1]~q\,
	combout => \cp4|fifo[22][1]~feeder_combout\);

-- Location: FF_X15_Y20_N7
\cp4|fifo[22][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp4|fifo[22][1]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[22][1]~q\);

-- Location: LCCOMB_X15_Y20_N0
\cp4|fifo[23][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|fifo[23][1]~feeder_combout\ = \cp4|fifo[22][1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cp4|fifo[22][1]~q\,
	combout => \cp4|fifo[23][1]~feeder_combout\);

-- Location: FF_X15_Y20_N1
\cp4|fifo[23][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp4|fifo[23][1]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[23][1]~q\);

-- Location: FF_X17_Y22_N7
\cp4|fifo[17][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[16][0]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[17][0]~q\);

-- Location: LCCOMB_X17_Y22_N4
\cp4|fifo[18][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|fifo[18][0]~feeder_combout\ = \cp4|fifo[17][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cp4|fifo[17][0]~q\,
	combout => \cp4|fifo[18][0]~feeder_combout\);

-- Location: FF_X17_Y22_N5
\cp4|fifo[18][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp4|fifo[18][0]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[18][0]~q\);

-- Location: LCCOMB_X16_Y22_N0
\cp4|fifo[19][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|fifo[19][0]~feeder_combout\ = \cp4|fifo[18][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cp4|fifo[18][0]~q\,
	combout => \cp4|fifo[19][0]~feeder_combout\);

-- Location: FF_X16_Y22_N1
\cp4|fifo[19][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp4|fifo[19][0]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[19][0]~q\);

-- Location: LCCOMB_X16_Y21_N0
\cp4|fifo[20][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|fifo[20][0]~feeder_combout\ = \cp4|fifo[19][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cp4|fifo[19][0]~q\,
	combout => \cp4|fifo[20][0]~feeder_combout\);

-- Location: FF_X16_Y21_N1
\cp4|fifo[20][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp4|fifo[20][0]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[20][0]~q\);

-- Location: LCCOMB_X15_Y22_N24
\cp4|fifo[21][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|fifo[21][0]~feeder_combout\ = \cp4|fifo[20][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cp4|fifo[20][0]~q\,
	combout => \cp4|fifo[21][0]~feeder_combout\);

-- Location: FF_X15_Y22_N25
\cp4|fifo[21][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp4|fifo[21][0]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[21][0]~q\);

-- Location: FF_X15_Y20_N25
\cp4|fifo[22][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[21][0]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[22][0]~q\);

-- Location: LCCOMB_X15_Y20_N10
\cp4|Add21~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add21~0_combout\ = (\cp4|fifo[23][0]~q\ & (\cp4|fifo[22][0]~q\ $ (VCC))) # (!\cp4|fifo[23][0]~q\ & (\cp4|fifo[22][0]~q\ & VCC))
-- \cp4|Add21~1\ = CARRY((\cp4|fifo[23][0]~q\ & \cp4|fifo[22][0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[23][0]~q\,
	datab => \cp4|fifo[22][0]~q\,
	datad => VCC,
	combout => \cp4|Add21~0_combout\,
	cout => \cp4|Add21~1\);

-- Location: LCCOMB_X15_Y20_N14
\cp4|Add21~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add21~4_combout\ = ((\cp4|fifo[23][2]~q\ $ (\cp4|fifo[22][2]~q\ $ (!\cp4|Add21~3\)))) # (GND)
-- \cp4|Add21~5\ = CARRY((\cp4|fifo[23][2]~q\ & ((\cp4|fifo[22][2]~q\) # (!\cp4|Add21~3\))) # (!\cp4|fifo[23][2]~q\ & (\cp4|fifo[22][2]~q\ & !\cp4|Add21~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[23][2]~q\,
	datab => \cp4|fifo[22][2]~q\,
	datad => VCC,
	cin => \cp4|Add21~3\,
	combout => \cp4|Add21~4_combout\,
	cout => \cp4|Add21~5\);

-- Location: LCCOMB_X15_Y20_N18
\cp4|Add21~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add21~8_combout\ = ((\cp4|fifo[22][4]~q\ $ (\cp4|fifo[23][4]~q\ $ (!\cp4|Add21~7\)))) # (GND)
-- \cp4|Add21~9\ = CARRY((\cp4|fifo[22][4]~q\ & ((\cp4|fifo[23][4]~q\) # (!\cp4|Add21~7\))) # (!\cp4|fifo[22][4]~q\ & (\cp4|fifo[23][4]~q\ & !\cp4|Add21~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[22][4]~q\,
	datab => \cp4|fifo[23][4]~q\,
	datad => VCC,
	cin => \cp4|Add21~7\,
	combout => \cp4|Add21~8_combout\,
	cout => \cp4|Add21~9\);

-- Location: LCCOMB_X15_Y20_N24
\cp4|Add21~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add21~14_combout\ = (\cp4|fifo[22][7]~q\ & ((\cp4|fifo[23][7]~q\ & (\cp4|Add21~13\ & VCC)) # (!\cp4|fifo[23][7]~q\ & (!\cp4|Add21~13\)))) # (!\cp4|fifo[22][7]~q\ & ((\cp4|fifo[23][7]~q\ & (!\cp4|Add21~13\)) # (!\cp4|fifo[23][7]~q\ & ((\cp4|Add21~13\) 
-- # (GND)))))
-- \cp4|Add21~15\ = CARRY((\cp4|fifo[22][7]~q\ & (!\cp4|fifo[23][7]~q\ & !\cp4|Add21~13\)) # (!\cp4|fifo[22][7]~q\ & ((!\cp4|Add21~13\) # (!\cp4|fifo[23][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[22][7]~q\,
	datab => \cp4|fifo[23][7]~q\,
	datad => VCC,
	cin => \cp4|Add21~13\,
	combout => \cp4|Add21~14_combout\,
	cout => \cp4|Add21~15\);

-- Location: LCCOMB_X15_Y20_N26
\cp4|Add21~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add21~16_combout\ = ((\cp4|fifo[23][8]~q\ $ (\cp4|fifo[22][8]~q\ $ (!\cp4|Add21~15\)))) # (GND)
-- \cp4|Add21~17\ = CARRY((\cp4|fifo[23][8]~q\ & ((\cp4|fifo[22][8]~q\) # (!\cp4|Add21~15\))) # (!\cp4|fifo[23][8]~q\ & (\cp4|fifo[22][8]~q\ & !\cp4|Add21~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[23][8]~q\,
	datab => \cp4|fifo[22][8]~q\,
	datad => VCC,
	cin => \cp4|Add21~15\,
	combout => \cp4|Add21~16_combout\,
	cout => \cp4|Add21~17\);

-- Location: LCCOMB_X15_Y20_N28
\cp4|Add21~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add21~18_combout\ = (\cp4|fifo[23][9]~q\ & ((\cp4|fifo[22][9]~q\ & (\cp4|Add21~17\ & VCC)) # (!\cp4|fifo[22][9]~q\ & (!\cp4|Add21~17\)))) # (!\cp4|fifo[23][9]~q\ & ((\cp4|fifo[22][9]~q\ & (!\cp4|Add21~17\)) # (!\cp4|fifo[22][9]~q\ & ((\cp4|Add21~17\) 
-- # (GND)))))
-- \cp4|Add21~19\ = CARRY((\cp4|fifo[23][9]~q\ & (!\cp4|fifo[22][9]~q\ & !\cp4|Add21~17\)) # (!\cp4|fifo[23][9]~q\ & ((!\cp4|Add21~17\) # (!\cp4|fifo[22][9]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[23][9]~q\,
	datab => \cp4|fifo[22][9]~q\,
	datad => VCC,
	cin => \cp4|Add21~17\,
	combout => \cp4|Add21~18_combout\,
	cout => \cp4|Add21~19\);

-- Location: LCCOMB_X15_Y20_N30
\cp4|Add21~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add21~20_combout\ = !\cp4|Add21~19\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \cp4|Add21~19\,
	combout => \cp4|Add21~20_combout\);

-- Location: FF_X15_Y20_N23
\cp4|fifo[23][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[22][6]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[23][6]~q\);

-- Location: FF_X14_Y20_N29
\cp4|fifo[24][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[23][6]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[24][6]~q\);

-- Location: LCCOMB_X12_Y20_N8
\cp4|fifo[23][5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|fifo[23][5]~feeder_combout\ = \cp4|fifo[22][5]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cp4|fifo[22][5]~q\,
	combout => \cp4|fifo[23][5]~feeder_combout\);

-- Location: FF_X12_Y20_N9
\cp4|fifo[23][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp4|fifo[23][5]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[23][5]~q\);

-- Location: FF_X14_Y20_N19
\cp4|fifo[24][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[23][5]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[24][5]~q\);

-- Location: FF_X14_Y20_N27
\cp4|fifo[24][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[23][4]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[24][4]~q\);

-- Location: LCCOMB_X14_Y20_N2
\cp4|fifo[25][4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|fifo[25][4]~feeder_combout\ = \cp4|fifo[24][4]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cp4|fifo[24][4]~q\,
	combout => \cp4|fifo[25][4]~feeder_combout\);

-- Location: FF_X14_Y20_N3
\cp4|fifo[25][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp4|fifo[25][4]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[25][4]~q\);

-- Location: FF_X15_Y20_N21
\cp4|fifo[23][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[22][3]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[23][3]~q\);

-- Location: FF_X14_Y20_N11
\cp4|fifo[24][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[23][3]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[24][3]~q\);

-- Location: FF_X14_Y21_N9
\cp4|fifo[25][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[24][3]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[25][3]~q\);

-- Location: FF_X15_Y20_N31
\cp4|fifo[23][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[22][2]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[23][2]~q\);

-- Location: LCCOMB_X14_Y20_N6
\cp4|fifo[24][2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|fifo[24][2]~feeder_combout\ = \cp4|fifo[23][2]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cp4|fifo[23][2]~q\,
	combout => \cp4|fifo[24][2]~feeder_combout\);

-- Location: FF_X14_Y20_N7
\cp4|fifo[24][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp4|fifo[24][2]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[24][2]~q\);

-- Location: FF_X14_Y21_N29
\cp4|fifo[25][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[24][2]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[25][2]~q\);

-- Location: FF_X14_Y20_N17
\cp4|fifo[24][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[23][1]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[24][1]~q\);

-- Location: LCCOMB_X15_Y20_N8
\cp4|fifo[23][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|fifo[23][0]~feeder_combout\ = \cp4|fifo[22][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cp4|fifo[22][0]~q\,
	combout => \cp4|fifo[23][0]~feeder_combout\);

-- Location: FF_X15_Y20_N9
\cp4|fifo[23][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp4|fifo[23][0]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[23][0]~q\);

-- Location: FF_X14_Y20_N21
\cp4|fifo[24][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[23][0]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[24][0]~q\);

-- Location: LCCOMB_X14_Y20_N10
\cp4|Add23~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add23~2_combout\ = (\cp4|fifo[25][1]~q\ & ((\cp4|fifo[24][1]~q\ & (\cp4|Add23~1\ & VCC)) # (!\cp4|fifo[24][1]~q\ & (!\cp4|Add23~1\)))) # (!\cp4|fifo[25][1]~q\ & ((\cp4|fifo[24][1]~q\ & (!\cp4|Add23~1\)) # (!\cp4|fifo[24][1]~q\ & ((\cp4|Add23~1\) # 
-- (GND)))))
-- \cp4|Add23~3\ = CARRY((\cp4|fifo[25][1]~q\ & (!\cp4|fifo[24][1]~q\ & !\cp4|Add23~1\)) # (!\cp4|fifo[25][1]~q\ & ((!\cp4|Add23~1\) # (!\cp4|fifo[24][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[25][1]~q\,
	datab => \cp4|fifo[24][1]~q\,
	datad => VCC,
	cin => \cp4|Add23~1\,
	combout => \cp4|Add23~2_combout\,
	cout => \cp4|Add23~3\);

-- Location: LCCOMB_X14_Y20_N14
\cp4|Add23~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add23~6_combout\ = (\cp4|fifo[24][3]~q\ & ((\cp4|fifo[25][3]~q\ & (\cp4|Add23~5\ & VCC)) # (!\cp4|fifo[25][3]~q\ & (!\cp4|Add23~5\)))) # (!\cp4|fifo[24][3]~q\ & ((\cp4|fifo[25][3]~q\ & (!\cp4|Add23~5\)) # (!\cp4|fifo[25][3]~q\ & ((\cp4|Add23~5\) # 
-- (GND)))))
-- \cp4|Add23~7\ = CARRY((\cp4|fifo[24][3]~q\ & (!\cp4|fifo[25][3]~q\ & !\cp4|Add23~5\)) # (!\cp4|fifo[24][3]~q\ & ((!\cp4|Add23~5\) # (!\cp4|fifo[25][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[24][3]~q\,
	datab => \cp4|fifo[25][3]~q\,
	datad => VCC,
	cin => \cp4|Add23~5\,
	combout => \cp4|Add23~6_combout\,
	cout => \cp4|Add23~7\);

-- Location: LCCOMB_X14_Y20_N18
\cp4|Add23~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add23~10_combout\ = (\cp4|fifo[25][5]~q\ & ((\cp4|fifo[24][5]~q\ & (\cp4|Add23~9\ & VCC)) # (!\cp4|fifo[24][5]~q\ & (!\cp4|Add23~9\)))) # (!\cp4|fifo[25][5]~q\ & ((\cp4|fifo[24][5]~q\ & (!\cp4|Add23~9\)) # (!\cp4|fifo[24][5]~q\ & ((\cp4|Add23~9\) # 
-- (GND)))))
-- \cp4|Add23~11\ = CARRY((\cp4|fifo[25][5]~q\ & (!\cp4|fifo[24][5]~q\ & !\cp4|Add23~9\)) # (!\cp4|fifo[25][5]~q\ & ((!\cp4|Add23~9\) # (!\cp4|fifo[24][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[25][5]~q\,
	datab => \cp4|fifo[24][5]~q\,
	datad => VCC,
	cin => \cp4|Add23~9\,
	combout => \cp4|Add23~10_combout\,
	cout => \cp4|Add23~11\);

-- Location: LCCOMB_X14_Y21_N10
\cp4|Add22~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add22~2_combout\ = (\cp4|Add21~2_combout\ & ((\cp4|Add23~2_combout\ & (\cp4|Add22~1\ & VCC)) # (!\cp4|Add23~2_combout\ & (!\cp4|Add22~1\)))) # (!\cp4|Add21~2_combout\ & ((\cp4|Add23~2_combout\ & (!\cp4|Add22~1\)) # (!\cp4|Add23~2_combout\ & 
-- ((\cp4|Add22~1\) # (GND)))))
-- \cp4|Add22~3\ = CARRY((\cp4|Add21~2_combout\ & (!\cp4|Add23~2_combout\ & !\cp4|Add22~1\)) # (!\cp4|Add21~2_combout\ & ((!\cp4|Add22~1\) # (!\cp4|Add23~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add21~2_combout\,
	datab => \cp4|Add23~2_combout\,
	datad => VCC,
	cin => \cp4|Add22~1\,
	combout => \cp4|Add22~2_combout\,
	cout => \cp4|Add22~3\);

-- Location: LCCOMB_X14_Y21_N14
\cp4|Add22~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add22~6_combout\ = (\cp4|Add21~6_combout\ & ((\cp4|Add23~6_combout\ & (\cp4|Add22~5\ & VCC)) # (!\cp4|Add23~6_combout\ & (!\cp4|Add22~5\)))) # (!\cp4|Add21~6_combout\ & ((\cp4|Add23~6_combout\ & (!\cp4|Add22~5\)) # (!\cp4|Add23~6_combout\ & 
-- ((\cp4|Add22~5\) # (GND)))))
-- \cp4|Add22~7\ = CARRY((\cp4|Add21~6_combout\ & (!\cp4|Add23~6_combout\ & !\cp4|Add22~5\)) # (!\cp4|Add21~6_combout\ & ((!\cp4|Add22~5\) # (!\cp4|Add23~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add21~6_combout\,
	datab => \cp4|Add23~6_combout\,
	datad => VCC,
	cin => \cp4|Add22~5\,
	combout => \cp4|Add22~6_combout\,
	cout => \cp4|Add22~7\);

-- Location: LCCOMB_X14_Y21_N16
\cp4|Add22~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add22~8_combout\ = ((\cp4|Add23~8_combout\ $ (\cp4|Add21~8_combout\ $ (!\cp4|Add22~7\)))) # (GND)
-- \cp4|Add22~9\ = CARRY((\cp4|Add23~8_combout\ & ((\cp4|Add21~8_combout\) # (!\cp4|Add22~7\))) # (!\cp4|Add23~8_combout\ & (\cp4|Add21~8_combout\ & !\cp4|Add22~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add23~8_combout\,
	datab => \cp4|Add21~8_combout\,
	datad => VCC,
	cin => \cp4|Add22~7\,
	combout => \cp4|Add22~8_combout\,
	cout => \cp4|Add22~9\);

-- Location: LCCOMB_X14_Y21_N26
\cp4|Add22~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add22~18_combout\ = (\cp4|Add23~18_combout\ & ((\cp4|Add21~18_combout\ & (\cp4|Add22~17\ & VCC)) # (!\cp4|Add21~18_combout\ & (!\cp4|Add22~17\)))) # (!\cp4|Add23~18_combout\ & ((\cp4|Add21~18_combout\ & (!\cp4|Add22~17\)) # (!\cp4|Add21~18_combout\ & 
-- ((\cp4|Add22~17\) # (GND)))))
-- \cp4|Add22~19\ = CARRY((\cp4|Add23~18_combout\ & (!\cp4|Add21~18_combout\ & !\cp4|Add22~17\)) # (!\cp4|Add23~18_combout\ & ((!\cp4|Add22~17\) # (!\cp4|Add21~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add23~18_combout\,
	datab => \cp4|Add21~18_combout\,
	datad => VCC,
	cin => \cp4|Add22~17\,
	combout => \cp4|Add22~18_combout\,
	cout => \cp4|Add22~19\);

-- Location: LCCOMB_X14_Y21_N28
\cp4|Add22~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add22~20_combout\ = ((\cp4|Add23~20_combout\ $ (\cp4|Add21~20_combout\ $ (!\cp4|Add22~19\)))) # (GND)
-- \cp4|Add22~21\ = CARRY((\cp4|Add23~20_combout\ & ((\cp4|Add21~20_combout\) # (!\cp4|Add22~19\))) # (!\cp4|Add23~20_combout\ & (\cp4|Add21~20_combout\ & !\cp4|Add22~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add23~20_combout\,
	datab => \cp4|Add21~20_combout\,
	datad => VCC,
	cin => \cp4|Add22~19\,
	combout => \cp4|Add22~20_combout\,
	cout => \cp4|Add22~21\);

-- Location: LCCOMB_X16_Y22_N14
\cp4|Add17~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add17~6_combout\ = (\cp4|fifo[18][3]~q\ & ((\cp4|fifo[19][3]~q\ & (\cp4|Add17~5\ & VCC)) # (!\cp4|fifo[19][3]~q\ & (!\cp4|Add17~5\)))) # (!\cp4|fifo[18][3]~q\ & ((\cp4|fifo[19][3]~q\ & (!\cp4|Add17~5\)) # (!\cp4|fifo[19][3]~q\ & ((\cp4|Add17~5\) # 
-- (GND)))))
-- \cp4|Add17~7\ = CARRY((\cp4|fifo[18][3]~q\ & (!\cp4|fifo[19][3]~q\ & !\cp4|Add17~5\)) # (!\cp4|fifo[18][3]~q\ & ((!\cp4|Add17~5\) # (!\cp4|fifo[19][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[18][3]~q\,
	datab => \cp4|fifo[19][3]~q\,
	datad => VCC,
	cin => \cp4|Add17~5\,
	combout => \cp4|Add17~6_combout\,
	cout => \cp4|Add17~7\);

-- Location: LCCOMB_X16_Y22_N16
\cp4|Add17~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add17~8_combout\ = ((\cp4|fifo[19][4]~q\ $ (\cp4|fifo[18][4]~q\ $ (!\cp4|Add17~7\)))) # (GND)
-- \cp4|Add17~9\ = CARRY((\cp4|fifo[19][4]~q\ & ((\cp4|fifo[18][4]~q\) # (!\cp4|Add17~7\))) # (!\cp4|fifo[19][4]~q\ & (\cp4|fifo[18][4]~q\ & !\cp4|Add17~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[19][4]~q\,
	datab => \cp4|fifo[18][4]~q\,
	datad => VCC,
	cin => \cp4|Add17~7\,
	combout => \cp4|Add17~8_combout\,
	cout => \cp4|Add17~9\);

-- Location: LCCOMB_X16_Y22_N20
\cp4|Add17~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add17~12_combout\ = ((\cp4|fifo[18][6]~q\ $ (\cp4|fifo[19][6]~q\ $ (!\cp4|Add17~11\)))) # (GND)
-- \cp4|Add17~13\ = CARRY((\cp4|fifo[18][6]~q\ & ((\cp4|fifo[19][6]~q\) # (!\cp4|Add17~11\))) # (!\cp4|fifo[18][6]~q\ & (\cp4|fifo[19][6]~q\ & !\cp4|Add17~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[18][6]~q\,
	datab => \cp4|fifo[19][6]~q\,
	datad => VCC,
	cin => \cp4|Add17~11\,
	combout => \cp4|Add17~12_combout\,
	cout => \cp4|Add17~13\);

-- Location: LCCOMB_X16_Y22_N22
\cp4|Add17~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add17~14_combout\ = (\cp4|fifo[18][7]~q\ & ((\cp4|fifo[19][7]~q\ & (\cp4|Add17~13\ & VCC)) # (!\cp4|fifo[19][7]~q\ & (!\cp4|Add17~13\)))) # (!\cp4|fifo[18][7]~q\ & ((\cp4|fifo[19][7]~q\ & (!\cp4|Add17~13\)) # (!\cp4|fifo[19][7]~q\ & ((\cp4|Add17~13\) 
-- # (GND)))))
-- \cp4|Add17~15\ = CARRY((\cp4|fifo[18][7]~q\ & (!\cp4|fifo[19][7]~q\ & !\cp4|Add17~13\)) # (!\cp4|fifo[18][7]~q\ & ((!\cp4|Add17~13\) # (!\cp4|fifo[19][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[18][7]~q\,
	datab => \cp4|fifo[19][7]~q\,
	datad => VCC,
	cin => \cp4|Add17~13\,
	combout => \cp4|Add17~14_combout\,
	cout => \cp4|Add17~15\);

-- Location: LCCOMB_X15_Y22_N2
\cp4|Add19~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add19~0_combout\ = (\cp4|fifo[20][0]~q\ & (\cp4|fifo[21][0]~q\ $ (VCC))) # (!\cp4|fifo[20][0]~q\ & (\cp4|fifo[21][0]~q\ & VCC))
-- \cp4|Add19~1\ = CARRY((\cp4|fifo[20][0]~q\ & \cp4|fifo[21][0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[20][0]~q\,
	datab => \cp4|fifo[21][0]~q\,
	datad => VCC,
	combout => \cp4|Add19~0_combout\,
	cout => \cp4|Add19~1\);

-- Location: LCCOMB_X15_Y22_N4
\cp4|Add19~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add19~2_combout\ = (\cp4|fifo[21][1]~q\ & ((\cp4|fifo[20][1]~q\ & (\cp4|Add19~1\ & VCC)) # (!\cp4|fifo[20][1]~q\ & (!\cp4|Add19~1\)))) # (!\cp4|fifo[21][1]~q\ & ((\cp4|fifo[20][1]~q\ & (!\cp4|Add19~1\)) # (!\cp4|fifo[20][1]~q\ & ((\cp4|Add19~1\) # 
-- (GND)))))
-- \cp4|Add19~3\ = CARRY((\cp4|fifo[21][1]~q\ & (!\cp4|fifo[20][1]~q\ & !\cp4|Add19~1\)) # (!\cp4|fifo[21][1]~q\ & ((!\cp4|Add19~1\) # (!\cp4|fifo[20][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[21][1]~q\,
	datab => \cp4|fifo[20][1]~q\,
	datad => VCC,
	cin => \cp4|Add19~1\,
	combout => \cp4|Add19~2_combout\,
	cout => \cp4|Add19~3\);

-- Location: LCCOMB_X15_Y22_N6
\cp4|Add19~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add19~4_combout\ = ((\cp4|fifo[21][2]~q\ $ (\cp4|fifo[20][2]~q\ $ (!\cp4|Add19~3\)))) # (GND)
-- \cp4|Add19~5\ = CARRY((\cp4|fifo[21][2]~q\ & ((\cp4|fifo[20][2]~q\) # (!\cp4|Add19~3\))) # (!\cp4|fifo[21][2]~q\ & (\cp4|fifo[20][2]~q\ & !\cp4|Add19~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[21][2]~q\,
	datab => \cp4|fifo[20][2]~q\,
	datad => VCC,
	cin => \cp4|Add19~3\,
	combout => \cp4|Add19~4_combout\,
	cout => \cp4|Add19~5\);

-- Location: LCCOMB_X17_Y22_N6
\cp4|Add18~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add18~0_combout\ = (\cp4|Add17~0_combout\ & (\cp4|Add19~0_combout\ $ (VCC))) # (!\cp4|Add17~0_combout\ & (\cp4|Add19~0_combout\ & VCC))
-- \cp4|Add18~1\ = CARRY((\cp4|Add17~0_combout\ & \cp4|Add19~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add17~0_combout\,
	datab => \cp4|Add19~0_combout\,
	datad => VCC,
	combout => \cp4|Add18~0_combout\,
	cout => \cp4|Add18~1\);

-- Location: LCCOMB_X17_Y22_N10
\cp4|Add18~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add18~4_combout\ = ((\cp4|Add17~4_combout\ $ (\cp4|Add19~4_combout\ $ (!\cp4|Add18~3\)))) # (GND)
-- \cp4|Add18~5\ = CARRY((\cp4|Add17~4_combout\ & ((\cp4|Add19~4_combout\) # (!\cp4|Add18~3\))) # (!\cp4|Add17~4_combout\ & (\cp4|Add19~4_combout\ & !\cp4|Add18~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add17~4_combout\,
	datab => \cp4|Add19~4_combout\,
	datad => VCC,
	cin => \cp4|Add18~3\,
	combout => \cp4|Add18~4_combout\,
	cout => \cp4|Add18~5\);

-- Location: LCCOMB_X17_Y22_N16
\cp4|Add18~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add18~10_combout\ = (\cp4|Add17~10_combout\ & ((\cp4|Add19~10_combout\ & (\cp4|Add18~9\ & VCC)) # (!\cp4|Add19~10_combout\ & (!\cp4|Add18~9\)))) # (!\cp4|Add17~10_combout\ & ((\cp4|Add19~10_combout\ & (!\cp4|Add18~9\)) # (!\cp4|Add19~10_combout\ & 
-- ((\cp4|Add18~9\) # (GND)))))
-- \cp4|Add18~11\ = CARRY((\cp4|Add17~10_combout\ & (!\cp4|Add19~10_combout\ & !\cp4|Add18~9\)) # (!\cp4|Add17~10_combout\ & ((!\cp4|Add18~9\) # (!\cp4|Add19~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add17~10_combout\,
	datab => \cp4|Add19~10_combout\,
	datad => VCC,
	cin => \cp4|Add18~9\,
	combout => \cp4|Add18~10_combout\,
	cout => \cp4|Add18~11\);

-- Location: LCCOMB_X17_Y22_N18
\cp4|Add18~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add18~12_combout\ = ((\cp4|Add19~12_combout\ $ (\cp4|Add17~12_combout\ $ (!\cp4|Add18~11\)))) # (GND)
-- \cp4|Add18~13\ = CARRY((\cp4|Add19~12_combout\ & ((\cp4|Add17~12_combout\) # (!\cp4|Add18~11\))) # (!\cp4|Add19~12_combout\ & (\cp4|Add17~12_combout\ & !\cp4|Add18~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add19~12_combout\,
	datab => \cp4|Add17~12_combout\,
	datad => VCC,
	cin => \cp4|Add18~11\,
	combout => \cp4|Add18~12_combout\,
	cout => \cp4|Add18~13\);

-- Location: LCCOMB_X17_Y22_N20
\cp4|Add18~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add18~14_combout\ = (\cp4|Add19~14_combout\ & ((\cp4|Add17~14_combout\ & (\cp4|Add18~13\ & VCC)) # (!\cp4|Add17~14_combout\ & (!\cp4|Add18~13\)))) # (!\cp4|Add19~14_combout\ & ((\cp4|Add17~14_combout\ & (!\cp4|Add18~13\)) # (!\cp4|Add17~14_combout\ & 
-- ((\cp4|Add18~13\) # (GND)))))
-- \cp4|Add18~15\ = CARRY((\cp4|Add19~14_combout\ & (!\cp4|Add17~14_combout\ & !\cp4|Add18~13\)) # (!\cp4|Add19~14_combout\ & ((!\cp4|Add18~13\) # (!\cp4|Add17~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add19~14_combout\,
	datab => \cp4|Add17~14_combout\,
	datad => VCC,
	cin => \cp4|Add18~13\,
	combout => \cp4|Add18~14_combout\,
	cout => \cp4|Add18~15\);

-- Location: LCCOMB_X21_Y22_N8
\cp4|Add20~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add20~2_combout\ = (\cp4|Add18~2_combout\ & ((\cp4|Add22~2_combout\ & (\cp4|Add20~1\ & VCC)) # (!\cp4|Add22~2_combout\ & (!\cp4|Add20~1\)))) # (!\cp4|Add18~2_combout\ & ((\cp4|Add22~2_combout\ & (!\cp4|Add20~1\)) # (!\cp4|Add22~2_combout\ & 
-- ((\cp4|Add20~1\) # (GND)))))
-- \cp4|Add20~3\ = CARRY((\cp4|Add18~2_combout\ & (!\cp4|Add22~2_combout\ & !\cp4|Add20~1\)) # (!\cp4|Add18~2_combout\ & ((!\cp4|Add20~1\) # (!\cp4|Add22~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add18~2_combout\,
	datab => \cp4|Add22~2_combout\,
	datad => VCC,
	cin => \cp4|Add20~1\,
	combout => \cp4|Add20~2_combout\,
	cout => \cp4|Add20~3\);

-- Location: LCCOMB_X21_Y22_N12
\cp4|Add20~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add20~6_combout\ = (\cp4|Add18~6_combout\ & ((\cp4|Add22~6_combout\ & (\cp4|Add20~5\ & VCC)) # (!\cp4|Add22~6_combout\ & (!\cp4|Add20~5\)))) # (!\cp4|Add18~6_combout\ & ((\cp4|Add22~6_combout\ & (!\cp4|Add20~5\)) # (!\cp4|Add22~6_combout\ & 
-- ((\cp4|Add20~5\) # (GND)))))
-- \cp4|Add20~7\ = CARRY((\cp4|Add18~6_combout\ & (!\cp4|Add22~6_combout\ & !\cp4|Add20~5\)) # (!\cp4|Add18~6_combout\ & ((!\cp4|Add20~5\) # (!\cp4|Add22~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add18~6_combout\,
	datab => \cp4|Add22~6_combout\,
	datad => VCC,
	cin => \cp4|Add20~5\,
	combout => \cp4|Add20~6_combout\,
	cout => \cp4|Add20~7\);

-- Location: LCCOMB_X21_Y22_N14
\cp4|Add20~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add20~8_combout\ = ((\cp4|Add18~8_combout\ $ (\cp4|Add22~8_combout\ $ (!\cp4|Add20~7\)))) # (GND)
-- \cp4|Add20~9\ = CARRY((\cp4|Add18~8_combout\ & ((\cp4|Add22~8_combout\) # (!\cp4|Add20~7\))) # (!\cp4|Add18~8_combout\ & (\cp4|Add22~8_combout\ & !\cp4|Add20~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add18~8_combout\,
	datab => \cp4|Add22~8_combout\,
	datad => VCC,
	cin => \cp4|Add20~7\,
	combout => \cp4|Add20~8_combout\,
	cout => \cp4|Add20~9\);

-- Location: LCCOMB_X21_Y22_N16
\cp4|Add20~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add20~10_combout\ = (\cp4|Add22~10_combout\ & ((\cp4|Add18~10_combout\ & (\cp4|Add20~9\ & VCC)) # (!\cp4|Add18~10_combout\ & (!\cp4|Add20~9\)))) # (!\cp4|Add22~10_combout\ & ((\cp4|Add18~10_combout\ & (!\cp4|Add20~9\)) # (!\cp4|Add18~10_combout\ & 
-- ((\cp4|Add20~9\) # (GND)))))
-- \cp4|Add20~11\ = CARRY((\cp4|Add22~10_combout\ & (!\cp4|Add18~10_combout\ & !\cp4|Add20~9\)) # (!\cp4|Add22~10_combout\ & ((!\cp4|Add20~9\) # (!\cp4|Add18~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add22~10_combout\,
	datab => \cp4|Add18~10_combout\,
	datad => VCC,
	cin => \cp4|Add20~9\,
	combout => \cp4|Add20~10_combout\,
	cout => \cp4|Add20~11\);

-- Location: LCCOMB_X21_Y22_N18
\cp4|Add20~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add20~12_combout\ = ((\cp4|Add22~12_combout\ $ (\cp4|Add18~12_combout\ $ (!\cp4|Add20~11\)))) # (GND)
-- \cp4|Add20~13\ = CARRY((\cp4|Add22~12_combout\ & ((\cp4|Add18~12_combout\) # (!\cp4|Add20~11\))) # (!\cp4|Add22~12_combout\ & (\cp4|Add18~12_combout\ & !\cp4|Add20~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add22~12_combout\,
	datab => \cp4|Add18~12_combout\,
	datad => VCC,
	cin => \cp4|Add20~11\,
	combout => \cp4|Add20~12_combout\,
	cout => \cp4|Add20~13\);

-- Location: LCCOMB_X21_Y22_N20
\cp4|Add20~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add20~14_combout\ = (\cp4|Add22~14_combout\ & ((\cp4|Add18~14_combout\ & (\cp4|Add20~13\ & VCC)) # (!\cp4|Add18~14_combout\ & (!\cp4|Add20~13\)))) # (!\cp4|Add22~14_combout\ & ((\cp4|Add18~14_combout\ & (!\cp4|Add20~13\)) # (!\cp4|Add18~14_combout\ & 
-- ((\cp4|Add20~13\) # (GND)))))
-- \cp4|Add20~15\ = CARRY((\cp4|Add22~14_combout\ & (!\cp4|Add18~14_combout\ & !\cp4|Add20~13\)) # (!\cp4|Add22~14_combout\ & ((!\cp4|Add20~13\) # (!\cp4|Add18~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add22~14_combout\,
	datab => \cp4|Add18~14_combout\,
	datad => VCC,
	cin => \cp4|Add20~13\,
	combout => \cp4|Add20~14_combout\,
	cout => \cp4|Add20~15\);

-- Location: LCCOMB_X21_Y22_N26
\cp4|Add20~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add20~20_combout\ = ((\cp4|Add18~20_combout\ $ (\cp4|Add22~20_combout\ $ (!\cp4|Add20~19\)))) # (GND)
-- \cp4|Add20~21\ = CARRY((\cp4|Add18~20_combout\ & ((\cp4|Add22~20_combout\) # (!\cp4|Add20~19\))) # (!\cp4|Add18~20_combout\ & (\cp4|Add22~20_combout\ & !\cp4|Add20~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add18~20_combout\,
	datab => \cp4|Add22~20_combout\,
	datad => VCC,
	cin => \cp4|Add20~19\,
	combout => \cp4|Add20~20_combout\,
	cout => \cp4|Add20~21\);

-- Location: LCCOMB_X15_Y20_N4
\cp4|fifo[23][9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|fifo[23][9]~feeder_combout\ = \cp4|fifo[22][9]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cp4|fifo[22][9]~q\,
	combout => \cp4|fifo[23][9]~feeder_combout\);

-- Location: FF_X15_Y20_N5
\cp4|fifo[23][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp4|fifo[23][9]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[23][9]~q\);

-- Location: LCCOMB_X14_Y20_N4
\cp4|fifo[24][9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|fifo[24][9]~feeder_combout\ = \cp4|fifo[23][9]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cp4|fifo[23][9]~q\,
	combout => \cp4|fifo[24][9]~feeder_combout\);

-- Location: FF_X14_Y20_N5
\cp4|fifo[24][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp4|fifo[24][9]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[24][9]~q\);

-- Location: LCCOMB_X10_Y20_N6
\cp4|fifo[25][9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|fifo[25][9]~feeder_combout\ = \cp4|fifo[24][9]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cp4|fifo[24][9]~q\,
	combout => \cp4|fifo[25][9]~feeder_combout\);

-- Location: FF_X10_Y20_N7
\cp4|fifo[25][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp4|fifo[25][9]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[25][9]~q\);

-- Location: LCCOMB_X10_Y21_N0
\cp4|fifo[26][9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|fifo[26][9]~feeder_combout\ = \cp4|fifo[25][9]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cp4|fifo[25][9]~q\,
	combout => \cp4|fifo[26][9]~feeder_combout\);

-- Location: FF_X10_Y21_N1
\cp4|fifo[26][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp4|fifo[26][9]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[26][9]~q\);

-- Location: FF_X11_Y21_N19
\cp4|fifo[27][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[26][9]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[27][9]~q\);

-- Location: FF_X12_Y21_N25
\cp4|fifo[28][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[27][9]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[28][9]~q\);

-- Location: LCCOMB_X12_Y21_N4
\cp4|fifo[29][9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|fifo[29][9]~feeder_combout\ = \cp4|fifo[28][9]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cp4|fifo[28][9]~q\,
	combout => \cp4|fifo[29][9]~feeder_combout\);

-- Location: FF_X12_Y21_N5
\cp4|fifo[29][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp4|fifo[29][9]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[29][9]~q\);

-- Location: LCCOMB_X15_Y21_N30
\cp4|fifo[30][9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|fifo[30][9]~feeder_combout\ = \cp4|fifo[29][9]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cp4|fifo[29][9]~q\,
	combout => \cp4|fifo[30][9]~feeder_combout\);

-- Location: FF_X15_Y21_N31
\cp4|fifo[30][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp4|fifo[30][9]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[30][9]~q\);

-- Location: FF_X15_Y21_N17
\cp4|fifo[31][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[30][9]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[31][9]~q\);

-- Location: FF_X14_Y20_N9
\cp4|fifo[23][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[22][8]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[23][8]~q\);

-- Location: FF_X14_Y20_N25
\cp4|fifo[24][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[23][8]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[24][8]~q\);

-- Location: LCCOMB_X14_Y20_N30
\cp4|fifo[25][8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|fifo[25][8]~feeder_combout\ = \cp4|fifo[24][8]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cp4|fifo[24][8]~q\,
	combout => \cp4|fifo[25][8]~feeder_combout\);

-- Location: FF_X14_Y20_N31
\cp4|fifo[25][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp4|fifo[25][8]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[25][8]~q\);

-- Location: LCCOMB_X12_Y20_N0
\cp4|fifo[26][8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|fifo[26][8]~feeder_combout\ = \cp4|fifo[25][8]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cp4|fifo[25][8]~q\,
	combout => \cp4|fifo[26][8]~feeder_combout\);

-- Location: FF_X12_Y20_N1
\cp4|fifo[26][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp4|fifo[26][8]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[26][8]~q\);

-- Location: FF_X12_Y21_N19
\cp4|fifo[27][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[26][8]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[27][8]~q\);

-- Location: FF_X12_Y21_N23
\cp4|fifo[28][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[27][8]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[28][8]~q\);

-- Location: LCCOMB_X12_Y21_N28
\cp4|fifo[29][8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|fifo[29][8]~feeder_combout\ = \cp4|fifo[28][8]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cp4|fifo[28][8]~q\,
	combout => \cp4|fifo[29][8]~feeder_combout\);

-- Location: FF_X12_Y21_N29
\cp4|fifo[29][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp4|fifo[29][8]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[29][8]~q\);

-- Location: LCCOMB_X15_Y21_N26
\cp4|fifo[30][8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|fifo[30][8]~feeder_combout\ = \cp4|fifo[29][8]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cp4|fifo[29][8]~q\,
	combout => \cp4|fifo[30][8]~feeder_combout\);

-- Location: FF_X15_Y21_N27
\cp4|fifo[30][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp4|fifo[30][8]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[30][8]~q\);

-- Location: FF_X15_Y21_N7
\cp4|fifo[31][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[30][8]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[31][8]~q\);

-- Location: LCCOMB_X14_Y20_N0
\cp4|fifo[24][7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|fifo[24][7]~feeder_combout\ = \cp4|fifo[23][7]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cp4|fifo[23][7]~q\,
	combout => \cp4|fifo[24][7]~feeder_combout\);

-- Location: FF_X14_Y20_N1
\cp4|fifo[24][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp4|fifo[24][7]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[24][7]~q\);

-- Location: LCCOMB_X11_Y21_N30
\cp4|fifo[25][7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|fifo[25][7]~feeder_combout\ = \cp4|fifo[24][7]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cp4|fifo[24][7]~q\,
	combout => \cp4|fifo[25][7]~feeder_combout\);

-- Location: FF_X11_Y21_N31
\cp4|fifo[25][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp4|fifo[25][7]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[25][7]~q\);

-- Location: FF_X11_Y21_N15
\cp4|fifo[26][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[25][7]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[26][7]~q\);

-- Location: FF_X11_Y21_N9
\cp4|fifo[27][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[26][7]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[27][7]~q\);

-- Location: FF_X12_Y21_N17
\cp4|fifo[28][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[27][7]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[28][7]~q\);

-- Location: FF_X12_Y21_N27
\cp4|fifo[29][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[28][7]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[29][7]~q\);

-- Location: LCCOMB_X14_Y21_N2
\cp4|fifo[30][7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|fifo[30][7]~feeder_combout\ = \cp4|fifo[29][7]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cp4|fifo[29][7]~q\,
	combout => \cp4|fifo[30][7]~feeder_combout\);

-- Location: FF_X14_Y21_N3
\cp4|fifo[30][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp4|fifo[30][7]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[30][7]~q\);

-- Location: FF_X14_Y22_N13
\cp4|fifo[31][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[30][7]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[31][7]~q\);

-- Location: LCCOMB_X11_Y20_N2
\cp4|fifo[25][6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|fifo[25][6]~feeder_combout\ = \cp4|fifo[24][6]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cp4|fifo[24][6]~q\,
	combout => \cp4|fifo[25][6]~feeder_combout\);

-- Location: FF_X11_Y20_N3
\cp4|fifo[25][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp4|fifo[25][6]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[25][6]~q\);

-- Location: FF_X11_Y21_N1
\cp4|fifo[26][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[25][6]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[26][6]~q\);

-- Location: LCCOMB_X10_Y21_N26
\cp4|fifo[27][6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|fifo[27][6]~feeder_combout\ = \cp4|fifo[26][6]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cp4|fifo[26][6]~q\,
	combout => \cp4|fifo[27][6]~feeder_combout\);

-- Location: FF_X10_Y21_N27
\cp4|fifo[27][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp4|fifo[27][6]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[27][6]~q\);

-- Location: FF_X11_Y21_N3
\cp4|fifo[28][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[27][6]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[28][6]~q\);

-- Location: LCCOMB_X11_Y21_N28
\cp4|fifo[29][6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|fifo[29][6]~feeder_combout\ = \cp4|fifo[28][6]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cp4|fifo[28][6]~q\,
	combout => \cp4|fifo[29][6]~feeder_combout\);

-- Location: FF_X11_Y21_N29
\cp4|fifo[29][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp4|fifo[29][6]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[29][6]~q\);

-- Location: LCCOMB_X14_Y21_N0
\cp4|fifo[30][6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|fifo[30][6]~feeder_combout\ = \cp4|fifo[29][6]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cp4|fifo[29][6]~q\,
	combout => \cp4|fifo[30][6]~feeder_combout\);

-- Location: FF_X14_Y21_N1
\cp4|fifo[30][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp4|fifo[30][6]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[30][6]~q\);

-- Location: LCCOMB_X12_Y20_N22
\cp4|fifo[25][5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|fifo[25][5]~feeder_combout\ = \cp4|fifo[24][5]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cp4|fifo[24][5]~q\,
	combout => \cp4|fifo[25][5]~feeder_combout\);

-- Location: FF_X12_Y20_N23
\cp4|fifo[25][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp4|fifo[25][5]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[25][5]~q\);

-- Location: FF_X11_Y21_N11
\cp4|fifo[26][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[25][5]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[26][5]~q\);

-- Location: FF_X11_Y21_N17
\cp4|fifo[27][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[26][5]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[27][5]~q\);

-- Location: LCCOMB_X12_Y21_N2
\cp4|fifo[28][5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|fifo[28][5]~feeder_combout\ = \cp4|fifo[27][5]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cp4|fifo[27][5]~q\,
	combout => \cp4|fifo[28][5]~feeder_combout\);

-- Location: FF_X12_Y21_N3
\cp4|fifo[28][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp4|fifo[28][5]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[28][5]~q\);

-- Location: LCCOMB_X14_Y22_N30
\cp4|fifo[29][5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|fifo[29][5]~feeder_combout\ = \cp4|fifo[28][5]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cp4|fifo[28][5]~q\,
	combout => \cp4|fifo[29][5]~feeder_combout\);

-- Location: FF_X14_Y22_N31
\cp4|fifo[29][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp4|fifo[29][5]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[29][5]~q\);

-- Location: FF_X14_Y22_N17
\cp4|fifo[30][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[29][5]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[30][5]~q\);

-- Location: FF_X14_Y21_N31
\cp4|fifo[26][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[25][4]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[26][4]~q\);

-- Location: FF_X11_Y21_N21
\cp4|fifo[27][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[26][4]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[27][4]~q\);

-- Location: LCCOMB_X11_Y21_N26
\cp4|fifo[28][4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|fifo[28][4]~feeder_combout\ = \cp4|fifo[27][4]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cp4|fifo[27][4]~q\,
	combout => \cp4|fifo[28][4]~feeder_combout\);

-- Location: FF_X11_Y21_N27
\cp4|fifo[28][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp4|fifo[28][4]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[28][4]~q\);

-- Location: FF_X12_Y21_N15
\cp4|fifo[29][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[28][4]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[29][4]~q\);

-- Location: LCCOMB_X12_Y21_N30
\cp4|fifo[30][4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|fifo[30][4]~feeder_combout\ = \cp4|fifo[29][4]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cp4|fifo[29][4]~q\,
	combout => \cp4|fifo[30][4]~feeder_combout\);

-- Location: FF_X12_Y21_N31
\cp4|fifo[30][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp4|fifo[30][4]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[30][4]~q\);

-- Location: LCCOMB_X15_Y21_N28
\cp4|fifo[31][4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|fifo[31][4]~feeder_combout\ = \cp4|fifo[30][4]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cp4|fifo[30][4]~q\,
	combout => \cp4|fifo[31][4]~feeder_combout\);

-- Location: FF_X15_Y21_N29
\cp4|fifo[31][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp4|fifo[31][4]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[31][4]~q\);

-- Location: FF_X11_Y21_N7
\cp4|fifo[26][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[25][3]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[26][3]~q\);

-- Location: FF_X11_Y21_N5
\cp4|fifo[27][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[26][3]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[27][3]~q\);

-- Location: FF_X12_Y21_N21
\cp4|fifo[28][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[27][3]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[28][3]~q\);

-- Location: LCCOMB_X11_Y21_N24
\cp4|fifo[29][3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|fifo[29][3]~feeder_combout\ = \cp4|fifo[28][3]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cp4|fifo[28][3]~q\,
	combout => \cp4|fifo[29][3]~feeder_combout\);

-- Location: FF_X11_Y21_N25
\cp4|fifo[29][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp4|fifo[29][3]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[29][3]~q\);

-- Location: LCCOMB_X14_Y21_N6
\cp4|fifo[30][3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|fifo[30][3]~feeder_combout\ = \cp4|fifo[29][3]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cp4|fifo[29][3]~q\,
	combout => \cp4|fifo[30][3]~feeder_combout\);

-- Location: FF_X14_Y21_N7
\cp4|fifo[30][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp4|fifo[30][3]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[30][3]~q\);

-- Location: LCCOMB_X10_Y21_N4
\cp4|fifo[26][2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|fifo[26][2]~feeder_combout\ = \cp4|fifo[25][2]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cp4|fifo[25][2]~q\,
	combout => \cp4|fifo[26][2]~feeder_combout\);

-- Location: FF_X10_Y21_N5
\cp4|fifo[26][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp4|fifo[26][2]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[26][2]~q\);

-- Location: FF_X11_Y21_N13
\cp4|fifo[27][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[26][2]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[27][2]~q\);

-- Location: FF_X12_Y21_N11
\cp4|fifo[28][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[27][2]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[28][2]~q\);

-- Location: LCCOMB_X12_Y21_N0
\cp4|fifo[29][2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|fifo[29][2]~feeder_combout\ = \cp4|fifo[28][2]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cp4|fifo[28][2]~q\,
	combout => \cp4|fifo[29][2]~feeder_combout\);

-- Location: FF_X12_Y21_N1
\cp4|fifo[29][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp4|fifo[29][2]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[29][2]~q\);

-- Location: FF_X14_Y22_N21
\cp4|fifo[30][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[29][2]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[30][2]~q\);

-- Location: FF_X14_Y22_N25
\cp4|fifo[31][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[30][2]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[31][2]~q\);

-- Location: FF_X14_Y20_N15
\cp4|fifo[25][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[24][1]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[25][1]~q\);

-- Location: LCCOMB_X11_Y20_N20
\cp4|fifo[26][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|fifo[26][1]~feeder_combout\ = \cp4|fifo[25][1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cp4|fifo[25][1]~q\,
	combout => \cp4|fifo[26][1]~feeder_combout\);

-- Location: FF_X11_Y20_N21
\cp4|fifo[26][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp4|fifo[26][1]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[26][1]~q\);

-- Location: FF_X12_Y21_N13
\cp4|fifo[27][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[26][1]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[27][1]~q\);

-- Location: FF_X12_Y21_N9
\cp4|fifo[28][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[27][1]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[28][1]~q\);

-- Location: LCCOMB_X12_Y22_N20
\cp4|fifo[29][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|fifo[29][1]~feeder_combout\ = \cp4|fifo[28][1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cp4|fifo[28][1]~q\,
	combout => \cp4|fifo[29][1]~feeder_combout\);

-- Location: FF_X12_Y22_N21
\cp4|fifo[29][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp4|fifo[29][1]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[29][1]~q\);

-- Location: LCCOMB_X12_Y22_N30
\cp4|fifo[30][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|fifo[30][1]~feeder_combout\ = \cp4|fifo[29][1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cp4|fifo[29][1]~q\,
	combout => \cp4|fifo[30][1]~feeder_combout\);

-- Location: FF_X12_Y22_N31
\cp4|fifo[30][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp4|fifo[30][1]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[30][1]~q\);

-- Location: FF_X14_Y22_N11
\cp4|fifo[31][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[30][1]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[31][1]~q\);

-- Location: FF_X14_Y20_N13
\cp4|fifo[25][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[24][0]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[25][0]~q\);

-- Location: FF_X14_Y21_N23
\cp4|fifo[26][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[25][0]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[26][0]~q\);

-- Location: LCCOMB_X11_Y21_N22
\cp4|fifo[27][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|fifo[27][0]~feeder_combout\ = \cp4|fifo[26][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cp4|fifo[26][0]~q\,
	combout => \cp4|fifo[27][0]~feeder_combout\);

-- Location: FF_X11_Y21_N23
\cp4|fifo[27][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp4|fifo[27][0]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[27][0]~q\);

-- Location: FF_X12_Y21_N7
\cp4|fifo[28][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[27][0]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[28][0]~q\);

-- Location: LCCOMB_X14_Y21_N4
\cp4|fifo[29][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|fifo[29][0]~feeder_combout\ = \cp4|fifo[28][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cp4|fifo[28][0]~q\,
	combout => \cp4|fifo[29][0]~feeder_combout\);

-- Location: FF_X14_Y21_N5
\cp4|fifo[29][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp4|fifo[29][0]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[29][0]~q\);

-- Location: LCCOMB_X14_Y22_N6
\cp4|fifo[30][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|fifo[30][0]~feeder_combout\ = \cp4|fifo[29][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cp4|fifo[29][0]~q\,
	combout => \cp4|fifo[30][0]~feeder_combout\);

-- Location: FF_X14_Y22_N7
\cp4|fifo[30][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp4|fifo[30][0]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[30][0]~q\);

-- Location: FF_X14_Y22_N9
\cp4|fifo[31][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	asdata => \cp4|fifo[30][0]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|fifo[31][0]~q\);

-- Location: LCCOMB_X14_Y22_N10
\cp4|Add29~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add29~2_combout\ = (\cp4|fifo[30][1]~q\ & ((\cp4|fifo[31][1]~q\ & (\cp4|Add29~1\ & VCC)) # (!\cp4|fifo[31][1]~q\ & (!\cp4|Add29~1\)))) # (!\cp4|fifo[30][1]~q\ & ((\cp4|fifo[31][1]~q\ & (!\cp4|Add29~1\)) # (!\cp4|fifo[31][1]~q\ & ((\cp4|Add29~1\) # 
-- (GND)))))
-- \cp4|Add29~3\ = CARRY((\cp4|fifo[30][1]~q\ & (!\cp4|fifo[31][1]~q\ & !\cp4|Add29~1\)) # (!\cp4|fifo[30][1]~q\ & ((!\cp4|Add29~1\) # (!\cp4|fifo[31][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[30][1]~q\,
	datab => \cp4|fifo[31][1]~q\,
	datad => VCC,
	cin => \cp4|Add29~1\,
	combout => \cp4|Add29~2_combout\,
	cout => \cp4|Add29~3\);

-- Location: LCCOMB_X14_Y22_N14
\cp4|Add29~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add29~6_combout\ = (\cp4|fifo[31][3]~q\ & ((\cp4|fifo[30][3]~q\ & (\cp4|Add29~5\ & VCC)) # (!\cp4|fifo[30][3]~q\ & (!\cp4|Add29~5\)))) # (!\cp4|fifo[31][3]~q\ & ((\cp4|fifo[30][3]~q\ & (!\cp4|Add29~5\)) # (!\cp4|fifo[30][3]~q\ & ((\cp4|Add29~5\) # 
-- (GND)))))
-- \cp4|Add29~7\ = CARRY((\cp4|fifo[31][3]~q\ & (!\cp4|fifo[30][3]~q\ & !\cp4|Add29~5\)) # (!\cp4|fifo[31][3]~q\ & ((!\cp4|Add29~5\) # (!\cp4|fifo[30][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[31][3]~q\,
	datab => \cp4|fifo[30][3]~q\,
	datad => VCC,
	cin => \cp4|Add29~5\,
	combout => \cp4|Add29~6_combout\,
	cout => \cp4|Add29~7\);

-- Location: LCCOMB_X14_Y22_N16
\cp4|Add29~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add29~8_combout\ = ((\cp4|fifo[30][4]~q\ $ (\cp4|fifo[31][4]~q\ $ (!\cp4|Add29~7\)))) # (GND)
-- \cp4|Add29~9\ = CARRY((\cp4|fifo[30][4]~q\ & ((\cp4|fifo[31][4]~q\) # (!\cp4|Add29~7\))) # (!\cp4|fifo[30][4]~q\ & (\cp4|fifo[31][4]~q\ & !\cp4|Add29~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[30][4]~q\,
	datab => \cp4|fifo[31][4]~q\,
	datad => VCC,
	cin => \cp4|Add29~7\,
	combout => \cp4|Add29~8_combout\,
	cout => \cp4|Add29~9\);

-- Location: LCCOMB_X14_Y22_N24
\cp4|Add29~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add29~16_combout\ = ((\cp4|fifo[30][8]~q\ $ (\cp4|fifo[31][8]~q\ $ (!\cp4|Add29~15\)))) # (GND)
-- \cp4|Add29~17\ = CARRY((\cp4|fifo[30][8]~q\ & ((\cp4|fifo[31][8]~q\) # (!\cp4|Add29~15\))) # (!\cp4|fifo[30][8]~q\ & (\cp4|fifo[31][8]~q\ & !\cp4|Add29~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[30][8]~q\,
	datab => \cp4|fifo[31][8]~q\,
	datad => VCC,
	cin => \cp4|Add29~15\,
	combout => \cp4|Add29~16_combout\,
	cout => \cp4|Add29~17\);

-- Location: LCCOMB_X12_Y21_N10
\cp4|Add27~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add27~4_combout\ = ((\cp4|fifo[28][2]~q\ $ (\cp4|fifo[29][2]~q\ $ (!\cp4|Add27~3\)))) # (GND)
-- \cp4|Add27~5\ = CARRY((\cp4|fifo[28][2]~q\ & ((\cp4|fifo[29][2]~q\) # (!\cp4|Add27~3\))) # (!\cp4|fifo[28][2]~q\ & (\cp4|fifo[29][2]~q\ & !\cp4|Add27~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[28][2]~q\,
	datab => \cp4|fifo[29][2]~q\,
	datad => VCC,
	cin => \cp4|Add27~3\,
	combout => \cp4|Add27~4_combout\,
	cout => \cp4|Add27~5\);

-- Location: LCCOMB_X12_Y21_N12
\cp4|Add27~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add27~6_combout\ = (\cp4|fifo[28][3]~q\ & ((\cp4|fifo[29][3]~q\ & (\cp4|Add27~5\ & VCC)) # (!\cp4|fifo[29][3]~q\ & (!\cp4|Add27~5\)))) # (!\cp4|fifo[28][3]~q\ & ((\cp4|fifo[29][3]~q\ & (!\cp4|Add27~5\)) # (!\cp4|fifo[29][3]~q\ & ((\cp4|Add27~5\) # 
-- (GND)))))
-- \cp4|Add27~7\ = CARRY((\cp4|fifo[28][3]~q\ & (!\cp4|fifo[29][3]~q\ & !\cp4|Add27~5\)) # (!\cp4|fifo[28][3]~q\ & ((!\cp4|Add27~5\) # (!\cp4|fifo[29][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[28][3]~q\,
	datab => \cp4|fifo[29][3]~q\,
	datad => VCC,
	cin => \cp4|Add27~5\,
	combout => \cp4|Add27~6_combout\,
	cout => \cp4|Add27~7\);

-- Location: LCCOMB_X12_Y21_N14
\cp4|Add27~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add27~8_combout\ = ((\cp4|fifo[28][4]~q\ $ (\cp4|fifo[29][4]~q\ $ (!\cp4|Add27~7\)))) # (GND)
-- \cp4|Add27~9\ = CARRY((\cp4|fifo[28][4]~q\ & ((\cp4|fifo[29][4]~q\) # (!\cp4|Add27~7\))) # (!\cp4|fifo[28][4]~q\ & (\cp4|fifo[29][4]~q\ & !\cp4|Add27~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[28][4]~q\,
	datab => \cp4|fifo[29][4]~q\,
	datad => VCC,
	cin => \cp4|Add27~7\,
	combout => \cp4|Add27~8_combout\,
	cout => \cp4|Add27~9\);

-- Location: LCCOMB_X11_Y21_N0
\cp4|Add25~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add25~0_combout\ = (\cp4|fifo[27][0]~q\ & (\cp4|fifo[26][0]~q\ $ (VCC))) # (!\cp4|fifo[27][0]~q\ & (\cp4|fifo[26][0]~q\ & VCC))
-- \cp4|Add25~1\ = CARRY((\cp4|fifo[27][0]~q\ & \cp4|fifo[26][0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[27][0]~q\,
	datab => \cp4|fifo[26][0]~q\,
	datad => VCC,
	combout => \cp4|Add25~0_combout\,
	cout => \cp4|Add25~1\);

-- Location: LCCOMB_X11_Y21_N2
\cp4|Add25~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add25~2_combout\ = (\cp4|fifo[27][1]~q\ & ((\cp4|fifo[26][1]~q\ & (\cp4|Add25~1\ & VCC)) # (!\cp4|fifo[26][1]~q\ & (!\cp4|Add25~1\)))) # (!\cp4|fifo[27][1]~q\ & ((\cp4|fifo[26][1]~q\ & (!\cp4|Add25~1\)) # (!\cp4|fifo[26][1]~q\ & ((\cp4|Add25~1\) # 
-- (GND)))))
-- \cp4|Add25~3\ = CARRY((\cp4|fifo[27][1]~q\ & (!\cp4|fifo[26][1]~q\ & !\cp4|Add25~1\)) # (!\cp4|fifo[27][1]~q\ & ((!\cp4|Add25~1\) # (!\cp4|fifo[26][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[27][1]~q\,
	datab => \cp4|fifo[26][1]~q\,
	datad => VCC,
	cin => \cp4|Add25~1\,
	combout => \cp4|Add25~2_combout\,
	cout => \cp4|Add25~3\);

-- Location: LCCOMB_X11_Y21_N10
\cp4|Add25~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add25~10_combout\ = (\cp4|fifo[26][5]~q\ & ((\cp4|fifo[27][5]~q\ & (\cp4|Add25~9\ & VCC)) # (!\cp4|fifo[27][5]~q\ & (!\cp4|Add25~9\)))) # (!\cp4|fifo[26][5]~q\ & ((\cp4|fifo[27][5]~q\ & (!\cp4|Add25~9\)) # (!\cp4|fifo[27][5]~q\ & ((\cp4|Add25~9\) # 
-- (GND)))))
-- \cp4|Add25~11\ = CARRY((\cp4|fifo[26][5]~q\ & (!\cp4|fifo[27][5]~q\ & !\cp4|Add25~9\)) # (!\cp4|fifo[26][5]~q\ & ((!\cp4|Add25~9\) # (!\cp4|fifo[27][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|fifo[26][5]~q\,
	datab => \cp4|fifo[27][5]~q\,
	datad => VCC,
	cin => \cp4|Add25~9\,
	combout => \cp4|Add25~10_combout\,
	cout => \cp4|Add25~11\);

-- Location: LCCOMB_X15_Y21_N0
\cp4|Add26~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add26~0_combout\ = (\cp4|Add27~0_combout\ & (\cp4|Add25~0_combout\ $ (VCC))) # (!\cp4|Add27~0_combout\ & (\cp4|Add25~0_combout\ & VCC))
-- \cp4|Add26~1\ = CARRY((\cp4|Add27~0_combout\ & \cp4|Add25~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add27~0_combout\,
	datab => \cp4|Add25~0_combout\,
	datad => VCC,
	combout => \cp4|Add26~0_combout\,
	cout => \cp4|Add26~1\);

-- Location: LCCOMB_X15_Y21_N4
\cp4|Add26~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add26~4_combout\ = ((\cp4|Add25~4_combout\ $ (\cp4|Add27~4_combout\ $ (!\cp4|Add26~3\)))) # (GND)
-- \cp4|Add26~5\ = CARRY((\cp4|Add25~4_combout\ & ((\cp4|Add27~4_combout\) # (!\cp4|Add26~3\))) # (!\cp4|Add25~4_combout\ & (\cp4|Add27~4_combout\ & !\cp4|Add26~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add25~4_combout\,
	datab => \cp4|Add27~4_combout\,
	datad => VCC,
	cin => \cp4|Add26~3\,
	combout => \cp4|Add26~4_combout\,
	cout => \cp4|Add26~5\);

-- Location: LCCOMB_X15_Y21_N10
\cp4|Add26~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add26~10_combout\ = (\cp4|Add27~10_combout\ & ((\cp4|Add25~10_combout\ & (\cp4|Add26~9\ & VCC)) # (!\cp4|Add25~10_combout\ & (!\cp4|Add26~9\)))) # (!\cp4|Add27~10_combout\ & ((\cp4|Add25~10_combout\ & (!\cp4|Add26~9\)) # (!\cp4|Add25~10_combout\ & 
-- ((\cp4|Add26~9\) # (GND)))))
-- \cp4|Add26~11\ = CARRY((\cp4|Add27~10_combout\ & (!\cp4|Add25~10_combout\ & !\cp4|Add26~9\)) # (!\cp4|Add27~10_combout\ & ((!\cp4|Add26~9\) # (!\cp4|Add25~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add27~10_combout\,
	datab => \cp4|Add25~10_combout\,
	datad => VCC,
	cin => \cp4|Add26~9\,
	combout => \cp4|Add26~10_combout\,
	cout => \cp4|Add26~11\);

-- Location: LCCOMB_X15_Y21_N12
\cp4|Add26~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add26~12_combout\ = ((\cp4|Add27~12_combout\ $ (\cp4|Add25~12_combout\ $ (!\cp4|Add26~11\)))) # (GND)
-- \cp4|Add26~13\ = CARRY((\cp4|Add27~12_combout\ & ((\cp4|Add25~12_combout\) # (!\cp4|Add26~11\))) # (!\cp4|Add27~12_combout\ & (\cp4|Add25~12_combout\ & !\cp4|Add26~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add27~12_combout\,
	datab => \cp4|Add25~12_combout\,
	datad => VCC,
	cin => \cp4|Add26~11\,
	combout => \cp4|Add26~12_combout\,
	cout => \cp4|Add26~13\);

-- Location: LCCOMB_X19_Y22_N2
\cp4|Add28~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add28~0_combout\ = (\cp4|Add29~0_combout\ & (\cp4|Add26~0_combout\ $ (VCC))) # (!\cp4|Add29~0_combout\ & (\cp4|Add26~0_combout\ & VCC))
-- \cp4|Add28~1\ = CARRY((\cp4|Add29~0_combout\ & \cp4|Add26~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add29~0_combout\,
	datab => \cp4|Add26~0_combout\,
	datad => VCC,
	combout => \cp4|Add28~0_combout\,
	cout => \cp4|Add28~1\);

-- Location: LCCOMB_X19_Y22_N6
\cp4|Add28~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add28~4_combout\ = ((\cp4|Add29~4_combout\ $ (\cp4|Add26~4_combout\ $ (!\cp4|Add28~3\)))) # (GND)
-- \cp4|Add28~5\ = CARRY((\cp4|Add29~4_combout\ & ((\cp4|Add26~4_combout\) # (!\cp4|Add28~3\))) # (!\cp4|Add29~4_combout\ & (\cp4|Add26~4_combout\ & !\cp4|Add28~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add29~4_combout\,
	datab => \cp4|Add26~4_combout\,
	datad => VCC,
	cin => \cp4|Add28~3\,
	combout => \cp4|Add28~4_combout\,
	cout => \cp4|Add28~5\);

-- Location: LCCOMB_X19_Y22_N18
\cp4|Add28~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add28~16_combout\ = ((\cp4|Add26~16_combout\ $ (\cp4|Add29~16_combout\ $ (!\cp4|Add28~15\)))) # (GND)
-- \cp4|Add28~17\ = CARRY((\cp4|Add26~16_combout\ & ((\cp4|Add29~16_combout\) # (!\cp4|Add28~15\))) # (!\cp4|Add26~16_combout\ & (\cp4|Add29~16_combout\ & !\cp4|Add28~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add26~16_combout\,
	datab => \cp4|Add29~16_combout\,
	datad => VCC,
	cin => \cp4|Add28~15\,
	combout => \cp4|Add28~16_combout\,
	cout => \cp4|Add28~17\);

-- Location: LCCOMB_X20_Y22_N2
\cp4|Add24~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add24~2_combout\ = (\cp4|Add28~2_combout\ & ((\cp4|Add20~2_combout\ & (\cp4|Add24~1\ & VCC)) # (!\cp4|Add20~2_combout\ & (!\cp4|Add24~1\)))) # (!\cp4|Add28~2_combout\ & ((\cp4|Add20~2_combout\ & (!\cp4|Add24~1\)) # (!\cp4|Add20~2_combout\ & 
-- ((\cp4|Add24~1\) # (GND)))))
-- \cp4|Add24~3\ = CARRY((\cp4|Add28~2_combout\ & (!\cp4|Add20~2_combout\ & !\cp4|Add24~1\)) # (!\cp4|Add28~2_combout\ & ((!\cp4|Add24~1\) # (!\cp4|Add20~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add28~2_combout\,
	datab => \cp4|Add20~2_combout\,
	datad => VCC,
	cin => \cp4|Add24~1\,
	combout => \cp4|Add24~2_combout\,
	cout => \cp4|Add24~3\);

-- Location: LCCOMB_X20_Y22_N4
\cp4|Add24~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add24~4_combout\ = ((\cp4|Add20~4_combout\ $ (\cp4|Add28~4_combout\ $ (!\cp4|Add24~3\)))) # (GND)
-- \cp4|Add24~5\ = CARRY((\cp4|Add20~4_combout\ & ((\cp4|Add28~4_combout\) # (!\cp4|Add24~3\))) # (!\cp4|Add20~4_combout\ & (\cp4|Add28~4_combout\ & !\cp4|Add24~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add20~4_combout\,
	datab => \cp4|Add28~4_combout\,
	datad => VCC,
	cin => \cp4|Add24~3\,
	combout => \cp4|Add24~4_combout\,
	cout => \cp4|Add24~5\);

-- Location: LCCOMB_X20_Y22_N20
\cp4|Add24~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add24~20_combout\ = ((\cp4|Add28~20_combout\ $ (\cp4|Add20~20_combout\ $ (!\cp4|Add24~19\)))) # (GND)
-- \cp4|Add24~21\ = CARRY((\cp4|Add28~20_combout\ & ((\cp4|Add20~20_combout\) # (!\cp4|Add24~19\))) # (!\cp4|Add28~20_combout\ & (\cp4|Add20~20_combout\ & !\cp4|Add24~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add28~20_combout\,
	datab => \cp4|Add20~20_combout\,
	datad => VCC,
	cin => \cp4|Add24~19\,
	combout => \cp4|Add24~20_combout\,
	cout => \cp4|Add24~21\);

-- Location: LCCOMB_X20_Y20_N0
\cp4|Add30~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add30~1_cout\ = CARRY((\cp4|Add24~0_combout\ & \cp4|Add16~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add24~0_combout\,
	datab => \cp4|Add16~0_combout\,
	datad => VCC,
	cout => \cp4|Add30~1_cout\);

-- Location: LCCOMB_X20_Y20_N2
\cp4|Add30~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add30~3_cout\ = CARRY((\cp4|Add16~2_combout\ & (!\cp4|Add24~2_combout\ & !\cp4|Add30~1_cout\)) # (!\cp4|Add16~2_combout\ & ((!\cp4|Add30~1_cout\) # (!\cp4|Add24~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add16~2_combout\,
	datab => \cp4|Add24~2_combout\,
	datad => VCC,
	cin => \cp4|Add30~1_cout\,
	cout => \cp4|Add30~3_cout\);

-- Location: LCCOMB_X20_Y20_N4
\cp4|Add30~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add30~5_cout\ = CARRY((\cp4|Add16~4_combout\ & ((\cp4|Add24~4_combout\) # (!\cp4|Add30~3_cout\))) # (!\cp4|Add16~4_combout\ & (\cp4|Add24~4_combout\ & !\cp4|Add30~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add16~4_combout\,
	datab => \cp4|Add24~4_combout\,
	datad => VCC,
	cin => \cp4|Add30~3_cout\,
	cout => \cp4|Add30~5_cout\);

-- Location: LCCOMB_X20_Y20_N6
\cp4|Add30~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add30~7_cout\ = CARRY((\cp4|Add24~6_combout\ & (!\cp4|Add16~6_combout\ & !\cp4|Add30~5_cout\)) # (!\cp4|Add24~6_combout\ & ((!\cp4|Add30~5_cout\) # (!\cp4|Add16~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add24~6_combout\,
	datab => \cp4|Add16~6_combout\,
	datad => VCC,
	cin => \cp4|Add30~5_cout\,
	cout => \cp4|Add30~7_cout\);

-- Location: LCCOMB_X20_Y20_N8
\cp4|Add30~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add30~9_cout\ = CARRY((\cp4|Add24~8_combout\ & ((\cp4|Add16~8_combout\) # (!\cp4|Add30~7_cout\))) # (!\cp4|Add24~8_combout\ & (\cp4|Add16~8_combout\ & !\cp4|Add30~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add24~8_combout\,
	datab => \cp4|Add16~8_combout\,
	datad => VCC,
	cin => \cp4|Add30~7_cout\,
	cout => \cp4|Add30~9_cout\);

-- Location: LCCOMB_X20_Y20_N24
\cp4|dato_out[7]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|dato_out[7]~14_combout\ = ((\cp4|Add24~24_combout\ $ (\cp4|Add16~24_combout\ $ (!\cp4|dato_out[6]~13\)))) # (GND)
-- \cp4|dato_out[7]~15\ = CARRY((\cp4|Add24~24_combout\ & ((\cp4|Add16~24_combout\) # (!\cp4|dato_out[6]~13\))) # (!\cp4|Add24~24_combout\ & (\cp4|Add16~24_combout\ & !\cp4|dato_out[6]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add24~24_combout\,
	datab => \cp4|Add16~24_combout\,
	datad => VCC,
	cin => \cp4|dato_out[6]~13\,
	combout => \cp4|dato_out[7]~14_combout\,
	cout => \cp4|dato_out[7]~15\);

-- Location: LCCOMB_X19_Y20_N0
\cp4|Add30~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add30~12_combout\ = (\cp3|cp3|estado.e1~q\ & ((\cp4|dato_out[7]~14_combout\))) # (!\cp3|cp3|estado.e1~q\ & (\cp3|cp1|Q\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp3|cp1|Q\(8),
	datac => \cp3|cp3|estado.e1~q\,
	datad => \cp4|dato_out[7]~14_combout\,
	combout => \cp4|Add30~12_combout\);

-- Location: LCCOMB_X16_Y20_N24
\cp3|cp1|Q[15]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp3|cp1|Q[15]~1_combout\ = (\cp3|cp5|est.e2~q\) # (\cp3|cp3|estado.e1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cp3|cp5|est.e2~q\,
	datad => \cp3|cp3|estado.e1~q\,
	combout => \cp3|cp1|Q[15]~1_combout\);

-- Location: FF_X19_Y20_N1
\cp3|cp1|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp3|cp2|ALT_INV_clkout~clkctrl_outclk\,
	d => \cp4|Add30~12_combout\,
	clrn => \reset~input_o\,
	ena => \cp3|cp1|Q[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp3|cp1|Q\(9));

-- Location: LCCOMB_X14_Y21_N30
\cp4|Add22~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add22~22_combout\ = \cp4|Add22~21\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \cp4|Add22~21\,
	combout => \cp4|Add22~22_combout\);

-- Location: LCCOMB_X21_Y22_N28
\cp4|Add20~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add20~22_combout\ = (\cp4|Add18~22_combout\ & ((\cp4|Add22~22_combout\ & (\cp4|Add20~21\ & VCC)) # (!\cp4|Add22~22_combout\ & (!\cp4|Add20~21\)))) # (!\cp4|Add18~22_combout\ & ((\cp4|Add22~22_combout\ & (!\cp4|Add20~21\)) # (!\cp4|Add22~22_combout\ & 
-- ((\cp4|Add20~21\) # (GND)))))
-- \cp4|Add20~23\ = CARRY((\cp4|Add18~22_combout\ & (!\cp4|Add22~22_combout\ & !\cp4|Add20~21\)) # (!\cp4|Add18~22_combout\ & ((!\cp4|Add20~21\) # (!\cp4|Add22~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add18~22_combout\,
	datab => \cp4|Add22~22_combout\,
	datad => VCC,
	cin => \cp4|Add20~21\,
	combout => \cp4|Add20~22_combout\,
	cout => \cp4|Add20~23\);

-- Location: LCCOMB_X21_Y22_N30
\cp4|Add20~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add20~24_combout\ = !\cp4|Add20~23\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \cp4|Add20~23\,
	combout => \cp4|Add20~24_combout\);

-- Location: LCCOMB_X20_Y22_N26
\cp4|Add24~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add24~26_combout\ = \cp4|Add24~25\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \cp4|Add24~25\,
	combout => \cp4|Add24~26_combout\);

-- Location: LCCOMB_X20_Y20_N26
\cp4|dato_out[8]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|dato_out[8]~16_combout\ = (\cp4|Add16~26_combout\ & ((\cp4|Add24~26_combout\ & (\cp4|dato_out[7]~15\ & VCC)) # (!\cp4|Add24~26_combout\ & (!\cp4|dato_out[7]~15\)))) # (!\cp4|Add16~26_combout\ & ((\cp4|Add24~26_combout\ & (!\cp4|dato_out[7]~15\)) # 
-- (!\cp4|Add24~26_combout\ & ((\cp4|dato_out[7]~15\) # (GND)))))
-- \cp4|dato_out[8]~17\ = CARRY((\cp4|Add16~26_combout\ & (!\cp4|Add24~26_combout\ & !\cp4|dato_out[7]~15\)) # (!\cp4|Add16~26_combout\ & ((!\cp4|dato_out[7]~15\) # (!\cp4|Add24~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Add16~26_combout\,
	datab => \cp4|Add24~26_combout\,
	datad => VCC,
	cin => \cp4|dato_out[7]~15\,
	combout => \cp4|dato_out[8]~16_combout\,
	cout => \cp4|dato_out[8]~17\);

-- Location: LCCOMB_X19_Y20_N2
\cp4|Add30~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add30~11_combout\ = (\cp3|cp3|estado.e1~q\ & ((\cp4|dato_out[8]~16_combout\))) # (!\cp3|cp3|estado.e1~q\ & (\cp3|cp1|Q\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cp3|cp1|Q\(9),
	datac => \cp3|cp3|estado.e1~q\,
	datad => \cp4|dato_out[8]~16_combout\,
	combout => \cp4|Add30~11_combout\);

-- Location: FF_X19_Y20_N3
\cp3|cp1|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp3|cp2|ALT_INV_clkout~clkctrl_outclk\,
	d => \cp4|Add30~11_combout\,
	clrn => \reset~input_o\,
	ena => \cp3|cp1|Q[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp3|cp1|Q\(10));

-- Location: LCCOMB_X23_Y20_N30
\cp4|Add8~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add8~26_combout\ = \cp4|Add8~25\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \cp4|Add8~25\,
	combout => \cp4|Add8~26_combout\);

-- Location: LCCOMB_X22_Y20_N26
\cp4|Add14~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add14~26_combout\ = \cp4|Add14~25\ $ (\cp4|Add8~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \cp4|Add8~26_combout\,
	cin => \cp4|Add14~25\,
	combout => \cp4|Add14~26_combout\);

-- Location: LCCOMB_X21_Y20_N28
\cp4|Add16~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add16~28_combout\ = !\cp4|Add16~27\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \cp4|Add16~27\,
	combout => \cp4|Add16~28_combout\);

-- Location: LCCOMB_X20_Y20_N28
\cp4|dato_out[9]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|dato_out[9]~18_combout\ = \cp4|dato_out[8]~17\ $ (!\cp4|Add16~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \cp4|Add16~28_combout\,
	cin => \cp4|dato_out[8]~17\,
	combout => \cp4|dato_out[9]~18_combout\);

-- Location: LCCOMB_X19_Y20_N28
\cp4|Add30~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Add30~10_combout\ = (\cp3|cp3|estado.e1~q\ & ((\cp4|dato_out[9]~18_combout\))) # (!\cp3|cp3|estado.e1~q\ & (\cp3|cp1|Q\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cp3|cp1|Q\(10),
	datac => \cp3|cp3|estado.e1~q\,
	datad => \cp4|dato_out[9]~18_combout\,
	combout => \cp4|Add30~10_combout\);

-- Location: FF_X19_Y20_N29
\cp3|cp1|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp3|cp2|ALT_INV_clkout~clkctrl_outclk\,
	d => \cp4|Add30~10_combout\,
	clrn => \reset~input_o\,
	ena => \cp3|cp1|Q[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp3|cp1|Q\(11));

-- Location: LCCOMB_X17_Y20_N30
\cp3|cp1|Q~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp3|cp1|Q~4_combout\ = (\cp3|cp1|Q\(11)) # (\cp3|cp3|estado.e1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cp3|cp1|Q\(11),
	datad => \cp3|cp3|estado.e1~q\,
	combout => \cp3|cp1|Q~4_combout\);

-- Location: FF_X17_Y20_N31
\cp3|cp1|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp3|cp2|ALT_INV_clkout~clkctrl_outclk\,
	d => \cp3|cp1|Q~4_combout\,
	clrn => \reset~input_o\,
	ena => \cp3|cp1|Q[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp3|cp1|Q\(12));

-- Location: LCCOMB_X17_Y20_N22
\cp3|cp1|Q~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp3|cp1|Q~3_combout\ = (\cp3|cp1|Q\(12)) # (\cp3|cp3|estado.e1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cp3|cp1|Q\(12),
	datad => \cp3|cp3|estado.e1~q\,
	combout => \cp3|cp1|Q~3_combout\);

-- Location: FF_X17_Y20_N23
\cp3|cp1|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp3|cp2|ALT_INV_clkout~clkctrl_outclk\,
	d => \cp3|cp1|Q~3_combout\,
	clrn => \reset~input_o\,
	ena => \cp3|cp1|Q[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp3|cp1|Q\(13));

-- Location: LCCOMB_X17_Y20_N26
\cp3|cp1|Q~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp3|cp1|Q~2_combout\ = (\cp3|cp1|Q\(13)) # (\cp3|cp3|estado.e1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cp3|cp1|Q\(13),
	datad => \cp3|cp3|estado.e1~q\,
	combout => \cp3|cp1|Q~2_combout\);

-- Location: FF_X17_Y20_N27
\cp3|cp1|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp3|cp2|ALT_INV_clkout~clkctrl_outclk\,
	d => \cp3|cp1|Q~2_combout\,
	clrn => \reset~input_o\,
	ena => \cp3|cp1|Q[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp3|cp1|Q\(14));

-- Location: LCCOMB_X17_Y20_N28
\cp3|cp1|Q~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp3|cp1|Q~0_combout\ = (\cp3|cp1|Q\(14) & !\cp3|cp3|estado.e1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cp3|cp1|Q\(14),
	datad => \cp3|cp3|estado.e1~q\,
	combout => \cp3|cp1|Q~0_combout\);

-- Location: FF_X17_Y20_N29
\cp3|cp1|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp3|cp2|ALT_INV_clkout~clkctrl_outclk\,
	d => \cp3|cp1|Q~0_combout\,
	clrn => \reset~input_o\,
	ena => \cp3|cp1|Q[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp3|cp1|Q\(15));

-- Location: LCCOMB_X17_Y20_N24
\cp3|cp5|sdo~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp3|cp5|sdo~0_combout\ = (\cp3|cp5|est.e0~q\ & \cp3|cp1|Q\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp3|cp5|est.e0~q\,
	datad => \cp3|cp1|Q\(15),
	combout => \cp3|cp5|sdo~0_combout\);
END structure;


