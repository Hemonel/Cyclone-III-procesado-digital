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

-- DATE "03/19/2022 19:53:16"

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

ENTITY 	spi_dac IS
    PORT (
	reset : IN std_logic;
	sc : IN std_logic;
	clk : IN std_logic;
	din : IN std_logic_vector(9 DOWNTO 0);
	sdo : OUT std_logic;
	eoc : OUT std_logic;
	sck : OUT std_logic;
	cs : OUT std_logic
	);
END spi_dac;

-- Design Ports Information
-- sdo	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- eoc	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sck	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cs	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sc	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[9]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[8]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[7]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[6]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[5]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[4]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[3]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[2]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[1]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[0]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF spi_dac IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_sc : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_din : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_sdo : std_logic;
SIGNAL ww_eoc : std_logic;
SIGNAL ww_sck : std_logic;
SIGNAL ww_cs : std_logic;
SIGNAL \cp2|clkout~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \cp4|Q[3]~8_combout\ : std_logic;
SIGNAL \cp2|contador~1_combout\ : std_logic;
SIGNAL \cp1|Q~7_combout\ : std_logic;
SIGNAL \cp1|Q~8_combout\ : std_logic;
SIGNAL \cp1|Q~9_combout\ : std_logic;
SIGNAL \cp1|Q~10_combout\ : std_logic;
SIGNAL \cp1|Q~11_combout\ : std_logic;
SIGNAL \cp1|Q~12_combout\ : std_logic;
SIGNAL \cp1|Q~13_combout\ : std_logic;
SIGNAL \cp1|Q~14_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \din[7]~input_o\ : std_logic;
SIGNAL \din[6]~input_o\ : std_logic;
SIGNAL \din[5]~input_o\ : std_logic;
SIGNAL \din[4]~input_o\ : std_logic;
SIGNAL \din[3]~input_o\ : std_logic;
SIGNAL \din[2]~input_o\ : std_logic;
SIGNAL \din[1]~input_o\ : std_logic;
SIGNAL \din[0]~input_o\ : std_logic;
SIGNAL \cp2|clkout~clkctrl_outclk\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \sdo~output_o\ : std_logic;
SIGNAL \eoc~output_o\ : std_logic;
SIGNAL \sck~output_o\ : std_logic;
SIGNAL \cs~output_o\ : std_logic;
SIGNAL \sc~input_o\ : std_logic;
SIGNAL \cp3|Selector0~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \cp3|estado.e0~q\ : std_logic;
SIGNAL \cp3|estado~8_combout\ : std_logic;
SIGNAL \cp3|estado.e1~q\ : std_logic;
SIGNAL \din[8]~input_o\ : std_logic;
SIGNAL \cp1|Q~6_combout\ : std_logic;
SIGNAL \cp5|Selector0~0_combout\ : std_logic;
SIGNAL \cp4|Q[1]~4_combout\ : std_logic;
SIGNAL \cp4|Q[0]~12_combout\ : std_logic;
SIGNAL \cp4|Q[1]~5\ : std_logic;
SIGNAL \cp4|Q[2]~6_combout\ : std_logic;
SIGNAL \cp4|fin~0_combout\ : std_logic;
SIGNAL \cp5|Selector0~1_combout\ : std_logic;
SIGNAL \cp5|est.e0~q\ : std_logic;
SIGNAL \cp5|est~7_combout\ : std_logic;
SIGNAL \cp5|est.e1~q\ : std_logic;
SIGNAL \cp5|Selector1~0_combout\ : std_logic;
SIGNAL \cp5|est.e2~q\ : std_logic;
SIGNAL \cp1|Q[15]~1_combout\ : std_logic;
SIGNAL \din[9]~input_o\ : std_logic;
SIGNAL \cp1|Q~5_combout\ : std_logic;
SIGNAL \cp1|Q~4_combout\ : std_logic;
SIGNAL \cp1|Q~3_combout\ : std_logic;
SIGNAL \cp1|Q~2_combout\ : std_logic;
SIGNAL \cp1|Q~0_combout\ : std_logic;
SIGNAL \cp5|sdo~0_combout\ : std_logic;
SIGNAL \cp4|Q[2]~7\ : std_logic;
SIGNAL \cp4|Q[3]~9\ : std_logic;
SIGNAL \cp4|Q[4]~10_combout\ : std_logic;
SIGNAL \cp4|fin~combout\ : std_logic;
SIGNAL \cp2|contador~2_combout\ : std_logic;
SIGNAL \cp2|contador~0_combout\ : std_logic;
SIGNAL \cp2|LessThan1~0_combout\ : std_logic;
SIGNAL \cp2|clkout~q\ : std_logic;
SIGNAL \cp5|sck~0_combout\ : std_logic;
SIGNAL \cp5|Selector2~0_combout\ : std_logic;
SIGNAL \cp1|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \cp2|contador\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \cp4|Q\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \cp2|ALT_INV_clkout~clkctrl_outclk\ : std_logic;
SIGNAL \cp3|ALT_INV_estado.e1~q\ : std_logic;

