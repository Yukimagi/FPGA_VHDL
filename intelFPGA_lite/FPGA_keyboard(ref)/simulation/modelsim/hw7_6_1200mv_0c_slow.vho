-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 15.1.0 Build 185 10/21/2015 SJ Lite Edition"

-- DATE "05/16/2023 12:06:22"

-- 
-- Device: Altera EP4CE6E22C6 Package TQFP144
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

ENTITY 	hw7 IS
    PORT (
	col_out : OUT std_logic_vector(3 DOWNTO 0);
	row_out : IN std_logic_vector(3 DOWNTO 0);
	clk : IN std_logic;
	rst : IN std_logic;
	seg : OUT std_logic_vector(3 DOWNTO 0)
	);
END hw7;

-- Design Ports Information
-- col_out[0]	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- col_out[1]	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- col_out[2]	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- col_out[3]	=>  Location: PIN_34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_142,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[0]	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[1]	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[2]	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[3]	=>  Location: PIN_42,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row_out[3]	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row_out[2]	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row_out[0]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row_out[1]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF hw7 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_col_out : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_row_out : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_seg : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \col_out[0]~output_o\ : std_logic;
SIGNAL \col_out[1]~output_o\ : std_logic;
SIGNAL \col_out[2]~output_o\ : std_logic;
SIGNAL \col_out[3]~output_o\ : std_logic;
SIGNAL \seg[0]~output_o\ : std_logic;
SIGNAL \seg[1]~output_o\ : std_logic;
SIGNAL \seg[2]~output_o\ : std_logic;
SIGNAL \seg[3]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \row_out[1]~input_o\ : std_logic;
SIGNAL \row_out[2]~input_o\ : std_logic;
SIGNAL \row_out[3]~input_o\ : std_logic;
SIGNAL \row_out[0]~input_o\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \S_row~feeder_combout\ : std_logic;
SIGNAL \S_row~q\ : std_logic;
SIGNAL \col_out~0_combout\ : std_logic;
SIGNAL \col_out[0]~reg0_q\ : std_logic;
SIGNAL \col_out[1]~reg0_q\ : std_logic;
SIGNAL \col_out[2]~reg0feeder_combout\ : std_logic;
SIGNAL \col_out[2]~reg0_q\ : std_logic;
SIGNAL \col_out~1_combout\ : std_logic;
SIGNAL \col_out[3]~reg0feeder_combout\ : std_logic;
SIGNAL \col_out[3]~reg0_q\ : std_logic;
SIGNAL \mul_out~39_combout\ : std_logic;
SIGNAL \mul_out.1101~q\ : std_logic;
SIGNAL \mul_out~38_combout\ : std_logic;
SIGNAL \mul_out.1011~q\ : std_logic;
SIGNAL \WideOr3~combout\ : std_logic;
SIGNAL \mul_out~40_combout\ : std_logic;
SIGNAL \mul_out.1100~q\ : std_logic;
SIGNAL \mul_out.1110~0_combout\ : std_logic;
SIGNAL \mul_out.1110~q\ : std_logic;
SIGNAL \WideOr2~combout\ : std_logic;
SIGNAL \WideOr1~0_combout\ : std_logic;
SIGNAL \mul_out.1010~0_combout\ : std_logic;
SIGNAL \mul_out.1010~q\ : std_logic;
SIGNAL \ALT_INV_mul_out.1010~q\ : std_logic;
SIGNAL \ALT_INV_WideOr2~combout\ : std_logic;
SIGNAL \ALT_INV_WideOr3~combout\ : std_logic;

BEGIN

col_out <= ww_col_out;
ww_row_out <= row_out;
ww_clk <= clk;
ww_rst <= rst;
seg <= ww_seg;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_mul_out.1010~q\ <= NOT \mul_out.1010~q\;
\ALT_INV_WideOr2~combout\ <= NOT \WideOr2~combout\;
\ALT_INV_WideOr3~combout\ <= NOT \WideOr3~combout\;

-- Location: IOOBUF_X0_Y8_N16
\col_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \col_out[0]~reg0_q\,
	devoe => ww_devoe,
	o => \col_out[0]~output_o\);

