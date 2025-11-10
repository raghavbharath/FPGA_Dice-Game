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

-- DATE "11/06/2025 16:22:29"

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

ENTITY 	lab5 IS
    PORT (
	clock : IN std_logic;
	button_p5 : IN std_logic;
	disp1 : OUT std_logic_vector(0 TO 6);
	disp2 : OUT std_logic_vector(0 TO 6);
	disp3 : OUT std_logic_vector(0 TO 6);
	disp4 : OUT std_logic_vector(0 TO 6);
	two_pair : OUT std_logic;
	three_kind : OUT std_logic;
	four_kind : OUT std_logic
	);
END lab5;

-- Design Ports Information
-- disp1[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp1[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp1[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp1[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp1[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp1[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp1[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp2[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp2[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp2[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp2[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp2[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp2[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp2[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp3[6]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp3[5]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp3[4]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp3[3]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp3[2]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp3[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp3[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp4[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp4[5]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp4[4]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp4[3]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp4[2]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp4[1]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp4[0]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- two_pair	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- three_kind	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- four_kind	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- button_p5	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab5 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_button_p5 : std_logic;
SIGNAL ww_disp1 : std_logic_vector(0 TO 6);
SIGNAL ww_disp2 : std_logic_vector(0 TO 6);
SIGNAL ww_disp3 : std_logic_vector(0 TO 6);
SIGNAL ww_disp4 : std_logic_vector(0 TO 6);
SIGNAL ww_two_pair : std_logic;
SIGNAL ww_three_kind : std_logic;
SIGNAL ww_four_kind : std_logic;
SIGNAL \dice|clkb~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \disp1[6]~output_o\ : std_logic;
SIGNAL \disp1[5]~output_o\ : std_logic;
SIGNAL \disp1[4]~output_o\ : std_logic;
SIGNAL \disp1[3]~output_o\ : std_logic;
SIGNAL \disp1[2]~output_o\ : std_logic;
SIGNAL \disp1[1]~output_o\ : std_logic;
SIGNAL \disp1[0]~output_o\ : std_logic;
SIGNAL \disp2[6]~output_o\ : std_logic;
SIGNAL \disp2[5]~output_o\ : std_logic;
SIGNAL \disp2[4]~output_o\ : std_logic;
SIGNAL \disp2[3]~output_o\ : std_logic;
SIGNAL \disp2[2]~output_o\ : std_logic;
SIGNAL \disp2[1]~output_o\ : std_logic;
SIGNAL \disp2[0]~output_o\ : std_logic;
SIGNAL \disp3[6]~output_o\ : std_logic;
SIGNAL \disp3[5]~output_o\ : std_logic;
SIGNAL \disp3[4]~output_o\ : std_logic;
SIGNAL \disp3[3]~output_o\ : std_logic;
SIGNAL \disp3[2]~output_o\ : std_logic;
SIGNAL \disp3[1]~output_o\ : std_logic;
SIGNAL \disp3[0]~output_o\ : std_logic;
SIGNAL \disp4[6]~output_o\ : std_logic;
SIGNAL \disp4[5]~output_o\ : std_logic;
SIGNAL \disp4[4]~output_o\ : std_logic;
SIGNAL \disp4[3]~output_o\ : std_logic;
SIGNAL \disp4[2]~output_o\ : std_logic;
SIGNAL \disp4[1]~output_o\ : std_logic;
SIGNAL \disp4[0]~output_o\ : std_logic;
SIGNAL \two_pair~output_o\ : std_logic;
SIGNAL \three_kind~output_o\ : std_logic;
SIGNAL \four_kind~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \button_p5~input_o\ : std_logic;
SIGNAL \dice|clkb~combout\ : std_logic;
SIGNAL \dice|clkb~clkctrl_outclk\ : std_logic;
SIGNAL \dice|delay1|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \dice|delay1|auto_generated|counter_reg_bit[0]~feeder_combout\ : std_logic;
SIGNAL \dice|delay1|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \dice|delay1|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \dice|delay1|auto_generated|counter_reg_bit[1]~feeder_combout\ : std_logic;
SIGNAL \dice|delay1|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \dice|delay1|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \dice|delay1|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \dice|delay1|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \dice|delay1|auto_generated|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \dice|delay1|auto_generated|counter_comb_bita3~0_combout\ : std_logic;
SIGNAL \dice|die1|MC_1|inst7~0_combout\ : std_logic;
SIGNAL \dice|die1|MC_1|inst11~combout\ : std_logic;
SIGNAL \dice|die1|MC_1|inst7~q\ : std_logic;
SIGNAL \dice|die1|MC_1|inst8~0_combout\ : std_logic;
SIGNAL \dice|die1|MC_1|inst8~q\ : std_logic;
SIGNAL \dice|die1|MC_1|inst10~0_combout\ : std_logic;
SIGNAL \dice|die1|MC_1|inst10~q\ : std_logic;
SIGNAL \dice|die1|DD_1|Mux6~0_combout\ : std_logic;
SIGNAL \dice|die1|DD_1|Mux5~0_combout\ : std_logic;
SIGNAL \dice|die1|DD_1|Mux3~0_combout\ : std_logic;
SIGNAL \dice|delay2|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \dice|delay2|auto_generated|counter_reg_bit[0]~feeder_combout\ : std_logic;
SIGNAL \dice|delay2|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \dice|delay2|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \dice|delay2|auto_generated|counter_reg_bit[1]~feeder_combout\ : std_logic;
SIGNAL \dice|delay2|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \dice|delay2|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \dice|delay2|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \dice|delay2|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \dice|delay2|auto_generated|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \dice|delay2|auto_generated|counter_comb_bita4~combout\ : std_logic;
SIGNAL \dice|delay2|auto_generated|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \dice|delay2|auto_generated|counter_comb_bita4~0_combout\ : std_logic;
SIGNAL \dice|die2|MC_1|inst7~0_combout\ : std_logic;
SIGNAL \dice|die2|MC_1|inst11~combout\ : std_logic;
SIGNAL \dice|die2|MC_1|inst7~q\ : std_logic;
SIGNAL \dice|die2|MC_1|inst8~0_combout\ : std_logic;
SIGNAL \dice|die2|MC_1|inst8~q\ : std_logic;
SIGNAL \dice|die2|MC_1|inst10~0_combout\ : std_logic;
SIGNAL \dice|die2|MC_1|inst10~q\ : std_logic;
SIGNAL \dice|die2|DD_1|Mux6~0_combout\ : std_logic;
SIGNAL \dice|die2|DD_1|Mux5~0_combout\ : std_logic;
SIGNAL \dice|die2|DD_1|Mux3~0_combout\ : std_logic;
SIGNAL \dice|delay3|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \dice|delay3|auto_generated|counter_reg_bit[0]~feeder_combout\ : std_logic;
SIGNAL \dice|delay3|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \dice|delay3|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \dice|delay3|auto_generated|counter_reg_bit[1]~feeder_combout\ : std_logic;
SIGNAL \dice|delay3|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \dice|delay3|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \dice|delay3|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \dice|delay3|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \dice|delay3|auto_generated|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \dice|delay3|auto_generated|counter_comb_bita4~combout\ : std_logic;
SIGNAL \dice|delay3|auto_generated|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \dice|delay3|auto_generated|counter_comb_bita5~combout\ : std_logic;
SIGNAL \dice|delay3|auto_generated|counter_comb_bita5~COUT\ : std_logic;
SIGNAL \dice|delay3|auto_generated|counter_comb_bita5~0_combout\ : std_logic;
SIGNAL \dice|die3|MC_1|inst7~0_combout\ : std_logic;
SIGNAL \dice|die3|MC_1|inst10~0_combout\ : std_logic;
SIGNAL \dice|die3|MC_1|inst10~q\ : std_logic;
SIGNAL \dice|die3|MC_1|inst11~combout\ : std_logic;
SIGNAL \dice|die3|MC_1|inst7~q\ : std_logic;
SIGNAL \dice|die3|MC_1|inst8~0_combout\ : std_logic;
SIGNAL \dice|die3|MC_1|inst8~q\ : std_logic;
SIGNAL \dice|die3|DD_1|Mux6~0_combout\ : std_logic;
SIGNAL \dice|die3|DD_1|Mux5~0_combout\ : std_logic;
SIGNAL \dice|die3|DD_1|Mux3~0_combout\ : std_logic;
SIGNAL \dice|delay4|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \dice|delay4|auto_generated|counter_reg_bit[0]~feeder_combout\ : std_logic;
SIGNAL \dice|delay4|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \dice|delay4|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \dice|delay4|auto_generated|counter_reg_bit[1]~feeder_combout\ : std_logic;
SIGNAL \dice|delay4|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \dice|delay4|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \dice|delay4|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \dice|delay4|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \dice|delay4|auto_generated|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \dice|delay4|auto_generated|counter_comb_bita4~combout\ : std_logic;
SIGNAL \dice|delay4|auto_generated|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \dice|delay4|auto_generated|counter_comb_bita5~combout\ : std_logic;
SIGNAL \dice|delay4|auto_generated|counter_comb_bita5~COUT\ : std_logic;
SIGNAL \dice|delay4|auto_generated|counter_comb_bita6~combout\ : std_logic;
SIGNAL \dice|delay4|auto_generated|counter_comb_bita6~COUT\ : std_logic;
SIGNAL \dice|delay4|auto_generated|counter_comb_bita6~0_combout\ : std_logic;
SIGNAL \dice|die4|MC_1|inst7~0_combout\ : std_logic;
SIGNAL \dice|die4|MC_1|inst7~feeder_combout\ : std_logic;
SIGNAL \dice|die4|MC_1|inst11~combout\ : std_logic;
SIGNAL \dice|die4|MC_1|inst7~q\ : std_logic;
SIGNAL \dice|die4|MC_1|inst8~0_combout\ : std_logic;
SIGNAL \dice|die4|MC_1|inst8~q\ : std_logic;
SIGNAL \dice|die4|MC_1|inst10~0_combout\ : std_logic;
SIGNAL \dice|die4|MC_1|inst10~q\ : std_logic;
SIGNAL \dice|die4|DD_1|Mux6~0_combout\ : std_logic;
SIGNAL \dice|die4|DD_1|Mux5~0_combout\ : std_logic;
SIGNAL \dice|die4|DD_1|Mux3~0_combout\ : std_logic;
SIGNAL \process_0~2_combout\ : std_logic;
SIGNAL \process_0~3_combout\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \two_pair~8_combout\ : std_logic;
SIGNAL \process_0~1_combout\ : std_logic;
SIGNAL \two_pair~4_combout\ : std_logic;
SIGNAL \two_pair~5_combout\ : std_logic;
SIGNAL \process_0~6_combout\ : std_logic;
SIGNAL \process_0~7_combout\ : std_logic;
SIGNAL \process_0~8_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \process_0~4_combout\ : std_logic;
SIGNAL \process_0~5_combout\ : std_logic;
SIGNAL \process_0~9_combout\ : std_logic;
SIGNAL \process_0~10_combout\ : std_logic;
SIGNAL \two_pair~6_combout\ : std_logic;
SIGNAL \process_0~11_combout\ : std_logic;
SIGNAL \two_pair~7_combout\ : std_logic;
SIGNAL \three_kind~2_combout\ : std_logic;
SIGNAL \dice|delay3|auto_generated|counter_reg_bit\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \dice|delay1|auto_generated|counter_reg_bit\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dice|delay4|auto_generated|counter_reg_bit\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \dice|delay2|auto_generated|counter_reg_bit\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \dice|die1|MC_1|ALT_INV_inst11~combout\ : std_logic;
SIGNAL \dice|die4|MC_1|ALT_INV_inst8~q\ : std_logic;
SIGNAL \dice|die3|MC_1|ALT_INV_inst8~q\ : std_logic;
SIGNAL \dice|die2|MC_1|ALT_INV_inst8~q\ : std_logic;
SIGNAL \dice|die1|MC_1|ALT_INV_inst8~q\ : std_logic;
SIGNAL \dice|die4|MC_1|ALT_INV_inst11~combout\ : std_logic;
SIGNAL \dice|die3|MC_1|ALT_INV_inst11~combout\ : std_logic;
SIGNAL \dice|die2|MC_1|ALT_INV_inst11~combout\ : std_logic;

BEGIN

ww_clock <= clock;
ww_button_p5 <= button_p5;
disp1 <= ww_disp1;
disp2 <= ww_disp2;
disp3 <= ww_disp3;
disp4 <= ww_disp4;
two_pair <= ww_two_pair;
three_kind <= ww_three_kind;
four_kind <= ww_four_kind;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\dice|clkb~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \dice|clkb~combout\);
\dice|die1|MC_1|ALT_INV_inst11~combout\ <= NOT \dice|die1|MC_1|inst11~combout\;
\dice|die4|MC_1|ALT_INV_inst8~q\ <= NOT \dice|die4|MC_1|inst8~q\;
\dice|die3|MC_1|ALT_INV_inst8~q\ <= NOT \dice|die3|MC_1|inst8~q\;
\dice|die2|MC_1|ALT_INV_inst8~q\ <= NOT \dice|die2|MC_1|inst8~q\;
\dice|die1|MC_1|ALT_INV_inst8~q\ <= NOT \dice|die1|MC_1|inst8~q\;
\dice|die4|MC_1|ALT_INV_inst11~combout\ <= NOT \dice|die4|MC_1|inst11~combout\;
\dice|die3|MC_1|ALT_INV_inst11~combout\ <= NOT \dice|die3|MC_1|inst11~combout\;
\dice|die2|MC_1|ALT_INV_inst11~combout\ <= NOT \dice|die2|MC_1|inst11~combout\;

-- Location: IOOBUF_X115_Y69_N2
\disp1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dice|die1|DD_1|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \disp1[6]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\disp1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dice|die1|DD_1|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \disp1[5]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\disp1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dice|die1|DD_1|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \disp1[4]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\disp1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dice|die1|DD_1|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \disp1[3]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\disp1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dice|die1|DD_1|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \disp1[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\disp1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dice|die1|DD_1|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \disp1[1]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\disp1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dice|die1|DD_1|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \disp1[0]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\disp2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dice|die2|DD_1|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \disp2[6]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\disp2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dice|die2|DD_1|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \disp2[5]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\disp2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dice|die2|DD_1|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \disp2[4]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\disp2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dice|die2|DD_1|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \disp2[3]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\disp2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dice|die2|DD_1|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \disp2[2]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\disp2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dice|die2|DD_1|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \disp2[1]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\disp2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dice|die2|DD_1|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \disp2[0]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\disp3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dice|die3|DD_1|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \disp3[6]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\disp3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dice|die3|DD_1|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \disp3[5]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\disp3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dice|die3|DD_1|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \disp3[4]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\disp3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dice|die3|DD_1|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \disp3[3]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\disp3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dice|die3|DD_1|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \disp3[2]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\disp3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dice|die3|DD_1|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \disp3[1]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\disp3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dice|die3|DD_1|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \disp3[0]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\disp4[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dice|die4|DD_1|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \disp4[6]~output_o\);

-- Location: IOOBUF_X105_Y0_N9
\disp4[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dice|die4|DD_1|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \disp4[5]~output_o\);

-- Location: IOOBUF_X105_Y0_N23
\disp4[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dice|die4|DD_1|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \disp4[4]~output_o\);

-- Location: IOOBUF_X111_Y0_N2
\disp4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dice|die4|DD_1|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \disp4[3]~output_o\);

-- Location: IOOBUF_X100_Y0_N2
\disp4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dice|die4|DD_1|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \disp4[2]~output_o\);

-- Location: IOOBUF_X115_Y29_N2
\disp4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dice|die4|DD_1|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \disp4[1]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\disp4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dice|die4|DD_1|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \disp4[0]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\two_pair~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \two_pair~7_combout\,
	devoe => ww_devoe,
	o => \two_pair~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\three_kind~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \three_kind~2_combout\,
	devoe => ww_devoe,
	o => \three_kind~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\four_kind~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \process_0~11_combout\,
	devoe => ww_devoe,
	o => \four_kind~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\clock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: IOIBUF_X115_Y40_N8
\button_p5~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_button_p5,
	o => \button_p5~input_o\);

-- Location: LCCOMB_X100_Y43_N28
\dice|clkb\ : cycloneive_lcell_comb
-- Equation(s):
-- \dice|clkb~combout\ = LCELL((\clock~input_o\ & !\button_p5~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clock~input_o\,
	datad => \button_p5~input_o\,
	combout => \dice|clkb~combout\);

-- Location: CLKCTRL_G7
\dice|clkb~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \dice|clkb~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \dice|clkb~clkctrl_outclk\);

-- Location: LCCOMB_X101_Y44_N6
\dice|delay1|auto_generated|counter_comb_bita0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dice|delay1|auto_generated|counter_comb_bita0~combout\ = \dice|delay1|auto_generated|counter_reg_bit\(0) $ (VCC)
-- \dice|delay1|auto_generated|counter_comb_bita0~COUT\ = CARRY(\dice|delay1|auto_generated|counter_reg_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dice|delay1|auto_generated|counter_reg_bit\(0),
	datad => VCC,
	combout => \dice|delay1|auto_generated|counter_comb_bita0~combout\,
	cout => \dice|delay1|auto_generated|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X101_Y44_N26
\dice|delay1|auto_generated|counter_reg_bit[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dice|delay1|auto_generated|counter_reg_bit[0]~feeder_combout\ = \dice|delay1|auto_generated|counter_comb_bita0~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dice|delay1|auto_generated|counter_comb_bita0~combout\,
	combout => \dice|delay1|auto_generated|counter_reg_bit[0]~feeder_combout\);

-- Location: FF_X101_Y44_N27
\dice|delay1|auto_generated|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dice|clkb~clkctrl_outclk\,
	d => \dice|delay1|auto_generated|counter_reg_bit[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dice|delay1|auto_generated|counter_reg_bit\(0));

-- Location: LCCOMB_X101_Y44_N8
\dice|delay1|auto_generated|counter_comb_bita1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dice|delay1|auto_generated|counter_comb_bita1~combout\ = (\dice|delay1|auto_generated|counter_reg_bit\(1) & (!\dice|delay1|auto_generated|counter_comb_bita0~COUT\)) # (!\dice|delay1|auto_generated|counter_reg_bit\(1) & 
-- ((\dice|delay1|auto_generated|counter_comb_bita0~COUT\) # (GND)))
-- \dice|delay1|auto_generated|counter_comb_bita1~COUT\ = CARRY((!\dice|delay1|auto_generated|counter_comb_bita0~COUT\) # (!\dice|delay1|auto_generated|counter_reg_bit\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dice|delay1|auto_generated|counter_reg_bit\(1),
	datad => VCC,
	cin => \dice|delay1|auto_generated|counter_comb_bita0~COUT\,
	combout => \dice|delay1|auto_generated|counter_comb_bita1~combout\,
	cout => \dice|delay1|auto_generated|counter_comb_bita1~COUT\);

-- Location: LCCOMB_X101_Y44_N22
\dice|delay1|auto_generated|counter_reg_bit[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dice|delay1|auto_generated|counter_reg_bit[1]~feeder_combout\ = \dice|delay1|auto_generated|counter_comb_bita1~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dice|delay1|auto_generated|counter_comb_bita1~combout\,
	combout => \dice|delay1|auto_generated|counter_reg_bit[1]~feeder_combout\);

-- Location: FF_X101_Y44_N23
\dice|delay1|auto_generated|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dice|clkb~combout\,
	d => \dice|delay1|auto_generated|counter_reg_bit[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dice|delay1|auto_generated|counter_reg_bit\(1));

-- Location: LCCOMB_X101_Y44_N10
\dice|delay1|auto_generated|counter_comb_bita2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dice|delay1|auto_generated|counter_comb_bita2~combout\ = (\dice|delay1|auto_generated|counter_reg_bit\(2) & (\dice|delay1|auto_generated|counter_comb_bita1~COUT\ $ (GND))) # (!\dice|delay1|auto_generated|counter_reg_bit\(2) & 
-- (!\dice|delay1|auto_generated|counter_comb_bita1~COUT\ & VCC))
-- \dice|delay1|auto_generated|counter_comb_bita2~COUT\ = CARRY((\dice|delay1|auto_generated|counter_reg_bit\(2) & !\dice|delay1|auto_generated|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dice|delay1|auto_generated|counter_reg_bit\(2),
	datad => VCC,
	cin => \dice|delay1|auto_generated|counter_comb_bita1~COUT\,
	combout => \dice|delay1|auto_generated|counter_comb_bita2~combout\,
	cout => \dice|delay1|auto_generated|counter_comb_bita2~COUT\);

-- Location: FF_X101_Y44_N11
\dice|delay1|auto_generated|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dice|clkb~combout\,
	d => \dice|delay1|auto_generated|counter_comb_bita2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dice|delay1|auto_generated|counter_reg_bit\(2));

-- Location: LCCOMB_X101_Y44_N12
\dice|delay1|auto_generated|counter_comb_bita3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dice|delay1|auto_generated|counter_comb_bita3~combout\ = (\dice|delay1|auto_generated|counter_reg_bit\(3) & (!\dice|delay1|auto_generated|counter_comb_bita2~COUT\)) # (!\dice|delay1|auto_generated|counter_reg_bit\(3) & 
-- ((\dice|delay1|auto_generated|counter_comb_bita2~COUT\) # (GND)))
-- \dice|delay1|auto_generated|counter_comb_bita3~COUT\ = CARRY((!\dice|delay1|auto_generated|counter_comb_bita2~COUT\) # (!\dice|delay1|auto_generated|counter_reg_bit\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dice|delay1|auto_generated|counter_reg_bit\(3),
	datad => VCC,
	cin => \dice|delay1|auto_generated|counter_comb_bita2~COUT\,
	combout => \dice|delay1|auto_generated|counter_comb_bita3~combout\,
	cout => \dice|delay1|auto_generated|counter_comb_bita3~COUT\);

-- Location: FF_X101_Y44_N13
\dice|delay1|auto_generated|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dice|clkb~combout\,
	d => \dice|delay1|auto_generated|counter_comb_bita3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dice|delay1|auto_generated|counter_reg_bit\(3));

-- Location: LCCOMB_X101_Y44_N14
\dice|delay1|auto_generated|counter_comb_bita3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dice|delay1|auto_generated|counter_comb_bita3~0_combout\ = !\dice|delay1|auto_generated|counter_comb_bita3~COUT\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \dice|delay1|auto_generated|counter_comb_bita3~COUT\,
	combout => \dice|delay1|auto_generated|counter_comb_bita3~0_combout\);

-- Location: LCCOMB_X100_Y44_N6
\dice|die1|MC_1|inst7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dice|die1|MC_1|inst7~0_combout\ = !\dice|die1|MC_1|inst7~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dice|die1|MC_1|inst7~q\,
	combout => \dice|die1|MC_1|inst7~0_combout\);

-- Location: LCCOMB_X100_Y44_N8
\dice|die1|MC_1|inst11\ : cycloneive_lcell_comb
-- Equation(s):
-- \dice|die1|MC_1|inst11~combout\ = (\dice|die1|MC_1|inst8~q\ & (\dice|die1|MC_1|inst10~q\ & !\dice|die1|MC_1|inst7~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dice|die1|MC_1|inst8~q\,
	datac => \dice|die1|MC_1|inst10~q\,
	datad => \dice|die1|MC_1|inst7~q\,
	combout => \dice|die1|MC_1|inst11~combout\);

-- Location: FF_X100_Y44_N21
\dice|die1|MC_1|inst7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dice|delay1|auto_generated|counter_comb_bita3~0_combout\,
	asdata => \dice|die1|MC_1|inst7~0_combout\,
	clrn => \dice|die1|MC_1|ALT_INV_inst11~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dice|die1|MC_1|inst7~q\);

-- Location: LCCOMB_X100_Y44_N28
\dice|die1|MC_1|inst8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dice|die1|MC_1|inst8~0_combout\ = !\dice|die1|MC_1|inst8~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dice|die1|MC_1|inst8~q\,
	combout => \dice|die1|MC_1|inst8~0_combout\);

-- Location: FF_X100_Y44_N27
\dice|die1|MC_1|inst8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dice|die1|MC_1|inst7~q\,
	asdata => \dice|die1|MC_1|inst8~0_combout\,
	clrn => \dice|die1|MC_1|ALT_INV_inst11~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dice|die1|MC_1|inst8~q\);

-- Location: LCCOMB_X99_Y44_N16
\dice|die1|MC_1|inst10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dice|die1|MC_1|inst10~0_combout\ = !\dice|die1|MC_1|inst10~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dice|die1|MC_1|inst10~q\,
	combout => \dice|die1|MC_1|inst10~0_combout\);

-- Location: FF_X99_Y44_N17
\dice|die1|MC_1|inst10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dice|die1|MC_1|ALT_INV_inst8~q\,
	d => \dice|die1|MC_1|inst10~0_combout\,
	clrn => \dice|die1|MC_1|ALT_INV_inst11~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dice|die1|MC_1|inst10~q\);

-- Location: LCCOMB_X100_Y44_N20
\dice|die1|DD_1|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dice|die1|DD_1|Mux6~0_combout\ = (\dice|die1|MC_1|inst7~q\) # ((\dice|die1|MC_1|inst10~q\ & \dice|die1|MC_1|inst8~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dice|die1|MC_1|inst10~q\,
	datac => \dice|die1|MC_1|inst7~q\,
	datad => \dice|die1|MC_1|inst8~q\,
	combout => \dice|die1|DD_1|Mux6~0_combout\);

-- Location: LCCOMB_X100_Y44_N26
\dice|die1|DD_1|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dice|die1|DD_1|Mux5~0_combout\ = ((\dice|die1|MC_1|inst8~q\ & !\dice|die1|MC_1|inst7~q\)) # (!\dice|die1|MC_1|inst10~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dice|die1|MC_1|inst10~q\,
	datac => \dice|die1|MC_1|inst8~q\,
	datad => \dice|die1|MC_1|inst7~q\,
	combout => \dice|die1|DD_1|Mux5~0_combout\);

-- Location: LCCOMB_X100_Y44_N24
\dice|die1|DD_1|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dice|die1|DD_1|Mux3~0_combout\ = ((\dice|die1|MC_1|inst10~q\ & !\dice|die1|MC_1|inst7~q\)) # (!\dice|die1|MC_1|inst8~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dice|die1|MC_1|inst8~q\,
	datac => \dice|die1|MC_1|inst10~q\,
	datad => \dice|die1|MC_1|inst7~q\,
	combout => \dice|die1|DD_1|Mux3~0_combout\);

-- Location: LCCOMB_X99_Y43_N14
\dice|delay2|auto_generated|counter_comb_bita0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dice|delay2|auto_generated|counter_comb_bita0~combout\ = \dice|delay2|auto_generated|counter_reg_bit\(0) $ (VCC)
-- \dice|delay2|auto_generated|counter_comb_bita0~COUT\ = CARRY(\dice|delay2|auto_generated|counter_reg_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dice|delay2|auto_generated|counter_reg_bit\(0),
	datad => VCC,
	combout => \dice|delay2|auto_generated|counter_comb_bita0~combout\,
	cout => \dice|delay2|auto_generated|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X99_Y43_N6
\dice|delay2|auto_generated|counter_reg_bit[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dice|delay2|auto_generated|counter_reg_bit[0]~feeder_combout\ = \dice|delay2|auto_generated|counter_comb_bita0~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dice|delay2|auto_generated|counter_comb_bita0~combout\,
	combout => \dice|delay2|auto_generated|counter_reg_bit[0]~feeder_combout\);

-- Location: FF_X99_Y43_N7
\dice|delay2|auto_generated|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dice|clkb~clkctrl_outclk\,
	d => \dice|delay2|auto_generated|counter_reg_bit[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dice|delay2|auto_generated|counter_reg_bit\(0));

-- Location: LCCOMB_X99_Y43_N16
\dice|delay2|auto_generated|counter_comb_bita1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dice|delay2|auto_generated|counter_comb_bita1~combout\ = (\dice|delay2|auto_generated|counter_reg_bit\(1) & (!\dice|delay2|auto_generated|counter_comb_bita0~COUT\)) # (!\dice|delay2|auto_generated|counter_reg_bit\(1) & 
-- ((\dice|delay2|auto_generated|counter_comb_bita0~COUT\) # (GND)))
-- \dice|delay2|auto_generated|counter_comb_bita1~COUT\ = CARRY((!\dice|delay2|auto_generated|counter_comb_bita0~COUT\) # (!\dice|delay2|auto_generated|counter_reg_bit\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dice|delay2|auto_generated|counter_reg_bit\(1),
	datad => VCC,
	cin => \dice|delay2|auto_generated|counter_comb_bita0~COUT\,
	combout => \dice|delay2|auto_generated|counter_comb_bita1~combout\,
	cout => \dice|delay2|auto_generated|counter_comb_bita1~COUT\);

-- Location: LCCOMB_X99_Y43_N26
\dice|delay2|auto_generated|counter_reg_bit[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dice|delay2|auto_generated|counter_reg_bit[1]~feeder_combout\ = \dice|delay2|auto_generated|counter_comb_bita1~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dice|delay2|auto_generated|counter_comb_bita1~combout\,
	combout => \dice|delay2|auto_generated|counter_reg_bit[1]~feeder_combout\);

-- Location: FF_X99_Y43_N27
\dice|delay2|auto_generated|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dice|clkb~combout\,
	d => \dice|delay2|auto_generated|counter_reg_bit[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dice|delay2|auto_generated|counter_reg_bit\(1));

-- Location: LCCOMB_X99_Y43_N18
\dice|delay2|auto_generated|counter_comb_bita2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dice|delay2|auto_generated|counter_comb_bita2~combout\ = (\dice|delay2|auto_generated|counter_reg_bit\(2) & (\dice|delay2|auto_generated|counter_comb_bita1~COUT\ $ (GND))) # (!\dice|delay2|auto_generated|counter_reg_bit\(2) & 
-- (!\dice|delay2|auto_generated|counter_comb_bita1~COUT\ & VCC))
-- \dice|delay2|auto_generated|counter_comb_bita2~COUT\ = CARRY((\dice|delay2|auto_generated|counter_reg_bit\(2) & !\dice|delay2|auto_generated|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dice|delay2|auto_generated|counter_reg_bit\(2),
	datad => VCC,
	cin => \dice|delay2|auto_generated|counter_comb_bita1~COUT\,
	combout => \dice|delay2|auto_generated|counter_comb_bita2~combout\,
	cout => \dice|delay2|auto_generated|counter_comb_bita2~COUT\);

-- Location: FF_X99_Y43_N19
\dice|delay2|auto_generated|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dice|clkb~combout\,
	d => \dice|delay2|auto_generated|counter_comb_bita2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dice|delay2|auto_generated|counter_reg_bit\(2));

-- Location: LCCOMB_X99_Y43_N20
\dice|delay2|auto_generated|counter_comb_bita3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dice|delay2|auto_generated|counter_comb_bita3~combout\ = (\dice|delay2|auto_generated|counter_reg_bit\(3) & (!\dice|delay2|auto_generated|counter_comb_bita2~COUT\)) # (!\dice|delay2|auto_generated|counter_reg_bit\(3) & 
-- ((\dice|delay2|auto_generated|counter_comb_bita2~COUT\) # (GND)))
-- \dice|delay2|auto_generated|counter_comb_bita3~COUT\ = CARRY((!\dice|delay2|auto_generated|counter_comb_bita2~COUT\) # (!\dice|delay2|auto_generated|counter_reg_bit\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dice|delay2|auto_generated|counter_reg_bit\(3),
	datad => VCC,
	cin => \dice|delay2|auto_generated|counter_comb_bita2~COUT\,
	combout => \dice|delay2|auto_generated|counter_comb_bita3~combout\,
	cout => \dice|delay2|auto_generated|counter_comb_bita3~COUT\);

-- Location: FF_X99_Y43_N21
\dice|delay2|auto_generated|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dice|clkb~combout\,
	d => \dice|delay2|auto_generated|counter_comb_bita3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dice|delay2|auto_generated|counter_reg_bit\(3));

-- Location: LCCOMB_X99_Y43_N22
\dice|delay2|auto_generated|counter_comb_bita4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dice|delay2|auto_generated|counter_comb_bita4~combout\ = (\dice|delay2|auto_generated|counter_reg_bit\(4) & (\dice|delay2|auto_generated|counter_comb_bita3~COUT\ $ (GND))) # (!\dice|delay2|auto_generated|counter_reg_bit\(4) & 
-- (!\dice|delay2|auto_generated|counter_comb_bita3~COUT\ & VCC))
-- \dice|delay2|auto_generated|counter_comb_bita4~COUT\ = CARRY((\dice|delay2|auto_generated|counter_reg_bit\(4) & !\dice|delay2|auto_generated|counter_comb_bita3~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dice|delay2|auto_generated|counter_reg_bit\(4),
	datad => VCC,
	cin => \dice|delay2|auto_generated|counter_comb_bita3~COUT\,
	combout => \dice|delay2|auto_generated|counter_comb_bita4~combout\,
	cout => \dice|delay2|auto_generated|counter_comb_bita4~COUT\);

-- Location: FF_X99_Y43_N23
\dice|delay2|auto_generated|counter_reg_bit[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dice|clkb~combout\,
	d => \dice|delay2|auto_generated|counter_comb_bita4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dice|delay2|auto_generated|counter_reg_bit\(4));

-- Location: LCCOMB_X99_Y43_N24
\dice|delay2|auto_generated|counter_comb_bita4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dice|delay2|auto_generated|counter_comb_bita4~0_combout\ = \dice|delay2|auto_generated|counter_comb_bita4~COUT\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \dice|delay2|auto_generated|counter_comb_bita4~COUT\,
	combout => \dice|delay2|auto_generated|counter_comb_bita4~0_combout\);

-- Location: LCCOMB_X98_Y43_N30
\dice|die2|MC_1|inst7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dice|die2|MC_1|inst7~0_combout\ = !\dice|die2|MC_1|inst7~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dice|die2|MC_1|inst7~q\,
	combout => \dice|die2|MC_1|inst7~0_combout\);

-- Location: LCCOMB_X98_Y43_N8
\dice|die2|MC_1|inst11\ : cycloneive_lcell_comb
-- Equation(s):
-- \dice|die2|MC_1|inst11~combout\ = (\dice|die2|MC_1|inst8~q\ & (\dice|die2|MC_1|inst10~q\ & !\dice|die2|MC_1|inst7~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dice|die2|MC_1|inst8~q\,
	datac => \dice|die2|MC_1|inst10~q\,
	datad => \dice|die2|MC_1|inst7~q\,
	combout => \dice|die2|MC_1|inst11~combout\);

-- Location: FF_X98_Y43_N1
\dice|die2|MC_1|inst7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dice|delay2|auto_generated|counter_comb_bita4~0_combout\,
	asdata => \dice|die2|MC_1|inst7~0_combout\,
	clrn => \dice|die2|MC_1|ALT_INV_inst11~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dice|die2|MC_1|inst7~q\);

-- Location: LCCOMB_X98_Y43_N20
\dice|die2|MC_1|inst8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dice|die2|MC_1|inst8~0_combout\ = !\dice|die2|MC_1|inst8~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dice|die2|MC_1|inst8~q\,
	combout => \dice|die2|MC_1|inst8~0_combout\);

-- Location: FF_X98_Y43_N5
\dice|die2|MC_1|inst8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dice|die2|MC_1|inst7~q\,
	asdata => \dice|die2|MC_1|inst8~0_combout\,
	clrn => \dice|die2|MC_1|ALT_INV_inst11~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dice|die2|MC_1|inst8~q\);

-- Location: LCCOMB_X97_Y43_N16
\dice|die2|MC_1|inst10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dice|die2|MC_1|inst10~0_combout\ = !\dice|die2|MC_1|inst10~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dice|die2|MC_1|inst10~q\,
	combout => \dice|die2|MC_1|inst10~0_combout\);

-- Location: FF_X97_Y43_N17
\dice|die2|MC_1|inst10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dice|die2|MC_1|ALT_INV_inst8~q\,
	d => \dice|die2|MC_1|inst10~0_combout\,
	clrn => \dice|die2|MC_1|ALT_INV_inst11~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dice|die2|MC_1|inst10~q\);

-- Location: LCCOMB_X97_Y43_N30
\dice|die2|DD_1|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dice|die2|DD_1|Mux6~0_combout\ = (\dice|die2|MC_1|inst7~q\) # ((\dice|die2|MC_1|inst10~q\ & \dice|die2|MC_1|inst8~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dice|die2|MC_1|inst10~q\,
	datac => \dice|die2|MC_1|inst7~q\,
	datad => \dice|die2|MC_1|inst8~q\,
	combout => \dice|die2|DD_1|Mux6~0_combout\);