BEGIN

ww_reset <= reset;
ww_sc <= sc;
ww_clk <= clk;
ww_din <= din;
sdo <= ww_sdo;
eoc <= ww_eoc;
sck <= ww_sck;
cs <= ww_cs;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\cp2|clkout~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \cp2|clkout~q\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\cp2|ALT_INV_clkout~clkctrl_outclk\ <= NOT \cp2|clkout~clkctrl_outclk\;
\cp3|ALT_INV_estado.e1~q\ <= NOT \cp3|estado.e1~q\;

-- Location: FF_X2_Y22_N21
\cp4|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|ALT_INV_clkout~clkctrl_outclk\,
	d => \cp4|Q[3]~8_combout\,
	clrn => \cp3|ALT_INV_estado.e1~q\,
	ena => \cp5|est.e2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|Q\(3));

-- Location: LCCOMB_X2_Y22_N20
\cp4|Q[3]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Q[3]~8_combout\ = (\cp4|Q\(3) & (\cp4|Q[2]~7\ $ (GND))) # (!\cp4|Q\(3) & (!\cp4|Q[2]~7\ & VCC))
-- \cp4|Q[3]~9\ = CARRY((\cp4|Q\(3) & !\cp4|Q[2]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Q\(3),
	datad => VCC,
	cin => \cp4|Q[2]~7\,
	combout => \cp4|Q[3]~8_combout\,
	cout => \cp4|Q[3]~9\);

-- Location: FF_X1_Y22_N9
\cp1|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|ALT_INV_clkout~clkctrl_outclk\,
	d => \cp1|Q~14_combout\,
	asdata => \din[0]~input_o\,
	clrn => \reset~input_o\,
	sload => \cp3|estado.e1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp1|Q\(2));

-- Location: FF_X1_Y14_N7
\cp2|contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cp2|contador~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp2|contador\(1));

