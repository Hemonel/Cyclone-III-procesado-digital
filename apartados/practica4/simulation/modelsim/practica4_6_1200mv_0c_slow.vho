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
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "03/06/2023 19:14:30"

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

ENTITY 	spi_adc IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	sc : IN std_logic;
	sdi : IN std_logic;
	sck : OUT std_logic;
	cs : OUT std_logic;
	dout : OUT std_logic_vector(9 DOWNTO 0)
	);
END spi_adc;

-- Design Ports Information
-- sck	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cs	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[0]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[1]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[2]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[3]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[4]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[5]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[6]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[7]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[8]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[9]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdi	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sc	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF spi_adc IS
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
SIGNAL ww_sc : std_logic;
SIGNAL ww_sdi : std_logic;
SIGNAL ww_sck : std_logic;
SIGNAL ww_cs : std_logic;
SIGNAL ww_dout : std_logic_vector(9 DOWNTO 0);
SIGNAL \clkadc|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \clkadc|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clkadc|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clkadc|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_e_sck_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clkadc|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \clkadc|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_e_sck_outclk\ : std_logic;
SIGNAL \clkadc|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \sc~input_o\ : std_logic;
SIGNAL \altaimp~3_combout\ : std_logic;
SIGNAL \indice~0_combout\ : std_logic;
SIGNAL \datoin:altaimp[0]~q\ : std_logic;
SIGNAL \altaimp~2_combout\ : std_logic;
SIGNAL \datoin:altaimp[1]~q\ : std_logic;
SIGNAL \datoin~2_combout\ : std_logic;
SIGNAL \altaimp~4_combout\ : std_logic;
SIGNAL \datoin:altaimp[2]~q\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \altaimp~5_combout\ : std_logic;
SIGNAL \datoin:altaimp[3]~q\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \sdi~input_o\ : std_logic;
SIGNAL \datoin~1_combout\ : std_logic;
SIGNAL \datoin:indice[3]~0_combout\ : std_logic;
SIGNAL \datoin:indice[3]~1_combout\ : std_logic;
SIGNAL \datoin:indice[3]~q\ : std_logic;
SIGNAL \datoin~3_combout\ : std_logic;
SIGNAL \datoin:indice[0]~1_combout\ : std_logic;
SIGNAL \datoin:indice[1]~0_combout\ : std_logic;
SIGNAL \datoin:indice[1]~q\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \datoin:indice[2]~0_combout\ : std_logic;
SIGNAL \datoin:indice[2]~q\ : std_logic;
SIGNAL \datoin~0_combout\ : std_logic;
SIGNAL \datoin:indice[0]~2_combout\ : std_logic;
SIGNAL \datoin:indice[0]~0_combout\ : std_logic;
SIGNAL \datoin:indice[0]~q\ : std_logic;
SIGNAL \sc_prev~2_combout\ : std_logic;
SIGNAL \datoin:scint~0_combout\ : std_logic;
SIGNAL \datoin:scint~q\ : std_logic;
SIGNAL \sc_prev~3_combout\ : std_logic;
SIGNAL \sc_prev~q\ : std_logic;
SIGNAL \cs~0_combout\ : std_logic;
SIGNAL \cs~reg0_q\ : std_logic;
SIGNAL \dato~0_combout\ : std_logic;
SIGNAL \datoin:dato[0]~0_combout\ : std_logic;
SIGNAL \datoin:dato[0]~q\ : std_logic;
SIGNAL \Decoder0~0_combout\ : std_logic;
SIGNAL \dato~1_combout\ : std_logic;
SIGNAL \datoin:dato[1]~q\ : std_logic;
SIGNAL \Decoder0~1_combout\ : std_logic;
SIGNAL \dato~2_combout\ : std_logic;
SIGNAL \datoin:dato[2]~q\ : std_logic;
SIGNAL \Decoder0~2_combout\ : std_logic;
SIGNAL \dato~3_combout\ : std_logic;
SIGNAL \datoin:dato[3]~q\ : std_logic;
SIGNAL \Decoder0~3_combout\ : std_logic;
SIGNAL \dato~4_combout\ : std_logic;
SIGNAL \datoin:dato[4]~q\ : std_logic;
SIGNAL \Decoder0~4_combout\ : std_logic;
SIGNAL \dato~5_combout\ : std_logic;
SIGNAL \datoin:dato[5]~q\ : std_logic;
SIGNAL \Decoder0~5_combout\ : std_logic;
SIGNAL \dato~6_combout\ : std_logic;
SIGNAL \datoin:dato[6]~q\ : std_logic;
SIGNAL \Decoder0~6_combout\ : std_logic;
SIGNAL \dato~7_combout\ : std_logic;
SIGNAL \datoin:dato[7]~q\ : std_logic;
SIGNAL \Decoder0~7_combout\ : std_logic;
SIGNAL \dato~8_combout\ : std_logic;
SIGNAL \datoin:dato[8]~q\ : std_logic;
SIGNAL \Decoder0~8_combout\ : std_logic;
SIGNAL \dato~9_combout\ : std_logic;
SIGNAL \datoin:dato[9]~q\ : std_logic;
SIGNAL \clkadc|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clkadc|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_sc <= sc;
ww_sdi <= sdi;
sck <= ww_sck;
cs <= ww_cs;
dout <= ww_dout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clkadc|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \clk~input_o\);