-- Location: LCCOMB_X98_Y43_N0
\dice|die2|DD_1|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dice|die2|DD_1|Mux5~0_combout\ = ((\dice|die2|MC_1|inst8~q\ & !\dice|die2|MC_1|inst7~q\)) # (!\dice|die2|MC_1|inst10~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dice|die2|MC_1|inst10~q\,
	datab => \dice|die2|MC_1|inst8~q\,
	datac => \dice|die2|MC_1|inst7~q\,
	combout => \dice|die2|DD_1|Mux5~0_combout\);

-- Location: LCCOMB_X98_Y43_N4
\dice|die2|DD_1|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dice|die2|DD_1|Mux3~0_combout\ = ((\dice|die2|MC_1|inst10~q\ & !\dice|die2|MC_1|inst7~q\)) # (!\dice|die2|MC_1|inst8~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dice|die2|MC_1|inst10~q\,
	datac => \dice|die2|MC_1|inst8~q\,
	datad => \dice|die2|MC_1|inst7~q\,
	combout => \dice|die2|DD_1|Mux3~0_combout\);

-- Location: LCCOMB_X101_Y43_N8
\dice|delay3|auto_generated|counter_comb_bita0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dice|delay3|auto_generated|counter_comb_bita0~combout\ = \dice|delay3|auto_generated|counter_reg_bit\(0) $ (VCC)
-- \dice|delay3|auto_generated|counter_comb_bita0~COUT\ = CARRY(\dice|delay3|auto_generated|counter_reg_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dice|delay3|auto_generated|counter_reg_bit\(0),
	datad => VCC,
	combout => \dice|delay3|auto_generated|counter_comb_bita0~combout\,
	cout => \dice|delay3|auto_generated|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X101_Y43_N6
\dice|delay3|auto_generated|counter_reg_bit[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dice|delay3|auto_generated|counter_reg_bit[0]~feeder_combout\ = \dice|delay3|auto_generated|counter_comb_bita0~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dice|delay3|auto_generated|counter_comb_bita0~combout\,
	combout => \dice|delay3|auto_generated|counter_reg_bit[0]~feeder_combout\);

-- Location: FF_X101_Y43_N7
\dice|delay3|auto_generated|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dice|clkb~clkctrl_outclk\,
	d => \dice|delay3|auto_generated|counter_reg_bit[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dice|delay3|auto_generated|counter_reg_bit\(0));

-- Location: LCCOMB_X101_Y43_N10
\dice|delay3|auto_generated|counter_comb_bita1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dice|delay3|auto_generated|counter_comb_bita1~combout\ = (\dice|delay3|auto_generated|counter_reg_bit\(1) & (!\dice|delay3|auto_generated|counter_comb_bita0~COUT\)) # (!\dice|delay3|auto_generated|counter_reg_bit\(1) & 
-- ((\dice|delay3|auto_generated|counter_comb_bita0~COUT\) # (GND)))
-- \dice|delay3|auto_generated|counter_comb_bita1~COUT\ = CARRY((!\dice|delay3|auto_generated|counter_comb_bita0~COUT\) # (!\dice|delay3|auto_generated|counter_reg_bit\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dice|delay3|auto_generated|counter_reg_bit\(1),
	datad => VCC,
	cin => \dice|delay3|auto_generated|counter_comb_bita0~COUT\,
	combout => \dice|delay3|auto_generated|counter_comb_bita1~combout\,
	cout => \dice|delay3|auto_generated|counter_comb_bita1~COUT\);

-- Location: LCCOMB_X101_Y43_N26
\dice|delay3|auto_generated|counter_reg_bit[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dice|delay3|auto_generated|counter_reg_bit[1]~feeder_combout\ = \dice|delay3|auto_generated|counter_comb_bita1~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dice|delay3|auto_generated|counter_comb_bita1~combout\,
	combout => \dice|delay3|auto_generated|counter_reg_bit[1]~feeder_combout\);

-- Location: FF_X101_Y43_N27
\dice|delay3|auto_generated|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dice|clkb~combout\,
	d => \dice|delay3|auto_generated|counter_reg_bit[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dice|delay3|auto_generated|counter_reg_bit\(1));

-- Location: LCCOMB_X101_Y43_N12
\dice|delay3|auto_generated|counter_comb_bita2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dice|delay3|auto_generated|counter_comb_bita2~combout\ = (\dice|delay3|auto_generated|counter_reg_bit\(2) & (\dice|delay3|auto_generated|counter_comb_bita1~COUT\ $ (GND))) # (!\dice|delay3|auto_generated|counter_reg_bit\(2) & 
-- (!\dice|delay3|auto_generated|counter_comb_bita1~COUT\ & VCC))
-- \dice|delay3|auto_generated|counter_comb_bita2~COUT\ = CARRY((\dice|delay3|auto_generated|counter_reg_bit\(2) & !\dice|delay3|auto_generated|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dice|delay3|auto_generated|counter_reg_bit\(2),
	datad => VCC,
	cin => \dice|delay3|auto_generated|counter_comb_bita1~COUT\,
	combout => \dice|delay3|auto_generated|counter_comb_bita2~combout\,
	cout => \dice|delay3|auto_generated|counter_comb_bita2~COUT\);

-- Location: FF_X101_Y43_N13
\dice|delay3|auto_generated|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dice|clkb~combout\,
	d => \dice|delay3|auto_generated|counter_comb_bita2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dice|delay3|auto_generated|counter_reg_bit\(2));

-- Location: LCCOMB_X101_Y43_N14
\dice|delay3|auto_generated|counter_comb_bita3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dice|delay3|auto_generated|counter_comb_bita3~combout\ = (\dice|delay3|auto_generated|counter_reg_bit\(3) & (!\dice|delay3|auto_generated|counter_comb_bita2~COUT\)) # (!\dice|delay3|auto_generated|counter_reg_bit\(3) & 
-- ((\dice|delay3|auto_generated|counter_comb_bita2~COUT\) # (GND)))
-- \dice|delay3|auto_generated|counter_comb_bita3~COUT\ = CARRY((!\dice|delay3|auto_generated|counter_comb_bita2~COUT\) # (!\dice|delay3|auto_generated|counter_reg_bit\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dice|delay3|auto_generated|counter_reg_bit\(3),
	datad => VCC,
	cin => \dice|delay3|auto_generated|counter_comb_bita2~COUT\,
	combout => \dice|delay3|auto_generated|counter_comb_bita3~combout\,
	cout => \dice|delay3|auto_generated|counter_comb_bita3~COUT\);

-- Location: FF_X101_Y43_N15
\dice|delay3|auto_generated|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dice|clkb~combout\,
	d => \dice|delay3|auto_generated|counter_comb_bita3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dice|delay3|auto_generated|counter_reg_bit\(3));

-- Location: LCCOMB_X101_Y43_N16
\dice|delay3|auto_generated|counter_comb_bita4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dice|delay3|auto_generated|counter_comb_bita4~combout\ = (\dice|delay3|auto_generated|counter_reg_bit\(4) & (\dice|delay3|auto_generated|counter_comb_bita3~COUT\ $ (GND))) # (!\dice|delay3|auto_generated|counter_reg_bit\(4) & 
-- (!\dice|delay3|auto_generated|counter_comb_bita3~COUT\ & VCC))
-- \dice|delay3|auto_generated|counter_comb_bita4~COUT\ = CARRY((\dice|delay3|auto_generated|counter_reg_bit\(4) & !\dice|delay3|auto_generated|counter_comb_bita3~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dice|delay3|auto_generated|counter_reg_bit\(4),
	datad => VCC,
	cin => \dice|delay3|auto_generated|counter_comb_bita3~COUT\,
	combout => \dice|delay3|auto_generated|counter_comb_bita4~combout\,
	cout => \dice|delay3|auto_generated|counter_comb_bita4~COUT\);

-- Location: FF_X101_Y43_N17
\dice|delay3|auto_generated|counter_reg_bit[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dice|clkb~combout\,
	d => \dice|delay3|auto_generated|counter_comb_bita4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dice|delay3|auto_generated|counter_reg_bit\(4));

-- Location: LCCOMB_X101_Y43_N18
\dice|delay3|auto_generated|counter_comb_bita5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dice|delay3|auto_generated|counter_comb_bita5~combout\ = (\dice|delay3|auto_generated|counter_reg_bit\(5) & (!\dice|delay3|auto_generated|counter_comb_bita4~COUT\)) # (!\dice|delay3|auto_generated|counter_reg_bit\(5) & 
-- ((\dice|delay3|auto_generated|counter_comb_bita4~COUT\) # (GND)))
-- \dice|delay3|auto_generated|counter_comb_bita5~COUT\ = CARRY((!\dice|delay3|auto_generated|counter_comb_bita4~COUT\) # (!\dice|delay3|auto_generated|counter_reg_bit\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dice|delay3|auto_generated|counter_reg_bit\(5),
	datad => VCC,
	cin => \dice|delay3|auto_generated|counter_comb_bita4~COUT\,
	combout => \dice|delay3|auto_generated|counter_comb_bita5~combout\,
	cout => \dice|delay3|auto_generated|counter_comb_bita5~COUT\);

-- Location: FF_X101_Y43_N19
\dice|delay3|auto_generated|counter_reg_bit[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dice|clkb~combout\,
	d => \dice|delay3|auto_generated|counter_comb_bita5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dice|delay3|auto_generated|counter_reg_bit\(5));

-- Location: LCCOMB_X101_Y43_N20
\dice|delay3|auto_generated|counter_comb_bita5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dice|delay3|auto_generated|counter_comb_bita5~0_combout\ = !\dice|delay3|auto_generated|counter_comb_bita5~COUT\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \dice|delay3|auto_generated|counter_comb_bita5~COUT\,
	combout => \dice|delay3|auto_generated|counter_comb_bita5~0_combout\);

-- Location: LCCOMB_X101_Y42_N30
\dice|die3|MC_1|inst7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dice|die3|MC_1|inst7~0_combout\ = !\dice|die3|MC_1|inst7~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dice|die3|MC_1|inst7~q\,
	combout => \dice|die3|MC_1|inst7~0_combout\);