-- Location: LCCOMB_X1_Y14_N6
\cp2|contador~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp2|contador~1_combout\ = (!\cp2|contador\(2) & (\cp2|contador\(1) $ (!\cp2|contador\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp2|contador\(2),
	datac => \cp2|contador\(1),
	datad => \cp2|contador\(0),
	combout => \cp2|contador~1_combout\);

-- Location: FF_X1_Y22_N31
\cp1|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|ALT_INV_clkout~clkctrl_outclk\,
	d => \cp1|Q~7_combout\,
	clrn => \reset~input_o\,
	ena => \cp1|Q[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp1|Q\(9));

-- Location: FF_X1_Y22_N5
\cp1|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|ALT_INV_clkout~clkctrl_outclk\,
	d => \cp1|Q~8_combout\,
	clrn => \reset~input_o\,
	ena => \cp1|Q[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp1|Q\(8));

-- Location: LCCOMB_X1_Y22_N30
\cp1|Q~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp1|Q~7_combout\ = (\cp3|estado.e1~q\ & (\din[7]~input_o\)) # (!\cp3|estado.e1~q\ & ((\cp1|Q\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \din[7]~input_o\,
	datab => \cp3|estado.e1~q\,
	datac => \cp1|Q\(8),
	combout => \cp1|Q~7_combout\);

-- Location: FF_X1_Y22_N27
\cp1|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|ALT_INV_clkout~clkctrl_outclk\,
	d => \cp1|Q~9_combout\,
	clrn => \reset~input_o\,
	ena => \cp1|Q[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp1|Q\(7));

-- Location: LCCOMB_X1_Y22_N4
\cp1|Q~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp1|Q~8_combout\ = (\cp3|estado.e1~q\ & ((\din[6]~input_o\))) # (!\cp3|estado.e1~q\ & (\cp1|Q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp1|Q\(7),
	datac => \din[6]~input_o\,
	datad => \cp3|estado.e1~q\,
	combout => \cp1|Q~8_combout\);

-- Location: FF_X1_Y22_N25
\cp1|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|ALT_INV_clkout~clkctrl_outclk\,
	d => \cp1|Q~10_combout\,
	clrn => \reset~input_o\,
	ena => \cp1|Q[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp1|Q\(6));

-- Location: LCCOMB_X1_Y22_N26
\cp1|Q~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp1|Q~9_combout\ = (\cp3|estado.e1~q\ & ((\din[5]~input_o\))) # (!\cp3|estado.e1~q\ & (\cp1|Q\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cp1|Q\(6),
	datac => \din[5]~input_o\,
	datad => \cp3|estado.e1~q\,
	combout => \cp1|Q~9_combout\);

-- Location: FF_X1_Y22_N7
\cp1|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|ALT_INV_clkout~clkctrl_outclk\,
	d => \cp1|Q~11_combout\,
	clrn => \reset~input_o\,
	ena => \cp1|Q[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp1|Q\(5));

-- Location: LCCOMB_X1_Y22_N24
\cp1|Q~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp1|Q~10_combout\ = (\cp3|estado.e1~q\ & ((\din[4]~input_o\))) # (!\cp3|estado.e1~q\ & (\cp1|Q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp1|Q\(5),
	datac => \din[4]~input_o\,
	datad => \cp3|estado.e1~q\,
	combout => \cp1|Q~10_combout\);

-- Location: FF_X1_Y22_N29
\cp1|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|ALT_INV_clkout~clkctrl_outclk\,
	d => \cp1|Q~12_combout\,
	clrn => \reset~input_o\,
	ena => \cp1|Q[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp1|Q\(4));

-- Location: LCCOMB_X1_Y22_N6
\cp1|Q~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp1|Q~11_combout\ = (\cp3|estado.e1~q\ & ((\din[3]~input_o\))) # (!\cp3|estado.e1~q\ & (\cp1|Q\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cp1|Q\(4),
	datac => \din[3]~input_o\,
	datad => \cp3|estado.e1~q\,
	combout => \cp1|Q~11_combout\);

-- Location: FF_X1_Y22_N11
\cp1|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|ALT_INV_clkout~clkctrl_outclk\,
	d => \cp1|Q~13_combout\,
	clrn => \reset~input_o\,
	ena => \cp1|Q[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp1|Q\(3));

-- Location: LCCOMB_X1_Y22_N28
\cp1|Q~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp1|Q~12_combout\ = (\cp3|estado.e1~q\ & ((\din[2]~input_o\))) # (!\cp3|estado.e1~q\ & (\cp1|Q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp1|Q\(3),
	datac => \din[2]~input_o\,
	datad => \cp3|estado.e1~q\,
	combout => \cp1|Q~12_combout\);

-- Location: LCCOMB_X1_Y22_N10
\cp1|Q~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp1|Q~13_combout\ = (\cp3|estado.e1~q\ & ((\din[1]~input_o\))) # (!\cp3|estado.e1~q\ & (\cp1|Q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cp1|Q\(2),
	datac => \din[1]~input_o\,
	datad => \cp3|estado.e1~q\,
	combout => \cp1|Q~13_combout\);

