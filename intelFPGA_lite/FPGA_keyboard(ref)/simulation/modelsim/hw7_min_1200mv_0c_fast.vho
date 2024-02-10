-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.0.0 Build 595 04/25/2017 SJ Lite Edition"

-- DATE "05/27/2023 22:39:04"

-- 
-- Device: Altera EP4CE40F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


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
	seg : OUT std_logic_vector(7 DOWNTO 0)
	);
END hw7;

-- Design Ports Information
-- col_out[0]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- col_out[1]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- col_out[2]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- col_out[3]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[0]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[1]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[2]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[3]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[4]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[5]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[6]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[7]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_T1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row_out[1]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row_out[2]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row_out[3]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row_out[0]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_seg : std_logic_vector(7 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \col_out[0]~output_o\ : std_logic;
SIGNAL \col_out[1]~output_o\ : std_logic;
SIGNAL \col_out[2]~output_o\ : std_logic;
SIGNAL \col_out[3]~output_o\ : std_logic;
SIGNAL \seg[0]~output_o\ : std_logic;
SIGNAL \seg[1]~output_o\ : std_logic;
SIGNAL \seg[2]~output_o\ : std_logic;
SIGNAL \seg[3]~output_o\ : std_logic;
SIGNAL \seg[4]~output_o\ : std_logic;
SIGNAL \seg[5]~output_o\ : std_logic;
SIGNAL \seg[6]~output_o\ : std_logic;
SIGNAL \seg[7]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \row_out[3]~input_o\ : std_logic;
SIGNAL \row_out[0]~input_o\ : std_logic;
SIGNAL \row_out[2]~input_o\ : std_logic;
SIGNAL \row_out[1]~input_o\ : std_logic;
SIGNAL \mul_out~46_combout\ : std_logic;
SIGNAL \S_row~q\ : std_logic;
SIGNAL \counter[0]~1_combout\ : std_logic;
SIGNAL \counter[1]~0_combout\ : std_logic;
SIGNAL \col_out~0_combout\ : std_logic;
SIGNAL \S_row~0_combout\ : std_logic;
SIGNAL \S_row~1_combout\ : std_logic;
SIGNAL \press~0_combout\ : std_logic;
SIGNAL \press~q\ : std_logic;
SIGNAL \col_out[0]~1_combout\ : std_logic;
SIGNAL \col_out[0]~reg0_q\ : std_logic;
SIGNAL \col_out~2_combout\ : std_logic;
SIGNAL \col_out[1]~reg0_q\ : std_logic;
SIGNAL \col_out~3_combout\ : std_logic;
SIGNAL \col_out[2]~reg0_q\ : std_logic;
SIGNAL \col_out~4_combout\ : std_logic;
SIGNAL \col_out[3]~reg0_q\ : std_logic;
SIGNAL \mul_out~42_combout\ : std_logic;
SIGNAL \mul_out~43_combout\ : std_logic;
SIGNAL \mul_out~44_combout\ : std_logic;
SIGNAL \rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \mul_out~45_combout\ : std_logic;
SIGNAL \col_out[0]~5_combout\ : std_logic;
SIGNAL \mul_out~47_combout\ : std_logic;
SIGNAL \mul_out.0001~q\ : std_logic;
SIGNAL \Equal5~0_combout\ : std_logic;
SIGNAL \mul_out~55_combout\ : std_logic;
SIGNAL \mul_out~56_combout\ : std_logic;
SIGNAL \mul_out~52_combout\ : std_logic;
SIGNAL \Equal6~0_combout\ : std_logic;
SIGNAL \mul_out~53_combout\ : std_logic;
SIGNAL \mul_out~57_combout\ : std_logic;
SIGNAL \mul_out.1101~q\ : std_logic;
SIGNAL \mul_out~50_combout\ : std_logic;
SIGNAL \mul_out~51_combout\ : std_logic;
SIGNAL \mul_out~54_combout\ : std_logic;
SIGNAL \mul_out.1011~q\ : std_logic;
SIGNAL \mul_out~48_combout\ : std_logic;
SIGNAL \mul_out~49_combout\ : std_logic;
SIGNAL \mul_out.0100~q\ : std_logic;
SIGNAL \WideOr6~0_combout\ : std_logic;
SIGNAL \Equal7~0_combout\ : std_logic;
SIGNAL \mul_out~58_combout\ : std_logic;
SIGNAL \mul_out~59_combout\ : std_logic;
SIGNAL \mul_out~60_combout\ : std_logic;
SIGNAL \mul_out~61_combout\ : std_logic;
SIGNAL \mul_out~62_combout\ : std_logic;
SIGNAL \mul_out.0101~q\ : std_logic;
SIGNAL \mul_out~65_combout\ : std_logic;
SIGNAL \mul_out.1110~q\ : std_logic;
SIGNAL \mul_out~67_combout\ : std_logic;
SIGNAL \mul_out~66_combout\ : std_logic;
SIGNAL \mul_out~68_combout\ : std_logic;
SIGNAL \mul_out.1111~q\ : std_logic;
SIGNAL \mul_out~63_combout\ : std_logic;
SIGNAL \mul_out~64_combout\ : std_logic;
SIGNAL \mul_out.1100~q\ : std_logic;
SIGNAL \WideOr5~0_combout\ : std_logic;
SIGNAL \mul_out~69_combout\ : std_logic;
SIGNAL \mul_out~70_combout\ : std_logic;
SIGNAL \mul_out~71_combout\ : std_logic;
SIGNAL \mul_out.0110~q\ : std_logic;
SIGNAL \WideOr5~combout\ : std_logic;
SIGNAL \mul_out~72_combout\ : std_logic;
SIGNAL \mul_out~73_combout\ : std_logic;
SIGNAL \mul_out.0010~q\ : std_logic;
SIGNAL \WideOr4~combout\ : std_logic;
SIGNAL \mul_out~74_combout\ : std_logic;
SIGNAL \mul_out~75_combout\ : std_logic;
SIGNAL \mul_out.1010~q\ : std_logic;
SIGNAL \mul_out~76_combout\ : std_logic;
SIGNAL \mul_out~85_combout\ : std_logic;
SIGNAL \mul_out.0111~q\ : std_logic;
SIGNAL \WideOr2~0_combout\ : std_logic;
SIGNAL \WideOr3~combout\ : std_logic;
SIGNAL \mul_out~77_combout\ : std_logic;
SIGNAL \mul_out~78_combout\ : std_logic;
SIGNAL \mul_out.1001~q\ : std_logic;
SIGNAL \mul_out~80_combout\ : std_logic;
SIGNAL \mul_out~79_combout\ : std_logic;
SIGNAL \mul_out.0011~0_combout\ : std_logic;
SIGNAL \mul_out~81_combout\ : std_logic;
SIGNAL \mul_out.0011~q\ : std_logic;
SIGNAL \WideOr2~combout\ : std_logic;
SIGNAL \WideOr1~0_combout\ : std_logic;
SIGNAL \WideOr1~combout\ : std_logic;
SIGNAL \mul_out~82_combout\ : std_logic;
SIGNAL \mul_out~83_combout\ : std_logic;
SIGNAL \mul_out~84_combout\ : std_logic;
SIGNAL \mul_out.0000~q\ : std_logic;
SIGNAL \WideOr0~0_combout\ : std_logic;
SIGNAL counter : std_logic_vector(1 DOWNTO 0);
SIGNAL \ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr1~combout\ : std_logic;
SIGNAL \ALT_INV_WideOr2~combout\ : std_logic;
SIGNAL \ALT_INV_WideOr3~combout\ : std_logic;
SIGNAL \ALT_INV_WideOr4~combout\ : std_logic;
SIGNAL \ALT_INV_WideOr5~combout\ : std_logic;
SIGNAL \ALT_INV_WideOr6~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

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

\rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst~input_o\);
\ALT_INV_WideOr0~0_combout\ <= NOT \WideOr0~0_combout\;
\ALT_INV_WideOr1~combout\ <= NOT \WideOr1~combout\;
\ALT_INV_WideOr2~combout\ <= NOT \WideOr2~combout\;
\ALT_INV_WideOr3~combout\ <= NOT \WideOr3~combout\;
\ALT_INV_WideOr4~combout\ <= NOT \WideOr4~combout\;
\ALT_INV_WideOr5~combout\ <= NOT \WideOr5~combout\;
\ALT_INV_WideOr6~0_combout\ <= NOT \WideOr6~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X52_Y0_N23
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