-- Location: LCCOMB_X100_Y42_N6
\dice|die3|MC_1|inst10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dice|die3|MC_1|inst10~0_combout\ = !\dice|die3|MC_1|inst10~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dice|die3|MC_1|inst10~q\,
	combout => \dice|die3|MC_1|inst10~0_combout\);

-- Location: FF_X100_Y42_N7
\dice|die3|MC_1|inst10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dice|die3|MC_1|ALT_INV_inst8~q\,
	d => \dice|die3|MC_1|inst10~0_combout\,
	clrn => \dice|die3|MC_1|ALT_INV_inst11~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dice|die3|MC_1|inst10~q\);

-- Location: LCCOMB_X101_Y42_N24
\dice|die3|MC_1|inst11\ : cycloneive_lcell_comb
-- Equation(s):
-- \dice|die3|MC_1|inst11~combout\ = (\dice|die3|MC_1|inst8~q\ & (\dice|die3|MC_1|inst10~q\ & !\dice|die3|MC_1|inst7~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dice|die3|MC_1|inst8~q\,
	datac => \dice|die3|MC_1|inst10~q\,
	datad => \dice|die3|MC_1|inst7~q\,
	combout => \dice|die3|MC_1|inst11~combout\);

-- Location: FF_X101_Y42_N1
\dice|die3|MC_1|inst7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dice|delay3|auto_generated|counter_comb_bita5~0_combout\,
	asdata => \dice|die3|MC_1|inst7~0_combout\,
	clrn => \dice|die3|MC_1|ALT_INV_inst11~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dice|die3|MC_1|inst7~q\);