-- Location: LCCOMB_X1_Y22_N8
\cp1|Q~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp1|Q~14_combout\ = (\cp1|Q\(2) & !\cp5|est.e2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cp1|Q\(2),
	datad => \cp5|est.e2~q\,
	combout => \cp1|Q~14_combout\);

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

-- Location: IOIBUF_X0_Y26_N8
\din[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(7),
	o => \din[7]~input_o\);

-- Location: IOIBUF_X0_Y25_N15
\din[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(6),
	o => \din[6]~input_o\);

-- Location: IOIBUF_X0_Y22_N15
\din[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(5),
	o => \din[5]~input_o\);

-- Location: IOIBUF_X0_Y27_N22
\din[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(4),
	o => \din[4]~input_o\);

-- Location: IOIBUF_X0_Y23_N8
\din[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(3),
	o => \din[3]~input_o\);

-- Location: IOIBUF_X0_Y25_N22
\din[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(2),
	o => \din[2]~input_o\);

-- Location: IOIBUF_X0_Y27_N1
\din[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(1),
	o => \din[1]~input_o\);

-- Location: IOIBUF_X0_Y24_N1
\din[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(0),
	o => \din[0]~input_o\);

-- Location: CLKCTRL_G2
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

-- Location: IOOBUF_X26_Y0_N16
\sdo~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cp5|sdo~0_combout\,
	devoe => ww_devoe,
	o => \sdo~output_o\);

-- Location: IOOBUF_X0_Y20_N9
\eoc~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cp4|fin~combout\,
	devoe => ww_devoe,
	o => \eoc~output_o\);

-- Location: IOOBUF_X28_Y0_N16
\sck~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cp5|sck~0_combout\,
	devoe => ww_devoe,
	o => \sck~output_o\);

-- Location: IOOBUF_X28_Y0_N23
\cs~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cp5|Selector2~0_combout\,
	devoe => ww_devoe,
	o => \cs~output_o\);

-- Location: IOIBUF_X0_Y23_N1
\sc~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sc,
	o => \sc~input_o\);

-- Location: LCCOMB_X2_Y22_N12
\cp3|Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp3|Selector0~0_combout\ = (\cp3|estado.e1~q\) # (!\sc~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp3|estado.e1~q\,
	datad => \sc~input_o\,
	combout => \cp3|Selector0~0_combout\);

-- Location: IOIBUF_X0_Y23_N15
\reset~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: FF_X2_Y22_N13
\cp3|estado.e0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp3|Selector0~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp3|estado.e0~q\);

-- Location: LCCOMB_X2_Y22_N10
\cp3|estado~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp3|estado~8_combout\ = (!\sc~input_o\ & !\cp3|estado.e0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sc~input_o\,
	datad => \cp3|estado.e0~q\,
	combout => \cp3|estado~8_combout\);

-- Location: FF_X2_Y22_N11
\cp3|estado.e1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp3|estado~8_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp3|estado.e1~q\);

-- Location: IOIBUF_X0_Y26_N1
\din[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(8),
	o => \din[8]~input_o\);

-- Location: LCCOMB_X1_Y22_N20
\cp1|Q~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp1|Q~6_combout\ = (\cp3|estado.e1~q\ & ((\din[8]~input_o\))) # (!\cp3|estado.e1~q\ & (\cp1|Q\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp1|Q\(9),
	datab => \cp3|estado.e1~q\,
	datac => \din[8]~input_o\,
	combout => \cp1|Q~6_combout\);

-- Location: LCCOMB_X2_Y22_N8
\cp5|Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp5|Selector0~0_combout\ = (!\cp3|estado.e1~q\ & !\cp5|est.e0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp3|estado.e1~q\,
	datad => \cp5|est.e0~q\,
	combout => \cp5|Selector0~0_combout\);