-- Location: IOOBUF_X0_Y6_N23
\col_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \col_out[1]~reg0_q\,
	devoe => ww_devoe,
	o => \col_out[1]~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\col_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \col_out[2]~reg0_q\,
	devoe => ww_devoe,
	o => \col_out[2]~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\col_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \col_out[3]~reg0_q\,
	devoe => ww_devoe,
	o => \col_out[3]~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\seg[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideOr3~combout\,
	devoe => ww_devoe,
	o => \seg[0]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\seg[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideOr2~combout\,
	devoe => ww_devoe,
	o => \seg[1]~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\seg[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr1~0_combout\,
	devoe => ww_devoe,
	o => \seg[2]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\seg[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_mul_out.1010~q\,
	devoe => ww_devoe,
	o => \seg[3]~output_o\);

-- Location: IOIBUF_X0_Y11_N8
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

-- Location: IOIBUF_X13_Y0_N1
\row_out[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_row_out(1),
	o => \row_out[1]~input_o\);

-- Location: IOIBUF_X1_Y0_N22
\row_out[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_row_out(2),
	o => \row_out[2]~input_o\);

-- Location: IOIBUF_X1_Y0_N15
\row_out[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_row_out(3),
	o => \row_out[3]~input_o\);

-- Location: IOIBUF_X7_Y0_N1
\row_out[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_row_out(0),
	o => \row_out[0]~input_o\);

-- Location: LCCOMB_X1_Y4_N20
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (((!\row_out[0]~input_o\) # (!\row_out[3]~input_o\)) # (!\row_out[2]~input_o\)) # (!\row_out[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row_out[1]~input_o\,
	datab => \row_out[2]~input_o\,
	datac => \row_out[3]~input_o\,
	datad => \row_out[0]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X1_Y4_N6
\S_row~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_row~feeder_combout\ = \Equal0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Equal0~0_combout\,
	combout => \S_row~feeder_combout\);

-- Location: FF_X1_Y4_N7
S_row : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \S_row~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_row~q\);

-- Location: LCCOMB_X1_Y4_N24
\col_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \col_out~0_combout\ = (\S_row~q\ & !\Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \S_row~q\,
	datad => \Equal0~0_combout\,
	combout => \col_out~0_combout\);

-- Location: FF_X1_Y4_N25
\col_out[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \col_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \col_out[0]~reg0_q\);

-- Location: FF_X1_Y4_N19
\col_out[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \S_row~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \col_out[1]~reg0_q\);

-- Location: LCCOMB_X1_Y4_N8
\col_out[2]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \col_out[2]~reg0feeder_combout\ = \S_row~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \S_row~q\,
	combout => \col_out[2]~reg0feeder_combout\);

-- Location: FF_X1_Y4_N9
\col_out[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \col_out[2]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \col_out[2]~reg0_q\);

-- Location: LCCOMB_X1_Y4_N18
\col_out~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \col_out~1_combout\ = (\Equal0~0_combout\ & \S_row~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~0_combout\,
	datad => \S_row~q\,
	combout => \col_out~1_combout\);

-- Location: LCCOMB_X1_Y4_N30
\col_out[3]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \col_out[3]~reg0feeder_combout\ = \col_out~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \col_out~1_combout\,
	combout => \col_out[3]~reg0feeder_combout\);

-- Location: FF_X1_Y4_N31
\col_out[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \col_out[3]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \col_out[3]~reg0_q\);

-- Location: LCCOMB_X1_Y4_N22
\mul_out~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \mul_out~39_combout\ = (\row_out[1]~input_o\ & (\row_out[2]~input_o\ & (!\row_out[3]~input_o\ & \row_out[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row_out[1]~input_o\,
	datab => \row_out[2]~input_o\,
	datac => \row_out[3]~input_o\,
	datad => \row_out[0]~input_o\,
	combout => \mul_out~39_combout\);

-- Location: FF_X1_Y4_N23
\mul_out.1101\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mul_out~39_combout\,
	ena => \col_out~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mul_out.1101~q\);

-- Location: LCCOMB_X1_Y4_N28
\mul_out~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \mul_out~38_combout\ = (\row_out[0]~input_o\ & !\row_out[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \row_out[0]~input_o\,
	datad => \row_out[1]~input_o\,
	combout => \mul_out~38_combout\);

-- Location: FF_X1_Y4_N29
\mul_out.1011\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mul_out~38_combout\,
	ena => \col_out~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mul_out.1011~q\);

-- Location: LCCOMB_X1_Y4_N16
WideOr3 : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr3~combout\ = (\mul_out.1101~q\) # (\mul_out.1011~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mul_out.1101~q\,
	datad => \mul_out.1011~q\,
	combout => \WideOr3~combout\);

-- Location: LCCOMB_X1_Y4_N10
\mul_out~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \mul_out~40_combout\ = (\row_out[0]~input_o\ & (!\row_out[2]~input_o\ & \row_out[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \row_out[0]~input_o\,
	datac => \row_out[2]~input_o\,
	datad => \row_out[1]~input_o\,
	combout => \mul_out~40_combout\);

-- Location: FF_X1_Y4_N11
\mul_out.1100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mul_out~40_combout\,
	ena => \col_out~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mul_out.1100~q\);

-- Location: LCCOMB_X1_Y4_N4
\mul_out.1110~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mul_out.1110~0_combout\ = !\Equal0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Equal0~0_combout\,
	combout => \mul_out.1110~0_combout\);

-- Location: FF_X1_Y4_N5
\mul_out.1110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mul_out.1110~0_combout\,
	ena => \col_out~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mul_out.1110~q\);

-- Location: LCCOMB_X1_Y4_N14
WideOr2 : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr2~combout\ = (\mul_out.1100~q\) # ((\mul_out.1110~q\) # (\mul_out.1011~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mul_out.1100~q\,
	datac => \mul_out.1110~q\,
	datad => \mul_out.1011~q\,
	combout => \WideOr2~combout\);

-- Location: LCCOMB_X1_Y4_N12
\WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr1~0_combout\ = (!\mul_out.1110~q\ & !\mul_out.1100~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mul_out.1110~q\,
	datad => \mul_out.1100~q\,
	combout => \WideOr1~0_combout\);

-- Location: LCCOMB_X1_Y4_N26
\mul_out.1010~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mul_out.1010~0_combout\ = !\row_out[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \row_out[0]~input_o\,
	combout => \mul_out.1010~0_combout\);

-- Location: FF_X1_Y4_N27
\mul_out.1010\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mul_out.1010~0_combout\,
	ena => \col_out~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mul_out.1010~q\);

-- Location: IOIBUF_X3_Y24_N22
\rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

ww_col_out(0) <= \col_out[0]~output_o\;

ww_col_out(1) <= \col_out[1]~output_o\;

ww_col_out(2) <= \col_out[2]~output_o\;

ww_col_out(3) <= \col_out[3]~output_o\;

ww_seg(0) <= \seg[0]~output_o\;

ww_seg(1) <= \seg[1]~output_o\;

ww_seg(2) <= \seg[2]~output_o\;

ww_seg(3) <= \seg[3]~output_o\;
END structure;