-- Location: LCCOMB_X101_Y42_N28
\dice|die3|MC_1|inst8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dice|die3|MC_1|inst8~0_combout\ = !\dice|die3|MC_1|inst8~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dice|die3|MC_1|inst8~q\,
	combout => \dice|die3|MC_1|inst8~0_combout\);

-- Location: FF_X101_Y42_N3
\dice|die3|MC_1|inst8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dice|die3|MC_1|inst7~q\,
	asdata => \dice|die3|MC_1|inst8~0_combout\,
	clrn => \dice|die3|MC_1|ALT_INV_inst11~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dice|die3|MC_1|inst8~q\);

-- Location: LCCOMB_X101_Y42_N0
\dice|die3|DD_1|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dice|die3|DD_1|Mux6~0_combout\ = (\dice|die3|MC_1|inst7~q\) # ((\dice|die3|MC_1|inst8~q\ & \dice|die3|MC_1|inst10~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dice|die3|MC_1|inst8~q\,
	datac => \dice|die3|MC_1|inst7~q\,
	datad => \dice|die3|MC_1|inst10~q\,
	combout => \dice|die3|DD_1|Mux6~0_combout\);

-- Location: LCCOMB_X101_Y42_N2
\dice|die3|DD_1|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dice|die3|DD_1|Mux5~0_combout\ = ((!\dice|die3|MC_1|inst7~q\ & \dice|die3|MC_1|inst8~q\)) # (!\dice|die3|MC_1|inst10~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dice|die3|MC_1|inst7~q\,
	datac => \dice|die3|MC_1|inst8~q\,
	datad => \dice|die3|MC_1|inst10~q\,
	combout => \dice|die3|DD_1|Mux5~0_combout\);