-- Location: LCCOMB_X2_Y22_N16
\cp4|Q[1]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Q[1]~4_combout\ = (\cp4|Q\(0) & (\cp4|Q\(1) $ (VCC))) # (!\cp4|Q\(0) & (\cp4|Q\(1) & VCC))
-- \cp4|Q[1]~5\ = CARRY((\cp4|Q\(0) & \cp4|Q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Q\(0),
	datab => \cp4|Q\(1),
	datad => VCC,
	combout => \cp4|Q[1]~4_combout\,
	cout => \cp4|Q[1]~5\);

-- Location: FF_X2_Y22_N17
\cp4|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|ALT_INV_clkout~clkctrl_outclk\,
	d => \cp4|Q[1]~4_combout\,
	clrn => \cp3|ALT_INV_estado.e1~q\,
	ena => \cp5|est.e2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|Q\(1));

-- Location: LCCOMB_X1_Y22_N16
\cp4|Q[0]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Q[0]~12_combout\ = \cp4|Q\(0) $ (\cp5|est.e2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cp4|Q\(0),
	datad => \cp5|est.e2~q\,
	combout => \cp4|Q[0]~12_combout\);

-- Location: FF_X1_Y22_N17
\cp4|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|ALT_INV_clkout~clkctrl_outclk\,
	d => \cp4|Q[0]~12_combout\,
	clrn => \cp3|ALT_INV_estado.e1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|Q\(0));

-- Location: LCCOMB_X2_Y22_N18
\cp4|Q[2]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Q[2]~6_combout\ = (\cp4|Q\(2) & (!\cp4|Q[1]~5\)) # (!\cp4|Q\(2) & ((\cp4|Q[1]~5\) # (GND)))
-- \cp4|Q[2]~7\ = CARRY((!\cp4|Q[1]~5\) # (!\cp4|Q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cp4|Q\(2),
	datad => VCC,
	cin => \cp4|Q[1]~5\,
	combout => \cp4|Q[2]~6_combout\,
	cout => \cp4|Q[2]~7\);

-- Location: FF_X2_Y22_N19
\cp4|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|ALT_INV_clkout~clkctrl_outclk\,
	d => \cp4|Q[2]~6_combout\,
	clrn => \cp3|ALT_INV_estado.e1~q\,
	ena => \cp5|est.e2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|Q\(2));

-- Location: LCCOMB_X2_Y22_N0
\cp4|fin~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|fin~0_combout\ = (!\cp4|Q\(3) & (!\cp4|Q\(1) & (!\cp4|Q\(0) & !\cp4|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Q\(3),
	datab => \cp4|Q\(1),
	datac => \cp4|Q\(0),
	datad => \cp4|Q\(2),
	combout => \cp4|fin~0_combout\);

-- Location: LCCOMB_X2_Y22_N28
\cp5|Selector0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp5|Selector0~1_combout\ = (!\cp5|Selector0~0_combout\ & (((!\cp4|fin~0_combout\) # (!\cp5|est.e2~q\)) # (!\cp4|Q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Q\(4),
	datab => \cp5|est.e2~q\,
	datac => \cp5|Selector0~0_combout\,
	datad => \cp4|fin~0_combout\,
	combout => \cp5|Selector0~1_combout\);

-- Location: FF_X2_Y22_N29
\cp5|est.e0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp5|Selector0~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp5|est.e0~q\);

-- Location: LCCOMB_X2_Y22_N14
\cp5|est~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp5|est~7_combout\ = (\cp3|estado.e1~q\ & !\cp5|est.e0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp3|estado.e1~q\,
	datad => \cp5|est.e0~q\,
	combout => \cp5|est~7_combout\);

-- Location: FF_X2_Y22_N15
\cp5|est.e1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp5|est~7_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp5|est.e1~q\);

-- Location: LCCOMB_X2_Y22_N4
\cp5|Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp5|Selector1~0_combout\ = (\cp5|est.e1~q\) # ((\cp5|est.e2~q\ & ((!\cp4|fin~0_combout\) # (!\cp4|Q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Q\(4),
	datab => \cp5|est.e1~q\,
	datac => \cp5|est.e2~q\,
	datad => \cp4|fin~0_combout\,
	combout => \cp5|Selector1~0_combout\);

-- Location: FF_X2_Y22_N5
\cp5|est.e2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|clkout~clkctrl_outclk\,
	d => \cp5|Selector1~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp5|est.e2~q\);