\clkadc|altpll_component|auto_generated|wire_pll1_clk\(0) <= \clkadc|altpll_component|auto_generated|pll1_CLK_bus\(0);
\clkadc|altpll_component|auto_generated|wire_pll1_clk\(1) <= \clkadc|altpll_component|auto_generated|pll1_CLK_bus\(1);
\clkadc|altpll_component|auto_generated|wire_pll1_clk\(2) <= \clkadc|altpll_component|auto_generated|pll1_CLK_bus\(2);
\clkadc|altpll_component|auto_generated|wire_pll1_clk\(3) <= \clkadc|altpll_component|auto_generated|pll1_CLK_bus\(3);
\clkadc|altpll_component|auto_generated|wire_pll1_clk\(4) <= \clkadc|altpll_component|auto_generated|pll1_CLK_bus\(4);

\clkadc|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clkadc|altpll_component|auto_generated|wire_pll1_clk\(0));

\clkadc|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_e_sck_INCLK_bus\ <= (vcc & vcc & vcc & \clkadc|altpll_component|auto_generated|wire_pll1_clk\(0));
\clkadc|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\ <= NOT \clkadc|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;

-- Location: IOOBUF_X5_Y0_N2
\sck~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \clkadc|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_e_sck_outclk\,
	devoe => ww_devoe,
	o => ww_sck);

-- Location: IOOBUF_X7_Y29_N16
\cs~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cs~reg0_q\,
	devoe => ww_devoe,
	o => ww_cs);

-- Location: IOOBUF_X30_Y29_N23
\dout[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \datoin:dato[0]~q\,
	devoe => ww_devoe,
	o => ww_dout(0));

-- Location: IOOBUF_X39_Y29_N16
\dout[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \datoin:dato[1]~q\,
	devoe => ww_devoe,
	o => ww_dout(1));

-- Location: IOOBUF_X30_Y29_N9
\dout[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \datoin:dato[2]~q\,
	devoe => ww_devoe,
	o => ww_dout(2));

-- Location: IOOBUF_X35_Y29_N30
\dout[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \datoin:dato[3]~q\,
	devoe => ww_devoe,
	o => ww_dout(3));

-- Location: IOOBUF_X0_Y27_N9
\dout[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \datoin:dato[4]~q\,
	devoe => ww_devoe,
	o => ww_dout(4));

-- Location: IOOBUF_X9_Y29_N23
\dout[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \datoin:dato[5]~q\,
	devoe => ww_devoe,
	o => ww_dout(5));

-- Location: IOOBUF_X30_Y29_N16
\dout[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \datoin:dato[6]~q\,
	devoe => ww_devoe,
	o => ww_dout(6));