-- Location: IOOBUF_X50_Y0_N23
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

-- Location: IOOBUF_X22_Y0_N16
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

-- Location: IOOBUF_X29_Y0_N30
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

-- Location: IOOBUF_X61_Y43_N2
\seg[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideOr6~0_combout\,
	devoe => ww_devoe,
	o => \seg[0]~output_o\);

-- Location: IOOBUF_X61_Y43_N9
\seg[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideOr5~combout\,
	devoe => ww_devoe,
	o => \seg[1]~output_o\);

-- Location: IOOBUF_X67_Y36_N16
\seg[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideOr4~combout\,
	devoe => ww_devoe,
	o => \seg[2]~output_o\);

-- Location: IOOBUF_X67_Y13_N16
\seg[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideOr3~combout\,
	devoe => ww_devoe,
	o => \seg[3]~output_o\);

-- Location: IOOBUF_X67_Y9_N9
\seg[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideOr2~combout\,
	devoe => ww_devoe,
	o => \seg[4]~output_o\);

-- Location: IOOBUF_X65_Y0_N23
\seg[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideOr1~combout\,
	devoe => ww_devoe,
	o => \seg[5]~output_o\);

-- Location: IOOBUF_X65_Y0_N30
\seg[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideOr0~0_combout\,
	devoe => ww_devoe,
	o => \seg[6]~output_o\);

-- Location: IOOBUF_X45_Y0_N2
\seg[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg[7]~output_o\);

-- Location: IOIBUF_X0_Y21_N15
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G4
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

-- Location: IOIBUF_X0_Y21_N22
\rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: IOIBUF_X61_Y0_N1
\row_out[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_row_out(3),
	o => \row_out[3]~input_o\);

-- Location: IOIBUF_X61_Y0_N8
\row_out[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_row_out(0),
	o => \row_out[0]~input_o\);

-- Location: IOIBUF_X50_Y0_N1
\row_out[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_row_out(2),
	o => \row_out[2]~input_o\);

-- Location: IOIBUF_X61_Y0_N29
\row_out[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_row_out(1),
	o => \row_out[1]~input_o\);