-- Location: LCCOMB_X1_Y22_N12
\cp1|Q[15]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp1|Q[15]~1_combout\ = (\cp3|estado.e1~q\) # (\cp5|est.e2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cp3|estado.e1~q\,
	datad => \cp5|est.e2~q\,
	combout => \cp1|Q[15]~1_combout\);

-- Location: FF_X1_Y22_N21
\cp1|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|ALT_INV_clkout~clkctrl_outclk\,
	d => \cp1|Q~6_combout\,
	clrn => \reset~input_o\,
	ena => \cp1|Q[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp1|Q\(10));

-- Location: IOIBUF_X0_Y25_N1
\din[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(9),
	o => \din[9]~input_o\);

-- Location: LCCOMB_X1_Y22_N18
\cp1|Q~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp1|Q~5_combout\ = (\cp3|estado.e1~q\ & ((\din[9]~input_o\))) # (!\cp3|estado.e1~q\ & (\cp1|Q\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cp1|Q\(10),
	datac => \din[9]~input_o\,
	datad => \cp3|estado.e1~q\,
	combout => \cp1|Q~5_combout\);

-- Location: FF_X1_Y22_N19
\cp1|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|ALT_INV_clkout~clkctrl_outclk\,
	d => \cp1|Q~5_combout\,
	clrn => \reset~input_o\,
	ena => \cp1|Q[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp1|Q\(11));

-- Location: LCCOMB_X1_Y22_N0
\cp1|Q~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp1|Q~4_combout\ = (\cp1|Q\(11)) # (\cp3|estado.e1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cp1|Q\(11),
	datac => \cp3|estado.e1~q\,
	combout => \cp1|Q~4_combout\);

-- Location: FF_X1_Y22_N1
\cp1|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|ALT_INV_clkout~clkctrl_outclk\,
	d => \cp1|Q~4_combout\,
	clrn => \reset~input_o\,
	ena => \cp1|Q[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp1|Q\(12));

-- Location: LCCOMB_X1_Y22_N2
\cp1|Q~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp1|Q~3_combout\ = (\cp1|Q\(12)) # (\cp3|estado.e1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cp1|Q\(12),
	datac => \cp3|estado.e1~q\,
	combout => \cp1|Q~3_combout\);

-- Location: FF_X1_Y22_N3
\cp1|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|ALT_INV_clkout~clkctrl_outclk\,
	d => \cp1|Q~3_combout\,
	clrn => \reset~input_o\,
	ena => \cp1|Q[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp1|Q\(13));

-- Location: LCCOMB_X1_Y22_N22
\cp1|Q~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp1|Q~2_combout\ = (\cp1|Q\(13)) # (\cp3|estado.e1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cp1|Q\(13),
	datac => \cp3|estado.e1~q\,
	combout => \cp1|Q~2_combout\);

-- Location: FF_X1_Y22_N23
\cp1|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|ALT_INV_clkout~clkctrl_outclk\,
	d => \cp1|Q~2_combout\,
	clrn => \reset~input_o\,
	ena => \cp1|Q[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp1|Q\(14));

-- Location: LCCOMB_X1_Y22_N14
\cp1|Q~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp1|Q~0_combout\ = (\cp1|Q\(14) & !\cp3|estado.e1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cp1|Q\(14),
	datad => \cp3|estado.e1~q\,
	combout => \cp1|Q~0_combout\);