-- Location: IOOBUF_X41_Y26_N2
\dout[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \datoin:dato[7]~q\,
	devoe => ww_devoe,
	o => ww_dout(7));

-- Location: IOOBUF_X0_Y26_N9
\dout[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \datoin:dato[8]~q\,
	devoe => ww_devoe,
	o => ww_dout(8));

-- Location: IOOBUF_X0_Y27_N23
\dout[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \datoin:dato[9]~q\,
	devoe => ww_devoe,
	o => ww_dout(9));

-- Location: IOIBUF_X0_Y24_N1
\reset~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: IOIBUF_X0_Y14_N1
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: PLL_1
\clkadc|altpll_component|auto_generated|pll1\ : cycloneiii_pll
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
	areset => \reset~input_o\,
	fbin => \clkadc|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \clkadc|altpll_component|auto_generated|pll1_INCLK_bus\,
	fbout => \clkadc|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \clkadc|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_PLL1E0
\clkadc|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_e_sck\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "external clock output",
	ena_register_mode => "double register")
-- pragma translate_on
PORT MAP (
	inclk => \clkadc|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_e_sck_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clkadc|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_e_sck_outclk\);

-- Location: CLKCTRL_G3
\clkadc|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clkadc|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clkadc|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\);

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

-- Location: LCCOMB_X39_Y20_N6
\altaimp~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \altaimp~3_combout\ = (!\datoin:scint~q\ & (!\datoin:altaimp[0]~q\ & !\sc~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datoin:scint~q\,
	datac => \datoin:altaimp[0]~q\,
	datad => \sc~input_o\,
	combout => \altaimp~3_combout\);

-- Location: LCCOMB_X39_Y20_N16
\indice~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \indice~0_combout\ = (\sc~input_o\) # (!\datoin:scint~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc~input_o\,
	datac => \datoin:scint~q\,
	combout => \indice~0_combout\);

-- Location: FF_X39_Y20_N7
\datoin:altaimp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkadc|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \altaimp~3_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \indice~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datoin:altaimp[0]~q\);