-- Location: LCCOMB_X101_Y42_N26
\dice|die3|DD_1|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dice|die3|DD_1|Mux3~0_combout\ = ((\dice|die3|MC_1|inst10~q\ & !\dice|die3|MC_1|inst7~q\)) # (!\dice|die3|MC_1|inst8~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dice|die3|MC_1|inst10~q\,
	datac => \dice|die3|MC_1|inst7~q\,
	datad => \dice|die3|MC_1|inst8~q\,
	combout => \dice|die3|DD_1|Mux3~0_combout\);

-- Location: LCCOMB_X100_Y43_N8
\dice|delay4|auto_generated|counter_comb_bita0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dice|delay4|auto_generated|counter_comb_bita0~combout\ = \dice|delay4|auto_generated|counter_reg_bit\(0) $ (VCC)
-- \dice|delay4|auto_generated|counter_comb_bita0~COUT\ = CARRY(\dice|delay4|auto_generated|counter_reg_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dice|delay4|auto_generated|counter_reg_bit\(0),
	datad => VCC,
	combout => \dice|delay4|auto_generated|counter_comb_bita0~combout\,
	cout => \dice|delay4|auto_generated|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X100_Y43_N30
\dice|delay4|auto_generated|counter_reg_bit[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dice|delay4|auto_generated|counter_reg_bit[0]~feeder_combout\ = \dice|delay4|auto_generated|counter_comb_bita0~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dice|delay4|auto_generated|counter_comb_bita0~combout\,
	combout => \dice|delay4|auto_generated|counter_reg_bit[0]~feeder_combout\);

-- Location: FF_X100_Y43_N31
\dice|delay4|auto_generated|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dice|clkb~clkctrl_outclk\,
	d => \dice|delay4|auto_generated|counter_reg_bit[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dice|delay4|auto_generated|counter_reg_bit\(0));

-- Location: LCCOMB_X100_Y43_N10
\dice|delay4|auto_generated|counter_comb_bita1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dice|delay4|auto_generated|counter_comb_bita1~combout\ = (\dice|delay4|auto_generated|counter_reg_bit\(1) & (!\dice|delay4|auto_generated|counter_comb_bita0~COUT\)) # (!\dice|delay4|auto_generated|counter_reg_bit\(1) & 
-- ((\dice|delay4|auto_generated|counter_comb_bita0~COUT\) # (GND)))
-- \dice|delay4|auto_generated|counter_comb_bita1~COUT\ = CARRY((!\dice|delay4|auto_generated|counter_comb_bita0~COUT\) # (!\dice|delay4|auto_generated|counter_reg_bit\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dice|delay4|auto_generated|counter_reg_bit\(1),
	datad => VCC,
	cin => \dice|delay4|auto_generated|counter_comb_bita0~COUT\,
	combout => \dice|delay4|auto_generated|counter_comb_bita1~combout\,
	cout => \dice|delay4|auto_generated|counter_comb_bita1~COUT\);

-- Location: LCCOMB_X100_Y43_N6
\dice|delay4|auto_generated|counter_reg_bit[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dice|delay4|auto_generated|counter_reg_bit[1]~feeder_combout\ = \dice|delay4|auto_generated|counter_comb_bita1~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dice|delay4|auto_generated|counter_comb_bita1~combout\,
	combout => \dice|delay4|auto_generated|counter_reg_bit[1]~feeder_combout\);

-- Location: FF_X100_Y43_N7
\dice|delay4|auto_generated|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dice|clkb~combout\,
	d => \dice|delay4|auto_generated|counter_reg_bit[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dice|delay4|auto_generated|counter_reg_bit\(1));

-- Location: LCCOMB_X100_Y43_N12
\dice|delay4|auto_generated|counter_comb_bita2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dice|delay4|auto_generated|counter_comb_bita2~combout\ = (\dice|delay4|auto_generated|counter_reg_bit\(2) & (\dice|delay4|auto_generated|counter_comb_bita1~COUT\ $ (GND))) # (!\dice|delay4|auto_generated|counter_reg_bit\(2) & 
-- (!\dice|delay4|auto_generated|counter_comb_bita1~COUT\ & VCC))
-- \dice|delay4|auto_generated|counter_comb_bita2~COUT\ = CARRY((\dice|delay4|auto_generated|counter_reg_bit\(2) & !\dice|delay4|auto_generated|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dice|delay4|auto_generated|counter_reg_bit\(2),
	datad => VCC,
	cin => \dice|delay4|auto_generated|counter_comb_bita1~COUT\,
	combout => \dice|delay4|auto_generated|counter_comb_bita2~combout\,
	cout => \dice|delay4|auto_generated|counter_comb_bita2~COUT\);

-- Location: FF_X100_Y43_N13
\dice|delay4|auto_generated|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dice|clkb~combout\,
	d => \dice|delay4|auto_generated|counter_comb_bita2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dice|delay4|auto_generated|counter_reg_bit\(2));

-- Location: LCCOMB_X100_Y43_N14
\dice|delay4|auto_generated|counter_comb_bita3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dice|delay4|auto_generated|counter_comb_bita3~combout\ = (\dice|delay4|auto_generated|counter_reg_bit\(3) & (!\dice|delay4|auto_generated|counter_comb_bita2~COUT\)) # (!\dice|delay4|auto_generated|counter_reg_bit\(3) & 
-- ((\dice|delay4|auto_generated|counter_comb_bita2~COUT\) # (GND)))
-- \dice|delay4|auto_generated|counter_comb_bita3~COUT\ = CARRY((!\dice|delay4|auto_generated|counter_comb_bita2~COUT\) # (!\dice|delay4|auto_generated|counter_reg_bit\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dice|delay4|auto_generated|counter_reg_bit\(3),
	datad => VCC,
	cin => \dice|delay4|auto_generated|counter_comb_bita2~COUT\,
	combout => \dice|delay4|auto_generated|counter_comb_bita3~combout\,
	cout => \dice|delay4|auto_generated|counter_comb_bita3~COUT\);

-- Location: FF_X100_Y43_N15
\dice|delay4|auto_generated|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dice|clkb~combout\,
	d => \dice|delay4|auto_generated|counter_comb_bita3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dice|delay4|auto_generated|counter_reg_bit\(3));

-- Location: LCCOMB_X100_Y43_N16
\dice|delay4|auto_generated|counter_comb_bita4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dice|delay4|auto_generated|counter_comb_bita4~combout\ = (\dice|delay4|auto_generated|counter_reg_bit\(4) & (\dice|delay4|auto_generated|counter_comb_bita3~COUT\ $ (GND))) # (!\dice|delay4|auto_generated|counter_reg_bit\(4) & 
-- (!\dice|delay4|auto_generated|counter_comb_bita3~COUT\ & VCC))
-- \dice|delay4|auto_generated|counter_comb_bita4~COUT\ = CARRY((\dice|delay4|auto_generated|counter_reg_bit\(4) & !\dice|delay4|auto_generated|counter_comb_bita3~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dice|delay4|auto_generated|counter_reg_bit\(4),
	datad => VCC,
	cin => \dice|delay4|auto_generated|counter_comb_bita3~COUT\,
	combout => \dice|delay4|auto_generated|counter_comb_bita4~combout\,
	cout => \dice|delay4|auto_generated|counter_comb_bita4~COUT\);

-- Location: FF_X100_Y43_N17
\dice|delay4|auto_generated|counter_reg_bit[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dice|clkb~combout\,
	d => \dice|delay4|auto_generated|counter_comb_bita4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dice|delay4|auto_generated|counter_reg_bit\(4));

-- Location: LCCOMB_X100_Y43_N18
\dice|delay4|auto_generated|counter_comb_bita5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dice|delay4|auto_generated|counter_comb_bita5~combout\ = (\dice|delay4|auto_generated|counter_reg_bit\(5) & (!\dice|delay4|auto_generated|counter_comb_bita4~COUT\)) # (!\dice|delay4|auto_generated|counter_reg_bit\(5) & 
-- ((\dice|delay4|auto_generated|counter_comb_bita4~COUT\) # (GND)))
-- \dice|delay4|auto_generated|counter_comb_bita5~COUT\ = CARRY((!\dice|delay4|auto_generated|counter_comb_bita4~COUT\) # (!\dice|delay4|auto_generated|counter_reg_bit\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dice|delay4|auto_generated|counter_reg_bit\(5),
	datad => VCC,
	cin => \dice|delay4|auto_generated|counter_comb_bita4~COUT\,
	combout => \dice|delay4|auto_generated|counter_comb_bita5~combout\,
	cout => \dice|delay4|auto_generated|counter_comb_bita5~COUT\);

-- Location: FF_X100_Y43_N19
\dice|delay4|auto_generated|counter_reg_bit[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dice|clkb~combout\,
	d => \dice|delay4|auto_generated|counter_comb_bita5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dice|delay4|auto_generated|counter_reg_bit\(5));

-- Location: LCCOMB_X100_Y43_N20
\dice|delay4|auto_generated|counter_comb_bita6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dice|delay4|auto_generated|counter_comb_bita6~combout\ = (\dice|delay4|auto_generated|counter_reg_bit\(6) & (\dice|delay4|auto_generated|counter_comb_bita5~COUT\ $ (GND))) # (!\dice|delay4|auto_generated|counter_reg_bit\(6) & 
-- (!\dice|delay4|auto_generated|counter_comb_bita5~COUT\ & VCC))
-- \dice|delay4|auto_generated|counter_comb_bita6~COUT\ = CARRY((\dice|delay4|auto_generated|counter_reg_bit\(6) & !\dice|delay4|auto_generated|counter_comb_bita5~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dice|delay4|auto_generated|counter_reg_bit\(6),
	datad => VCC,
	cin => \dice|delay4|auto_generated|counter_comb_bita5~COUT\,
	combout => \dice|delay4|auto_generated|counter_comb_bita6~combout\,
	cout => \dice|delay4|auto_generated|counter_comb_bita6~COUT\);

-- Location: FF_X100_Y43_N21
\dice|delay4|auto_generated|counter_reg_bit[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dice|clkb~combout\,
	d => \dice|delay4|auto_generated|counter_comb_bita6~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dice|delay4|auto_generated|counter_reg_bit\(6));

-- Location: LCCOMB_X100_Y43_N22
\dice|delay4|auto_generated|counter_comb_bita6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dice|delay4|auto_generated|counter_comb_bita6~0_combout\ = \dice|delay4|auto_generated|counter_comb_bita6~COUT\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \dice|delay4|auto_generated|counter_comb_bita6~COUT\,
	combout => \dice|delay4|auto_generated|counter_comb_bita6~0_combout\);

-- Location: LCCOMB_X100_Y42_N30
\dice|die4|MC_1|inst7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dice|die4|MC_1|inst7~0_combout\ = !\dice|die4|MC_1|inst7~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dice|die4|MC_1|inst7~q\,
	combout => \dice|die4|MC_1|inst7~0_combout\);

