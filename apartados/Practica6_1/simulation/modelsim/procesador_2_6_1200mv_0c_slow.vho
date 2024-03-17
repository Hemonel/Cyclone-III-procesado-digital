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

-- DATE "04/04/2022 20:06:05"

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
SIGNAL \cp1|clkadc|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \cp3|cp4|Q[1]~4_combout\ : std_logic;
SIGNAL \cp2|Add0~0_combout\ : std_logic;
SIGNAL \cp2|Add0~2_combout\ : std_logic;
SIGNAL \cp2|Add0~8_combout\ : std_logic;
SIGNAL \cp2|Add0~10_combout\ : std_logic;
SIGNAL \cp2|Add0~12_combout\ : std_logic;
SIGNAL \cp2|Add0~14_combout\ : std_logic;
SIGNAL \cp2|Add0~18_combout\ : std_logic;
SIGNAL \cp3|cp2|contador~1_combout\ : std_logic;
SIGNAL \cp3|cp1|Q~2_combout\ : std_logic;
SIGNAL \cp1|datoin~1_combout\ : std_logic;
SIGNAL \cp1|datoin:altaimp[1]~q\ : std_logic;
SIGNAL \cp1|Add2~0_combout\ : std_logic;
SIGNAL \cp3|cp1|Q~3_combout\ : std_logic;
SIGNAL \cp2|contador~3_combout\ : std_logic;
SIGNAL \cp1|altaimp~2_combout\ : std_logic;
SIGNAL \cp3|cp1|Q~4_combout\ : std_logic;
SIGNAL \cp1|datoin:dato[9]~q\ : std_logic;
SIGNAL \cp3|cp1|Q~5_combout\ : std_logic;
SIGNAL \cp1|Decoder0~0_combout\ : std_logic;
SIGNAL \cp1|dato~0_combout\ : std_logic;
SIGNAL \cp1|datoin:dato[9]~0_combout\ : std_logic;
SIGNAL \cp1|datoin:dato[8]~q\ : std_logic;
SIGNAL \cp3|cp1|Q~6_combout\ : std_logic;
SIGNAL \cp1|Decoder0~1_combout\ : std_logic;
SIGNAL \cp1|dato~1_combout\ : std_logic;
SIGNAL \cp1|datoin:dato[7]~q\ : std_logic;
SIGNAL \cp3|cp1|Q~7_combout\ : std_logic;
SIGNAL \cp1|Decoder0~2_combout\ : std_logic;
SIGNAL \cp1|dato~2_combout\ : std_logic;
SIGNAL \cp1|datoin:dato[6]~q\ : std_logic;
SIGNAL \cp3|cp1|Q~8_combout\ : std_logic;
SIGNAL \cp1|Decoder0~3_combout\ : std_logic;
SIGNAL \cp1|dato~3_combout\ : std_logic;
SIGNAL \cp1|datoin:dato[5]~q\ : std_logic;
SIGNAL \cp3|cp1|Q~9_combout\ : std_logic;
SIGNAL \cp1|Decoder0~4_combout\ : std_logic;
SIGNAL \cp1|dato~4_combout\ : std_logic;
SIGNAL \cp1|datoin:dato[4]~q\ : std_logic;
SIGNAL \cp3|cp1|Q~10_combout\ : std_logic;
SIGNAL \cp1|Decoder0~5_combout\ : std_logic;
SIGNAL \cp1|dato~5_combout\ : std_logic;
SIGNAL \cp1|datoin:dato[3]~q\ : std_logic;
SIGNAL \cp3|cp1|Q~11_combout\ : std_logic;
SIGNAL \cp1|Decoder0~6_combout\ : std_logic;
SIGNAL \cp1|dato~6_combout\ : std_logic;
SIGNAL \cp1|datoin:dato[2]~q\ : std_logic;
SIGNAL \cp3|cp1|Q~12_combout\ : std_logic;
SIGNAL \cp1|Decoder0~7_combout\ : std_logic;
SIGNAL \cp1|dato~7_combout\ : std_logic;
SIGNAL \cp1|datoin:dato[1]~q\ : std_logic;
SIGNAL \cp3|cp1|Q~13_combout\ : std_logic;
SIGNAL \cp1|Decoder0~8_combout\ : std_logic;
SIGNAL \cp1|dato~8_combout\ : std_logic;
SIGNAL \cp3|cp1|Q~14_combout\ : std_logic;
SIGNAL \cp1|datoin:dato[0]~q\ : std_logic;
SIGNAL \cp1|dato~9_combout\ : std_logic;
SIGNAL \cp3|cp2|clkout~clkctrl_outclk\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \cp2|contador~6_combout\ : std_logic;
SIGNAL \en~input_o\ : std_logic;
SIGNAL \cp2|LessThan1~0_combout\ : std_logic;
SIGNAL \cp2|contador~7_combout\ : std_logic;
SIGNAL \cp2|contador~0_combout\ : std_logic;
SIGNAL \cp2|contador~5_combout\ : std_logic;
SIGNAL \cp2|contador~2_combout\ : std_logic;
SIGNAL \cp2|Add0~1\ : std_logic;
SIGNAL \cp2|Add0~3\ : std_logic;
SIGNAL \cp2|Add0~4_combout\ : std_logic;
SIGNAL \cp2|contador~9_combout\ : std_logic;
SIGNAL \cp2|Add0~5\ : std_logic;
SIGNAL \cp2|Add0~6_combout\ : std_logic;
SIGNAL \cp2|contador~8_combout\ : std_logic;
SIGNAL \cp2|Add0~7\ : std_logic;
SIGNAL \cp2|Add0~9\ : std_logic;
SIGNAL \cp2|Add0~11\ : std_logic;
SIGNAL \cp2|Add0~13\ : std_logic;
SIGNAL \cp2|Add0~15\ : std_logic;
SIGNAL \cp2|Add0~16_combout\ : std_logic;
SIGNAL \cp2|contador~4_combout\ : std_logic;
SIGNAL \cp2|Add0~17\ : std_logic;
SIGNAL \cp2|Add0~19\ : std_logic;
SIGNAL \cp2|Add0~20_combout\ : std_logic;
SIGNAL \cp2|contador~1_combout\ : std_logic;
SIGNAL \cp2|contador~10_combout\ : std_logic;
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
SIGNAL \cp3|cp5|Selector0~0_combout\ : std_logic;
SIGNAL \cp3|cp5|Selector0~1_combout\ : std_logic;
SIGNAL \cp3|cp5|est.e0~q\ : std_logic;
SIGNAL \cp3|cp5|est~7_combout\ : std_logic;
SIGNAL \cp3|cp5|est.e1~q\ : std_logic;
SIGNAL \cp3|cp5|Selector1~0_combout\ : std_logic;
SIGNAL \cp3|cp5|est.e2~q\ : std_logic;
SIGNAL \cp3|cp4|Q[0]~12_combout\ : std_logic;
SIGNAL \cp3|cp4|Q[1]~5\ : std_logic;
SIGNAL \cp3|cp4|Q[2]~7\ : std_logic;
SIGNAL \cp3|cp4|Q[3]~8_combout\ : std_logic;
SIGNAL \cp3|cp4|Q[2]~6_combout\ : std_logic;
SIGNAL \cp3|cp4|fin~0_combout\ : std_logic;
SIGNAL \cp3|cp2|contador~0_combout\ : std_logic;
SIGNAL \cp3|cp2|contador~2_combout\ : std_logic;
SIGNAL \cp3|cp2|LessThan1~0_combout\ : std_logic;
SIGNAL \cp3|cp2|clkout~q\ : std_logic;
SIGNAL \cp3|cp4|Q[3]~9\ : std_logic;
SIGNAL \cp3|cp4|Q[4]~10_combout\ : std_logic;
SIGNAL \cp3|cp5|sck~0_combout\ : std_logic;
SIGNAL \cp3|cp5|Selector2~0_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \cp1|clkadc|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \cp1|clkadc|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \sdi~input_o\ : std_logic;
SIGNAL \cp1|altaimp~3_combout\ : std_logic;
SIGNAL \cp1|indice~0_combout\ : std_logic;
SIGNAL \cp1|datoin:altaimp[0]~q\ : std_logic;
SIGNAL \cp1|datoin~0_combout\ : std_logic;
SIGNAL \cp1|altaimp~4_combout\ : std_logic;
SIGNAL \cp1|datoin:altaimp[2]~q\ : std_logic;
SIGNAL \cp1|Add0~0_combout\ : std_logic;
SIGNAL \cp1|altaimp~5_combout\ : std_logic;
SIGNAL \cp1|datoin:altaimp[3]~q\ : std_logic;
SIGNAL \cp1|LessThan0~0_combout\ : std_logic;
SIGNAL \cp1|datoin~3_combout\ : std_logic;
SIGNAL \cp1|datoin:indice[0]~1_combout\ : std_logic;
SIGNAL \cp1|datoin:indice[0]~0_combout\ : std_logic;
SIGNAL \cp1|datoin:indice[0]~q\ : std_logic;
SIGNAL \cp1|datoin:indice[1]~0_combout\ : std_logic;
SIGNAL \cp1|datoin:indice[1]~q\ : std_logic;
SIGNAL \cp1|datoin~2_combout\ : std_logic;
SIGNAL \cp1|datoin:indice[0]~2_combout\ : std_logic;
SIGNAL \cp1|datoin:indice[2]~0_combout\ : std_logic;
SIGNAL \cp1|datoin:indice[2]~q\ : std_logic;
SIGNAL \cp1|datoin:indice[3]~0_combout\ : std_logic;
SIGNAL \cp1|datoin:indice[3]~1_combout\ : std_logic;
SIGNAL \cp1|datoin:indice[3]~q\ : std_logic;
SIGNAL \cp1|sc_prev~2_combout\ : std_logic;
SIGNAL \cp1|datoin:scint~0_combout\ : std_logic;
SIGNAL \cp1|datoin:scint~q\ : std_logic;
SIGNAL \cp1|sc_prev~3_combout\ : std_logic;
SIGNAL \cp1|sc_prev~q\ : std_logic;
SIGNAL \cp1|cs~0_combout\ : std_logic;
SIGNAL \cp1|cs~q\ : std_logic;
SIGNAL \cp3|cp4|fin~combout\ : std_logic;
SIGNAL \cp3|cp1|Q~0_combout\ : std_logic;
SIGNAL \cp3|cp1|Q[12]~1_combout\ : std_logic;
SIGNAL \cp3|cp5|sdo~0_combout\ : std_logic;
SIGNAL \cp3|cp1|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \cp2|contador\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \cp1|clkadc|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \cp3|cp2|contador\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \cp3|cp4|Q\ : std_logic_vector(4 DOWNTO 0);
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