-- Location: LCCOMB_X39_Y20_N28
\altaimp~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \altaimp~2_combout\ = (!\datoin:scint~q\ & (!\sc~input_o\ & (\datoin:altaimp[0]~q\ $ (\datoin:altaimp[1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datoin:scint~q\,
	datab => \datoin:altaimp[0]~q\,
	datac => \datoin:altaimp[1]~q\,
	datad => \sc~input_o\,
	combout => \altaimp~2_combout\);

-- Location: FF_X39_Y20_N29
\datoin:altaimp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkadc|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \altaimp~2_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \indice~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datoin:altaimp[1]~q\);

-- Location: LCCOMB_X39_Y20_N14
\datoin~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datoin~2_combout\ = (\sc~input_o\) # (\datoin:scint~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc~input_o\,
	datac => \datoin:scint~q\,
	combout => \datoin~2_combout\);

-- Location: LCCOMB_X39_Y20_N24
\altaimp~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \altaimp~4_combout\ = (!\datoin~2_combout\ & (\datoin:altaimp[2]~q\ $ (((\datoin:altaimp[0]~q\ & \datoin:altaimp[1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datoin:altaimp[0]~q\,
	datab => \datoin~2_combout\,
	datac => \datoin:altaimp[2]~q\,
	datad => \datoin:altaimp[1]~q\,
	combout => \altaimp~4_combout\);

-- Location: FF_X39_Y20_N25
\datoin:altaimp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkadc|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \altaimp~4_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \indice~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datoin:altaimp[2]~q\);

-- Location: LCCOMB_X39_Y20_N2
\Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = \datoin:altaimp[3]~q\ $ (((\datoin:altaimp[0]~q\ & (\datoin:altaimp[1]~q\ & \datoin:altaimp[2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datoin:altaimp[0]~q\,
	datab => \datoin:altaimp[1]~q\,
	datac => \datoin:altaimp[3]~q\,
	datad => \datoin:altaimp[2]~q\,
	combout => \Add0~0_combout\);

-- Location: LCCOMB_X39_Y20_N18
\altaimp~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \altaimp~5_combout\ = (!\sc~input_o\ & (\Add0~0_combout\ & !\datoin:scint~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc~input_o\,
	datab => \Add0~0_combout\,
	datac => \datoin:scint~q\,
	combout => \altaimp~5_combout\);

-- Location: FF_X39_Y20_N19
\datoin:altaimp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkadc|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \altaimp~5_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \indice~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datoin:altaimp[3]~q\);

-- Location: LCCOMB_X39_Y20_N12
\LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (\datoin:altaimp[3]~q\ & (\datoin:altaimp[0]~q\ & (\datoin:altaimp[1]~q\ & \datoin:altaimp[2]~q\))) # (!\datoin:altaimp[3]~q\ & (!\datoin:altaimp[2]~q\ & ((!\datoin:altaimp[1]~q\) # (!\datoin:altaimp[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datoin:altaimp[0]~q\,
	datab => \datoin:altaimp[1]~q\,
	datac => \datoin:altaimp[3]~q\,
	datad => \datoin:altaimp[2]~q\,
	combout => \LessThan0~0_combout\);

-- Location: IOIBUF_X41_Y19_N22
\sdi~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sdi,
	o => \sdi~input_o\);

-- Location: LCCOMB_X39_Y20_N0
\datoin~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datoin~1_combout\ = (\LessThan0~0_combout\) # ((\sdi~input_o\) # (!\datoin~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~0_combout\,
	datac => \datoin~0_combout\,
	datad => \sdi~input_o\,
	combout => \datoin~1_combout\);

-- Location: LCCOMB_X39_Y28_N26
\datoin:indice[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datoin:indice[3]~0_combout\ = (\datoin:indice[0]~q\ & (\datoin:indice[2]~q\ & (!\datoin:scint~q\ & \datoin:indice[1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datoin:indice[0]~q\,
	datab => \datoin:indice[2]~q\,
	datac => \datoin:scint~q\,
	datad => \datoin:indice[1]~q\,
	combout => \datoin:indice[3]~0_combout\);

-- Location: LCCOMB_X39_Y20_N30
\datoin:indice[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datoin:indice[3]~1_combout\ = (!\sc~input_o\ & ((\datoin:indice[3]~q\) # (\datoin:indice[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc~input_o\,
	datac => \datoin:indice[3]~q\,
	datad => \datoin:indice[3]~0_combout\,
	combout => \datoin:indice[3]~1_combout\);

-- Location: FF_X39_Y20_N31
\datoin:indice[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkadc|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \datoin:indice[3]~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datoin:indice[3]~q\);

-- Location: LCCOMB_X39_Y28_N4
\datoin~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datoin~3_combout\ = (\datoin:indice[2]~q\ & (((\datoin:indice[3]~q\)))) # (!\datoin:indice[2]~q\ & ((\datoin:indice[0]~q\ & (\datoin:indice[3]~q\ & \datoin:indice[1]~q\)) # (!\datoin:indice[0]~q\ & (!\datoin:indice[3]~q\ & !\datoin:indice[1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datoin:indice[0]~q\,
	datab => \datoin:indice[2]~q\,
	datac => \datoin:indice[3]~q\,
	datad => \datoin:indice[1]~q\,
	combout => \datoin~3_combout\);

-- Location: LCCOMB_X39_Y20_N4
\datoin:indice[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datoin:indice[0]~1_combout\ = (!\sc~input_o\ & ((\datoin:scint~q\) # (\datoin~1_combout\ $ (!\datoin~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datoin:scint~q\,
	datab => \datoin~1_combout\,
	datac => \datoin~3_combout\,
	datad => \sc~input_o\,
	combout => \datoin:indice[0]~1_combout\);

-- Location: LCCOMB_X39_Y28_N18
\datoin:indice[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datoin:indice[1]~0_combout\ = (\datoin:indice[0]~1_combout\ & (((\datoin:indice[1]~q\)))) # (!\datoin:indice[0]~1_combout\ & (\datoin:indice[0]~2_combout\ & (\datoin:indice[0]~q\ $ (\datoin:indice[1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datoin:indice[0]~q\,
	datab => \datoin:indice[0]~2_combout\,
	datac => \datoin:indice[1]~q\,
	datad => \datoin:indice[0]~1_combout\,
	combout => \datoin:indice[1]~0_combout\);

-- Location: FF_X39_Y28_N19
\datoin:indice[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkadc|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \datoin:indice[1]~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datoin:indice[1]~q\);

-- Location: LCCOMB_X39_Y28_N30
\Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = \datoin:indice[2]~q\ $ (((\datoin:indice[0]~q\ & \datoin:indice[1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datoin:indice[0]~q\,
	datab => \datoin:indice[2]~q\,
	datad => \datoin:indice[1]~q\,
	combout => \Add2~0_combout\);

-- Location: LCCOMB_X39_Y28_N28
\datoin:indice[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datoin:indice[2]~0_combout\ = (\datoin:indice[0]~1_combout\ & (((\datoin:indice[2]~q\)))) # (!\datoin:indice[0]~1_combout\ & (\Add2~0_combout\ & (\datoin:indice[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~0_combout\,
	datab => \datoin:indice[0]~2_combout\,
	datac => \datoin:indice[2]~q\,
	datad => \datoin:indice[0]~1_combout\,
	combout => \datoin:indice[2]~0_combout\);

-- Location: FF_X39_Y28_N29
\datoin:indice[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkadc|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \datoin:indice[2]~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datoin:indice[2]~q\);

-- Location: LCCOMB_X39_Y28_N14
\datoin~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datoin~0_combout\ = (!\datoin:indice[0]~q\ & (!\datoin:indice[2]~q\ & (!\datoin:indice[3]~q\ & !\datoin:indice[1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datoin:indice[0]~q\,
	datab => \datoin:indice[2]~q\,
	datac => \datoin:indice[3]~q\,
	datad => \datoin:indice[1]~q\,
	combout => \datoin~0_combout\);

-- Location: LCCOMB_X39_Y20_N22
\datoin:indice[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datoin:indice[0]~2_combout\ = (!\datoin~2_combout\ & ((\LessThan0~0_combout\) # ((\sdi~input_o\) # (!\datoin~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~0_combout\,
	datab => \datoin~0_combout\,
	datac => \datoin~2_combout\,
	datad => \sdi~input_o\,
	combout => \datoin:indice[0]~2_combout\);

-- Location: LCCOMB_X39_Y20_N8
\datoin:indice[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datoin:indice[0]~0_combout\ = (\datoin:indice[0]~2_combout\ & ((!\datoin:indice[0]~q\))) # (!\datoin:indice[0]~2_combout\ & (!\datoin~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101100011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datoin:indice[0]~2_combout\,
	datab => \datoin~2_combout\,
	datac => \datoin:indice[0]~q\,
	combout => \datoin:indice[0]~0_combout\);

-- Location: FF_X39_Y20_N9
\datoin:indice[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkadc|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \datoin:indice[0]~0_combout\,
	asdata => \datoin:indice[0]~q\,
	clrn => \ALT_INV_reset~input_o\,
	sload => \datoin:indice[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datoin:indice[0]~q\);

-- Location: LCCOMB_X39_Y28_N16
\sc_prev~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sc_prev~2_combout\ = (!\datoin:indice[0]~q\ & (!\datoin:indice[2]~q\ & (\datoin:indice[3]~q\ & \datoin:indice[1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datoin:indice[0]~q\,
	datab => \datoin:indice[2]~q\,
	datac => \datoin:indice[3]~q\,
	datad => \datoin:indice[1]~q\,
	combout => \sc_prev~2_combout\);

-- Location: LCCOMB_X39_Y20_N26
\datoin:scint~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datoin:scint~0_combout\ = (!\sc~input_o\ & ((\datoin:scint~q\) # (\sc_prev~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc~input_o\,
	datac => \datoin:scint~q\,
	datad => \sc_prev~2_combout\,
	combout => \datoin:scint~0_combout\);

-- Location: FF_X39_Y20_N27
\datoin:scint\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkadc|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \datoin:scint~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datoin:scint~q\);

-- Location: LCCOMB_X39_Y20_N10
\sc_prev~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sc_prev~3_combout\ = (\datoin:scint~q\ & (((\sc_prev~q\)))) # (!\datoin:scint~q\ & ((\sc~input_o\ & ((\sc_prev~q\))) # (!\sc~input_o\ & (!\sc_prev~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datoin:scint~q\,
	datab => \sc_prev~2_combout\,
	datac => \sc_prev~q\,
	datad => \sc~input_o\,
	combout => \sc_prev~3_combout\);

-- Location: FF_X39_Y20_N11
sc_prev : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkadc|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc_prev~3_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc_prev~q\);

-- Location: LCCOMB_X39_Y28_N0
\cs~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cs~0_combout\ = !\sc_prev~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sc_prev~q\,
	combout => \cs~0_combout\);

-- Location: FF_X39_Y28_N1
\cs~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkadc|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \cs~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cs~reg0_q\);

-- Location: LCCOMB_X33_Y28_N16
\dato~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dato~0_combout\ = (\datoin~1_combout\ & ((\sc_prev~2_combout\ & ((\sdi~input_o\))) # (!\sc_prev~2_combout\ & (\datoin:dato[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datoin~1_combout\,
	datab => \sc_prev~2_combout\,
	datac => \datoin:dato[0]~q\,
	datad => \sdi~input_o\,
	combout => \dato~0_combout\);

-- Location: LCCOMB_X39_Y20_N20
\datoin:dato[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datoin:dato[0]~0_combout\ = (!\reset~input_o\ & (!\datoin:scint~q\ & !\sc~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \datoin:scint~q\,
	datad => \sc~input_o\,
	combout => \datoin:dato[0]~0_combout\);

-- Location: FF_X33_Y28_N17
\datoin:dato[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkadc|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \dato~0_combout\,
	ena => \datoin:dato[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datoin:dato[0]~q\);

-- Location: LCCOMB_X39_Y28_N10
\Decoder0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~0_combout\ = (\datoin:indice[0]~q\ & (!\datoin:indice[2]~q\ & (\datoin:indice[3]~q\ & !\datoin:indice[1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datoin:indice[0]~q\,
	datab => \datoin:indice[2]~q\,
	datac => \datoin:indice[3]~q\,
	datad => \datoin:indice[1]~q\,
	combout => \Decoder0~0_combout\);

-- Location: LCCOMB_X33_Y28_N26
\dato~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dato~1_combout\ = (\datoin~1_combout\ & ((\Decoder0~0_combout\ & ((\sdi~input_o\))) # (!\Decoder0~0_combout\ & (\datoin:dato[1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datoin~1_combout\,
	datab => \Decoder0~0_combout\,
	datac => \datoin:dato[1]~q\,
	datad => \sdi~input_o\,
	combout => \dato~1_combout\);

-- Location: FF_X33_Y28_N27
\datoin:dato[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkadc|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \dato~1_combout\,
	ena => \datoin:dato[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datoin:dato[1]~q\);

-- Location: LCCOMB_X33_Y28_N12
\Decoder0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~1_combout\ = (!\datoin:indice[2]~q\ & (\datoin:indice[3]~q\ & (!\datoin:indice[0]~q\ & !\datoin:indice[1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datoin:indice[2]~q\,
	datab => \datoin:indice[3]~q\,
	datac => \datoin:indice[0]~q\,
	datad => \datoin:indice[1]~q\,
	combout => \Decoder0~1_combout\);

-- Location: LCCOMB_X33_Y28_N4
\dato~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dato~2_combout\ = (\datoin~1_combout\ & ((\Decoder0~1_combout\ & ((\sdi~input_o\))) # (!\Decoder0~1_combout\ & (\datoin:dato[2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datoin~1_combout\,
	datab => \Decoder0~1_combout\,
	datac => \datoin:dato[2]~q\,
	datad => \sdi~input_o\,
	combout => \dato~2_combout\);

-- Location: FF_X33_Y28_N5
\datoin:dato[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkadc|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \dato~2_combout\,
	ena => \datoin:dato[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datoin:dato[2]~q\);

-- Location: LCCOMB_X39_Y28_N12
\Decoder0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~2_combout\ = (\datoin:indice[0]~q\ & (\datoin:indice[2]~q\ & (!\datoin:indice[3]~q\ & \datoin:indice[1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datoin:indice[0]~q\,
	datab => \datoin:indice[2]~q\,
	datac => \datoin:indice[3]~q\,
	datad => \datoin:indice[1]~q\,
	combout => \Decoder0~2_combout\);

-- Location: LCCOMB_X33_Y28_N6
\dato~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dato~3_combout\ = (\datoin~1_combout\ & ((\Decoder0~2_combout\ & ((\sdi~input_o\))) # (!\Decoder0~2_combout\ & (\datoin:dato[3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datoin~1_combout\,
	datab => \Decoder0~2_combout\,
	datac => \datoin:dato[3]~q\,
	datad => \sdi~input_o\,
	combout => \dato~3_combout\);

-- Location: FF_X33_Y28_N7
\datoin:dato[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkadc|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \dato~3_combout\,
	ena => \datoin:dato[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datoin:dato[3]~q\);

-- Location: LCCOMB_X39_Y28_N22
\Decoder0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~3_combout\ = (!\datoin:indice[0]~q\ & (\datoin:indice[2]~q\ & (!\datoin:indice[3]~q\ & \datoin:indice[1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datoin:indice[0]~q\,
	datab => \datoin:indice[2]~q\,
	datac => \datoin:indice[3]~q\,
	datad => \datoin:indice[1]~q\,
	combout => \Decoder0~3_combout\);

-- Location: LCCOMB_X33_Y28_N24
\dato~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dato~4_combout\ = (\datoin~1_combout\ & ((\Decoder0~3_combout\ & ((\sdi~input_o\))) # (!\Decoder0~3_combout\ & (\datoin:dato[4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datoin~1_combout\,
	datab => \Decoder0~3_combout\,
	datac => \datoin:dato[4]~q\,
	datad => \sdi~input_o\,
	combout => \dato~4_combout\);

-- Location: FF_X33_Y28_N25
\datoin:dato[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkadc|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \dato~4_combout\,
	ena => \datoin:dato[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datoin:dato[4]~q\);

-- Location: LCCOMB_X39_Y28_N24
\Decoder0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~4_combout\ = (\datoin:indice[0]~q\ & (\datoin:indice[2]~q\ & (!\datoin:indice[3]~q\ & !\datoin:indice[1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datoin:indice[0]~q\,
	datab => \datoin:indice[2]~q\,
	datac => \datoin:indice[3]~q\,
	datad => \datoin:indice[1]~q\,
	combout => \Decoder0~4_combout\);

-- Location: LCCOMB_X33_Y28_N10
\dato~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dato~5_combout\ = (\datoin~1_combout\ & ((\Decoder0~4_combout\ & ((\sdi~input_o\))) # (!\Decoder0~4_combout\ & (\datoin:dato[5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datoin~1_combout\,
	datab => \Decoder0~4_combout\,
	datac => \datoin:dato[5]~q\,
	datad => \sdi~input_o\,
	combout => \dato~5_combout\);

-- Location: FF_X33_Y28_N11
\datoin:dato[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkadc|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \dato~5_combout\,
	ena => \datoin:dato[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datoin:dato[5]~q\);

-- Location: LCCOMB_X39_Y28_N2
\Decoder0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~5_combout\ = (!\datoin:indice[0]~q\ & (\datoin:indice[2]~q\ & (!\datoin:indice[3]~q\ & !\datoin:indice[1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datoin:indice[0]~q\,
	datab => \datoin:indice[2]~q\,
	datac => \datoin:indice[3]~q\,
	datad => \datoin:indice[1]~q\,
	combout => \Decoder0~5_combout\);

-- Location: LCCOMB_X33_Y28_N28
\dato~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dato~6_combout\ = (\datoin~1_combout\ & ((\Decoder0~5_combout\ & ((\sdi~input_o\))) # (!\Decoder0~5_combout\ & (\datoin:dato[6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datoin~1_combout\,
	datab => \Decoder0~5_combout\,
	datac => \datoin:dato[6]~q\,
	datad => \sdi~input_o\,
	combout => \dato~6_combout\);

-- Location: FF_X33_Y28_N29
\datoin:dato[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkadc|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \dato~6_combout\,
	ena => \datoin:dato[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datoin:dato[6]~q\);

-- Location: LCCOMB_X39_Y28_N20
\Decoder0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~6_combout\ = (\datoin:indice[0]~q\ & (!\datoin:indice[2]~q\ & (!\datoin:indice[3]~q\ & \datoin:indice[1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datoin:indice[0]~q\,
	datab => \datoin:indice[2]~q\,
	datac => \datoin:indice[3]~q\,
	datad => \datoin:indice[1]~q\,
	combout => \Decoder0~6_combout\);

-- Location: LCCOMB_X33_Y28_N30
\dato~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dato~7_combout\ = (\datoin~1_combout\ & ((\Decoder0~6_combout\ & ((\sdi~input_o\))) # (!\Decoder0~6_combout\ & (\datoin:dato[7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datoin~1_combout\,
	datab => \Decoder0~6_combout\,
	datac => \datoin:dato[7]~q\,
	datad => \sdi~input_o\,
	combout => \dato~7_combout\);

-- Location: FF_X33_Y28_N31
\datoin:dato[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkadc|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \dato~7_combout\,
	ena => \datoin:dato[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datoin:dato[7]~q\);

-- Location: LCCOMB_X39_Y28_N6
\Decoder0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~7_combout\ = (!\datoin:indice[0]~q\ & (!\datoin:indice[2]~q\ & (!\datoin:indice[3]~q\ & \datoin:indice[1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datoin:indice[0]~q\,
	datab => \datoin:indice[2]~q\,
	datac => \datoin:indice[3]~q\,
	datad => \datoin:indice[1]~q\,
	combout => \Decoder0~7_combout\);

-- Location: LCCOMB_X33_Y28_N0
\dato~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dato~8_combout\ = (\datoin~1_combout\ & ((\Decoder0~7_combout\ & ((\sdi~input_o\))) # (!\Decoder0~7_combout\ & (\datoin:dato[8]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datoin~1_combout\,
	datab => \Decoder0~7_combout\,
	datac => \datoin:dato[8]~q\,
	datad => \sdi~input_o\,
	combout => \dato~8_combout\);

-- Location: FF_X33_Y28_N1
\datoin:dato[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkadc|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \dato~8_combout\,
	ena => \datoin:dato[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datoin:dato[8]~q\);

-- Location: LCCOMB_X39_Y28_N8
\Decoder0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~8_combout\ = (\datoin:indice[0]~q\ & (!\datoin:indice[2]~q\ & (!\datoin:indice[3]~q\ & !\datoin:indice[1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datoin:indice[0]~q\,
	datab => \datoin:indice[2]~q\,
	datac => \datoin:indice[3]~q\,
	datad => \datoin:indice[1]~q\,
	combout => \Decoder0~8_combout\);

-- Location: LCCOMB_X33_Y28_N18
\dato~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dato~9_combout\ = (\datoin~1_combout\ & ((\Decoder0~8_combout\ & ((\sdi~input_o\))) # (!\Decoder0~8_combout\ & (\datoin:dato[9]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datoin~1_combout\,
	datab => \Decoder0~8_combout\,
	datac => \datoin:dato[9]~q\,
	datad => \sdi~input_o\,
	combout => \dato~9_combout\);

-- Location: FF_X33_Y28_N19
\datoin:dato[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkadc|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \dato~9_combout\,
	ena => \datoin:dato[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datoin:dato[9]~q\);
END structure;