-- Location: LCCOMB_X100_Y42_N24
\dice|die4|MC_1|inst7~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dice|die4|MC_1|inst7~feeder_combout\ = \dice|die4|MC_1|inst7~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dice|die4|MC_1|inst7~0_combout\,
	combout => \dice|die4|MC_1|inst7~feeder_combout\);

-- Location: LCCOMB_X99_Y42_N8
\dice|die4|MC_1|inst11\ : cycloneive_lcell_comb
-- Equation(s):
-- \dice|die4|MC_1|inst11~combout\ = (\dice|die4|MC_1|inst8~q\ & (\dice|die4|MC_1|inst10~q\ & !\dice|die4|MC_1|inst7~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dice|die4|MC_1|inst8~q\,
	datac => \dice|die4|MC_1|inst10~q\,
	datad => \dice|die4|MC_1|inst7~q\,
	combout => \dice|die4|MC_1|inst11~combout\);

-- Location: FF_X100_Y42_N25
\dice|die4|MC_1|inst7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dice|delay4|auto_generated|counter_comb_bita6~0_combout\,
	d => \dice|die4|MC_1|inst7~feeder_combout\,
	clrn => \dice|die4|MC_1|ALT_INV_inst11~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dice|die4|MC_1|inst7~q\);

-- Location: LCCOMB_X99_Y42_N18
\dice|die4|MC_1|inst8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dice|die4|MC_1|inst8~0_combout\ = !\dice|die4|MC_1|inst8~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dice|die4|MC_1|inst8~q\,
	combout => \dice|die4|MC_1|inst8~0_combout\);