-- Location: FF_X1_Y22_N15
\cp1|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|ALT_INV_clkout~clkctrl_outclk\,
	d => \cp1|Q~0_combout\,
	clrn => \reset~input_o\,
	ena => \cp1|Q[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp1|Q\(15));

-- Location: LCCOMB_X2_Y22_N26
\cp5|sdo~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp5|sdo~0_combout\ = (\cp1|Q\(15) & \cp5|est.e0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp1|Q\(15),
	datad => \cp5|est.e0~q\,
	combout => \cp5|sdo~0_combout\);

-- Location: LCCOMB_X2_Y22_N22
\cp4|Q[4]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|Q[4]~10_combout\ = \cp4|Q\(4) $ (\cp4|Q[3]~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cp4|Q\(4),
	cin => \cp4|Q[3]~9\,
	combout => \cp4|Q[4]~10_combout\);

-- Location: FF_X2_Y22_N23
\cp4|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cp2|ALT_INV_clkout~clkctrl_outclk\,
	d => \cp4|Q[4]~10_combout\,
	clrn => \cp3|ALT_INV_estado.e1~q\,
	ena => \cp5|est.e2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp4|Q\(4));

-- Location: LCCOMB_X2_Y22_N6
\cp4|fin\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp4|fin~combout\ = (\cp4|Q\(4) & \cp4|fin~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cp4|Q\(4),
	datad => \cp4|fin~0_combout\,
	combout => \cp4|fin~combout\);

-- Location: LCCOMB_X1_Y14_N24
\cp2|contador~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp2|contador~2_combout\ = (!\cp2|contador\(0) & !\cp2|contador\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cp2|contador\(0),
	datad => \cp2|contador\(2),
	combout => \cp2|contador~2_combout\);

-- Location: FF_X1_Y14_N25
\cp2|contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cp2|contador~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp2|contador\(0));

-- Location: LCCOMB_X1_Y14_N30
\cp2|contador~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp2|contador~0_combout\ = (\cp2|contador\(1) & (!\cp2|contador\(2) & !\cp2|contador\(0))) # (!\cp2|contador\(1) & (\cp2|contador\(2) & \cp2|contador\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp2|contador\(1),
	datac => \cp2|contador\(2),
	datad => \cp2|contador\(0),
	combout => \cp2|contador~0_combout\);

-- Location: FF_X1_Y14_N31
\cp2|contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cp2|contador~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp2|contador\(2));

-- Location: LCCOMB_X1_Y14_N20
\cp2|LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp2|LessThan1~0_combout\ = (!\cp2|contador\(2) & ((\cp2|contador\(0)) # (!\cp2|contador\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp2|contador\(1),
	datac => \cp2|contador\(2),
	datad => \cp2|contador\(0),
	combout => \cp2|LessThan1~0_combout\);

-- Location: FF_X1_Y14_N21
\cp2|clkout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cp2|LessThan1~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp2|clkout~q\);

-- Location: LCCOMB_X2_Y22_N30
\cp5|sck~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp5|sck~0_combout\ = (\cp2|clkout~q\ & (\cp5|est.e2~q\ & ((!\cp4|fin~0_combout\) # (!\cp4|Q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp2|clkout~q\,
	datab => \cp5|est.e2~q\,
	datac => \cp4|Q\(4),
	datad => \cp4|fin~0_combout\,
	combout => \cp5|sck~0_combout\);

-- Location: LCCOMB_X2_Y22_N24
\cp5|Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cp5|Selector2~0_combout\ = ((\cp5|est.e2~q\ & (\cp4|fin~0_combout\ & \cp4|Q\(4)))) # (!\cp5|est.e0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp5|est.e2~q\,
	datab => \cp4|fin~0_combout\,
	datac => \cp4|Q\(4),
	datad => \cp5|est.e0~q\,
	combout => \cp5|Selector2~0_combout\);

ww_sdo <= \sdo~output_o\;

ww_eoc <= \eoc~output_o\;

ww_sck <= \sck~output_o\;

ww_cs <= \cs~output_o\;
END structure;