\cp1|clkadc|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \cp1|clkadc|altpll_component|auto_generated|wire_pll1_clk\(0));

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\cp1|clkadc|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\ <= NOT \cp1|clkadc|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\;
\cp3|cp2|ALT_INV_clkout~clkctrl_outclk\ <= NOT \cp3|cp2|clkout~clkctrl_outclk\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\cp3|cp3|ALT_INV_estado.e1~q\ <= NOT \cp3|cp3|estado.e1~q\;

-- Location: FF_X7_Y3_N21
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

-- Location: LCCOMB_X7_Y3_N20
\cp3|cp4|Q[1]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp3|cp4|Q[1]~4_combout\ = (\cp3|cp4|Q\(1) & (\cp3|cp4|Q\(0) $ (VCC))) # (!\cp3|cp4|Q\(1) & (\cp3|cp4|Q\(0) & VCC))
-- \cp3|cp4|Q[1]~5\ = CARRY((\cp3|cp4|Q\(1) & \cp3|cp4|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp3|cp4|Q\(1),
	datab => \cp3|cp4|Q\(0),
	datad => VCC,
	combout => \cp3|cp4|Q[1]~4_combout\,
	cout => \cp3|cp4|Q[1]~5\);

-- Location: LCCOMB_X8_Y4_N0
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

-- Location: LCCOMB_X8_Y4_N2
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

-- Location: LCCOMB_X8_Y4_N8
\cp2|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp2|Add0~8_combout\ = (\cp2|contador\(4) & (\cp2|Add0~7\ $ (GND))) # (!\cp2|contador\(4) & (!\cp2|Add0~7\ & VCC))
-- \cp2|Add0~9\ = CARRY((\cp2|contador\(4) & !\cp2|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cp2|contador\(4),
	datad => VCC,
	cin => \cp2|Add0~7\,
	combout => \cp2|Add0~8_combout\,
	cout => \cp2|Add0~9\);

-- Location: LCCOMB_X8_Y4_N10
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

-- Location: LCCOMB_X8_Y4_N12
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

-- Location: LCCOMB_X8_Y4_N14
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

-- Location: LCCOMB_X8_Y4_N18
\cp2|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp2|Add0~18_combout\ = (\cp2|contador\(9) & (!\cp2|Add0~17\)) # (!\cp2|contador\(9) & ((\cp2|Add0~17\) # (GND)))
-- \cp2|Add0~19\ = CARRY((!\cp2|Add0~17\) # (!\cp2|contador\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp2|contador\(9),
	datad => VCC,
	cin => \cp2|Add0~17\,
	combout => \cp2|Add0~18_combout\,
	cout => \cp2|Add0~19\);

-- Location: FF_X9_Y3_N5
\cp3|cp1|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp3|cp2|ALT_INV_clkout~clkctrl_outclk\,
	d => \cp3|cp1|Q~14_combout\,
	asdata => \cp1|datoin:dato[0]~q\,
	clrn => \reset~input_o\,
	sload => \cp3|cp3|estado.e1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp3|cp1|Q\(2));

-- Location: FF_X5_Y3_N27
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

-- Location: FF_X8_Y3_N7
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
	ena => \cp3|cp1|Q[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp3|cp1|Q\(14));

-- Location: LCCOMB_X5_Y3_N26
\cp3|cp2|contador~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp3|cp2|contador~1_combout\ = (!\cp3|cp2|contador\(2) & (\cp3|cp2|contador\(0) $ (!\cp3|cp2|contador\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cp3|cp2|contador\(0),
	datac => \cp3|cp2|contador\(1),
	datad => \cp3|cp2|contador\(2),
	combout => \cp3|cp2|contador~1_combout\);

-- Location: FF_X8_Y3_N27
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
	ena => \cp3|cp1|Q[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp3|cp1|Q\(13));

-- Location: LCCOMB_X8_Y3_N6
\cp3|cp1|Q~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp3|cp1|Q~2_combout\ = (\cp3|cp1|Q\(13)) # (\cp3|cp3|estado.e1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp3|cp1|Q\(13),
	datac => \cp3|cp3|estado.e1~q\,
	combout => \cp3|cp1|Q~2_combout\);

-- Location: FF_X9_Y4_N21
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

-- Location: LCCOMB_X4_Y3_N16
\cp1|datoin~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp1|datoin~1_combout\ = (\cp1|datoin:indice[3]~q\ & ((\cp1|datoin:indice[2]~q\) # ((\cp1|datoin:indice[0]~q\ & \cp1|datoin:indice[1]~q\)))) # (!\cp1|datoin:indice[3]~q\ & (!\cp1|datoin:indice[0]~q\ & (!\cp1|datoin:indice[2]~q\ & 
-- !\cp1|datoin:indice[1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp1|datoin:indice[3]~q\,
	datab => \cp1|datoin:indice[0]~q\,
	datac => \cp1|datoin:indice[2]~q\,
	datad => \cp1|datoin:indice[1]~q\,
	combout => \cp1|datoin~1_combout\);

-- Location: FF_X5_Y3_N23
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

-- Location: LCCOMB_X4_Y3_N12
\cp1|Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp1|Add2~0_combout\ = \cp1|datoin:indice[2]~q\ $ (((\cp1|datoin:indice[0]~q\ & \cp1|datoin:indice[1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp1|datoin:indice[2]~q\,
	datac => \cp1|datoin:indice[0]~q\,
	datad => \cp1|datoin:indice[1]~q\,
	combout => \cp1|Add2~0_combout\);

-- Location: FF_X8_Y3_N13
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
	ena => \cp3|cp1|Q[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp3|cp1|Q\(12));

-- Location: LCCOMB_X8_Y3_N26
\cp3|cp1|Q~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp3|cp1|Q~3_combout\ = (\cp3|cp1|Q\(12)) # (\cp3|cp3|estado.e1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp3|cp1|Q\(12),
	datac => \cp3|cp3|estado.e1~q\,
	combout => \cp3|cp1|Q~3_combout\);

-- Location: LCCOMB_X9_Y4_N20
\cp2|contador~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp2|contador~3_combout\ = (\cp2|Add0~18_combout\ & \cp2|contador~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cp2|Add0~18_combout\,
	datad => \cp2|contador~0_combout\,
	combout => \cp2|contador~3_combout\);

-- Location: LCCOMB_X5_Y3_N22
\cp1|altaimp~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp1|altaimp~2_combout\ = (!\cp2|clkout~q\ & (!\cp1|datoin:scint~q\ & (\cp1|datoin:altaimp[1]~q\ $ (\cp1|datoin:altaimp[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp2|clkout~q\,
	datab => \cp1|datoin:scint~q\,
	datac => \cp1|datoin:altaimp[1]~q\,
	datad => \cp1|datoin:altaimp[0]~q\,
	combout => \cp1|altaimp~2_combout\);

-- Location: FF_X8_Y3_N23
\cp3|cp1|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp3|cp2|ALT_INV_clkout~clkctrl_outclk\,
	d => \cp3|cp1|Q~5_combout\,
	clrn => \reset~input_o\,
	ena => \cp3|cp1|Q[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp3|cp1|Q\(11));

-- Location: LCCOMB_X8_Y3_N12
\cp3|cp1|Q~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp3|cp1|Q~4_combout\ = (\cp3|cp1|Q\(11)) # (\cp3|cp3|estado.e1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp3|cp1|Q\(11),
	datac => \cp3|cp3|estado.e1~q\,
	combout => \cp3|cp1|Q~4_combout\);

-- Location: FF_X8_Y3_N29
\cp1|datoin:dato[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp1|clkadc|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \cp1|dato~0_combout\,
	ena => \cp1|datoin:dato[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp1|datoin:dato[9]~q\);

-- Location: FF_X6_Y3_N17
\cp3|cp1|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp3|cp2|ALT_INV_clkout~clkctrl_outclk\,
	d => \cp3|cp1|Q~6_combout\,
	clrn => \reset~input_o\,
	ena => \cp3|cp1|Q[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp3|cp1|Q\(10));

-- Location: LCCOMB_X8_Y3_N22
\cp3|cp1|Q~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp3|cp1|Q~5_combout\ = (\cp3|cp3|estado.e1~q\ & (\cp1|datoin:dato[9]~q\)) # (!\cp3|cp3|estado.e1~q\ & ((\cp3|cp1|Q\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp1|datoin:dato[9]~q\,
	datab => \cp3|cp1|Q\(10),
	datac => \cp3|cp3|estado.e1~q\,
	combout => \cp3|cp1|Q~5_combout\);

-- Location: LCCOMB_X8_Y3_N18
\cp1|Decoder0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp1|Decoder0~0_combout\ = (\cp1|datoin:indice[0]~q\ & (!\cp1|datoin:indice[2]~q\ & (!\cp1|datoin:indice[1]~q\ & !\cp1|datoin:indice[3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp1|datoin:indice[0]~q\,
	datab => \cp1|datoin:indice[2]~q\,
	datac => \cp1|datoin:indice[1]~q\,
	datad => \cp1|datoin:indice[3]~q\,
	combout => \cp1|Decoder0~0_combout\);

-- Location: LCCOMB_X8_Y3_N28
\cp1|dato~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp1|dato~0_combout\ = (\cp1|datoin~3_combout\ & ((\cp1|Decoder0~0_combout\ & (\sdi~input_o\)) # (!\cp1|Decoder0~0_combout\ & ((\cp1|datoin:dato[9]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdi~input_o\,
	datab => \cp1|Decoder0~0_combout\,
	datac => \cp1|datoin:dato[9]~q\,
	datad => \cp1|datoin~3_combout\,
	combout => \cp1|dato~0_combout\);

-- Location: LCCOMB_X5_Y3_N2
\cp1|datoin:dato[9]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp1|datoin:dato[9]~0_combout\ = (!\cp2|clkout~q\ & (\reset~input_o\ & !\cp1|datoin:scint~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp2|clkout~q\,
	datac => \reset~input_o\,
	datad => \cp1|datoin:scint~q\,
	combout => \cp1|datoin:dato[9]~0_combout\);

-- Location: FF_X6_Y3_N31
\cp1|datoin:dato[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp1|clkadc|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \cp1|dato~1_combout\,
	ena => \cp1|datoin:dato[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp1|datoin:dato[8]~q\);

-- Location: FF_X6_Y3_N21
\cp3|cp1|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp3|cp2|ALT_INV_clkout~clkctrl_outclk\,
	d => \cp3|cp1|Q~7_combout\,
	clrn => \reset~input_o\,
	ena => \cp3|cp1|Q[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp3|cp1|Q\(9));

-- Location: LCCOMB_X6_Y3_N16
\cp3|cp1|Q~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp3|cp1|Q~6_combout\ = (\cp3|cp3|estado.e1~q\ & ((\cp1|datoin:dato[8]~q\))) # (!\cp3|cp3|estado.e1~q\ & (\cp3|cp1|Q\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp3|cp3|estado.e1~q\,
	datab => \cp3|cp1|Q\(9),
	datad => \cp1|datoin:dato[8]~q\,
	combout => \cp3|cp1|Q~6_combout\);

-- Location: LCCOMB_X4_Y3_N18
\cp1|Decoder0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp1|Decoder0~1_combout\ = (!\cp1|datoin:indice[2]~q\ & (\cp1|datoin:indice[1]~q\ & (!\cp1|datoin:indice[0]~q\ & !\cp1|datoin:indice[3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp1|datoin:indice[2]~q\,
	datab => \cp1|datoin:indice[1]~q\,
	datac => \cp1|datoin:indice[0]~q\,
	datad => \cp1|datoin:indice[3]~q\,
	combout => \cp1|Decoder0~1_combout\);

-- Location: LCCOMB_X6_Y3_N30
\cp1|dato~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp1|dato~1_combout\ = (\cp1|datoin~3_combout\ & ((\cp1|Decoder0~1_combout\ & (\sdi~input_o\)) # (!\cp1|Decoder0~1_combout\ & ((\cp1|datoin:dato[8]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp1|datoin~3_combout\,
	datab => \sdi~input_o\,
	datac => \cp1|datoin:dato[8]~q\,
	datad => \cp1|Decoder0~1_combout\,
	combout => \cp1|dato~1_combout\);

-- Location: FF_X6_Y3_N23
\cp1|datoin:dato[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp1|clkadc|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \cp1|dato~2_combout\,
	ena => \cp1|datoin:dato[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp1|datoin:dato[7]~q\);

-- Location: FF_X6_Y3_N29
\cp3|cp1|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp3|cp2|ALT_INV_clkout~clkctrl_outclk\,
	d => \cp3|cp1|Q~8_combout\,
	clrn => \reset~input_o\,
	ena => \cp3|cp1|Q[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp3|cp1|Q\(8));

-- Location: LCCOMB_X6_Y3_N20
\cp3|cp1|Q~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp3|cp1|Q~7_combout\ = (\cp3|cp3|estado.e1~q\ & (\cp1|datoin:dato[7]~q\)) # (!\cp3|cp3|estado.e1~q\ & ((\cp3|cp1|Q\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp3|cp3|estado.e1~q\,
	datac => \cp1|datoin:dato[7]~q\,
	datad => \cp3|cp1|Q\(8),
	combout => \cp3|cp1|Q~7_combout\);

-- Location: LCCOMB_X4_Y3_N8
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

-- Location: LCCOMB_X6_Y3_N22
\cp1|dato~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp1|dato~2_combout\ = (\cp1|datoin~3_combout\ & ((\cp1|Decoder0~2_combout\ & (\sdi~input_o\)) # (!\cp1|Decoder0~2_combout\ & ((\cp1|datoin:dato[7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp1|Decoder0~2_combout\,
	datab => \sdi~input_o\,
	datac => \cp1|datoin:dato[7]~q\,
	datad => \cp1|datoin~3_combout\,
	combout => \cp1|dato~2_combout\);

-- Location: FF_X6_Y3_N7
\cp1|datoin:dato[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp1|clkadc|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \cp1|dato~3_combout\,
	ena => \cp1|datoin:dato[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp1|datoin:dato[6]~q\);

-- Location: FF_X6_Y3_N25
\cp3|cp1|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp3|cp2|ALT_INV_clkout~clkctrl_outclk\,
	d => \cp3|cp1|Q~9_combout\,
	clrn => \reset~input_o\,
	ena => \cp3|cp1|Q[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp3|cp1|Q\(7));

-- Location: LCCOMB_X6_Y3_N28
\cp3|cp1|Q~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp3|cp1|Q~8_combout\ = (\cp3|cp3|estado.e1~q\ & (\cp1|datoin:dato[6]~q\)) # (!\cp3|cp3|estado.e1~q\ & ((\cp3|cp1|Q\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp1|datoin:dato[6]~q\,
	datab => \cp3|cp1|Q\(7),
	datad => \cp3|cp3|estado.e1~q\,
	combout => \cp3|cp1|Q~8_combout\);

-- Location: LCCOMB_X4_Y3_N30
\cp1|Decoder0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp1|Decoder0~3_combout\ = (\cp1|datoin:indice[2]~q\ & (!\cp1|datoin:indice[1]~q\ & (!\cp1|datoin:indice[0]~q\ & !\cp1|datoin:indice[3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp1|datoin:indice[2]~q\,
	datab => \cp1|datoin:indice[1]~q\,
	datac => \cp1|datoin:indice[0]~q\,
	datad => \cp1|datoin:indice[3]~q\,
	combout => \cp1|Decoder0~3_combout\);

-- Location: LCCOMB_X6_Y3_N6
\cp1|dato~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp1|dato~3_combout\ = (\cp1|datoin~3_combout\ & ((\cp1|Decoder0~3_combout\ & (\sdi~input_o\)) # (!\cp1|Decoder0~3_combout\ & ((\cp1|datoin:dato[6]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp1|Decoder0~3_combout\,
	datab => \sdi~input_o\,
	datac => \cp1|datoin:dato[6]~q\,
	datad => \cp1|datoin~3_combout\,
	combout => \cp1|dato~3_combout\);

-- Location: FF_X6_Y3_N3
\cp1|datoin:dato[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp1|clkadc|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \cp1|dato~4_combout\,
	ena => \cp1|datoin:dato[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp1|datoin:dato[5]~q\);

-- Location: FF_X6_Y3_N9
\cp3|cp1|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp3|cp2|ALT_INV_clkout~clkctrl_outclk\,
	d => \cp3|cp1|Q~10_combout\,
	clrn => \reset~input_o\,
	ena => \cp3|cp1|Q[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp3|cp1|Q\(6));

-- Location: LCCOMB_X6_Y3_N24
\cp3|cp1|Q~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp3|cp1|Q~9_combout\ = (\cp3|cp3|estado.e1~q\ & ((\cp1|datoin:dato[5]~q\))) # (!\cp3|cp3|estado.e1~q\ & (\cp3|cp1|Q\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp3|cp1|Q\(6),
	datac => \cp1|datoin:dato[5]~q\,
	datad => \cp3|cp3|estado.e1~q\,
	combout => \cp3|cp1|Q~9_combout\);

-- Location: LCCOMB_X4_Y3_N24
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

-- Location: LCCOMB_X6_Y3_N2
\cp1|dato~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp1|dato~4_combout\ = (\cp1|datoin~3_combout\ & ((\cp1|Decoder0~4_combout\ & (\sdi~input_o\)) # (!\cp1|Decoder0~4_combout\ & ((\cp1|datoin:dato[5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp1|Decoder0~4_combout\,
	datab => \sdi~input_o\,
	datac => \cp1|datoin:dato[5]~q\,
	datad => \cp1|datoin~3_combout\,
	combout => \cp1|dato~4_combout\);

-- Location: FF_X6_Y3_N11
\cp1|datoin:dato[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp1|clkadc|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \cp1|dato~5_combout\,
	ena => \cp1|datoin:dato[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp1|datoin:dato[4]~q\);

-- Location: FF_X6_Y3_N13
\cp3|cp1|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp3|cp2|ALT_INV_clkout~clkctrl_outclk\,
	d => \cp3|cp1|Q~11_combout\,
	clrn => \reset~input_o\,
	ena => \cp3|cp1|Q[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp3|cp1|Q\(5));

-- Location: LCCOMB_X6_Y3_N8
\cp3|cp1|Q~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp3|cp1|Q~10_combout\ = (\cp3|cp3|estado.e1~q\ & ((\cp1|datoin:dato[4]~q\))) # (!\cp3|cp3|estado.e1~q\ & (\cp3|cp1|Q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp3|cp1|Q\(5),
	datac => \cp1|datoin:dato[4]~q\,
	datad => \cp3|cp3|estado.e1~q\,
	combout => \cp3|cp1|Q~10_combout\);

-- Location: LCCOMB_X8_Y3_N24
\cp1|Decoder0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp1|Decoder0~5_combout\ = (!\cp1|datoin:indice[0]~q\ & (\cp1|datoin:indice[2]~q\ & (\cp1|datoin:indice[1]~q\ & !\cp1|datoin:indice[3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp1|datoin:indice[0]~q\,
	datab => \cp1|datoin:indice[2]~q\,
	datac => \cp1|datoin:indice[1]~q\,
	datad => \cp1|datoin:indice[3]~q\,
	combout => \cp1|Decoder0~5_combout\);

-- Location: LCCOMB_X6_Y3_N10
\cp1|dato~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp1|dato~5_combout\ = (\cp1|datoin~3_combout\ & ((\cp1|Decoder0~5_combout\ & (\sdi~input_o\)) # (!\cp1|Decoder0~5_combout\ & ((\cp1|datoin:dato[4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp1|datoin~3_combout\,
	datab => \sdi~input_o\,
	datac => \cp1|datoin:dato[4]~q\,
	datad => \cp1|Decoder0~5_combout\,
	combout => \cp1|dato~5_combout\);

-- Location: FF_X6_Y3_N27
\cp1|datoin:dato[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp1|clkadc|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \cp1|dato~6_combout\,
	ena => \cp1|datoin:dato[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp1|datoin:dato[3]~q\);

-- Location: FF_X8_Y3_N15
\cp3|cp1|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp3|cp2|ALT_INV_clkout~clkctrl_outclk\,
	d => \cp3|cp1|Q~12_combout\,
	clrn => \reset~input_o\,
	ena => \cp3|cp1|Q[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp3|cp1|Q\(4));

-- Location: LCCOMB_X6_Y3_N12
\cp3|cp1|Q~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp3|cp1|Q~11_combout\ = (\cp3|cp3|estado.e1~q\ & ((\cp1|datoin:dato[3]~q\))) # (!\cp3|cp3|estado.e1~q\ & (\cp3|cp1|Q\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp3|cp3|estado.e1~q\,
	datab => \cp3|cp1|Q\(4),
	datad => \cp1|datoin:dato[3]~q\,
	combout => \cp3|cp1|Q~11_combout\);

-- Location: LCCOMB_X4_Y3_N26
\cp1|Decoder0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp1|Decoder0~6_combout\ = (\cp1|datoin:indice[2]~q\ & (\cp1|datoin:indice[1]~q\ & (\cp1|datoin:indice[0]~q\ & !\cp1|datoin:indice[3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp1|datoin:indice[2]~q\,
	datab => \cp1|datoin:indice[1]~q\,
	datac => \cp1|datoin:indice[0]~q\,
	datad => \cp1|datoin:indice[3]~q\,
	combout => \cp1|Decoder0~6_combout\);

-- Location: LCCOMB_X6_Y3_N26
\cp1|dato~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp1|dato~6_combout\ = (\cp1|datoin~3_combout\ & ((\cp1|Decoder0~6_combout\ & (\sdi~input_o\)) # (!\cp1|Decoder0~6_combout\ & ((\cp1|datoin:dato[3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp1|Decoder0~6_combout\,
	datab => \sdi~input_o\,
	datac => \cp1|datoin:dato[3]~q\,
	datad => \cp1|datoin~3_combout\,
	combout => \cp1|dato~6_combout\);

-- Location: FF_X8_Y3_N17
\cp1|datoin:dato[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp1|clkadc|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \cp1|dato~7_combout\,
	ena => \cp1|datoin:dato[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp1|datoin:dato[2]~q\);

-- Location: FF_X8_Y3_N11
\cp3|cp1|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp3|cp2|ALT_INV_clkout~clkctrl_outclk\,
	d => \cp3|cp1|Q~13_combout\,
	clrn => \reset~input_o\,
	ena => \cp3|cp1|Q[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp3|cp1|Q\(3));

-- Location: LCCOMB_X8_Y3_N14
\cp3|cp1|Q~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp3|cp1|Q~12_combout\ = (\cp3|cp3|estado.e1~q\ & ((\cp1|datoin:dato[2]~q\))) # (!\cp3|cp3|estado.e1~q\ & (\cp3|cp1|Q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp3|cp1|Q\(3),
	datab => \cp3|cp3|estado.e1~q\,
	datac => \cp1|datoin:dato[2]~q\,
	combout => \cp3|cp1|Q~12_combout\);

-- Location: LCCOMB_X8_Y3_N0
\cp1|Decoder0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp1|Decoder0~7_combout\ = (!\cp1|datoin:indice[0]~q\ & (!\cp1|datoin:indice[2]~q\ & (!\cp1|datoin:indice[1]~q\ & \cp1|datoin:indice[3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp1|datoin:indice[0]~q\,
	datab => \cp1|datoin:indice[2]~q\,
	datac => \cp1|datoin:indice[1]~q\,
	datad => \cp1|datoin:indice[3]~q\,
	combout => \cp1|Decoder0~7_combout\);

-- Location: LCCOMB_X8_Y3_N16
\cp1|dato~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp1|dato~7_combout\ = (\cp1|datoin~3_combout\ & ((\cp1|Decoder0~7_combout\ & (\sdi~input_o\)) # (!\cp1|Decoder0~7_combout\ & ((\cp1|datoin:dato[2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdi~input_o\,
	datab => \cp1|Decoder0~7_combout\,
	datac => \cp1|datoin:dato[2]~q\,
	datad => \cp1|datoin~3_combout\,
	combout => \cp1|dato~7_combout\);

-- Location: FF_X8_Y3_N31
\cp1|datoin:dato[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp1|clkadc|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \cp1|dato~8_combout\,
	ena => \cp1|datoin:dato[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp1|datoin:dato[1]~q\);

-- Location: LCCOMB_X8_Y3_N10
\cp3|cp1|Q~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp3|cp1|Q~13_combout\ = (\cp3|cp3|estado.e1~q\ & ((\cp1|datoin:dato[1]~q\))) # (!\cp3|cp3|estado.e1~q\ & (\cp3|cp1|Q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp3|cp1|Q\(2),
	datab => \cp3|cp3|estado.e1~q\,
	datac => \cp1|datoin:dato[1]~q\,
	combout => \cp3|cp1|Q~13_combout\);

-- Location: LCCOMB_X8_Y3_N20
\cp1|Decoder0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp1|Decoder0~8_combout\ = (\cp1|datoin:indice[0]~q\ & (!\cp1|datoin:indice[2]~q\ & (!\cp1|datoin:indice[1]~q\ & \cp1|datoin:indice[3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp1|datoin:indice[0]~q\,
	datab => \cp1|datoin:indice[2]~q\,
	datac => \cp1|datoin:indice[1]~q\,
	datad => \cp1|datoin:indice[3]~q\,
	combout => \cp1|Decoder0~8_combout\);

-- Location: LCCOMB_X8_Y3_N30
\cp1|dato~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp1|dato~8_combout\ = (\cp1|datoin~3_combout\ & ((\cp1|Decoder0~8_combout\ & (\sdi~input_o\)) # (!\cp1|Decoder0~8_combout\ & ((\cp1|datoin:dato[1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdi~input_o\,
	datab => \cp1|Decoder0~8_combout\,
	datac => \cp1|datoin:dato[1]~q\,
	datad => \cp1|datoin~3_combout\,
	combout => \cp1|dato~8_combout\);

-- Location: LCCOMB_X9_Y3_N4
\cp3|cp1|Q~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp3|cp1|Q~14_combout\ = (\cp3|cp1|Q\(2) & !\cp3|cp5|est.e2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cp3|cp1|Q\(2),
	datad => \cp3|cp5|est.e2~q\,
	combout => \cp3|cp1|Q~14_combout\);

-- Location: FF_X8_Y3_N3
\cp1|datoin:dato[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp1|clkadc|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \cp1|dato~9_combout\,
	ena => \cp1|datoin:dato[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp1|datoin:dato[0]~q\);

-- Location: LCCOMB_X8_Y3_N2
\cp1|dato~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp1|dato~9_combout\ = (\cp1|datoin~3_combout\ & ((\cp1|sc_prev~2_combout\ & (\sdi~input_o\)) # (!\cp1|sc_prev~2_combout\ & ((\cp1|datoin:dato[0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdi~input_o\,
	datab => \cp1|sc_prev~2_combout\,
	datac => \cp1|datoin:dato[0]~q\,
	datad => \cp1|datoin~3_combout\,
	combout => \cp1|dato~9_combout\);

-- Location: CLKCTRL_G19
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

-- Location: LCCOMB_X9_Y4_N26
\cp2|contador~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp2|contador~6_combout\ = (\cp2|Add0~12_combout\ & \cp2|contador~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp2|Add0~12_combout\,
	datad => \cp2|contador~0_combout\,
	combout => \cp2|contador~6_combout\);

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

-- Location: FF_X9_Y4_N27
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

-- Location: LCCOMB_X9_Y4_N24
\cp2|LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp2|LessThan1~0_combout\ = (\cp2|contador\(9) & (\cp2|contador\(8) & (\cp2|contador\(6) & \cp2|contador\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp2|contador\(9),
	datab => \cp2|contador\(8),
	datac => \cp2|contador\(6),
	datad => \cp2|contador\(7),
	combout => \cp2|LessThan1~0_combout\);

-- Location: LCCOMB_X9_Y4_N22
\cp2|contador~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp2|contador~7_combout\ = (\cp2|Add0~8_combout\ & \cp2|contador~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp2|Add0~8_combout\,
	datad => \cp2|contador~0_combout\,
	combout => \cp2|contador~7_combout\);

-- Location: FF_X9_Y4_N23
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

-- Location: LCCOMB_X9_Y4_N12
\cp2|contador~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp2|contador~0_combout\ = (((!\cp2|contador\(5) & !\cp2|contador\(4))) # (!\cp2|contador\(10))) # (!\cp2|LessThan1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp2|contador\(5),
	datab => \cp2|LessThan1~0_combout\,
	datac => \cp2|contador\(10),
	datad => \cp2|contador\(4),
	combout => \cp2|contador~0_combout\);

-- Location: LCCOMB_X9_Y4_N16
\cp2|contador~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp2|contador~5_combout\ = (\cp2|Add0~14_combout\ & \cp2|contador~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp2|Add0~14_combout\,
	datad => \cp2|contador~0_combout\,
	combout => \cp2|contador~5_combout\);

-- Location: FF_X9_Y4_N17
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

-- Location: LCCOMB_X9_Y4_N10
\cp2|contador~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp2|contador~2_combout\ = (\cp2|Add0~10_combout\ & \cp2|contador~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp2|Add0~10_combout\,
	datad => \cp2|contador~0_combout\,
	combout => \cp2|contador~2_combout\);

-- Location: FF_X9_Y4_N11
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

-- Location: LCCOMB_X8_Y4_N4
\cp2|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp2|Add0~4_combout\ = (\cp2|contador\(2) & (\cp2|Add0~3\ $ (GND))) # (!\cp2|contador\(2) & (!\cp2|Add0~3\ & VCC))
-- \cp2|Add0~5\ = CARRY((\cp2|contador\(2) & !\cp2|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cp2|contador\(2),
	datad => VCC,
	cin => \cp2|Add0~3\,
	combout => \cp2|Add0~4_combout\,
	cout => \cp2|Add0~5\);

-- Location: LCCOMB_X9_Y4_N14
\cp2|contador~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp2|contador~9_combout\ = (\cp2|Add0~4_combout\ & \cp2|contador~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cp2|Add0~4_combout\,
	datad => \cp2|contador~0_combout\,
	combout => \cp2|contador~9_combout\);

-- Location: FF_X9_Y4_N15
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

-- Location: LCCOMB_X8_Y4_N6
\cp2|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp2|Add0~6_combout\ = (\cp2|contador\(3) & (!\cp2|Add0~5\)) # (!\cp2|contador\(3) & ((\cp2|Add0~5\) # (GND)))
-- \cp2|Add0~7\ = CARRY((!\cp2|Add0~5\) # (!\cp2|contador\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cp2|contador\(3),
	datad => VCC,
	cin => \cp2|Add0~5\,
	combout => \cp2|Add0~6_combout\,
	cout => \cp2|Add0~7\);

-- Location: LCCOMB_X9_Y4_N0
\cp2|contador~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp2|contador~8_combout\ = (\cp2|Add0~6_combout\ & \cp2|contador~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cp2|Add0~6_combout\,
	datad => \cp2|contador~0_combout\,
	combout => \cp2|contador~8_combout\);

-- Location: FF_X9_Y4_N1
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

-- Location: LCCOMB_X8_Y4_N16
\cp2|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp2|Add0~16_combout\ = (\cp2|contador\(8) & (\cp2|Add0~15\ $ (GND))) # (!\cp2|contador\(8) & (!\cp2|Add0~15\ & VCC))
-- \cp2|Add0~17\ = CARRY((\cp2|contador\(8) & !\cp2|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cp2|contador\(8),
	datad => VCC,
	cin => \cp2|Add0~15\,
	combout => \cp2|Add0~16_combout\,
	cout => \cp2|Add0~17\);

-- Location: LCCOMB_X9_Y4_N18
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

-- Location: FF_X9_Y4_N19
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

-- Location: LCCOMB_X8_Y4_N20
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

-- Location: LCCOMB_X9_Y4_N28
\cp2|contador~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp2|contador~1_combout\ = (\cp2|Add0~20_combout\ & \cp2|contador~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cp2|Add0~20_combout\,
	datad => \cp2|contador~0_combout\,
	combout => \cp2|contador~1_combout\);

-- Location: FF_X9_Y4_N29
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

-- Location: LCCOMB_X9_Y4_N4
\cp2|contador~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp2|contador~10_combout\ = (\cp2|Add0~2_combout\ & \cp2|contador~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp2|Add0~2_combout\,
	datad => \cp2|contador~0_combout\,
	combout => \cp2|contador~10_combout\);

-- Location: FF_X9_Y4_N5
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

-- Location: LCCOMB_X9_Y4_N6
\cp2|contador~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp2|contador~11_combout\ = (!\cp2|Add0~0_combout\ & \cp2|contador~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp2|Add0~0_combout\,
	datad => \cp2|contador~0_combout\,
	combout => \cp2|contador~11_combout\);

-- Location: FF_X9_Y4_N7
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

-- Location: LCCOMB_X9_Y4_N8
\cp2|LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp2|LessThan1~1_combout\ = (\cp2|contador\(3) & ((\cp2|contador\(2)) # ((\cp2|contador\(1)) # (!\cp2|contador\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp2|contador\(3),
	datab => \cp2|contador\(2),
	datac => \cp2|contador\(1),
	datad => \cp2|contador\(0),
	combout => \cp2|LessThan1~1_combout\);

-- Location: LCCOMB_X9_Y4_N30
\cp2|LessThan1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp2|LessThan1~2_combout\ = (\cp2|contador\(5) & (\cp2|LessThan1~0_combout\ & ((\cp2|LessThan1~1_combout\) # (\cp2|contador\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp2|contador\(5),
	datab => \cp2|LessThan1~0_combout\,
	datac => \cp2|LessThan1~1_combout\,
	datad => \cp2|contador\(4),
	combout => \cp2|LessThan1~2_combout\);

-- Location: LCCOMB_X5_Y3_N30
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

-- Location: FF_X5_Y3_N31
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

-- Location: LCCOMB_X7_Y3_N30
\cp3|cp3|Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp3|cp3|Selector0~0_combout\ = (\cp3|cp3|estado.e1~q\) # (!\cp2|clkout~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cp3|cp3|estado.e1~q\,
	datad => \cp2|clkout~q\,
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

-- Location: FF_X7_Y3_N31
\cp3|cp3|estado.e0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp3|cp2|clkout~clkctrl_outclk\,
	d => \cp3|cp3|Selector0~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp3|cp3|estado.e0~q\);

-- Location: LCCOMB_X7_Y3_N4
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

-- Location: FF_X7_Y3_N5
\cp3|cp3|estado.e1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp3|cp2|clkout~clkctrl_outclk\,
	d => \cp3|cp3|estado~8_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp3|cp3|estado.e1~q\);

-- Location: LCCOMB_X7_Y3_N14
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

-- Location: LCCOMB_X7_Y3_N10
\cp3|cp5|Selector0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp3|cp5|Selector0~1_combout\ = (!\cp3|cp5|Selector0~0_combout\ & (((!\cp3|cp4|fin~0_combout\) # (!\cp3|cp5|est.e2~q\)) # (!\cp3|cp4|Q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp3|cp4|Q\(4),
	datab => \cp3|cp5|est.e2~q\,
	datac => \cp3|cp5|Selector0~0_combout\,
	datad => \cp3|cp4|fin~0_combout\,
	combout => \cp3|cp5|Selector0~1_combout\);

-- Location: FF_X7_Y3_N11
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

-- Location: LCCOMB_X7_Y3_N2
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

-- Location: FF_X7_Y3_N3
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

-- Location: LCCOMB_X7_Y3_N16
\cp3|cp5|Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp3|cp5|Selector1~0_combout\ = (\cp3|cp5|est.e1~q\) # ((\cp3|cp5|est.e2~q\ & ((!\cp3|cp4|fin~0_combout\) # (!\cp3|cp4|Q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp3|cp4|Q\(4),
	datab => \cp3|cp5|est.e1~q\,
	datac => \cp3|cp5|est.e2~q\,
	datad => \cp3|cp4|fin~0_combout\,
	combout => \cp3|cp5|Selector1~0_combout\);

-- Location: FF_X7_Y3_N17
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

-- Location: LCCOMB_X9_Y3_N26
\cp3|cp4|Q[0]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp3|cp4|Q[0]~12_combout\ = \cp3|cp4|Q\(0) $ (\cp3|cp5|est.e2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cp3|cp4|Q\(0),
	datad => \cp3|cp5|est.e2~q\,
	combout => \cp3|cp4|Q[0]~12_combout\);

-- Location: FF_X9_Y3_N27
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

-- Location: LCCOMB_X7_Y3_N22
\cp3|cp4|Q[2]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp3|cp4|Q[2]~6_combout\ = (\cp3|cp4|Q\(2) & (!\cp3|cp4|Q[1]~5\)) # (!\cp3|cp4|Q\(2) & ((\cp3|cp4|Q[1]~5\) # (GND)))
-- \cp3|cp4|Q[2]~7\ = CARRY((!\cp3|cp4|Q[1]~5\) # (!\cp3|cp4|Q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp3|cp4|Q\(2),
	datad => VCC,
	cin => \cp3|cp4|Q[1]~5\,
	combout => \cp3|cp4|Q[2]~6_combout\,
	cout => \cp3|cp4|Q[2]~7\);

-- Location: LCCOMB_X7_Y3_N24
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

-- Location: FF_X7_Y3_N25
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

-- Location: FF_X7_Y3_N23
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

-- Location: LCCOMB_X7_Y3_N18
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

-- Location: LCCOMB_X5_Y3_N24
\cp3|cp2|contador~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp3|cp2|contador~0_combout\ = (\cp3|cp2|contador\(1) & (!\cp3|cp2|contador\(0) & !\cp3|cp2|contador\(2))) # (!\cp3|cp2|contador\(1) & (\cp3|cp2|contador\(0) & \cp3|cp2|contador\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp3|cp2|contador\(1),
	datab => \cp3|cp2|contador\(0),
	datac => \cp3|cp2|contador\(2),
	combout => \cp3|cp2|contador~0_combout\);

-- Location: FF_X5_Y3_N25
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

-- Location: LCCOMB_X5_Y3_N8
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

-- Location: FF_X5_Y3_N9
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

-- Location: LCCOMB_X20_Y3_N6
\cp3|cp2|LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp3|cp2|LessThan1~0_combout\ = (!\cp3|cp2|contador\(2) & ((\cp3|cp2|contador\(0)) # (!\cp3|cp2|contador\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp3|cp2|contador\(1),
	datac => \cp3|cp2|contador\(0),
	datad => \cp3|cp2|contador\(2),
	combout => \cp3|cp2|LessThan1~0_combout\);

-- Location: FF_X20_Y3_N7
\cp3|cp2|clkout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cp3|cp2|LessThan1~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp3|cp2|clkout~q\);

-- Location: LCCOMB_X7_Y3_N26
\cp3|cp4|Q[4]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp3|cp4|Q[4]~10_combout\ = \cp3|cp4|Q\(4) $ (\cp3|cp4|Q[3]~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp3|cp4|Q\(4),
	cin => \cp3|cp4|Q[3]~9\,
	combout => \cp3|cp4|Q[4]~10_combout\);

-- Location: FF_X7_Y3_N27
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

-- Location: LCCOMB_X7_Y3_N12
\cp3|cp5|sck~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp3|cp5|sck~0_combout\ = (\cp3|cp2|clkout~q\ & (\cp3|cp5|est.e2~q\ & ((!\cp3|cp4|Q\(4)) # (!\cp3|cp4|fin~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp3|cp4|fin~0_combout\,
	datab => \cp3|cp2|clkout~q\,
	datac => \cp3|cp4|Q\(4),
	datad => \cp3|cp5|est.e2~q\,
	combout => \cp3|cp5|sck~0_combout\);

-- Location: LCCOMB_X7_Y3_N28
\cp3|cp5|Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp3|cp5|Selector2~0_combout\ = ((\cp3|cp4|fin~0_combout\ & (\cp3|cp5|est.e2~q\ & \cp3|cp4|Q\(4)))) # (!\cp3|cp5|est.e0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp3|cp4|fin~0_combout\,
	datab => \cp3|cp5|est.e2~q\,
	datac => \cp3|cp4|Q\(4),
	datad => \cp3|cp5|est.e0~q\,
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

-- Location: LCCOMB_X5_Y3_N28
\cp1|altaimp~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp1|altaimp~3_combout\ = (!\cp2|clkout~q\ & (!\cp1|datoin:altaimp[0]~q\ & !\cp1|datoin:scint~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp2|clkout~q\,
	datac => \cp1|datoin:altaimp[0]~q\,
	datad => \cp1|datoin:scint~q\,
	combout => \cp1|altaimp~3_combout\);

-- Location: LCCOMB_X5_Y3_N6
\cp1|indice~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp1|indice~0_combout\ = (\cp2|clkout~q\) # (!\cp1|datoin:scint~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cp2|clkout~q\,
	datad => \cp1|datoin:scint~q\,
	combout => \cp1|indice~0_combout\);

-- Location: FF_X5_Y3_N29
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

-- Location: LCCOMB_X5_Y3_N20
\cp1|datoin~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp1|datoin~0_combout\ = (\cp2|clkout~q\) # (\cp1|datoin:scint~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cp2|clkout~q\,
	datad => \cp1|datoin:scint~q\,
	combout => \cp1|datoin~0_combout\);

-- Location: LCCOMB_X5_Y3_N14
\cp1|altaimp~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp1|altaimp~4_combout\ = (!\cp1|datoin~0_combout\ & (\cp1|datoin:altaimp[2]~q\ $ (((\cp1|datoin:altaimp[1]~q\ & \cp1|datoin:altaimp[0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp1|datoin:altaimp[1]~q\,
	datab => \cp1|datoin:altaimp[0]~q\,
	datac => \cp1|datoin:altaimp[2]~q\,
	datad => \cp1|datoin~0_combout\,
	combout => \cp1|altaimp~4_combout\);

-- Location: FF_X5_Y3_N15
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

-- Location: LCCOMB_X5_Y3_N16
\cp1|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp1|Add0~0_combout\ = \cp1|datoin:altaimp[3]~q\ $ (((\cp1|datoin:altaimp[1]~q\ & (\cp1|datoin:altaimp[2]~q\ & \cp1|datoin:altaimp[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp1|datoin:altaimp[1]~q\,
	datab => \cp1|datoin:altaimp[3]~q\,
	datac => \cp1|datoin:altaimp[2]~q\,
	datad => \cp1|datoin:altaimp[0]~q\,
	combout => \cp1|Add0~0_combout\);

-- Location: LCCOMB_X5_Y3_N0
\cp1|altaimp~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp1|altaimp~5_combout\ = (!\cp1|datoin:scint~q\ & (!\cp2|clkout~q\ & \cp1|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cp1|datoin:scint~q\,
	datac => \cp2|clkout~q\,
	datad => \cp1|Add0~0_combout\,
	combout => \cp1|altaimp~5_combout\);

-- Location: FF_X5_Y3_N1
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

-- Location: LCCOMB_X5_Y3_N10
\cp1|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp1|LessThan0~0_combout\ = (\cp1|datoin:altaimp[3]~q\ & (\cp1|datoin:altaimp[1]~q\ & (\cp1|datoin:altaimp[2]~q\ & \cp1|datoin:altaimp[0]~q\))) # (!\cp1|datoin:altaimp[3]~q\ & (!\cp1|datoin:altaimp[2]~q\ & ((!\cp1|datoin:altaimp[0]~q\) # 
-- (!\cp1|datoin:altaimp[1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp1|datoin:altaimp[1]~q\,
	datab => \cp1|datoin:altaimp[3]~q\,
	datac => \cp1|datoin:altaimp[2]~q\,
	datad => \cp1|datoin:altaimp[0]~q\,
	combout => \cp1|LessThan0~0_combout\);

-- Location: LCCOMB_X5_Y3_N12
\cp1|datoin~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp1|datoin~3_combout\ = ((\sdi~input_o\) # (\cp1|LessThan0~0_combout\)) # (!\cp1|datoin~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp1|datoin~2_combout\,
	datac => \sdi~input_o\,
	datad => \cp1|LessThan0~0_combout\,
	combout => \cp1|datoin~3_combout\);

-- Location: LCCOMB_X5_Y3_N18
\cp1|datoin:indice[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp1|datoin:indice[0]~1_combout\ = (!\cp2|clkout~q\ & ((\cp1|datoin:scint~q\) # (\cp1|datoin~1_combout\ $ (!\cp1|datoin~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp1|datoin~1_combout\,
	datab => \cp1|datoin:scint~q\,
	datac => \cp2|clkout~q\,
	datad => \cp1|datoin~3_combout\,
	combout => \cp1|datoin:indice[0]~1_combout\);

-- Location: LCCOMB_X4_Y3_N4
\cp1|datoin:indice[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp1|datoin:indice[0]~0_combout\ = (\cp1|datoin:indice[0]~2_combout\ & ((!\cp1|datoin:indice[0]~q\))) # (!\cp1|datoin:indice[0]~2_combout\ & (!\cp1|datoin~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp1|datoin~0_combout\,
	datac => \cp1|datoin:indice[0]~q\,
	datad => \cp1|datoin:indice[0]~2_combout\,
	combout => \cp1|datoin:indice[0]~0_combout\);

-- Location: FF_X4_Y3_N5
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

-- Location: LCCOMB_X4_Y3_N0
\cp1|datoin:indice[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp1|datoin:indice[1]~0_combout\ = (\cp1|datoin:indice[0]~1_combout\ & (((\cp1|datoin:indice[1]~q\)))) # (!\cp1|datoin:indice[0]~1_combout\ & (\cp1|datoin:indice[0]~2_combout\ & (\cp1|datoin:indice[0]~q\ $ (\cp1|datoin:indice[1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp1|datoin:indice[0]~2_combout\,
	datab => \cp1|datoin:indice[0]~q\,
	datac => \cp1|datoin:indice[1]~q\,
	datad => \cp1|datoin:indice[0]~1_combout\,
	combout => \cp1|datoin:indice[1]~0_combout\);

-- Location: FF_X4_Y3_N1
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

-- Location: LCCOMB_X4_Y3_N14
\cp1|datoin~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp1|datoin~2_combout\ = (!\cp1|datoin:indice[3]~q\ & (!\cp1|datoin:indice[0]~q\ & (!\cp1|datoin:indice[2]~q\ & !\cp1|datoin:indice[1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp1|datoin:indice[3]~q\,
	datab => \cp1|datoin:indice[0]~q\,
	datac => \cp1|datoin:indice[2]~q\,
	datad => \cp1|datoin:indice[1]~q\,
	combout => \cp1|datoin~2_combout\);

-- Location: LCCOMB_X5_Y3_N4
\cp1|datoin:indice[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp1|datoin:indice[0]~2_combout\ = (!\cp1|datoin~0_combout\ & ((\cp1|LessThan0~0_combout\) # ((\sdi~input_o\) # (!\cp1|datoin~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp1|LessThan0~0_combout\,
	datab => \cp1|datoin~0_combout\,
	datac => \sdi~input_o\,
	datad => \cp1|datoin~2_combout\,
	combout => \cp1|datoin:indice[0]~2_combout\);

-- Location: LCCOMB_X4_Y3_N22
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

-- Location: FF_X4_Y3_N23
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

-- Location: LCCOMB_X4_Y3_N6
\cp1|datoin:indice[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp1|datoin:indice[3]~0_combout\ = (\cp1|datoin:indice[2]~q\ & (\cp1|datoin:indice[1]~q\ & (\cp1|datoin:indice[0]~q\ & !\cp1|datoin:scint~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp1|datoin:indice[2]~q\,
	datab => \cp1|datoin:indice[1]~q\,
	datac => \cp1|datoin:indice[0]~q\,
	datad => \cp1|datoin:scint~q\,
	combout => \cp1|datoin:indice[3]~0_combout\);

-- Location: LCCOMB_X4_Y3_N10
\cp1|datoin:indice[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp1|datoin:indice[3]~1_combout\ = (!\cp2|clkout~q\ & ((\cp1|datoin:indice[3]~q\) # (\cp1|datoin:indice[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp2|clkout~q\,
	datac => \cp1|datoin:indice[3]~q\,
	datad => \cp1|datoin:indice[3]~0_combout\,
	combout => \cp1|datoin:indice[3]~1_combout\);

-- Location: FF_X4_Y3_N11
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

-- Location: LCCOMB_X8_Y3_N8
\cp1|sc_prev~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp1|sc_prev~2_combout\ = (!\cp1|datoin:indice[0]~q\ & (!\cp1|datoin:indice[2]~q\ & (\cp1|datoin:indice[1]~q\ & \cp1|datoin:indice[3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp1|datoin:indice[0]~q\,
	datab => \cp1|datoin:indice[2]~q\,
	datac => \cp1|datoin:indice[1]~q\,
	datad => \cp1|datoin:indice[3]~q\,
	combout => \cp1|sc_prev~2_combout\);

-- Location: LCCOMB_X4_Y3_N20
\cp1|datoin:scint~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp1|datoin:scint~0_combout\ = (!\cp2|clkout~q\ & ((\cp1|datoin:scint~q\) # (\cp1|sc_prev~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp2|clkout~q\,
	datac => \cp1|datoin:scint~q\,
	datad => \cp1|sc_prev~2_combout\,
	combout => \cp1|datoin:scint~0_combout\);

-- Location: FF_X4_Y3_N21
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
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp1|datoin:scint~q\);

-- Location: LCCOMB_X4_Y3_N28
\cp1|sc_prev~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp1|sc_prev~3_combout\ = (\cp2|clkout~q\ & (((\cp1|sc_prev~q\)))) # (!\cp2|clkout~q\ & ((\cp1|datoin:scint~q\ & (\cp1|sc_prev~q\)) # (!\cp1|datoin:scint~q\ & ((!\cp1|sc_prev~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp2|clkout~q\,
	datab => \cp1|datoin:scint~q\,
	datac => \cp1|sc_prev~q\,
	datad => \cp1|sc_prev~2_combout\,
	combout => \cp1|sc_prev~3_combout\);

-- Location: FF_X4_Y3_N29
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

-- Location: LCCOMB_X4_Y3_N2
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

-- Location: FF_X4_Y3_N3
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

-- Location: LCCOMB_X7_Y3_N6
\cp3|cp4|fin\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp3|cp4|fin~combout\ = (\cp3|cp4|fin~0_combout\ & \cp3|cp4|Q\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp3|cp4|fin~0_combout\,
	datac => \cp3|cp4|Q\(4),
	combout => \cp3|cp4|fin~combout\);

-- Location: LCCOMB_X8_Y3_N4
\cp3|cp1|Q~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp3|cp1|Q~0_combout\ = (\cp3|cp1|Q\(14) & !\cp3|cp3|estado.e1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp3|cp1|Q\(14),
	datac => \cp3|cp3|estado.e1~q\,
	combout => \cp3|cp1|Q~0_combout\);

-- Location: LCCOMB_X7_Y3_N8
\cp3|cp1|Q[12]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp3|cp1|Q[12]~1_combout\ = (\cp3|cp3|estado.e1~q\) # (\cp3|cp5|est.e2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cp3|cp3|estado.e1~q\,
	datad => \cp3|cp5|est.e2~q\,
	combout => \cp3|cp1|Q[12]~1_combout\);

-- Location: FF_X8_Y3_N5
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
	ena => \cp3|cp1|Q[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp3|cp1|Q\(15));

-- Location: LCCOMB_X7_Y3_N0
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