-- Location: FF_X99_Y42_N29
\dice|die4|MC_1|inst8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dice|die4|MC_1|inst7~q\,
	asdata => \dice|die4|MC_1|inst8~0_combout\,
	clrn => \dice|die4|MC_1|ALT_INV_inst11~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dice|die4|MC_1|inst8~q\);

-- Location: LCCOMB_X99_Y42_N30
\dice|die4|MC_1|inst10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dice|die4|MC_1|inst10~0_combout\ = !\dice|die4|MC_1|inst10~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dice|die4|MC_1|inst10~q\,
	combout => \dice|die4|MC_1|inst10~0_combout\);

-- Location: FF_X99_Y42_N31
\dice|die4|MC_1|inst10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dice|die4|MC_1|ALT_INV_inst8~q\,
	d => \dice|die4|MC_1|inst10~0_combout\,
	clrn => \dice|die4|MC_1|ALT_INV_inst11~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dice|die4|MC_1|inst10~q\);

-- Location: LCCOMB_X99_Y42_N28
\dice|die4|DD_1|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dice|die4|DD_1|Mux6~0_combout\ = (\dice|die4|MC_1|inst7~q\) # ((\dice|die4|MC_1|inst10~q\ & \dice|die4|MC_1|inst8~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dice|die4|MC_1|inst10~q\,
	datac => \dice|die4|MC_1|inst8~q\,
	datad => \dice|die4|MC_1|inst7~q\,
	combout => \dice|die4|DD_1|Mux6~0_combout\);

-- Location: LCCOMB_X99_Y42_N24
\dice|die4|DD_1|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dice|die4|DD_1|Mux5~0_combout\ = ((\dice|die4|MC_1|inst8~q\ & !\dice|die4|MC_1|inst7~q\)) # (!\dice|die4|MC_1|inst10~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dice|die4|MC_1|inst10~q\,
	datac => \dice|die4|MC_1|inst8~q\,
	datad => \dice|die4|MC_1|inst7~q\,
	combout => \dice|die4|DD_1|Mux5~0_combout\);

-- Location: LCCOMB_X99_Y42_N26
\dice|die4|DD_1|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dice|die4|DD_1|Mux3~0_combout\ = ((\dice|die4|MC_1|inst10~q\ & !\dice|die4|MC_1|inst7~q\)) # (!\dice|die4|MC_1|inst8~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dice|die4|MC_1|inst10~q\,
	datac => \dice|die4|MC_1|inst8~q\,
	datad => \dice|die4|MC_1|inst7~q\,
	combout => \dice|die4|DD_1|Mux3~0_combout\);

-- Location: LCCOMB_X98_Y43_N26
\process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~2_combout\ = (\dice|die1|MC_1|inst7~q\ & (\dice|die4|MC_1|inst7~q\ & (\dice|die4|MC_1|inst8~q\ $ (!\dice|die1|MC_1|inst8~q\)))) # (!\dice|die1|MC_1|inst7~q\ & (!\dice|die4|MC_1|inst7~q\ & (\dice|die4|MC_1|inst8~q\ $ 
-- (!\dice|die1|MC_1|inst8~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dice|die1|MC_1|inst7~q\,
	datab => \dice|die4|MC_1|inst7~q\,
	datac => \dice|die4|MC_1|inst8~q\,
	datad => \dice|die1|MC_1|inst8~q\,
	combout => \process_0~2_combout\);