-- Location: LCCOMB_X61_Y4_N8
\mul_out~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \mul_out~46_combout\ = (((!\row_out[1]~input_o\) # (!\row_out[2]~input_o\)) # (!\row_out[0]~input_o\)) # (!\row_out[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row_out[3]~input_o\,
	datab => \row_out[0]~input_o\,
	datac => \row_out[2]~input_o\,
	datad => \row_out[1]~input_o\,
	combout => \mul_out~46_combout\);

-- Location: FF_X59_Y4_N7
S_row : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mul_out~46_combout\,
	sload => VCC,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_row~q\);

-- Location: LCCOMB_X60_Y4_N26
\counter[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[0]~1_combout\ = counter(0) $ (((\rst~input_o\ & \S_row~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datac => counter(0),
	datad => \S_row~q\,
	combout => \counter[0]~1_combout\);

-- Location: FF_X60_Y4_N27
\counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(0));

-- Location: LCCOMB_X60_Y4_N24
\counter[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[1]~0_combout\ = counter(1) $ (((counter(0) & (\rst~input_o\ & \S_row~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datab => \rst~input_o\,
	datac => counter(1),
	datad => \S_row~q\,
	combout => \counter[1]~0_combout\);

-- Location: FF_X60_Y4_N25
\counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(1));

-- Location: LCCOMB_X60_Y4_N12
\col_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \col_out~0_combout\ = (\S_row~q\ & ((counter(0)) # (counter(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datab => counter(1),
	datad => \S_row~q\,
	combout => \col_out~0_combout\);

-- Location: LCCOMB_X62_Y4_N30
\S_row~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_row~0_combout\ = (\row_out[0]~input_o\ & \row_out[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \row_out[0]~input_o\,
	datad => \row_out[1]~input_o\,
	combout => \S_row~0_combout\);

-- Location: LCCOMB_X62_Y4_N12
\S_row~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_row~1_combout\ = (\row_out[3]~input_o\ & \row_out[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row_out[3]~input_o\,
	datac => \row_out[2]~input_o\,
	combout => \S_row~1_combout\);

-- Location: LCCOMB_X59_Y4_N4
\press~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \press~0_combout\ = (\S_row~q\ & (((\press~q\) # (!\S_row~1_combout\)) # (!\S_row~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_row~0_combout\,
	datab => \S_row~1_combout\,
	datac => \press~q\,
	datad => \S_row~q\,
	combout => \press~0_combout\);

-- Location: FF_X59_Y4_N5
press : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \press~0_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \press~q\);

-- Location: LCCOMB_X60_Y4_N8
\col_out[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \col_out[0]~1_combout\ = (\rst~input_o\ & ((!\S_row~q\) # (!\press~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datac => \press~q\,
	datad => \S_row~q\,
	combout => \col_out[0]~1_combout\);

-- Location: FF_X60_Y4_N13
\col_out[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \col_out~0_combout\,
	ena => \col_out[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \col_out[0]~reg0_q\);

-- Location: LCCOMB_X60_Y4_N14
\col_out~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \col_out~2_combout\ = (\S_row~q\ & ((counter(1)) # (!counter(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datab => counter(1),
	datad => \S_row~q\,
	combout => \col_out~2_combout\);

-- Location: FF_X60_Y4_N15
\col_out[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \col_out~2_combout\,
	ena => \col_out[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \col_out[1]~reg0_q\);

-- Location: LCCOMB_X60_Y4_N4
\col_out~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \col_out~3_combout\ = (\S_row~q\ & ((counter(0)) # (!counter(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter(1),
	datac => counter(0),
	datad => \S_row~q\,
	combout => \col_out~3_combout\);

-- Location: FF_X60_Y4_N5
\col_out[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \col_out~3_combout\,
	ena => \col_out[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \col_out[2]~reg0_q\);

-- Location: LCCOMB_X60_Y4_N10
\col_out~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \col_out~4_combout\ = (\S_row~q\ & ((!counter(0)) # (!counter(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter(1),
	datac => counter(0),
	datad => \S_row~q\,
	combout => \col_out~4_combout\);

-- Location: FF_X60_Y4_N11
\col_out[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \col_out~4_combout\,
	ena => \col_out[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \col_out[3]~reg0_q\);

-- Location: LCCOMB_X61_Y4_N6
\mul_out~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \mul_out~42_combout\ = (\row_out[3]~input_o\ & (\row_out[2]~input_o\ & \row_out[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row_out[3]~input_o\,
	datac => \row_out[2]~input_o\,
	datad => \row_out[1]~input_o\,
	combout => \mul_out~42_combout\);

-- Location: LCCOMB_X60_Y4_N6
\mul_out~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \mul_out~43_combout\ = (\col_out[3]~reg0_q\ & ((\col_out[0]~reg0_q\ & (\col_out[2]~reg0_q\ $ (\col_out[1]~reg0_q\))) # (!\col_out[0]~reg0_q\ & (\col_out[2]~reg0_q\ & \col_out[1]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \col_out[0]~reg0_q\,
	datab => \col_out[2]~reg0_q\,
	datac => \col_out[1]~reg0_q\,
	datad => \col_out[3]~reg0_q\,
	combout => \mul_out~43_combout\);

-- Location: LCCOMB_X61_Y4_N26
\mul_out~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \mul_out~44_combout\ = (!\mul_out~43_combout\ & (((\mul_out~42_combout\ & \mul_out.0001~q\)) # (!\row_out[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mul_out~42_combout\,
	datab => \mul_out~43_combout\,
	datac => \mul_out.0001~q\,
	datad => \row_out[0]~input_o\,
	combout => \mul_out~44_combout\);

-- Location: CLKCTRL_G3
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

-- Location: LCCOMB_X60_Y4_N16
\mul_out~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \mul_out~45_combout\ = (!\col_out[3]~reg0_q\ & (\col_out[1]~reg0_q\ & (\col_out[2]~reg0_q\ & \col_out[0]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \col_out[3]~reg0_q\,
	datab => \col_out[1]~reg0_q\,
	datac => \col_out[2]~reg0_q\,
	datad => \col_out[0]~reg0_q\,
	combout => \mul_out~45_combout\);

-- Location: LCCOMB_X59_Y4_N26
\col_out[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \col_out[0]~5_combout\ = (\press~q\ & \S_row~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \press~q\,
	datad => \S_row~q\,
	combout => \col_out[0]~5_combout\);

-- Location: LCCOMB_X61_Y4_N2
\mul_out~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \mul_out~47_combout\ = (\col_out[0]~5_combout\ & ((\mul_out~45_combout\) # ((\mul_out~46_combout\ & \mul_out~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mul_out~45_combout\,
	datab => \mul_out~46_combout\,
	datac => \mul_out~43_combout\,
	datad => \col_out[0]~5_combout\,
	combout => \mul_out~47_combout\);

-- Location: FF_X61_Y4_N27
\mul_out.0001\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mul_out~44_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \mul_out~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mul_out.0001~q\);

-- Location: LCCOMB_X60_Y4_N30
\Equal5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal5~0_combout\ = (\col_out[3]~reg0_q\ & (\col_out[2]~reg0_q\ & (\col_out[1]~reg0_q\ & !\col_out[0]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \col_out[3]~reg0_q\,
	datab => \col_out[2]~reg0_q\,
	datac => \col_out[1]~reg0_q\,
	datad => \col_out[0]~reg0_q\,
	combout => \Equal5~0_combout\);

-- Location: LCCOMB_X57_Y4_N24
\mul_out~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \mul_out~55_combout\ = (\row_out[0]~input_o\ & (\row_out[2]~input_o\ & \row_out[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \row_out[0]~input_o\,
	datac => \row_out[2]~input_o\,
	datad => \row_out[1]~input_o\,
	combout => \mul_out~55_combout\);

-- Location: LCCOMB_X59_Y4_N14
\mul_out~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \mul_out~56_combout\ = (\Equal5~0_combout\ & (\mul_out~55_combout\ & ((\mul_out.1101~q\) # (!\row_out[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mul_out.1101~q\,
	datab => \row_out[3]~input_o\,
	datac => \Equal5~0_combout\,
	datad => \mul_out~55_combout\,
	combout => \mul_out~56_combout\);

-- Location: LCCOMB_X60_Y4_N20
\mul_out~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \mul_out~52_combout\ = ((\col_out[3]~reg0_q\ $ (!\col_out[2]~reg0_q\)) # (!\col_out[0]~reg0_q\)) # (!\col_out[1]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \col_out[3]~reg0_q\,
	datab => \col_out[2]~reg0_q\,
	datac => \col_out[1]~reg0_q\,
	datad => \col_out[0]~reg0_q\,
	combout => \mul_out~52_combout\);

-- Location: LCCOMB_X60_Y4_N2
\Equal6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal6~0_combout\ = (\col_out[0]~reg0_q\ & (\col_out[2]~reg0_q\ & (!\col_out[1]~reg0_q\ & \col_out[3]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \col_out[0]~reg0_q\,
	datab => \col_out[2]~reg0_q\,
	datac => \col_out[1]~reg0_q\,
	datad => \col_out[3]~reg0_q\,
	combout => \Equal6~0_combout\);

-- Location: LCCOMB_X59_Y4_N12
\mul_out~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \mul_out~53_combout\ = (!\Equal5~0_combout\ & (((\mul_out~52_combout\ & !\Equal6~0_combout\)) # (!\mul_out~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mul_out~52_combout\,
	datab => \mul_out~46_combout\,
	datac => \Equal5~0_combout\,
	datad => \Equal6~0_combout\,
	combout => \mul_out~53_combout\);

-- Location: LCCOMB_X59_Y4_N30
\mul_out~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \mul_out~57_combout\ = (\mul_out~56_combout\) # ((\mul_out.1101~q\ & \mul_out~53_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mul_out~56_combout\,
	datac => \mul_out.1101~q\,
	datad => \mul_out~53_combout\,
	combout => \mul_out~57_combout\);

-- Location: FF_X59_Y4_N31
\mul_out.1101\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mul_out~57_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \col_out[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mul_out.1101~q\);

-- Location: LCCOMB_X59_Y4_N0
\mul_out~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \mul_out~50_combout\ = ((\mul_out.1011~q\ & (\row_out[2]~input_o\ & \row_out[3]~input_o\))) # (!\row_out[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row_out[1]~input_o\,
	datab => \mul_out.1011~q\,
	datac => \row_out[2]~input_o\,
	datad => \row_out[3]~input_o\,
	combout => \mul_out~50_combout\);

-- Location: LCCOMB_X59_Y4_N10
\mul_out~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \mul_out~51_combout\ = (\row_out[0]~input_o\ & (\Equal5~0_combout\ & \mul_out~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row_out[0]~input_o\,
	datac => \Equal5~0_combout\,
	datad => \mul_out~50_combout\,
	combout => \mul_out~51_combout\);

-- Location: LCCOMB_X59_Y4_N28
\mul_out~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \mul_out~54_combout\ = (\mul_out~51_combout\) # ((\mul_out.1011~q\ & \mul_out~53_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mul_out~51_combout\,
	datac => \mul_out.1011~q\,
	datad => \mul_out~53_combout\,
	combout => \mul_out~54_combout\);

-- Location: FF_X59_Y4_N29
\mul_out.1011\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mul_out~54_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \col_out[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mul_out.1011~q\);

-- Location: LCCOMB_X61_Y4_N16
\mul_out~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \mul_out~48_combout\ = ((\row_out[3]~input_o\ & (\row_out[2]~input_o\ & \mul_out.0100~q\))) # (!\row_out[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row_out[3]~input_o\,
	datab => \row_out[1]~input_o\,
	datac => \row_out[2]~input_o\,
	datad => \mul_out.0100~q\,
	combout => \mul_out~48_combout\);

-- Location: LCCOMB_X61_Y4_N28
\mul_out~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \mul_out~49_combout\ = (\row_out[0]~input_o\ & (!\mul_out~43_combout\ & \mul_out~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \row_out[0]~input_o\,
	datac => \mul_out~43_combout\,
	datad => \mul_out~48_combout\,
	combout => \mul_out~49_combout\);

-- Location: FF_X61_Y4_N29
\mul_out.0100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mul_out~49_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \mul_out~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mul_out.0100~q\);

-- Location: LCCOMB_X62_Y4_N0
\WideOr6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr6~0_combout\ = (\mul_out.0001~q\) # ((\mul_out.1101~q\) # ((\mul_out.1011~q\) # (\mul_out.0100~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mul_out.0001~q\,
	datab => \mul_out.1101~q\,
	datac => \mul_out.1011~q\,
	datad => \mul_out.0100~q\,
	combout => \WideOr6~0_combout\);

-- Location: LCCOMB_X60_Y4_N22
\Equal7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal7~0_combout\ = (\col_out[0]~reg0_q\ & (\col_out[1]~reg0_q\ & (!\col_out[2]~reg0_q\ & \col_out[3]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \col_out[0]~reg0_q\,
	datab => \col_out[1]~reg0_q\,
	datac => \col_out[2]~reg0_q\,
	datad => \col_out[3]~reg0_q\,
	combout => \Equal7~0_combout\);

-- Location: LCCOMB_X60_Y4_N0
\mul_out~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \mul_out~58_combout\ = ((\col_out[0]~reg0_q\ $ (!\col_out[1]~reg0_q\)) # (!\col_out[2]~reg0_q\)) # (!\col_out[3]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \col_out[0]~reg0_q\,
	datab => \col_out[1]~reg0_q\,
	datac => \col_out[3]~reg0_q\,
	datad => \col_out[2]~reg0_q\,
	combout => \mul_out~58_combout\);

-- Location: LCCOMB_X57_Y4_N22
\mul_out~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \mul_out~59_combout\ = ((\row_out[3]~input_o\ & (\row_out[2]~input_o\ & \mul_out.0101~q\))) # (!\row_out[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row_out[3]~input_o\,
	datab => \row_out[1]~input_o\,
	datac => \row_out[2]~input_o\,
	datad => \mul_out.0101~q\,
	combout => \mul_out~59_combout\);

-- Location: LCCOMB_X57_Y4_N0
\mul_out~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \mul_out~60_combout\ = (\row_out[0]~input_o\ & (\mul_out~59_combout\ & \Equal7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \row_out[0]~input_o\,
	datac => \mul_out~59_combout\,
	datad => \Equal7~0_combout\,
	combout => \mul_out~60_combout\);

-- Location: LCCOMB_X57_Y4_N2
\mul_out~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \mul_out~61_combout\ = (\mul_out~58_combout\ & ((\mul_out~60_combout\) # ((\mul_out~52_combout\ & \mul_out.0101~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mul_out~52_combout\,
	datab => \mul_out.0101~q\,
	datac => \mul_out~58_combout\,
	datad => \mul_out~60_combout\,
	combout => \mul_out~61_combout\);

-- Location: LCCOMB_X57_Y4_N16
\mul_out~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \mul_out~62_combout\ = (\mul_out~61_combout\) # ((!\mul_out~46_combout\ & (!\Equal7~0_combout\ & \mul_out.0101~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mul_out~46_combout\,
	datab => \Equal7~0_combout\,
	datac => \mul_out.0101~q\,
	datad => \mul_out~61_combout\,
	combout => \mul_out~62_combout\);

-- Location: FF_X57_Y4_N17
\mul_out.0101\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mul_out~62_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \col_out[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mul_out.0101~q\);

-- Location: LCCOMB_X61_Y4_N14
\mul_out~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \mul_out~65_combout\ = (!\mul_out~43_combout\ & (\mul_out~55_combout\ & ((\mul_out.1110~q\) # (!\row_out[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row_out[3]~input_o\,
	datab => \mul_out~43_combout\,
	datac => \mul_out.1110~q\,
	datad => \mul_out~55_combout\,
	combout => \mul_out~65_combout\);

-- Location: FF_X61_Y4_N15
\mul_out.1110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mul_out~65_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \mul_out~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mul_out.1110~q\);

-- Location: LCCOMB_X61_Y4_N10
\mul_out~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \mul_out~67_combout\ = (\Equal6~0_combout\ & ((\mul_out.1111~q\) # (!\row_out[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row_out[3]~input_o\,
	datab => \mul_out.1111~q\,
	datad => \Equal6~0_combout\,
	combout => \mul_out~67_combout\);

-- Location: LCCOMB_X60_Y4_N28
\mul_out~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \mul_out~66_combout\ = (\mul_out~46_combout\ & (\mul_out~58_combout\ & ((\mul_out~52_combout\)))) # (!\mul_out~46_combout\ & ((\mul_out~58_combout\) # ((\Equal5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mul_out~46_combout\,
	datab => \mul_out~58_combout\,
	datac => \Equal5~0_combout\,
	datad => \mul_out~52_combout\,
	combout => \mul_out~66_combout\);

-- Location: LCCOMB_X61_Y4_N0
\mul_out~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \mul_out~68_combout\ = (\mul_out~67_combout\ & ((\mul_out~55_combout\) # ((\mul_out.1111~q\ & \mul_out~66_combout\)))) # (!\mul_out~67_combout\ & (((\mul_out.1111~q\ & \mul_out~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mul_out~67_combout\,
	datab => \mul_out~55_combout\,
	datac => \mul_out.1111~q\,
	datad => \mul_out~66_combout\,
	combout => \mul_out~68_combout\);

-- Location: FF_X61_Y4_N1
\mul_out.1111\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mul_out~68_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \col_out[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mul_out.1111~q\);

-- Location: LCCOMB_X59_Y4_N16
\mul_out~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \mul_out~63_combout\ = (\S_row~0_combout\ & (((\mul_out.1100~q\ & \row_out[3]~input_o\)) # (!\row_out[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_row~0_combout\,
	datab => \mul_out.1100~q\,
	datac => \row_out[2]~input_o\,
	datad => \row_out[3]~input_o\,
	combout => \mul_out~63_combout\);

-- Location: LCCOMB_X59_Y4_N24
\mul_out~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \mul_out~64_combout\ = (\Equal5~0_combout\ & ((\mul_out~63_combout\) # ((\mul_out.1100~q\ & \mul_out~53_combout\)))) # (!\Equal5~0_combout\ & (((\mul_out.1100~q\ & \mul_out~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~0_combout\,
	datab => \mul_out~63_combout\,
	datac => \mul_out.1100~q\,
	datad => \mul_out~53_combout\,
	combout => \mul_out~64_combout\);

-- Location: FF_X59_Y4_N25
\mul_out.1100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mul_out~64_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \col_out[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mul_out.1100~q\);

-- Location: LCCOMB_X62_Y4_N26
\WideOr5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr5~0_combout\ = (\mul_out.0101~q\) # ((\mul_out.1110~q\) # ((\mul_out.1111~q\) # (\mul_out.1100~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mul_out.0101~q\,
	datab => \mul_out.1110~q\,
	datac => \mul_out.1111~q\,
	datad => \mul_out.1100~q\,
	combout => \WideOr5~0_combout\);

-- Location: LCCOMB_X62_Y4_N10
\mul_out~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \mul_out~69_combout\ = (\Equal6~0_combout\ & (((\S_row~1_combout\ & \mul_out.0110~q\)) # (!\row_out[1]~input_o\))) # (!\Equal6~0_combout\ & (((\mul_out.0110~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_row~1_combout\,
	datab => \mul_out.0110~q\,
	datac => \row_out[1]~input_o\,
	datad => \Equal6~0_combout\,
	combout => \mul_out~69_combout\);

-- Location: LCCOMB_X60_Y4_N18
\mul_out~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \mul_out~70_combout\ = (\mul_out~46_combout\ & (((!\mul_out~52_combout\)) # (!\mul_out~58_combout\))) # (!\mul_out~46_combout\ & (!\mul_out~58_combout\ & (!\Equal5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mul_out~46_combout\,
	datab => \mul_out~58_combout\,
	datac => \Equal5~0_combout\,
	datad => \mul_out~52_combout\,
	combout => \mul_out~70_combout\);

-- Location: LCCOMB_X62_Y4_N28
\mul_out~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \mul_out~71_combout\ = (\mul_out~69_combout\ & (((\row_out[0]~input_o\ & \Equal6~0_combout\)) # (!\mul_out~70_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mul_out~69_combout\,
	datab => \row_out[0]~input_o\,
	datac => \Equal6~0_combout\,
	datad => \mul_out~70_combout\,
	combout => \mul_out~71_combout\);

-- Location: FF_X62_Y4_N29
\mul_out.0110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mul_out~71_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \col_out[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mul_out.0110~q\);

-- Location: LCCOMB_X62_Y4_N22
WideOr5 : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr5~combout\ = (\WideOr5~0_combout\) # ((\mul_out.0110~q\) # (\mul_out.1011~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr5~0_combout\,
	datab => \mul_out.0110~q\,
	datac => \mul_out.1011~q\,
	combout => \WideOr5~combout\);

-- Location: LCCOMB_X59_Y4_N2
\mul_out~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \mul_out~72_combout\ = (\row_out[0]~input_o\ & (\mul_out~42_combout\ & (\mul_out.0010~q\))) # (!\row_out[0]~input_o\ & (((\Equal7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row_out[0]~input_o\,
	datab => \mul_out~42_combout\,
	datac => \mul_out.0010~q\,
	datad => \Equal7~0_combout\,
	combout => \mul_out~72_combout\);

-- Location: LCCOMB_X59_Y4_N18
\mul_out~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \mul_out~73_combout\ = (\mul_out~72_combout\) # ((\mul_out~52_combout\ & (\mul_out~58_combout\ & \mul_out.0010~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mul_out~52_combout\,
	datab => \mul_out~58_combout\,
	datac => \mul_out.0010~q\,
	datad => \mul_out~72_combout\,
	combout => \mul_out~73_combout\);

-- Location: FF_X59_Y4_N19
\mul_out.0010\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mul_out~73_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \col_out[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mul_out.0010~q\);

-- Location: LCCOMB_X62_Y4_N20
WideOr4 : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr4~combout\ = (\mul_out.1100~q\) # ((\mul_out.0010~q\) # ((\mul_out.1111~q\) # (\mul_out.1110~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mul_out.1100~q\,
	datab => \mul_out.0010~q\,
	datac => \mul_out.1111~q\,
	datad => \mul_out.1110~q\,
	combout => \WideOr4~combout\);

-- Location: LCCOMB_X59_Y4_N20
\mul_out~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \mul_out~74_combout\ = (\Equal5~0_combout\ & (((\mul_out~42_combout\ & \mul_out.1010~q\)) # (!\row_out[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row_out[0]~input_o\,
	datab => \mul_out~42_combout\,
	datac => \Equal5~0_combout\,
	datad => \mul_out.1010~q\,
	combout => \mul_out~74_combout\);

-- Location: LCCOMB_X59_Y4_N8
\mul_out~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \mul_out~75_combout\ = (\mul_out~74_combout\) # ((\mul_out.1010~q\ & \mul_out~53_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mul_out~74_combout\,
	datac => \mul_out.1010~q\,
	datad => \mul_out~53_combout\,
	combout => \mul_out~75_combout\);

-- Location: FF_X59_Y4_N9
\mul_out.1010\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mul_out~75_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \col_out[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mul_out.1010~q\);

-- Location: LCCOMB_X61_Y4_N20
\mul_out~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \mul_out~76_combout\ = ((\mul_out.0111~q\ & \row_out[3]~input_o\)) # (!\row_out[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \row_out[2]~input_o\,
	datac => \mul_out.0111~q\,
	datad => \row_out[3]~input_o\,
	combout => \mul_out~76_combout\);

-- Location: LCCOMB_X61_Y4_N30
\mul_out~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \mul_out~85_combout\ = (\row_out[0]~input_o\ & (\row_out[1]~input_o\ & (!\mul_out~43_combout\ & \mul_out~76_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row_out[0]~input_o\,
	datab => \row_out[1]~input_o\,
	datac => \mul_out~43_combout\,
	datad => \mul_out~76_combout\,
	combout => \mul_out~85_combout\);

-- Location: FF_X61_Y4_N31
\mul_out.0111\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mul_out~85_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \mul_out~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mul_out.0111~q\);

-- Location: LCCOMB_X62_Y4_N18
\WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr2~0_combout\ = (!\mul_out.0111~q\ & (!\mul_out.0001~q\ & !\mul_out.0100~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mul_out.0111~q\,
	datac => \mul_out.0001~q\,
	datad => \mul_out.0100~q\,
	combout => \WideOr2~0_combout\);

-- Location: LCCOMB_X62_Y4_N8
WideOr3 : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr3~combout\ = (\mul_out.1111~q\) # ((\mul_out.1010~q\) # (!\WideOr2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mul_out.1111~q\,
	datac => \mul_out.1010~q\,
	datad => \WideOr2~0_combout\,
	combout => \WideOr3~combout\);

-- Location: LCCOMB_X62_Y4_N16
\mul_out~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \mul_out~77_combout\ = (\Equal6~0_combout\ & (((\mul_out.1001~q\ & \row_out[3]~input_o\)) # (!\row_out[2]~input_o\))) # (!\Equal6~0_combout\ & (\mul_out.1001~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mul_out.1001~q\,
	datab => \row_out[2]~input_o\,
	datac => \row_out[3]~input_o\,
	datad => \Equal6~0_combout\,
	combout => \mul_out~77_combout\);

-- Location: LCCOMB_X62_Y4_N6
\mul_out~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \mul_out~78_combout\ = (\mul_out~77_combout\ & (((\Equal6~0_combout\ & \S_row~0_combout\)) # (!\mul_out~70_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~0_combout\,
	datab => \mul_out~77_combout\,
	datac => \S_row~0_combout\,
	datad => \mul_out~70_combout\,
	combout => \mul_out~78_combout\);

-- Location: FF_X62_Y4_N7
\mul_out.1001\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mul_out~78_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \col_out[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mul_out.1001~q\);

-- Location: LCCOMB_X61_Y4_N12
\mul_out~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \mul_out~80_combout\ = ((\mul_out~42_combout\ & \mul_out.0011~q\)) # (!\row_out[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mul_out~42_combout\,
	datab => \row_out[0]~input_o\,
	datad => \mul_out.0011~q\,
	combout => \mul_out~80_combout\);

-- Location: LCCOMB_X61_Y4_N18
\mul_out~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \mul_out~79_combout\ = (\mul_out.0011~q\ & ((\mul_out~52_combout\) # (!\mul_out~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mul_out.0011~q\,
	datac => \mul_out~46_combout\,
	datad => \mul_out~52_combout\,
	combout => \mul_out~79_combout\);

-- Location: LCCOMB_X61_Y4_N24
\mul_out.0011~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mul_out.0011~0_combout\ = (\Equal6~0_combout\ & (\mul_out~80_combout\)) # (!\Equal6~0_combout\ & ((\mul_out~79_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~0_combout\,
	datab => \mul_out~80_combout\,
	datad => \mul_out~79_combout\,
	combout => \mul_out.0011~0_combout\);

-- Location: LCCOMB_X61_Y4_N22
\mul_out~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \mul_out~81_combout\ = (!\mul_out~46_combout\ & \mul_out.0011~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mul_out~46_combout\,
	datad => \mul_out.0011~q\,
	combout => \mul_out~81_combout\);

-- Location: FF_X61_Y4_N25
\mul_out.0011\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mul_out.0011~0_combout\,
	asdata => \mul_out~81_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => \Equal5~0_combout\,
	ena => \col_out[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mul_out.0011~q\);

-- Location: LCCOMB_X62_Y4_N24
WideOr2 : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr2~combout\ = (\mul_out.1001~q\) # ((\mul_out.0011~q\) # ((\mul_out.0101~q\) # (!\WideOr2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mul_out.1001~q\,
	datab => \mul_out.0011~q\,
	datac => \mul_out.0101~q\,
	datad => \WideOr2~0_combout\,
	combout => \WideOr2~combout\);

-- Location: LCCOMB_X62_Y4_N14
\WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr1~0_combout\ = (\mul_out.0001~q\) # ((\mul_out.0010~q\) # ((\mul_out.1101~q\) # (\mul_out.0111~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mul_out.0001~q\,
	datab => \mul_out.0010~q\,
	datac => \mul_out.1101~q\,
	datad => \mul_out.0111~q\,
	combout => \WideOr1~0_combout\);

-- Location: LCCOMB_X62_Y4_N4
WideOr1 : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr1~combout\ = (\WideOr1~0_combout\) # (\mul_out.0011~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \WideOr1~0_combout\,
	datad => \mul_out.0011~q\,
	combout => \WideOr1~combout\);

-- Location: LCCOMB_X57_Y4_N12
\mul_out~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \mul_out~82_combout\ = (\mul_out~55_combout\ & (\Equal7~0_combout\ & ((!\mul_out.0000~q\) # (!\row_out[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row_out[3]~input_o\,
	datab => \mul_out~55_combout\,
	datac => \mul_out.0000~q\,
	datad => \Equal7~0_combout\,
	combout => \mul_out~82_combout\);

-- Location: LCCOMB_X57_Y4_N10
\mul_out~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \mul_out~83_combout\ = (\mul_out~58_combout\ & ((\mul_out~82_combout\) # ((!\mul_out.0000~q\ & \mul_out~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mul_out.0000~q\,
	datab => \mul_out~58_combout\,
	datac => \mul_out~52_combout\,
	datad => \mul_out~82_combout\,
	combout => \mul_out~83_combout\);

-- Location: LCCOMB_X57_Y4_N30
\mul_out~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \mul_out~84_combout\ = (!\mul_out~83_combout\ & ((\mul_out~46_combout\) # ((\Equal7~0_combout\) # (\mul_out.0000~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mul_out~46_combout\,
	datab => \Equal7~0_combout\,
	datac => \mul_out.0000~q\,
	datad => \mul_out~83_combout\,
	combout => \mul_out~84_combout\);

-- Location: FF_X57_Y4_N31
\mul_out.0000\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mul_out~84_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \col_out[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mul_out.0000~q\);

-- Location: LCCOMB_X61_Y4_N4
\WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr0~0_combout\ = (\mul_out.0001~q\) # ((\mul_out.1100~q\) # ((\mul_out.0111~q\) # (!\mul_out.0000~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mul_out.0001~q\,
	datab => \mul_out.1100~q\,
	datac => \mul_out.0111~q\,
	datad => \mul_out.0000~q\,
	combout => \WideOr0~0_combout\);

ww_col_out(0) <= \col_out[0]~output_o\;

ww_col_out(1) <= \col_out[1]~output_o\;

ww_col_out(2) <= \col_out[2]~output_o\;

ww_col_out(3) <= \col_out[3]~output_o\;

ww_seg(0) <= \seg[0]~output_o\;

ww_seg(1) <= \seg[1]~output_o\;

ww_seg(2) <= \seg[2]~output_o\;

ww_seg(3) <= \seg[3]~output_o\;

ww_seg(4) <= \seg[4]~output_o\;

ww_seg(5) <= \seg[5]~output_o\;

ww_seg(6) <= \seg[6]~output_o\;

ww_seg(7) <= \seg[7]~output_o\;
END structure;