-- Location: LCCOMB_X98_Y43_N22
\process_0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~3_combout\ = (\process_0~2_combout\ & (\dice|die4|MC_1|inst10~q\ $ (!\dice|die1|MC_1|inst10~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~2_combout\,
	datac => \dice|die4|MC_1|inst10~q\,
	datad => \dice|die1|MC_1|inst10~q\,
	combout => \process_0~3_combout\);

-- Location: LCCOMB_X98_Y43_N2
\process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = (\dice|die2|MC_1|inst7~q\ & (\dice|die3|MC_1|inst7~q\ & (\dice|die2|MC_1|inst8~q\ $ (!\dice|die3|MC_1|inst8~q\)))) # (!\dice|die2|MC_1|inst7~q\ & (!\dice|die3|MC_1|inst7~q\ & (\dice|die2|MC_1|inst8~q\ $ 
-- (!\dice|die3|MC_1|inst8~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dice|die2|MC_1|inst7~q\,
	datab => \dice|die2|MC_1|inst8~q\,
	datac => \dice|die3|MC_1|inst7~q\,
	datad => \dice|die3|MC_1|inst8~q\,
	combout => \process_0~0_combout\);

-- Location: LCCOMB_X98_Y43_N12
\two_pair~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \two_pair~8_combout\ = (\process_0~3_combout\ & (\process_0~0_combout\ & (\dice|die2|MC_1|inst10~q\ $ (!\dice|die3|MC_1|inst10~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dice|die2|MC_1|inst10~q\,
	datab => \process_0~3_combout\,
	datac => \process_0~0_combout\,
	datad => \dice|die3|MC_1|inst10~q\,
	combout => \two_pair~8_combout\);

-- Location: LCCOMB_X98_Y43_N10
\process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~1_combout\ = (\process_0~0_combout\ & (\dice|die2|MC_1|inst10~q\ $ (!\dice|die3|MC_1|inst10~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dice|die2|MC_1|inst10~q\,
	datac => \process_0~0_combout\,
	datad => \dice|die3|MC_1|inst10~q\,
	combout => \process_0~1_combout\);

-- Location: LCCOMB_X98_Y43_N16
\two_pair~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \two_pair~4_combout\ = (\dice|die2|MC_1|inst7~q\ & (\dice|die4|MC_1|inst7~q\ & (\dice|die4|MC_1|inst8~q\ $ (!\dice|die2|MC_1|inst8~q\)))) # (!\dice|die2|MC_1|inst7~q\ & (!\dice|die4|MC_1|inst7~q\ & (\dice|die4|MC_1|inst8~q\ $ 
-- (!\dice|die2|MC_1|inst8~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dice|die2|MC_1|inst7~q\,
	datab => \dice|die4|MC_1|inst8~q\,
	datac => \dice|die2|MC_1|inst8~q\,
	datad => \dice|die4|MC_1|inst7~q\,
	combout => \two_pair~4_combout\);

-- Location: LCCOMB_X98_Y43_N6
\two_pair~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \two_pair~5_combout\ = (\two_pair~4_combout\ & (\dice|die2|MC_1|inst10~q\ $ (!\dice|die4|MC_1|inst10~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dice|die2|MC_1|inst10~q\,
	datac => \dice|die4|MC_1|inst10~q\,
	datad => \two_pair~4_combout\,
	combout => \two_pair~5_combout\);

-- Location: LCCOMB_X98_Y43_N28
\process_0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~6_combout\ = (\dice|die1|MC_1|inst7~q\ & (\dice|die2|MC_1|inst7~q\ & (\dice|die2|MC_1|inst8~q\ $ (!\dice|die1|MC_1|inst8~q\)))) # (!\dice|die1|MC_1|inst7~q\ & (!\dice|die2|MC_1|inst7~q\ & (\dice|die2|MC_1|inst8~q\ $ 
-- (!\dice|die1|MC_1|inst8~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dice|die1|MC_1|inst7~q\,
	datab => \dice|die2|MC_1|inst8~q\,
	datac => \dice|die2|MC_1|inst7~q\,
	datad => \dice|die1|MC_1|inst8~q\,
	combout => \process_0~6_combout\);

-- Location: LCCOMB_X98_Y43_N24
\process_0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~7_combout\ = (\process_0~6_combout\ & (\dice|die1|MC_1|inst10~q\ $ (!\dice|die2|MC_1|inst10~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dice|die1|MC_1|inst10~q\,
	datac => \dice|die2|MC_1|inst10~q\,
	datad => \process_0~6_combout\,
	combout => \process_0~7_combout\);

-- Location: LCCOMB_X98_Y43_N18
\process_0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~8_combout\ = (\dice|die3|MC_1|inst7~q\ & (\dice|die4|MC_1|inst7~q\ & (\dice|die4|MC_1|inst8~q\ $ (!\dice|die3|MC_1|inst8~q\)))) # (!\dice|die3|MC_1|inst7~q\ & (!\dice|die4|MC_1|inst7~q\ & (\dice|die4|MC_1|inst8~q\ $ 
-- (!\dice|die3|MC_1|inst8~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dice|die3|MC_1|inst7~q\,
	datab => \dice|die4|MC_1|inst7~q\,
	datac => \dice|die4|MC_1|inst8~q\,
	datad => \dice|die3|MC_1|inst8~q\,
	combout => \process_0~8_combout\);

-- Location: LCCOMB_X99_Y43_N4
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = \dice|die4|MC_1|inst10~q\ $ (\dice|die3|MC_1|inst10~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dice|die4|MC_1|inst10~q\,
	datad => \dice|die3|MC_1|inst10~q\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X98_Y43_N14
\process_0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~4_combout\ = (\dice|die1|MC_1|inst7~q\ & (\dice|die3|MC_1|inst7~q\ & (\dice|die3|MC_1|inst8~q\ $ (!\dice|die1|MC_1|inst8~q\)))) # (!\dice|die1|MC_1|inst7~q\ & (!\dice|die3|MC_1|inst7~q\ & (\dice|die3|MC_1|inst8~q\ $ 
-- (!\dice|die1|MC_1|inst8~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dice|die1|MC_1|inst7~q\,
	datab => \dice|die3|MC_1|inst8~q\,
	datac => \dice|die3|MC_1|inst7~q\,
	datad => \dice|die1|MC_1|inst8~q\,
	combout => \process_0~4_combout\);

-- Location: LCCOMB_X99_Y43_N0
\process_0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~5_combout\ = (\process_0~4_combout\ & (\dice|die1|MC_1|inst10~q\ $ (!\dice|die3|MC_1|inst10~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dice|die1|MC_1|inst10~q\,
	datac => \dice|die3|MC_1|inst10~q\,
	datad => \process_0~4_combout\,
	combout => \process_0~5_combout\);

-- Location: LCCOMB_X99_Y43_N2
\process_0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~9_combout\ = (\process_0~8_combout\ & (!\Equal0~0_combout\ & ((\process_0~1_combout\) # (\process_0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~1_combout\,
	datab => \process_0~8_combout\,
	datac => \Equal0~0_combout\,
	datad => \process_0~5_combout\,
	combout => \process_0~9_combout\);

-- Location: LCCOMB_X99_Y43_N8
\process_0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~10_combout\ = (\process_0~9_combout\) # ((\process_0~7_combout\ & ((\process_0~1_combout\) # (\two_pair~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~1_combout\,
	datab => \two_pair~5_combout\,
	datac => \process_0~7_combout\,
	datad => \process_0~9_combout\,
	combout => \process_0~10_combout\);

-- Location: LCCOMB_X99_Y43_N30
\two_pair~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \two_pair~6_combout\ = (\process_0~5_combout\ & ((\two_pair~5_combout\) # (\process_0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \two_pair~5_combout\,
	datac => \process_0~7_combout\,
	datad => \process_0~5_combout\,
	combout => \two_pair~6_combout\);

-- Location: LCCOMB_X99_Y43_N12
\process_0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~11_combout\ = (\process_0~3_combout\ & (\process_0~7_combout\ & \process_0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \process_0~3_combout\,
	datac => \process_0~7_combout\,
	datad => \process_0~5_combout\,
	combout => \process_0~11_combout\);

-- Location: LCCOMB_X99_Y43_N28
\two_pair~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \two_pair~7_combout\ = (!\process_0~10_combout\ & (!\process_0~11_combout\ & ((\two_pair~8_combout\) # (\two_pair~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \two_pair~8_combout\,
	datab => \process_0~10_combout\,
	datac => \two_pair~6_combout\,
	datad => \process_0~11_combout\,
	combout => \two_pair~7_combout\);

-- Location: LCCOMB_X99_Y43_N10
\three_kind~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \three_kind~2_combout\ = (\process_0~10_combout\ & (((!\process_0~5_combout\) # (!\process_0~7_combout\)) # (!\process_0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~3_combout\,
	datab => \process_0~10_combout\,
	datac => \process_0~7_combout\,
	datad => \process_0~5_combout\,
	combout => \three_kind~2_combout\);

ww_disp1(6) <= \disp1[6]~output_o\;

ww_disp1(5) <= \disp1[5]~output_o\;

ww_disp1(4) <= \disp1[4]~output_o\;

ww_disp1(3) <= \disp1[3]~output_o\;

ww_disp1(2) <= \disp1[2]~output_o\;

ww_disp1(1) <= \disp1[1]~output_o\;

ww_disp1(0) <= \disp1[0]~output_o\;

ww_disp2(6) <= \disp2[6]~output_o\;

ww_disp2(5) <= \disp2[5]~output_o\;

ww_disp2(4) <= \disp2[4]~output_o\;

ww_disp2(3) <= \disp2[3]~output_o\;

ww_disp2(2) <= \disp2[2]~output_o\;

ww_disp2(1) <= \disp2[1]~output_o\;

ww_disp2(0) <= \disp2[0]~output_o\;

ww_disp3(6) <= \disp3[6]~output_o\;

ww_disp3(5) <= \disp3[5]~output_o\;

ww_disp3(4) <= \disp3[4]~output_o\;

ww_disp3(3) <= \disp3[3]~output_o\;

ww_disp3(2) <= \disp3[2]~output_o\;

ww_disp3(1) <= \disp3[1]~output_o\;

ww_disp3(0) <= \disp3[0]~output_o\;

ww_disp4(6) <= \disp4[6]~output_o\;

ww_disp4(5) <= \disp4[5]~output_o\;

ww_disp4(4) <= \disp4[4]~output_o\;

ww_disp4(3) <= \disp4[3]~output_o\;

ww_disp4(2) <= \disp4[2]~output_o\;

ww_disp4(1) <= \disp4[1]~output_o\;

ww_disp4(0) <= \disp4[0]~output_o\;

ww_two_pair <= \two_pair~output_o\;

ww_three_kind <= \three_kind~output_o\;

ww_four_kind <= \four_kind~output_o\;
END structure;


