-- Copyright (C) 1991-2014 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 14.0.0 Build 200 06/17/2014 SJ Web Edition"

-- DATE "12/09/2015 15:28:47"

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

ENTITY 	simonSaysVGA IS
    PORT (
	altera_reserved_tms : IN std_logic := '0';
	altera_reserved_tck : IN std_logic := '0';
	altera_reserved_tdi : IN std_logic := '0';
	altera_reserved_tdo : OUT std_logic;
	auto_stp_external_clock_0 : IN std_logic := '0';
	clk : IN std_logic;
	reset : IN std_logic;
	rst : IN std_logic;
	color : IN std_logic_vector(3 DOWNTO 0);
	play : IN std_logic;
	hsync : OUT std_logic;
	vsync : OUT std_logic;
	vga_R : OUT std_logic_vector(7 DOWNTO 0);
	vga_G : OUT std_logic_vector(7 DOWNTO 0);
	vga_B : OUT std_logic_vector(7 DOWNTO 0);
	vga_sync : OUT std_logic;
	vga_blank : OUT std_logic;
	vga_clk : OUT std_logic;
	state_ssd : OUT std_logic_vector(0 TO 6);
	level_ssd : OUT std_logic_vector(0 TO 6);
	level_num_ssd : OUT std_logic_vector(0 TO 6)
	);
END simonSaysVGA;

-- Design Ports Information
-- reset	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hsync	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vsync	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_R[0]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_R[1]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_R[2]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_R[3]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_R[4]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_R[5]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_R[6]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_R[7]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_G[0]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_G[1]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_G[2]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_G[3]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_G[4]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_G[5]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_G[6]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_G[7]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_B[0]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_B[1]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_B[2]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_B[3]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_B[4]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_B[5]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_B[6]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_B[7]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_sync	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_blank	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_clk	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- state_ssd[6]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- state_ssd[5]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- state_ssd[4]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- state_ssd[3]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- state_ssd[2]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- state_ssd[1]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- state_ssd[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- level_ssd[6]	=>  Location: PIN_AD22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- level_ssd[5]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- level_ssd[4]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- level_ssd[3]	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- level_ssd[2]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- level_ssd[1]	=>  Location: PIN_AG25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- level_ssd[0]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- level_num_ssd[6]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- level_num_ssd[5]	=>  Location: PIN_AE4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- level_num_ssd[4]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- level_num_ssd[3]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- level_num_ssd[2]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- level_num_ssd[1]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- level_num_ssd[0]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- color[2]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- color[1]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- color[0]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- color[3]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- play	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- altera_reserved_tms	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- altera_reserved_tck	=>  Location: PIN_P5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- altera_reserved_tdi	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- altera_reserved_tdo	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- auto_stp_external_clock_0	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF simonSaysVGA IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_altera_reserved_tms : std_logic;
SIGNAL ww_altera_reserved_tck : std_logic;
SIGNAL ww_altera_reserved_tdi : std_logic;
SIGNAL ww_altera_reserved_tdo : std_logic;
SIGNAL ww_auto_stp_external_clock_0 : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_color : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_play : std_logic;
SIGNAL ww_hsync : std_logic;
SIGNAL ww_vsync : std_logic;
SIGNAL ww_vga_R : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_vga_G : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_vga_B : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_vga_sync : std_logic;
SIGNAL ww_vga_blank : std_logic;
SIGNAL ww_vga_clk : std_logic;
SIGNAL ww_state_ssd : std_logic_vector(0 TO 6);
SIGNAL ww_level_ssd : std_logic_vector(0 TO 6);
SIGNAL ww_level_num_ssd : std_logic_vector(0 TO 6);
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_stp_external_clock_0~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock25~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \altera_internal_jtag~TCKUTAPclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Mux37~2clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|~GND~combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~_wirecell_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[0]~_wirecell_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_out_ff~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|process_0~3_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_out_mode_ff~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_out_ff~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_out_mode_ff~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \clock25~0_combout\ : std_logic;
SIGNAL \clock25~q\ : std_logic;
SIGNAL \clock25~clkctrl_outclk\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \pixel_x~1_combout\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \pixel_x~2_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \pixel_x~0_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \yelB_on~1_combout\ : std_logic;
SIGNAL \Mux34~1_combout\ : std_logic;
SIGNAL \bounding_box~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \vga_HS~q\ : std_logic;
SIGNAL \pixel_y[0]~24_combout\ : std_logic;
SIGNAL \pixel_y[1]~8_combout\ : std_logic;
SIGNAL \pixel_y[1]~9\ : std_logic;
SIGNAL \pixel_y[2]~10_combout\ : std_logic;
SIGNAL \pixel_y[2]~11\ : std_logic;
SIGNAL \pixel_y[3]~12_combout\ : std_logic;
SIGNAL \pixel_y[3]~13\ : std_logic;
SIGNAL \pixel_y[4]~14_combout\ : std_logic;
SIGNAL \pixel_y[4]~15\ : std_logic;
SIGNAL \pixel_y[5]~16_combout\ : std_logic;
SIGNAL \pixel_y[5]~17\ : std_logic;
SIGNAL \pixel_y[6]~18_combout\ : std_logic;
SIGNAL \pixel_y[6]~19\ : std_logic;
SIGNAL \pixel_y[7]~20_combout\ : std_logic;
SIGNAL \pixel_y[7]~21\ : std_logic;
SIGNAL \pixel_y[8]~22_combout\ : std_logic;
SIGNAL \P_data~0_combout\ : std_logic;
SIGNAL \LessThan13~0_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \vga_VS~q\ : std_logic;
SIGNAL \redB_on~0_combout\ : std_logic;
SIGNAL \Mux34~0_combout\ : std_logic;
SIGNAL \redB_on~1_combout\ : std_logic;
SIGNAL \bluB_on~0_combout\ : std_logic;
SIGNAL \bluB_on~1_combout\ : std_logic;
SIGNAL \bluB_on~2_combout\ : std_logic;
SIGNAL \bluB_on~3_combout\ : std_logic;
SIGNAL \yelB_on~0_combout\ : std_logic;
SIGNAL \redB_on~2_combout\ : std_logic;
SIGNAL \redB_on~3_combout\ : std_logic;
SIGNAL \always16~0_combout\ : std_logic;
SIGNAL \grnB_on~2_combout\ : std_logic;
SIGNAL \grnB_on~1_combout\ : std_logic;
SIGNAL \grnB_on~0_combout\ : std_logic;
SIGNAL \grnB_on~3_combout\ : std_logic;
SIGNAL \always16~11_combout\ : std_logic;
SIGNAL \always16~12_combout\ : std_logic;
SIGNAL \always16~6_combout\ : std_logic;
SIGNAL \always16~7_combout\ : std_logic;
SIGNAL \always16~5_combout\ : std_logic;
SIGNAL \color[1]~input_o\ : std_logic;
SIGNAL \color[2]~input_o\ : std_logic;
SIGNAL \always5~1_combout\ : std_logic;
SIGNAL \color[0]~input_o\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \color[3]~input_o\ : std_logic;
SIGNAL \always5~2_combout\ : std_logic;
SIGNAL \Mux37~2_combout\ : std_logic;
SIGNAL \Mux37~2clkctrl_outclk\ : std_logic;
SIGNAL \cc.0010_1134~combout\ : std_logic;
SIGNAL \Mux39~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \cc.0000_1156~combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \cc.0001_1145~combout\ : std_logic;
SIGNAL \always5~0_combout\ : std_logic;
SIGNAL \Mux39~1_combout\ : std_logic;
SIGNAL \cc.0011_1123~combout\ : std_logic;
SIGNAL \Mux30~0_combout\ : std_logic;
SIGNAL \Mux30~1_combout\ : std_logic;
SIGNAL \NS~9_combout\ : std_logic;
SIGNAL \NS~8_combout\ : std_logic;
SIGNAL \Mux30~2_combout\ : std_logic;
SIGNAL \Mux30~3_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \Mux29~0_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \Mux28~0_combout\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \Add2~13\ : std_logic;
SIGNAL \Add2~14_combout\ : std_logic;
SIGNAL \Add2~15\ : std_logic;
SIGNAL \Add2~16_combout\ : std_logic;
SIGNAL \Add2~17\ : std_logic;
SIGNAL \Add2~18_combout\ : std_logic;
SIGNAL \Add2~19\ : std_logic;
SIGNAL \Add2~20_combout\ : std_logic;
SIGNAL \Add2~21\ : std_logic;
SIGNAL \Add2~22_combout\ : std_logic;
SIGNAL \Add2~23\ : std_logic;
SIGNAL \Add2~24_combout\ : std_logic;
SIGNAL \Add2~25\ : std_logic;
SIGNAL \Add2~26_combout\ : std_logic;
SIGNAL \Add2~27\ : std_logic;
SIGNAL \Add2~28_combout\ : std_logic;
SIGNAL \Add2~29\ : std_logic;
SIGNAL \Add2~30_combout\ : std_logic;
SIGNAL \Add2~31\ : std_logic;
SIGNAL \Add2~32_combout\ : std_logic;
SIGNAL \Add2~33\ : std_logic;
SIGNAL \Add2~34_combout\ : std_logic;
SIGNAL \Add2~35\ : std_logic;
SIGNAL \Add2~36_combout\ : std_logic;
SIGNAL \Add2~37\ : std_logic;
SIGNAL \Add2~38_combout\ : std_logic;
SIGNAL \LessThan2~2_combout\ : std_logic;
SIGNAL \LessThan2~3_combout\ : std_logic;
SIGNAL \LessThan2~4_combout\ : std_logic;
SIGNAL \LessThan2~5_combout\ : std_logic;
SIGNAL \Add2~39\ : std_logic;
SIGNAL \Add2~40_combout\ : std_logic;
SIGNAL \LessThan2~6_combout\ : std_logic;
SIGNAL \Add2~41\ : std_logic;
SIGNAL \Add2~42_combout\ : std_logic;
SIGNAL \Add2~43\ : std_logic;
SIGNAL \Add2~44_combout\ : std_logic;
SIGNAL \Add2~45\ : std_logic;
SIGNAL \Add2~46_combout\ : std_logic;
SIGNAL \Add2~47\ : std_logic;
SIGNAL \Add2~48_combout\ : std_logic;
SIGNAL \Add2~49\ : std_logic;
SIGNAL \Add2~50_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \LessThan2~1_combout\ : std_logic;
SIGNAL \LessThan2~7_combout\ : std_logic;
SIGNAL \play~input_o\ : std_logic;
SIGNAL \Mux32~0_combout\ : std_logic;
SIGNAL \Mux32~1_combout\ : std_logic;
SIGNAL \Mux31~0_combout\ : std_logic;
SIGNAL \Mux31~1_combout\ : std_logic;
SIGNAL \WideOr1~0_combout\ : std_logic;
SIGNAL \always16~3_combout\ : std_logic;
SIGNAL \always16~4_combout\ : std_logic;
SIGNAL \always16~8_combout\ : std_logic;
SIGNAL \always16~9_combout\ : std_logic;
SIGNAL \always16~10_combout\ : std_logic;
SIGNAL \always16~13_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Decoder8~0_combout\ : std_logic;
SIGNAL \Mux33~7_combout\ : std_logic;
SIGNAL \Mux33~8_combout\ : std_logic;
SIGNAL \Mux33~2_combout\ : std_logic;
SIGNAL \Mux33~0_combout\ : std_logic;
SIGNAL \Mux33~1_combout\ : std_logic;
SIGNAL \Mux33~4_combout\ : std_logic;
SIGNAL \Mux33~3_combout\ : std_logic;
SIGNAL \Mux33~5_combout\ : std_logic;
SIGNAL \Mux33~6_combout\ : std_logic;
SIGNAL \Mux33~9_combout\ : std_logic;
SIGNAL \Mux33~11_combout\ : std_logic;
SIGNAL \Mux33~12_combout\ : std_logic;
SIGNAL \Mux33~10_combout\ : std_logic;
SIGNAL \Mux33~13_combout\ : std_logic;
SIGNAL \Mux33~14_combout\ : std_logic;
SIGNAL \WideOr2~0_combout\ : std_logic;
SIGNAL \Mux33~16_combout\ : std_logic;
SIGNAL \Mux33~17_combout\ : std_logic;
SIGNAL \Mux33~15_combout\ : std_logic;
SIGNAL \always16~1_combout\ : std_logic;
SIGNAL \always16~2_combout\ : std_logic;
SIGNAL \vga_B~8_combout\ : std_logic;
SIGNAL \always15~0_combout\ : std_logic;
SIGNAL \vga_R~4_combout\ : std_logic;
SIGNAL \LessThan16~0_combout\ : std_logic;
SIGNAL \LessThan16~1_combout\ : std_logic;
SIGNAL \bounding_box~6_combout\ : std_logic;
SIGNAL \bounding_box~7_combout\ : std_logic;
SIGNAL \bounding_box~9_combout\ : std_logic;
SIGNAL \bounding_box~10_combout\ : std_logic;
SIGNAL \bounding_box~3_combout\ : std_logic;
SIGNAL \bounding_box~4_combout\ : std_logic;
SIGNAL \bounding_box~5_combout\ : std_logic;
SIGNAL \bounding_box~1_combout\ : std_logic;
SIGNAL \bounding_box~2_combout\ : std_logic;
SIGNAL \LessThan15~0_combout\ : std_logic;
SIGNAL \LessThan15~1_combout\ : std_logic;
SIGNAL \LessThan15~2_combout\ : std_logic;
SIGNAL \bounding_box~8_combout\ : std_logic;
SIGNAL \yelB_on~2_combout\ : std_logic;
SIGNAL \yelB_on~3_combout\ : std_logic;
SIGNAL \yelB_on~4_combout\ : std_logic;
SIGNAL \vga_R~5_combout\ : std_logic;
SIGNAL \vga_R~6_combout\ : std_logic;
SIGNAL \vga_R~10_combout\ : std_logic;
SIGNAL \vga_R~7_combout\ : std_logic;
SIGNAL \vga_R~8_combout\ : std_logic;
SIGNAL \vga_R~11_combout\ : std_logic;
SIGNAL \vga_G~4_combout\ : std_logic;
SIGNAL \vga_G~7_combout\ : std_logic;
SIGNAL \always16~14_combout\ : std_logic;
SIGNAL \vga_G~5_combout\ : std_logic;
SIGNAL \vga_R~9_combout\ : std_logic;
SIGNAL \vga_G~6_combout\ : std_logic;
SIGNAL \vga_G~8_combout\ : std_logic;
SIGNAL \bluB_on~6_combout\ : std_logic;
SIGNAL \bluB_on~4_combout\ : std_logic;
SIGNAL \bluB_on~5_combout\ : std_logic;
SIGNAL \bluB_on~7_combout\ : std_logic;
SIGNAL \vga_B~9_combout\ : std_logic;
SIGNAL \vga_B~10_combout\ : std_logic;
SIGNAL \vga_B~13_combout\ : std_logic;
SIGNAL \vga_B~11_combout\ : std_logic;
SIGNAL \vga_B~14_combout\ : std_logic;
SIGNAL \vga_B~12_combout\ : std_logic;
SIGNAL \vga_B~15_combout\ : std_logic;
SIGNAL \vga_B~16_combout\ : std_logic;
SIGNAL \vga_blank~0_combout\ : std_logic;
SIGNAL \WideOr1~1_combout\ : std_logic;
SIGNAL \Decoder3~0_combout\ : std_logic;
SIGNAL \level_num_ssd~0_combout\ : std_logic;
SIGNAL \altera_reserved_tms~input_o\ : std_logic;
SIGNAL \altera_reserved_tck~input_o\ : std_logic;
SIGNAL \altera_reserved_tdi~input_o\ : std_logic;
SIGNAL \altera_internal_jtag~TCKUTAP\ : std_logic;
SIGNAL \altera_internal_jtag~TCKUTAPclkctrl_outclk\ : std_logic;
SIGNAL \altera_internal_jtag~TMSUTAP\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~3_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~4_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~5_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~6_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~7_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~2_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena_proc~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~8_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~11_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~12_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~9_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~10_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_dr_scan_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt~2_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~1_combout\ : std_logic;
SIGNAL \altera_internal_jtag~TDIUTAP\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~4_combout\ : std_logic;
SIGNAL \~QIC_CREATED_GND~I_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[6]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[4]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[2]~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[1]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[0]~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal1~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|reset_ena_reg_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|reset_ena_reg~q\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~q\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[2]~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[0]~2_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal3~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[0]~4_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~7_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~8_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][3]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][3]~q\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][4]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][4]~q\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][9]~q\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~15_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][8]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][8]~q\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~14_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][7]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][7]~q\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~13_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][6]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][6]~q\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~12_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][5]~q\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~11_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~10_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~6_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~9_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][2]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][2]~q\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~3_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[1]~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[1]~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[2]~2_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[2]~3_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~q\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][1]~q\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~5_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~2_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_dr_scan_reg~q\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~2_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~3_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena[1]~reg0_q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|bypass_reg_out~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|bypass_reg_out~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_shift_enable~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr_ena~0_combout\ : std_logic;
SIGNAL \auto_stp_external_clock_0~input_o\ : std_logic;
SIGNAL \auto_stp_external_clock_0~inputclkctrl_outclk\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|final_trigger_set~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|run~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|condition_delay_reg[0]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|condition_delay_reg[2]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|final_trigger_set~4_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|final_trigger_set~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|is_buffer_wrapped~2_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter~2_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|collect_data~combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~1\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~3\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~5_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~7_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~6\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~8_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~10_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~9\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~11_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~13_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~12\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~14_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~16_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~15\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~17_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~19_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal0~1_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter[5]~1_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|offset_count~2_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[2]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|offset_count~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[0]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~1\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~2_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|offset_count~1_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[1]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~3\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~4_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|offset_count~3_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[3]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~5\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~6_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|is_buffer_wrapped~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|offset_count~6_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[6]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~7\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~8_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|offset_count~4_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[4]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~9\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~10_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|offset_count~5_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[5]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~11\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~12_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|is_buffer_wrapped~1_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|is_buffer_wrapped~3_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:is_buffer_wrapped~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|run~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|run~q\ : std_logic;
SIGNAL \auto_signaltap_0|acq_trigger_in_reg[8]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_setup_ena~combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_2|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_2|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_8|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_8|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_11|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_11|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_14|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_14|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_17|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_20|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_20|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_23|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_23|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|mbpm_25|gen_sbpmg_pipeline_less_than_two:sm0:0:sm1|holdff~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|output28a~13_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|mbpm_22|gen_sbpmg_pipeline_less_than_two:sm0:0:sm1|holdff~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|output28a~14_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|output28a~15_combout\ : std_logic;
SIGNAL \auto_signaltap_0|acq_trigger_in_reg[6]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|mbpm_19|gen_sbpmg_pipeline_less_than_two:sm0:0:sm1|holdff~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|output28a~25_combout\ : std_logic;
SIGNAL \auto_signaltap_0|acq_trigger_in_reg[5]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|mbpm_16|gen_sbpmg_pipeline_less_than_two:sm0:0:sm1|holdff~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|output28a~26_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|output28a~27_combout\ : std_logic;
SIGNAL \auto_signaltap_0|acq_trigger_in_reg[3]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|mbpm_10|gen_sbpmg_pipeline_less_than_two:sm0:0:sm1|holdff~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|output28a~23_combout\ : std_logic;
SIGNAL \auto_signaltap_0|acq_trigger_in_reg[4]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|mbpm_13|gen_sbpmg_pipeline_less_than_two:sm0:0:sm1|holdff~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|output28a~22_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|output28a~24_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|output28a~16_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|output28a~17_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|output28a~18_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|mbpm_4|gen_sbpmg_pipeline_less_than_two:sm0:0:sm1|holdff~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|output28a~20_combout\ : std_logic;
SIGNAL \auto_signaltap_0|acq_trigger_in_reg[2]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|mbpm_7|gen_sbpmg_pipeline_less_than_two:sm0:0:sm1|holdff~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|output28a~19_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|output28a~21_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|output28a~28_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|output28a~3_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|mbpm_1|gen_sbpmg_pipeline_less_than_two:sm0:0:sm1|holdff~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|output28a~4_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|output28a~1_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|output28a~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|output28a~2_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|output28a~5_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|output28a~9_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|output28a~10_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|output28a~7_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|output28a~6_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|output28a~8_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|output28a~11_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|output28a~12_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|output28a~29_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|last_level_delayed~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|last_level_delayed~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|trigger_config_deserialize|dffs[9]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|trigger_config_deserialize|dffs[8]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|trigger_config_deserialize|dffs[7]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|trigger_config_deserialize|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|trigger_config_deserialize|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter[5]~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~2_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~4_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal0~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal0~2_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~18\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~20_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~22_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|trigger_config_deserialize|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|trigger_config_deserialize|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|trigger_config_deserialize|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_offset_config_deserialize|dffs[6]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_offset_config_deserialize|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_offset_config_deserialize|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_offset_config_deserialize|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[1]~8\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[2]~10\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[3]~12\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[4]~14\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[5]~16\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[6]~17_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[6]~18\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[7]~19_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal1~3_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[5]~15_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[4]~13_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal1~2_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[2]~9_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[3]~11_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal1~1_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[1]~7_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal1~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal1~4_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|done~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:done~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|collecting_post_data_var~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:collecting_post_data_var~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|base_address~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:base_address[0]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|cdr~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|_~16_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_shift_enable~1_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|_~15_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|_~14_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|_~13_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|_~12_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|_~11_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|_~10_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|_~9_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|_~8_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|_~7_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|_~6_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|_~5_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|_~4_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|_~3_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_load_on~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_enable_delayed~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_enable_delayed~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|state_status[2]~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|state_status[2]~1_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|_~2_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|_~1_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|_~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_internal~5_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|segment_shift_var~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|is_buffer_wrapped_once_sig~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|is_buffer_wrapped_once_sig~1_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|is_buffer_wrapped_once_sig~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig[0]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig[0]~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sdr~combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig[3]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[0]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[1]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[2]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[3]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[4]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[6]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][0]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][0]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][0]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][0]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][0]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][0]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][0]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][0]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed[0]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed[1]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed[2]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed[3]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed[4]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed[5]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed[6]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \auto_signaltap_0|~GND~combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|acq_buf_read_reset~combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_comb_bita3~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|Equal1~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_reg_bit[3]~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|Equal0~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|acq_buf_read_reset~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter_clk_ena~combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita4~combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita5~combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita5~COUT\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita6~combout\ : std_logic;
SIGNAL \auto_signaltap_0|acq_data_in_reg[1]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][1]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][1]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][1]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][1]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][1]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][1]~q\ : std_logic;
SIGNAL \auto_signaltap_0|acq_data_in_reg[2]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][2]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][2]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][2]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][2]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][2]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][2]~q\ : std_logic;
SIGNAL \auto_signaltap_0|acq_data_in_reg[3]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][3]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][3]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][3]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][3]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][3]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][3]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][3]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][3]~q\ : std_logic;
SIGNAL \auto_signaltap_0|acq_data_in_reg[4]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][4]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][4]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][4]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][4]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][4]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][4]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][4]~q\ : std_logic;
SIGNAL \auto_signaltap_0|acq_data_in_reg[5]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][5]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][5]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][5]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][5]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][5]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][5]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][5]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][5]~q\ : std_logic;
SIGNAL \auto_signaltap_0|acq_data_in_reg[6]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][6]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][6]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][6]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][6]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][6]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][6]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][6]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][6]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][7]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][7]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][7]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][7]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][7]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][7]~q\ : std_logic;
SIGNAL \auto_signaltap_0|acq_data_in_reg[8]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][8]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][8]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][8]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][8]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][8]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][8]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][8]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_shift_load~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|_~8_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|_~7_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|_~6_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|_~5_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|_~4_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|_~3_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|_~2_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|_~1_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|_~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~14_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[5]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~13_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~12_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~11_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~10_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~9_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~8_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~7_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig[5]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~6_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig[4]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~5_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~4_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~3_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~2_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~1_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter~6_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter[0]~5_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|Add0~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter~8_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter~7_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter[0]~2_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter[0]~3_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter~4_combout\ : std_logic;
SIGNAL \auto_signaltap_0|~VCC~combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR~6_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR~7_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR~4_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR~5_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR[0]~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR~12_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR~13_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR~10_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR~11_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR[1]~1_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR~16_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR~17_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR~14_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR~15_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR[2]~2_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR~20_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR~21_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR~18_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR~19_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR[3]~3_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR[3]~8_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR[3]~9_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_internal~3_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen:tdo_crc_calc|lfsr~13_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[0]~32_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|process_0~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|process_0~1_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|LessThan0~2_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|LessThan0~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|LessThan0~3_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|LessThan0~1_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|LessThan0~4_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|process_0~2_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[8]~34_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[0]~33\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[1]~35_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[1]~36\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[2]~37_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[2]~38\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[3]~39_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[3]~40\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[4]~41_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[4]~42\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[5]~43_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[5]~44\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[6]~45_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[6]~46\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[7]~47_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[7]~48\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[8]~49_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[8]~50\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[9]~51_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[9]~52\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[10]~53_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[10]~54\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[11]~55_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[11]~56\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[12]~57_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[12]~58\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[13]~59_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[13]~60\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[14]~61_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[14]~62\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[15]~63_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[15]~64\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[16]~65_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[16]~66\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[17]~67_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[17]~68\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[18]~69_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[18]~70\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[19]~71_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[19]~72\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[20]~73_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[20]~74\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[21]~75_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[21]~76\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[22]~77_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[22]~78\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[23]~79_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[23]~80\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[24]~81_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[24]~82\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[25]~83_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[25]~84\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[26]~85_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[26]~86\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[27]~87_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[27]~88\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[28]~89_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[28]~90\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[29]~91_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[29]~92\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[30]~93_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[30]~94\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[31]~95_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|LessThan0~8_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|LessThan0~5_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|LessThan0~6_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|LessThan0~7_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|LessThan0~9_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen:tdo_crc_calc|lfsr[12]~1_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen:tdo_crc_calc|lfsr~12_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen:tdo_crc_calc|lfsr~11_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen:tdo_crc_calc|lfsr~10_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen:tdo_crc_calc|lfsr~9_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen:tdo_crc_calc|lfsr~8_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen:tdo_crc_calc|lfsr~7_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen:tdo_crc_calc|lfsr~6_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen:tdo_crc_calc|lfsr~5_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen:tdo_crc_calc|lfsr~4_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen:tdo_crc_calc|lfsr~3_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen:tdo_crc_calc|lfsr~2_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen:tdo_crc_calc|lfsr~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_val_shift_reg~16_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_val_shift_reg[0]~1_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_val_shift_reg~15_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_val_shift_reg~14_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_val_shift_reg~13_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_val_shift_reg~12_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_val_shift_reg~11_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_val_shift_reg~10_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_val_shift_reg~9_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_val_shift_reg~8_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_val_shift_reg~7_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_val_shift_reg~6_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_val_shift_reg~5_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_val_shift_reg~4_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_val_shift_reg~3_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_val_shift_reg~2_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_val_shift_reg~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_internal~2_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_internal~4_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_internal~6_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_comb_bita3~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_reg_bit[3]~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|Equal3~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_ram_shift_load~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][1]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:segment_shift_var~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[1]~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][1]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_read_pointer_counter|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_read_pointer_counter|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_read_pointer_counter|auto_generated|counter_comb_bita0~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_read_pointer_counter|auto_generated|counter_reg_bit[0]~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|Equal2~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][1]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[0]~1_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][1]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[1]~1_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][2]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][2]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed[2]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][3]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][3]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][3]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][3]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[3]~3_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed[4]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][5]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][5]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[5]~5_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][6]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][6]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[6]~6_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][9]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][9]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][9]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][9]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[9]~9_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][11]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][11]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[11]~11_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][14]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][14]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[14]~14_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~14_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][13]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][13]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[13]~13_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~13_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][12]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][12]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[12]~12_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~12_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~11_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][10]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][10]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[10]~10_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~10_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~9_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][8]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][8]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][8]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][8]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[8]~8_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~8_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed[6]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][7]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][7]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][7]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][7]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[7]~7_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~7_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~6_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~5_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed[3]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][4]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][4]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][4]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][4]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[4]~4_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~4_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~3_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~2_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~1_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_wrapped_delayed~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_wrapped_delayed~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][0]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][0]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][0]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][0]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_internal~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_internal~1_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_internal~7_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~9_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|clear_signal~combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[3]~17\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[4]~18_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~20_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~9_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~13_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~10\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~11_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~12\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[2]~14_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[2]~15\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[3]~16_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~6_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~7_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~14_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~15_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~16_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR[0]~17_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~13_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~18_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~11_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~10_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~12_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~8_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~3_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~2_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo_bypass_reg~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo_bypass_reg~q\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~2_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~3_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~4_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[0]~9_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~10_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~20_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~15_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[0]~10\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[1]~11_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[1]~12\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[2]~13_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[2]~14\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[3]~16_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[3]~17\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~18_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[0]~8_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[0]~9_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~17_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~18_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[3]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[1]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[0]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[0]~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[0]~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[1]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~11_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~12_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~13_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[1]~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~6_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~7_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~16_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[2]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[2]~2_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~14_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~15_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~3_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~5_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~q\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~_wirecell_combout\ : std_logic;
SIGNAL \altera_internal_jtag~TDO\ : std_logic;
SIGNAL S : std_logic_vector(2 DOWNTO 0);
SIGNAL pixel_y : std_logic_vector(8 DOWNTO 0);
SIGNAL pixel_x : std_logic_vector(9 DOWNTO 0);
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_14|dffs\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_15|dffs\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_17|dffs\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_18|dffs\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_2|dffs\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_20|dffs\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_21|dffs\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_23|dffs\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_24|dffs\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_26|dffs\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_27|dffs\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_3|dffs\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_5|dffs\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_6|dffs\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_8|dffs\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_9|dffs\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \auto_signaltap_0|acq_trigger_in_reg\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \auto_signaltap_0|acq_data_in_reg\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_val_shift_reg\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|current_segment_delayed\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|condition_delay_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|trigger_config_deserialize|dffs\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|output28a\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_11|dffs\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_12|dffs\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|trigger_config_deserialize|dffs\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_offset_config_deserialize|dffs\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xraddr\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_reg_bit\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_reg_bit\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|dffs\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_reg_bit\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_read_pointer_counter|auto_generated|counter_reg_bit\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|dffs\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen:tdo_crc_calc|lfsr\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_altera_internal_jtag~TCKUTAPclkctrl_outclk\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen:tdo_crc_calc|ALT_INV_lfsr[12]~1_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|ALT_INV_word_counter[0]~5_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_tdo_crc_len_reg[8]~34_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|ALT_INV_state\ : std_logic_vector(8 DOWNTO 8);
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_clr_reg~q\ : std_logic;
SIGNAL \ALT_INV_altera_internal_jtag~TMSUTAP\ : std_logic;
SIGNAL \ALT_INV_level_num_ssd~0_combout\ : std_logic;
SIGNAL \ALT_INV_Decoder3~0_combout\ : std_logic;
SIGNAL \ALT_INV_vga_blank~0_combout\ : std_logic;
SIGNAL \ALT_INV_always16~3_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr1~0_combout\ : std_logic;
SIGNAL \ALT_INV_always15~0_combout\ : std_logic;
SIGNAL ALT_INV_S : std_logic_vector(2 DOWNTO 2);
SIGNAL \ALT_INV_vga_VS~q\ : std_logic;
SIGNAL \ALT_INV_vga_HS~q\ : std_logic;

BEGIN

ww_altera_reserved_tms <= altera_reserved_tms;
ww_altera_reserved_tck <= altera_reserved_tck;
ww_altera_reserved_tdi <= altera_reserved_tdi;
altera_reserved_tdo <= ww_altera_reserved_tdo;
ww_auto_stp_external_clock_0 <= auto_stp_external_clock_0;
ww_clk <= clk;
ww_reset <= reset;
ww_rst <= rst;
ww_color <= color;
ww_play <= play;
hsync <= ww_hsync;
vsync <= ww_vsync;
vga_R <= ww_vga_R;
vga_G <= ww_vga_G;
vga_B <= ww_vga_B;
vga_sync <= ww_vga_sync;
vga_blank <= ww_vga_blank;
vga_clk <= ww_vga_clk;
state_ssd <= ww_state_ssd;
level_ssd <= ww_level_ssd;
level_num_ssd <= ww_level_num_ssd;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][8]~q\ & \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][7]~q\ & 
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][6]~q\ & \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][5]~q\ & 
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][4]~q\ & \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][3]~q\ & 
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][2]~q\ & \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][1]~q\ & 
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][0]~q\);

\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed\(6) & 
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed\(5) & \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed\(4) & 
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed\(3) & \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed\(2) & 
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed\(1) & \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed\(0));

\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_reg_bit\(6) & 
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_reg_bit\(5) & 
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_reg_bit\(4) & 
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_reg_bit\(3) & 
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_reg_bit\(2) & 
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_reg_bit\(1) & 
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_reg_bit\(0));

\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a0~portbdataout\ <= \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a1\ <= \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a2\ <= \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a3\ <= \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a4\ <= \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a5\ <= \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a6\ <= \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a7\ <= \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a8\ <= \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(8);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\auto_stp_external_clock_0~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \auto_stp_external_clock_0~input_o\);

\clock25~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock25~q\);

\altera_internal_jtag~TCKUTAPclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \altera_internal_jtag~TCKUTAP\);

\Mux37~2clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Mux37~2_combout\);

\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~q\);
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\ <= NOT \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\;
\ALT_INV_altera_internal_jtag~TCKUTAPclkctrl_outclk\ <= NOT \altera_internal_jtag~TCKUTAPclkctrl_outclk\;
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen:tdo_crc_calc|ALT_INV_lfsr[12]~1_combout\ <= NOT \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen:tdo_crc_calc|lfsr[12]~1_combout\;
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|ALT_INV_word_counter[0]~5_combout\ <= NOT \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter[0]~5_combout\;
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_tdo_crc_len_reg[8]~34_combout\ <= NOT \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[8]~34_combout\;
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|ALT_INV_state\(8) <= NOT \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8);
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_clr_reg~q\ <= NOT \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~q\;
\ALT_INV_altera_internal_jtag~TMSUTAP\ <= NOT \altera_internal_jtag~TMSUTAP\;
\ALT_INV_level_num_ssd~0_combout\ <= NOT \level_num_ssd~0_combout\;
\ALT_INV_Decoder3~0_combout\ <= NOT \Decoder3~0_combout\;
\ALT_INV_vga_blank~0_combout\ <= NOT \vga_blank~0_combout\;
\ALT_INV_always16~3_combout\ <= NOT \always16~3_combout\;
\ALT_INV_WideOr1~0_combout\ <= NOT \WideOr1~0_combout\;
\ALT_INV_always15~0_combout\ <= NOT \always15~0_combout\;
ALT_INV_S(2) <= NOT S(2);
\ALT_INV_vga_VS~q\ <= NOT \vga_VS~q\;
\ALT_INV_vga_HS~q\ <= NOT \vga_HS~q\;

-- Location: FF_X74_Y28_N7
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_out_ff\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_out_ff~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_out_ff~q\);

-- Location: LCCOMB_X74_Y28_N18
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|process_0~3\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|last_level_delayed~q\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|trigger_config_deserialize|dffs\(0),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|process_0~3_combout\);

-- Location: FF_X74_Y28_N27
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_out_mode_ff\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_out_mode_ff~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_out_mode_ff~q\);

-- Location: LCCOMB_X74_Y28_N6
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_out_ff~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_out_mode_ff~q\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|process_0~3_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_out_ff~q\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|state_status[2]~1_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_out_ff~0_combout\);

-- Location: LCCOMB_X74_Y28_N26
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_out_mode_ff~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][1]~q\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_out_mode_ff~q\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|trigger_config_deserialize|dffs\(0),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_out_mode_ff~0_combout\);

-- Location: IOOBUF_X38_Y73_N16
\hsync~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_vga_HS~q\,
	devoe => ww_devoe,
	o => ww_hsync);

-- Location: IOOBUF_X54_Y73_N2
\vsync~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_vga_VS~q\,
	devoe => ww_devoe,
	o => ww_vsync);

-- Location: IOOBUF_X33_Y73_N2
\vga_R[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_R~6_combout\,
	devoe => ww_devoe,
	o => ww_vga_R(0));

-- Location: IOOBUF_X31_Y73_N2
\vga_R[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_R~6_combout\,
	devoe => ww_devoe,
	o => ww_vga_R(1));

-- Location: IOOBUF_X35_Y73_N23
\vga_R[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_R~6_combout\,
	devoe => ww_devoe,
	o => ww_vga_R(2));

-- Location: IOOBUF_X33_Y73_N9
\vga_R[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_R~6_combout\,
	devoe => ww_devoe,
	o => ww_vga_R(3));

-- Location: IOOBUF_X20_Y73_N9
\vga_R[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_R~6_combout\,
	devoe => ww_devoe,
	o => ww_vga_R(4));

-- Location: IOOBUF_X40_Y73_N9
\vga_R[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_R~10_combout\,
	devoe => ww_devoe,
	o => ww_vga_R(5));

-- Location: IOOBUF_X11_Y73_N23
\vga_R[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_R~10_combout\,
	devoe => ww_devoe,
	o => ww_vga_R(6));

-- Location: IOOBUF_X20_Y73_N16
\vga_R[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_R~11_combout\,
	devoe => ww_devoe,
	o => ww_vga_R(7));

-- Location: IOOBUF_X11_Y73_N16
\vga_G[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_G~7_combout\,
	devoe => ww_devoe,
	o => ww_vga_G(0));

-- Location: IOOBUF_X25_Y73_N16
\vga_G[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_G~7_combout\,
	devoe => ww_devoe,
	o => ww_vga_G(1));

-- Location: IOOBUF_X11_Y73_N9
\vga_G[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_G~7_combout\,
	devoe => ww_devoe,
	o => ww_vga_G(2));

-- Location: IOOBUF_X25_Y73_N23
\vga_G[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_G~7_combout\,
	devoe => ww_devoe,
	o => ww_vga_G(3));

-- Location: IOOBUF_X16_Y73_N9
\vga_G[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_G~7_combout\,
	devoe => ww_devoe,
	o => ww_vga_G(4));

-- Location: IOOBUF_X16_Y73_N2
\vga_G[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_G~5_combout\,
	devoe => ww_devoe,
	o => ww_vga_G(5));

-- Location: IOOBUF_X20_Y73_N2
\vga_G[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_G~5_combout\,
	devoe => ww_devoe,
	o => ww_vga_G(6));

-- Location: IOOBUF_X23_Y73_N16
\vga_G[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_G~8_combout\,
	devoe => ww_devoe,
	o => ww_vga_G(7));

-- Location: IOOBUF_X38_Y73_N9
\vga_B[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_B~13_combout\,
	devoe => ww_devoe,
	o => ww_vga_B(0));

-- Location: IOOBUF_X38_Y73_N2
\vga_B[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_B~13_combout\,
	devoe => ww_devoe,
	o => ww_vga_B(1));

-- Location: IOOBUF_X23_Y73_N2
\vga_B[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_B~13_combout\,
	devoe => ww_devoe,
	o => ww_vga_B(2));

-- Location: IOOBUF_X42_Y73_N9
\vga_B[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_B~13_combout\,
	devoe => ww_devoe,
	o => ww_vga_B(3));

-- Location: IOOBUF_X42_Y73_N2
\vga_B[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_B~14_combout\,
	devoe => ww_devoe,
	o => ww_vga_B(4));

-- Location: IOOBUF_X52_Y73_N16
\vga_B[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_B~15_combout\,
	devoe => ww_devoe,
	o => ww_vga_B(5));

-- Location: IOOBUF_X23_Y73_N9
\vga_B[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_B~16_combout\,
	devoe => ww_devoe,
	o => ww_vga_B(6));

-- Location: IOOBUF_X52_Y73_N23
\vga_B[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_B~13_combout\,
	devoe => ww_devoe,
	o => ww_vga_B(7));

-- Location: IOOBUF_X35_Y73_N16
\vga_sync~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_vga_sync);

-- Location: IOOBUF_X31_Y73_N9
\vga_blank~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_vga_blank~0_combout\,
	devoe => ww_devoe,
	o => ww_vga_blank);

-- Location: IOOBUF_X47_Y73_N2
\vga_clk~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \clock25~q\,
	devoe => ww_devoe,
	o => ww_vga_clk);

-- Location: IOOBUF_X72_Y73_N16
\state_ssd[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => S(0),
	devoe => ww_devoe,
	o => ww_state_ssd(6));

-- Location: IOOBUF_X67_Y73_N9
\state_ssd[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_always16~3_combout\,
	devoe => ww_devoe,
	o => ww_state_ssd(5));

-- Location: IOOBUF_X67_Y73_N23
\state_ssd[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr1~1_combout\,
	devoe => ww_devoe,
	o => ww_state_ssd(4));

-- Location: IOOBUF_X69_Y0_N2
\state_ssd[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideOr1~0_combout\,
	devoe => ww_devoe,
	o => ww_state_ssd(3));

-- Location: IOOBUF_X67_Y0_N2
\state_ssd[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideOr1~0_combout\,
	devoe => ww_devoe,
	o => ww_state_ssd(2));

-- Location: IOOBUF_X69_Y73_N23
\state_ssd[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_always16~3_combout\,
	devoe => ww_devoe,
	o => ww_state_ssd(1));

-- Location: IOOBUF_X69_Y73_N16
\state_ssd[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_always16~3_combout\,
	devoe => ww_devoe,
	o => ww_state_ssd(0));

-- Location: IOOBUF_X111_Y0_N9
\level_ssd[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_level_ssd(6));

-- Location: IOOBUF_X65_Y0_N2
\level_ssd[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_level_ssd(5));

-- Location: IOOBUF_X42_Y0_N23
\level_ssd[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_level_ssd(4));

-- Location: IOOBUF_X40_Y0_N23
\level_ssd[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_level_ssd(3));

-- Location: IOOBUF_X65_Y0_N9
\level_ssd[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_level_ssd(2));

-- Location: IOOBUF_X91_Y0_N23
\level_ssd[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_level_ssd(1));

-- Location: IOOBUF_X74_Y0_N9
\level_ssd[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_level_ssd(0));

-- Location: IOOBUF_X74_Y73_N16
\level_num_ssd[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_S(2),
	devoe => ww_devoe,
	o => ww_level_num_ssd(6));

-- Location: IOOBUF_X3_Y0_N23
\level_num_ssd[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_level_num_ssd(5));

-- Location: IOOBUF_X65_Y73_N16
\level_num_ssd[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Decoder3~0_combout\,
	devoe => ww_devoe,
	o => ww_level_num_ssd(4));

-- Location: IOOBUF_X69_Y73_N2
\level_num_ssd[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_S(2),
	devoe => ww_devoe,
	o => ww_level_num_ssd(3));

-- Location: IOOBUF_X67_Y73_N16
\level_num_ssd[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_level_num_ssd~0_combout\,
	devoe => ww_devoe,
	o => ww_level_num_ssd(2));

-- Location: IOOBUF_X67_Y73_N2
\level_num_ssd[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_always15~0_combout\,
	devoe => ww_devoe,
	o => ww_level_num_ssd(1));

-- Location: IOOBUF_X72_Y73_N2
\level_num_ssd[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_S(2),
	devoe => ww_devoe,
	o => ww_level_num_ssd(0));

-- Location: IOOBUF_X0_Y37_N1
\altera_reserved_tdo~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altera_internal_jtag~TDO\,
	devoe => ww_devoe,
	o => ww_altera_reserved_tdo);

-- Location: IOIBUF_X0_Y36_N15
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

-- Location: LCCOMB_X49_Y72_N0
\clock25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock25~0_combout\ = !\clock25~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clock25~q\,
	combout => \clock25~0_combout\);

-- Location: FF_X49_Y72_N1
clock25 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clock25~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock25~q\);

-- Location: CLKCTRL_G11
\clock25~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock25~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock25~clkctrl_outclk\);

-- Location: LCCOMB_X66_Y56_N8
\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = pixel_x(0) $ (VCC)
-- \Add1~1\ = CARRY(pixel_x(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => pixel_x(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: FF_X66_Y56_N9
\pixel_x[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock25~clkctrl_outclk\,
	d => \Add1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_x(0));

-- Location: LCCOMB_X66_Y56_N10
\Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (pixel_x(1) & (!\Add1~1\)) # (!pixel_x(1) & ((\Add1~1\) # (GND)))
-- \Add1~3\ = CARRY((!\Add1~1\) # (!pixel_x(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pixel_x(1),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: FF_X66_Y56_N11
\pixel_x[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock25~clkctrl_outclk\,
	d => \Add1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_x(1));

-- Location: LCCOMB_X66_Y56_N12
\Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (pixel_x(2) & (\Add1~3\ $ (GND))) # (!pixel_x(2) & (!\Add1~3\ & VCC))
-- \Add1~5\ = CARRY((pixel_x(2) & !\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pixel_x(2),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: FF_X66_Y56_N13
\pixel_x[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock25~clkctrl_outclk\,
	d => \Add1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_x(2));

-- Location: LCCOMB_X66_Y56_N14
\Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (pixel_x(3) & (!\Add1~5\)) # (!pixel_x(3) & ((\Add1~5\) # (GND)))
-- \Add1~7\ = CARRY((!\Add1~5\) # (!pixel_x(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pixel_x(3),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: FF_X66_Y56_N15
\pixel_x[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock25~clkctrl_outclk\,
	d => \Add1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_x(3));

-- Location: LCCOMB_X66_Y56_N16
\Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (pixel_x(4) & (\Add1~7\ $ (GND))) # (!pixel_x(4) & (!\Add1~7\ & VCC))
-- \Add1~9\ = CARRY((pixel_x(4) & !\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pixel_x(4),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: FF_X66_Y56_N17
\pixel_x[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock25~clkctrl_outclk\,
	d => \Add1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_x(4));

-- Location: LCCOMB_X66_Y56_N18
\Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (pixel_x(5) & (!\Add1~9\)) # (!pixel_x(5) & ((\Add1~9\) # (GND)))
-- \Add1~11\ = CARRY((!\Add1~9\) # (!pixel_x(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pixel_x(5),
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X66_Y56_N22
\Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (pixel_x(7) & (!\Add1~13\)) # (!pixel_x(7) & ((\Add1~13\) # (GND)))
-- \Add1~15\ = CARRY((!\Add1~13\) # (!pixel_x(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pixel_x(7),
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: LCCOMB_X66_Y56_N24
\Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = (pixel_x(8) & (\Add1~15\ $ (GND))) # (!pixel_x(8) & (!\Add1~15\ & VCC))
-- \Add1~17\ = CARRY((pixel_x(8) & !\Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pixel_x(8),
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

-- Location: LCCOMB_X67_Y56_N6
\pixel_x~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pixel_x~1_combout\ = (\Add1~16_combout\ & !\Equal0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~16_combout\,
	datad => \Equal0~3_combout\,
	combout => \pixel_x~1_combout\);

-- Location: FF_X67_Y56_N7
\pixel_x[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock25~clkctrl_outclk\,
	d => \pixel_x~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_x(8));

-- Location: LCCOMB_X66_Y56_N26
\Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = \Add1~17\ $ (pixel_x(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => pixel_x(9),
	cin => \Add1~17\,
	combout => \Add1~18_combout\);

-- Location: LCCOMB_X67_Y57_N0
\pixel_x~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pixel_x~2_combout\ = (\Add1~18_combout\ & !\Equal0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~18_combout\,
	datad => \Equal0~3_combout\,
	combout => \pixel_x~2_combout\);

-- Location: FF_X67_Y57_N1
\pixel_x[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock25~clkctrl_outclk\,
	d => \pixel_x~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_x(9));

-- Location: LCCOMB_X68_Y56_N22
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!pixel_x(5) & (!pixel_x(6) & (!pixel_x(7) & pixel_x(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pixel_x(5),
	datab => pixel_x(6),
	datac => pixel_x(7),
	datad => pixel_x(9),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X68_Y56_N2
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (pixel_x(2) & (pixel_x(0) & (pixel_x(3) & pixel_x(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pixel_x(2),
	datab => pixel_x(0),
	datac => pixel_x(3),
	datad => pixel_x(1),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X68_Y56_N6
\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (\Equal0~1_combout\ & (pixel_x(4) & (pixel_x(8) & \Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => pixel_x(4),
	datac => pixel_x(8),
	datad => \Equal0~2_combout\,
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X67_Y56_N12
\pixel_x~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pixel_x~0_combout\ = (\Add1~10_combout\ & !\Equal0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~10_combout\,
	datad => \Equal0~3_combout\,
	combout => \pixel_x~0_combout\);

-- Location: FF_X67_Y56_N13
\pixel_x[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock25~clkctrl_outclk\,
	d => \pixel_x~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_x(5));

-- Location: LCCOMB_X66_Y56_N20
\Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (pixel_x(6) & (\Add1~11\ $ (GND))) # (!pixel_x(6) & (!\Add1~11\ & VCC))
-- \Add1~13\ = CARRY((pixel_x(6) & !\Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pixel_x(6),
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: FF_X66_Y56_N21
\pixel_x[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock25~clkctrl_outclk\,
	d => \Add1~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_x(6));

-- Location: FF_X66_Y56_N23
\pixel_x[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock25~clkctrl_outclk\,
	d => \Add1~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_x(7));

-- Location: LCCOMB_X67_Y56_N20
\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (pixel_x(7)) # ((pixel_x(9)) # (pixel_x(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pixel_x(7),
	datac => pixel_x(9),
	datad => pixel_x(8),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X68_Y56_N28
\yelB_on~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \yelB_on~1_combout\ = (!pixel_x(2) & (!pixel_x(0) & !pixel_x(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pixel_x(2),
	datac => pixel_x(0),
	datad => pixel_x(1),
	combout => \yelB_on~1_combout\);

-- Location: LCCOMB_X68_Y56_N8
\Mux34~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux34~1_combout\ = (!pixel_x(3) & !pixel_x(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => pixel_x(3),
	datad => pixel_x(4),
	combout => \Mux34~1_combout\);

-- Location: LCCOMB_X69_Y56_N22
\bounding_box~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bounding_box~0_combout\ = (pixel_x(6) & pixel_x(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pixel_x(6),
	datad => pixel_x(5),
	combout => \bounding_box~0_combout\);

-- Location: LCCOMB_X67_Y56_N16
\LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (!\LessThan0~0_combout\ & (((\yelB_on~1_combout\ & \Mux34~1_combout\)) # (!\bounding_box~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~0_combout\,
	datab => \yelB_on~1_combout\,
	datac => \Mux34~1_combout\,
	datad => \bounding_box~0_combout\,
	combout => \LessThan0~1_combout\);

-- Location: FF_X67_Y56_N17
vga_HS : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock25~clkctrl_outclk\,
	d => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_HS~q\);

-- Location: LCCOMB_X67_Y56_N0
\pixel_y[0]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \pixel_y[0]~24_combout\ = pixel_y(0) $ (\Equal0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => pixel_y(0),
	datad => \Equal0~3_combout\,
	combout => \pixel_y[0]~24_combout\);

-- Location: FF_X67_Y56_N1
\pixel_y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock25~clkctrl_outclk\,
	d => \pixel_y[0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_y(0));

-- Location: LCCOMB_X67_Y57_N4
\pixel_y[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \pixel_y[1]~8_combout\ = (pixel_y(0) & (pixel_y(1) $ (VCC))) # (!pixel_y(0) & (pixel_y(1) & VCC))
-- \pixel_y[1]~9\ = CARRY((pixel_y(0) & pixel_y(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pixel_y(0),
	datab => pixel_y(1),
	datad => VCC,
	combout => \pixel_y[1]~8_combout\,
	cout => \pixel_y[1]~9\);

-- Location: FF_X67_Y57_N5
\pixel_y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock25~clkctrl_outclk\,
	d => \pixel_y[1]~8_combout\,
	ena => \Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_y(1));

-- Location: LCCOMB_X67_Y57_N6
\pixel_y[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \pixel_y[2]~10_combout\ = (pixel_y(2) & (!\pixel_y[1]~9\)) # (!pixel_y(2) & ((\pixel_y[1]~9\) # (GND)))
-- \pixel_y[2]~11\ = CARRY((!\pixel_y[1]~9\) # (!pixel_y(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pixel_y(2),
	datad => VCC,
	cin => \pixel_y[1]~9\,
	combout => \pixel_y[2]~10_combout\,
	cout => \pixel_y[2]~11\);

-- Location: FF_X67_Y57_N7
\pixel_y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock25~clkctrl_outclk\,
	d => \pixel_y[2]~10_combout\,
	ena => \Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_y(2));

-- Location: LCCOMB_X67_Y57_N8
\pixel_y[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \pixel_y[3]~12_combout\ = (pixel_y(3) & (\pixel_y[2]~11\ $ (GND))) # (!pixel_y(3) & (!\pixel_y[2]~11\ & VCC))
-- \pixel_y[3]~13\ = CARRY((pixel_y(3) & !\pixel_y[2]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pixel_y(3),
	datad => VCC,
	cin => \pixel_y[2]~11\,
	combout => \pixel_y[3]~12_combout\,
	cout => \pixel_y[3]~13\);

-- Location: FF_X67_Y57_N9
\pixel_y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock25~clkctrl_outclk\,
	d => \pixel_y[3]~12_combout\,
	ena => \Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_y(3));

-- Location: LCCOMB_X67_Y57_N10
\pixel_y[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \pixel_y[4]~14_combout\ = (pixel_y(4) & (!\pixel_y[3]~13\)) # (!pixel_y(4) & ((\pixel_y[3]~13\) # (GND)))
-- \pixel_y[4]~15\ = CARRY((!\pixel_y[3]~13\) # (!pixel_y(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pixel_y(4),
	datad => VCC,
	cin => \pixel_y[3]~13\,
	combout => \pixel_y[4]~14_combout\,
	cout => \pixel_y[4]~15\);

-- Location: FF_X67_Y57_N11
\pixel_y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock25~clkctrl_outclk\,
	d => \pixel_y[4]~14_combout\,
	ena => \Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_y(4));

-- Location: LCCOMB_X67_Y57_N12
\pixel_y[5]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \pixel_y[5]~16_combout\ = (pixel_y(5) & (\pixel_y[4]~15\ $ (GND))) # (!pixel_y(5) & (!\pixel_y[4]~15\ & VCC))
-- \pixel_y[5]~17\ = CARRY((pixel_y(5) & !\pixel_y[4]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pixel_y(5),
	datad => VCC,
	cin => \pixel_y[4]~15\,
	combout => \pixel_y[5]~16_combout\,
	cout => \pixel_y[5]~17\);

-- Location: FF_X67_Y57_N13
\pixel_y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock25~clkctrl_outclk\,
	d => \pixel_y[5]~16_combout\,
	ena => \Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_y(5));

-- Location: LCCOMB_X67_Y57_N14
\pixel_y[6]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \pixel_y[6]~18_combout\ = (pixel_y(6) & (!\pixel_y[5]~17\)) # (!pixel_y(6) & ((\pixel_y[5]~17\) # (GND)))
-- \pixel_y[6]~19\ = CARRY((!\pixel_y[5]~17\) # (!pixel_y(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pixel_y(6),
	datad => VCC,
	cin => \pixel_y[5]~17\,
	combout => \pixel_y[6]~18_combout\,
	cout => \pixel_y[6]~19\);

-- Location: FF_X67_Y57_N15
\pixel_y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock25~clkctrl_outclk\,
	d => \pixel_y[6]~18_combout\,
	ena => \Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_y(6));

-- Location: LCCOMB_X67_Y57_N16
\pixel_y[7]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \pixel_y[7]~20_combout\ = (pixel_y(7) & (\pixel_y[6]~19\ $ (GND))) # (!pixel_y(7) & (!\pixel_y[6]~19\ & VCC))
-- \pixel_y[7]~21\ = CARRY((pixel_y(7) & !\pixel_y[6]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pixel_y(7),
	datad => VCC,
	cin => \pixel_y[6]~19\,
	combout => \pixel_y[7]~20_combout\,
	cout => \pixel_y[7]~21\);

-- Location: FF_X67_Y57_N17
\pixel_y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock25~clkctrl_outclk\,
	d => \pixel_y[7]~20_combout\,
	ena => \Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_y(7));

-- Location: LCCOMB_X67_Y57_N18
\pixel_y[8]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \pixel_y[8]~22_combout\ = \pixel_y[7]~21\ $ (pixel_y(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => pixel_y(8),
	cin => \pixel_y[7]~21\,
	combout => \pixel_y[8]~22_combout\);

-- Location: FF_X67_Y57_N19
\pixel_y[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock25~clkctrl_outclk\,
	d => \pixel_y[8]~22_combout\,
	ena => \Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_y(8));

-- Location: LCCOMB_X68_Y57_N30
\P_data~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \P_data~0_combout\ = (!pixel_y(4) & (!pixel_y(2) & !pixel_y(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pixel_y(4),
	datab => pixel_y(2),
	datac => pixel_y(3),
	combout => \P_data~0_combout\);

-- Location: LCCOMB_X67_Y56_N8
\LessThan13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan13~0_combout\ = (pixel_y(5)) # (((pixel_y(0) & pixel_y(1))) # (!\P_data~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pixel_y(5),
	datab => \P_data~0_combout\,
	datac => pixel_y(0),
	datad => pixel_y(1),
	combout => \LessThan13~0_combout\);

-- Location: LCCOMB_X67_Y56_N26
\LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (!pixel_y(8) & (!\LessThan13~0_combout\ & (!pixel_y(7) & !pixel_y(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pixel_y(8),
	datab => \LessThan13~0_combout\,
	datac => pixel_y(7),
	datad => pixel_y(6),
	combout => \LessThan1~0_combout\);

-- Location: FF_X67_Y56_N27
vga_VS : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock25~clkctrl_outclk\,
	d => \LessThan1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_VS~q\);

-- Location: LCCOMB_X68_Y56_N16
\redB_on~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \redB_on~0_combout\ = ((!pixel_x(2) & ((!pixel_x(0)) # (!pixel_x(1))))) # (!pixel_x(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pixel_x(2),
	datab => pixel_x(1),
	datac => pixel_x(0),
	datad => pixel_x(5),
	combout => \redB_on~0_combout\);

-- Location: LCCOMB_X69_Y56_N8
\Mux34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux34~0_combout\ = (pixel_x(3) & pixel_x(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => pixel_x(3),
	datad => pixel_x(4),
	combout => \Mux34~0_combout\);

-- Location: LCCOMB_X69_Y56_N26
\redB_on~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \redB_on~1_combout\ = (pixel_x(7)) # ((!pixel_x(6) & ((\redB_on~0_combout\) # (!\Mux34~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \redB_on~0_combout\,
	datab => pixel_x(7),
	datac => \Mux34~0_combout\,
	datad => pixel_x(6),
	combout => \redB_on~1_combout\);

-- Location: LCCOMB_X67_Y57_N24
\bluB_on~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bluB_on~0_combout\ = (pixel_y(1)) # ((pixel_y(0) & !pixel_y(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => pixel_y(0),
	datac => pixel_y(1),
	datad => pixel_y(4),
	combout => \bluB_on~0_combout\);

-- Location: LCCOMB_X67_Y57_N2
\bluB_on~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bluB_on~1_combout\ = (pixel_y(3) & ((\bluB_on~0_combout\ & ((pixel_y(2)) # (!pixel_y(8)))) # (!\bluB_on~0_combout\ & (!pixel_y(8) & pixel_y(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pixel_y(3),
	datab => \bluB_on~0_combout\,
	datac => pixel_y(8),
	datad => pixel_y(2),
	combout => \bluB_on~1_combout\);

-- Location: LCCOMB_X67_Y57_N20
\bluB_on~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bluB_on~2_combout\ = (pixel_y(5) & ((pixel_y(4) & ((\bluB_on~1_combout\) # (!pixel_y(7)))) # (!pixel_y(4) & (\bluB_on~1_combout\ & !pixel_y(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pixel_y(4),
	datab => \bluB_on~1_combout\,
	datac => pixel_y(7),
	datad => pixel_y(5),
	combout => \bluB_on~2_combout\);

-- Location: LCCOMB_X67_Y57_N30
\bluB_on~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \bluB_on~3_combout\ = (pixel_y(7) & (\bluB_on~2_combout\ & (pixel_y(6) & !pixel_y(8)))) # (!pixel_y(7) & (!\bluB_on~2_combout\ & (!pixel_y(6) & pixel_y(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pixel_y(7),
	datab => \bluB_on~2_combout\,
	datac => pixel_y(6),
	datad => pixel_y(8),
	combout => \bluB_on~3_combout\);

-- Location: LCCOMB_X68_Y56_N18
\yelB_on~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \yelB_on~0_combout\ = (\bluB_on~3_combout\ & (pixel_x(8) & !pixel_x(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bluB_on~3_combout\,
	datab => pixel_x(8),
	datad => pixel_x(9),
	combout => \yelB_on~0_combout\);

-- Location: LCCOMB_X69_Y56_N12
\redB_on~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \redB_on~2_combout\ = (pixel_x(4)) # ((pixel_x(3) & (pixel_x(1) & pixel_x(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pixel_x(3),
	datab => pixel_x(1),
	datac => pixel_x(2),
	datad => pixel_x(4),
	combout => \redB_on~2_combout\);

-- Location: LCCOMB_X69_Y56_N24
\redB_on~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \redB_on~3_combout\ = (\redB_on~1_combout\) # (((\bounding_box~0_combout\ & \redB_on~2_combout\)) # (!\yelB_on~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \redB_on~1_combout\,
	datab => \yelB_on~0_combout\,
	datac => \bounding_box~0_combout\,
	datad => \redB_on~2_combout\,
	combout => \redB_on~3_combout\);

-- Location: LCCOMB_X67_Y56_N10
\always16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \always16~0_combout\ = (!pixel_x(9) & (pixel_x(8) & (!pixel_y(8) & pixel_y(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pixel_x(9),
	datab => pixel_x(8),
	datac => pixel_y(8),
	datad => pixel_y(6),
	combout => \always16~0_combout\);

-- Location: LCCOMB_X68_Y56_N0
\grnB_on~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \grnB_on~2_combout\ = (pixel_x(7) & (pixel_x(6) & (pixel_x(8) & !pixel_x(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pixel_x(7),
	datab => pixel_x(6),
	datac => pixel_x(8),
	datad => pixel_x(9),
	combout => \grnB_on~2_combout\);

-- Location: LCCOMB_X68_Y56_N30
\grnB_on~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \grnB_on~1_combout\ = (pixel_x(5)) # ((pixel_x(4) & ((pixel_x(3)) # (!\yelB_on~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pixel_x(5),
	datab => pixel_x(4),
	datac => pixel_x(3),
	datad => \yelB_on~1_combout\,
	combout => \grnB_on~1_combout\);

-- Location: LCCOMB_X68_Y56_N10
\grnB_on~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \grnB_on~0_combout\ = (!pixel_x(2) & (!pixel_x(8) & (\Equal0~1_combout\ & \Mux34~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pixel_x(2),
	datab => pixel_x(8),
	datac => \Equal0~1_combout\,
	datad => \Mux34~1_combout\,
	combout => \grnB_on~0_combout\);

-- Location: LCCOMB_X68_Y56_N26
\grnB_on~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \grnB_on~3_combout\ = (\bluB_on~3_combout\ & ((\grnB_on~0_combout\) # ((\grnB_on~2_combout\ & \grnB_on~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bluB_on~3_combout\,
	datab => \grnB_on~2_combout\,
	datac => \grnB_on~1_combout\,
	datad => \grnB_on~0_combout\,
	combout => \grnB_on~3_combout\);

-- Location: LCCOMB_X67_Y56_N28
\always16~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \always16~11_combout\ = ((\P_data~0_combout\ & (!pixel_y(0) & !pixel_y(1)))) # (!pixel_y(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pixel_y(5),
	datab => \P_data~0_combout\,
	datac => pixel_y(0),
	datad => pixel_y(1),
	combout => \always16~11_combout\);

-- Location: LCCOMB_X67_Y56_N30
\always16~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \always16~12_combout\ = (pixel_x(7) & (\always16~11_combout\ & (pixel_y(7) & pixel_x(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pixel_x(7),
	datab => \always16~11_combout\,
	datac => pixel_y(7),
	datad => pixel_x(5),
	combout => \always16~12_combout\);

-- Location: LCCOMB_X68_Y57_N28
\always16~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \always16~6_combout\ = (pixel_x(3)) # (pixel_x(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pixel_x(3),
	datac => pixel_x(4),
	combout => \always16~6_combout\);

-- Location: LCCOMB_X68_Y57_N22
\always16~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \always16~7_combout\ = (pixel_y(4) & (!pixel_y(2) & (pixel_x(6) $ (\always16~6_combout\)))) # (!pixel_y(4) & (pixel_y(2) & ((pixel_x(6)) # (\always16~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pixel_y(4),
	datab => pixel_x(6),
	datac => pixel_y(2),
	datad => \always16~6_combout\,
	combout => \always16~7_combout\);

-- Location: LCCOMB_X66_Y56_N0
\always16~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \always16~5_combout\ = (pixel_x(2) & (pixel_x(3) $ (!pixel_x(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pixel_x(2),
	datac => pixel_x(3),
	datad => pixel_x(4),
	combout => \always16~5_combout\);

-- Location: IOIBUF_X115_Y42_N15
\color[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_color(1),
	o => \color[1]~input_o\);

-- Location: IOIBUF_X115_Y35_N22
\color[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_color(2),
	o => \color[2]~input_o\);

-- Location: LCCOMB_X69_Y55_N8
\always5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \always5~1_combout\ = (!\color[2]~input_o\ & \cc.0000_1156~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \color[2]~input_o\,
	datad => \cc.0000_1156~combout\,
	combout => \always5~1_combout\);

-- Location: IOIBUF_X115_Y53_N15
\color[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_color(0),
	o => \color[0]~input_o\);

-- Location: LCCOMB_X70_Y55_N18
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\always5~1_combout\) # (((!\always5~0_combout\) # (!\WideOr1~0_combout\)) # (!S(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always5~1_combout\,
	datab => S(0),
	datac => \WideOr1~0_combout\,
	datad => \always5~0_combout\,
	combout => \Mux2~0_combout\);

-- Location: IOIBUF_X115_Y40_N8
\color[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_color(3),
	o => \color[3]~input_o\);

-- Location: LCCOMB_X69_Y55_N18
\always5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \always5~2_combout\ = (\color[1]~input_o\ & (\color[2]~input_o\ & (\color[0]~input_o\ & \color[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color[1]~input_o\,
	datab => \color[2]~input_o\,
	datac => \color[0]~input_o\,
	datad => \color[3]~input_o\,
	combout => \always5~2_combout\);

-- Location: LCCOMB_X68_Y55_N4
\Mux37~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux37~2_combout\ = (((!S(1) & !S(2))) # (!S(0))) # (!\always5~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => S(1),
	datab => \always5~2_combout\,
	datac => S(0),
	datad => S(2),
	combout => \Mux37~2_combout\);

-- Location: CLKCTRL_G12
\Mux37~2clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Mux37~2clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Mux37~2clkctrl_outclk\);

-- Location: LCCOMB_X70_Y55_N30
\cc.0010_1134\ : cycloneive_lcell_comb
-- Equation(s):
-- \cc.0010_1134~combout\ = (GLOBAL(\Mux37~2clkctrl_outclk\) & (!\Mux2~0_combout\)) # (!GLOBAL(\Mux37~2clkctrl_outclk\) & ((\cc.0010_1134~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux2~0_combout\,
	datac => \cc.0010_1134~combout\,
	datad => \Mux37~2clkctrl_outclk\,
	combout => \cc.0010_1134~combout\);

-- Location: LCCOMB_X70_Y55_N0
\Mux39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux39~0_combout\ = (!\color[0]~input_o\ & \cc.0010_1134~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color[0]~input_o\,
	datac => \cc.0010_1134~combout\,
	combout => \Mux39~0_combout\);

-- Location: LCCOMB_X70_Y55_N24
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ((!\always5~1_combout\ & (!\Mux39~0_combout\ & !\always5~0_combout\))) # (!\Mux1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always5~1_combout\,
	datab => \Mux39~0_combout\,
	datac => \always5~0_combout\,
	datad => \Mux1~0_combout\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X69_Y55_N6
\cc.0000_1156\ : cycloneive_lcell_comb
-- Equation(s):
-- \cc.0000_1156~combout\ = (GLOBAL(\Mux37~2clkctrl_outclk\) & (\Mux0~0_combout\)) # (!GLOBAL(\Mux37~2clkctrl_outclk\) & ((\cc.0000_1156~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux0~0_combout\,
	datac => \Mux37~2clkctrl_outclk\,
	datad => \cc.0000_1156~combout\,
	combout => \cc.0000_1156~combout\);

-- Location: LCCOMB_X69_Y55_N20
\Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\cc.0000_1156~combout\ & (!\color[2]~input_o\ & (\WideOr1~0_combout\ & S(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cc.0000_1156~combout\,
	datab => \color[2]~input_o\,
	datac => \WideOr1~0_combout\,
	datad => S(0),
	combout => \Mux1~1_combout\);

-- Location: LCCOMB_X69_Y55_N28
\cc.0001_1145\ : cycloneive_lcell_comb
-- Equation(s):
-- \cc.0001_1145~combout\ = (GLOBAL(\Mux37~2clkctrl_outclk\) & (\Mux1~1_combout\)) # (!GLOBAL(\Mux37~2clkctrl_outclk\) & ((\cc.0001_1145~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux1~1_combout\,
	datac => \Mux37~2clkctrl_outclk\,
	datad => \cc.0001_1145~combout\,
	combout => \cc.0001_1145~combout\);

-- Location: LCCOMB_X69_Y55_N14
\always5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \always5~0_combout\ = (!\color[1]~input_o\ & \cc.0001_1145~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \color[1]~input_o\,
	datad => \cc.0001_1145~combout\,
	combout => \always5~0_combout\);

-- Location: LCCOMB_X70_Y55_N22
\Mux39~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux39~1_combout\ = (!\always5~1_combout\ & (\Mux39~0_combout\ & (!\always5~0_combout\ & \Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always5~1_combout\,
	datab => \Mux39~0_combout\,
	datac => \always5~0_combout\,
	datad => \Mux1~0_combout\,
	combout => \Mux39~1_combout\);

-- Location: LCCOMB_X70_Y55_N28
\cc.0011_1123\ : cycloneive_lcell_comb
-- Equation(s):
-- \cc.0011_1123~combout\ = (GLOBAL(\Mux37~2clkctrl_outclk\) & (\Mux39~1_combout\)) # (!GLOBAL(\Mux37~2clkctrl_outclk\) & ((\cc.0011_1123~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux39~1_combout\,
	datac => \Mux37~2clkctrl_outclk\,
	datad => \cc.0011_1123~combout\,
	combout => \cc.0011_1123~combout\);

-- Location: LCCOMB_X70_Y55_N14
\Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux30~0_combout\ = (!\color[3]~input_o\ & \cc.0011_1123~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \color[3]~input_o\,
	datad => \cc.0011_1123~combout\,
	combout => \Mux30~0_combout\);

-- Location: LCCOMB_X70_Y55_N26
\Mux30~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux30~1_combout\ = (!\always5~0_combout\ & (!\Mux39~0_combout\ & (\Mux30~0_combout\ & !\always5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always5~0_combout\,
	datab => \Mux39~0_combout\,
	datac => \Mux30~0_combout\,
	datad => \always5~1_combout\,
	combout => \Mux30~1_combout\);

-- Location: LCCOMB_X69_Y55_N2
\NS~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \NS~9_combout\ = (\cc.0000_1156~combout\ & (\color[2]~input_o\ & ((\color[1]~input_o\) # (!\cc.0001_1145~combout\)))) # (!\cc.0000_1156~combout\ & (((\color[1]~input_o\) # (!\cc.0001_1145~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cc.0000_1156~combout\,
	datab => \color[2]~input_o\,
	datac => \color[1]~input_o\,
	datad => \cc.0001_1145~combout\,
	combout => \NS~9_combout\);

-- Location: LCCOMB_X70_Y55_N4
\NS~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \NS~8_combout\ = (!\always5~2_combout\ & (\NS~9_combout\ & ((\color[0]~input_o\) # (!\cc.0010_1134~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color[0]~input_o\,
	datab => \always5~2_combout\,
	datac => \cc.0010_1134~combout\,
	datad => \NS~9_combout\,
	combout => \NS~8_combout\);

-- Location: LCCOMB_X70_Y55_N6
\Mux30~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux30~2_combout\ = (S(0) & ((S(1) & ((!S(2)))) # (!S(1) & (\Mux30~0_combout\ & S(2))))) # (!S(0) & (((S(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => S(0),
	datab => S(1),
	datac => \Mux30~0_combout\,
	datad => S(2),
	combout => \Mux30~2_combout\);

-- Location: LCCOMB_X70_Y55_N16
\Mux30~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux30~3_combout\ = (S(2) & (((\Mux30~2_combout\) # (!\NS~8_combout\)))) # (!S(2) & (\Mux30~1_combout\ & ((\Mux30~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~1_combout\,
	datab => \NS~8_combout\,
	datac => S(2),
	datad => \Mux30~2_combout\,
	combout => \Mux30~3_combout\);

-- Location: IOIBUF_X115_Y14_N8
\rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: FF_X70_Y55_N17
\S[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux30~3_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => S(2));

-- Location: LCCOMB_X70_Y55_N10
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (S(0) & ((S(1)) # (S(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => S(0),
	datab => S(1),
	datad => S(2),
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X68_Y55_N24
\Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = (S(0)) # ((\LessThan2~7_combout\) # ((!S(1) & !S(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => S(1),
	datab => S(0),
	datac => \LessThan2~7_combout\,
	datad => S(2),
	combout => \Mux18~0_combout\);

-- Location: LCCOMB_X68_Y54_N0
\Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~0_combout\ = (!\Mux29~0_combout\ & !\Mux18~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux29~0_combout\,
	datac => \Mux18~0_combout\,
	combout => \Mux29~0_combout\);

-- Location: LCCOMB_X67_Y55_N6
\Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = (\Mux28~0_combout\ & (\Mux29~0_combout\ $ (VCC))) # (!\Mux28~0_combout\ & (\Mux29~0_combout\ & VCC))
-- \Add2~1\ = CARRY((\Mux28~0_combout\ & \Mux29~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~0_combout\,
	datab => \Mux29~0_combout\,
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: LCCOMB_X67_Y55_N4
\Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~0_combout\ = (\Add2~0_combout\ & !\Mux18~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~0_combout\,
	datad => \Mux18~0_combout\,
	combout => \Mux28~0_combout\);

-- Location: LCCOMB_X67_Y55_N8
\Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (\Add2~1\ & ((\Mux18~0_combout\) # ((!\Add2~2_combout\)))) # (!\Add2~1\ & (((!\Mux18~0_combout\ & \Add2~2_combout\)) # (GND)))
-- \Add2~3\ = CARRY((\Mux18~0_combout\) # ((!\Add2~1\) # (!\Add2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux18~0_combout\,
	datab => \Add2~2_combout\,
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: LCCOMB_X67_Y55_N10
\Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = (\Add2~3\ & (!\Mux18~0_combout\ & (\Add2~4_combout\ & VCC))) # (!\Add2~3\ & ((((!\Mux18~0_combout\ & \Add2~4_combout\)))))
-- \Add2~5\ = CARRY((!\Mux18~0_combout\ & (\Add2~4_combout\ & !\Add2~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux18~0_combout\,
	datab => \Add2~4_combout\,
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: LCCOMB_X67_Y55_N12
\Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (\Add2~5\ & (((\Mux18~0_combout\)) # (!\Add2~6_combout\))) # (!\Add2~5\ & (((\Add2~6_combout\ & !\Mux18~0_combout\)) # (GND)))
-- \Add2~7\ = CARRY(((\Mux18~0_combout\) # (!\Add2~5\)) # (!\Add2~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~6_combout\,
	datab => \Mux18~0_combout\,
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: LCCOMB_X67_Y55_N14
\Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = (\Add2~7\ & (!\Mux18~0_combout\ & (\Add2~8_combout\ & VCC))) # (!\Add2~7\ & ((((!\Mux18~0_combout\ & \Add2~8_combout\)))))
-- \Add2~9\ = CARRY((!\Mux18~0_combout\ & (\Add2~8_combout\ & !\Add2~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux18~0_combout\,
	datab => \Add2~8_combout\,
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: LCCOMB_X67_Y55_N16
\Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = (\Add2~9\ & ((\Mux18~0_combout\) # ((!\Add2~10_combout\)))) # (!\Add2~9\ & (((!\Mux18~0_combout\ & \Add2~10_combout\)) # (GND)))
-- \Add2~11\ = CARRY((\Mux18~0_combout\) # ((!\Add2~9\) # (!\Add2~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux18~0_combout\,
	datab => \Add2~10_combout\,
	datad => VCC,
	cin => \Add2~9\,
	combout => \Add2~10_combout\,
	cout => \Add2~11\);

-- Location: LCCOMB_X67_Y55_N18
\Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = (\Add2~11\ & (\Add2~12_combout\ & (!\Mux18~0_combout\ & VCC))) # (!\Add2~11\ & ((((\Add2~12_combout\ & !\Mux18~0_combout\)))))
-- \Add2~13\ = CARRY((\Add2~12_combout\ & (!\Mux18~0_combout\ & !\Add2~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~12_combout\,
	datab => \Mux18~0_combout\,
	datad => VCC,
	cin => \Add2~11\,
	combout => \Add2~12_combout\,
	cout => \Add2~13\);

-- Location: LCCOMB_X67_Y55_N20
\Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~14_combout\ = (\Add2~13\ & (((\Mux18~0_combout\)) # (!\Add2~14_combout\))) # (!\Add2~13\ & (((\Add2~14_combout\ & !\Mux18~0_combout\)) # (GND)))
-- \Add2~15\ = CARRY(((\Mux18~0_combout\) # (!\Add2~13\)) # (!\Add2~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~14_combout\,
	datab => \Mux18~0_combout\,
	datad => VCC,
	cin => \Add2~13\,
	combout => \Add2~14_combout\,
	cout => \Add2~15\);

-- Location: LCCOMB_X67_Y55_N22
\Add2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~16_combout\ = (\Add2~15\ & (!\Mux18~0_combout\ & (\Add2~16_combout\ & VCC))) # (!\Add2~15\ & ((((!\Mux18~0_combout\ & \Add2~16_combout\)))))
-- \Add2~17\ = CARRY((!\Mux18~0_combout\ & (\Add2~16_combout\ & !\Add2~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux18~0_combout\,
	datab => \Add2~16_combout\,
	datad => VCC,
	cin => \Add2~15\,
	combout => \Add2~16_combout\,
	cout => \Add2~17\);

-- Location: LCCOMB_X67_Y55_N24
\Add2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~18_combout\ = (\Add2~17\ & ((\Mux18~0_combout\) # ((!\Add2~18_combout\)))) # (!\Add2~17\ & (((!\Mux18~0_combout\ & \Add2~18_combout\)) # (GND)))
-- \Add2~19\ = CARRY((\Mux18~0_combout\) # ((!\Add2~17\) # (!\Add2~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux18~0_combout\,
	datab => \Add2~18_combout\,
	datad => VCC,
	cin => \Add2~17\,
	combout => \Add2~18_combout\,
	cout => \Add2~19\);

-- Location: LCCOMB_X67_Y55_N26
\Add2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~20_combout\ = (\Add2~19\ & (\Add2~20_combout\ & (!\Mux18~0_combout\ & VCC))) # (!\Add2~19\ & ((((\Add2~20_combout\ & !\Mux18~0_combout\)))))
-- \Add2~21\ = CARRY((\Add2~20_combout\ & (!\Mux18~0_combout\ & !\Add2~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~20_combout\,
	datab => \Mux18~0_combout\,
	datad => VCC,
	cin => \Add2~19\,
	combout => \Add2~20_combout\,
	cout => \Add2~21\);

-- Location: LCCOMB_X67_Y55_N28
\Add2~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~22_combout\ = (\Add2~21\ & (((\Mux18~0_combout\)) # (!\Add2~22_combout\))) # (!\Add2~21\ & (((\Add2~22_combout\ & !\Mux18~0_combout\)) # (GND)))
-- \Add2~23\ = CARRY(((\Mux18~0_combout\) # (!\Add2~21\)) # (!\Add2~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~22_combout\,
	datab => \Mux18~0_combout\,
	datad => VCC,
	cin => \Add2~21\,
	combout => \Add2~22_combout\,
	cout => \Add2~23\);

-- Location: LCCOMB_X67_Y55_N30
\Add2~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~24_combout\ = (\Add2~23\ & (\Add2~24_combout\ & (!\Mux18~0_combout\ & VCC))) # (!\Add2~23\ & ((((\Add2~24_combout\ & !\Mux18~0_combout\)))))
-- \Add2~25\ = CARRY((\Add2~24_combout\ & (!\Mux18~0_combout\ & !\Add2~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~24_combout\,
	datab => \Mux18~0_combout\,
	datad => VCC,
	cin => \Add2~23\,
	combout => \Add2~24_combout\,
	cout => \Add2~25\);

-- Location: LCCOMB_X67_Y54_N0
\Add2~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~26_combout\ = (\Add2~25\ & (((\Mux18~0_combout\)) # (!\Add2~26_combout\))) # (!\Add2~25\ & (((\Add2~26_combout\ & !\Mux18~0_combout\)) # (GND)))
-- \Add2~27\ = CARRY(((\Mux18~0_combout\) # (!\Add2~25\)) # (!\Add2~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~26_combout\,
	datab => \Mux18~0_combout\,
	datad => VCC,
	cin => \Add2~25\,
	combout => \Add2~26_combout\,
	cout => \Add2~27\);

-- Location: LCCOMB_X67_Y54_N2
\Add2~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~28_combout\ = (\Add2~27\ & (\Add2~28_combout\ & (!\Mux18~0_combout\ & VCC))) # (!\Add2~27\ & ((((\Add2~28_combout\ & !\Mux18~0_combout\)))))
-- \Add2~29\ = CARRY((\Add2~28_combout\ & (!\Mux18~0_combout\ & !\Add2~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~28_combout\,
	datab => \Mux18~0_combout\,
	datad => VCC,
	cin => \Add2~27\,
	combout => \Add2~28_combout\,
	cout => \Add2~29\);

-- Location: LCCOMB_X67_Y54_N4
\Add2~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~30_combout\ = (\Add2~29\ & ((\Mux18~0_combout\) # ((!\Add2~30_combout\)))) # (!\Add2~29\ & (((!\Mux18~0_combout\ & \Add2~30_combout\)) # (GND)))
-- \Add2~31\ = CARRY((\Mux18~0_combout\) # ((!\Add2~29\) # (!\Add2~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux18~0_combout\,
	datab => \Add2~30_combout\,
	datad => VCC,
	cin => \Add2~29\,
	combout => \Add2~30_combout\,
	cout => \Add2~31\);

-- Location: LCCOMB_X67_Y54_N6
\Add2~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~32_combout\ = (\Add2~31\ & (!\Mux18~0_combout\ & (\Add2~32_combout\ & VCC))) # (!\Add2~31\ & ((((!\Mux18~0_combout\ & \Add2~32_combout\)))))
-- \Add2~33\ = CARRY((!\Mux18~0_combout\ & (\Add2~32_combout\ & !\Add2~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux18~0_combout\,
	datab => \Add2~32_combout\,
	datad => VCC,
	cin => \Add2~31\,
	combout => \Add2~32_combout\,
	cout => \Add2~33\);

-- Location: LCCOMB_X67_Y54_N8
\Add2~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~34_combout\ = (\Add2~33\ & (((\Mux18~0_combout\)) # (!\Add2~34_combout\))) # (!\Add2~33\ & (((\Add2~34_combout\ & !\Mux18~0_combout\)) # (GND)))
-- \Add2~35\ = CARRY(((\Mux18~0_combout\) # (!\Add2~33\)) # (!\Add2~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~34_combout\,
	datab => \Mux18~0_combout\,
	datad => VCC,
	cin => \Add2~33\,
	combout => \Add2~34_combout\,
	cout => \Add2~35\);

-- Location: LCCOMB_X67_Y54_N10
\Add2~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~36_combout\ = (\Add2~35\ & (!\Mux18~0_combout\ & (\Add2~36_combout\ & VCC))) # (!\Add2~35\ & ((((!\Mux18~0_combout\ & \Add2~36_combout\)))))
-- \Add2~37\ = CARRY((!\Mux18~0_combout\ & (\Add2~36_combout\ & !\Add2~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux18~0_combout\,
	datab => \Add2~36_combout\,
	datad => VCC,
	cin => \Add2~35\,
	combout => \Add2~36_combout\,
	cout => \Add2~37\);

-- Location: LCCOMB_X67_Y54_N12
\Add2~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~38_combout\ = (\Add2~37\ & (((\Mux18~0_combout\)) # (!\Add2~38_combout\))) # (!\Add2~37\ & (((\Add2~38_combout\ & !\Mux18~0_combout\)) # (GND)))
-- \Add2~39\ = CARRY(((\Mux18~0_combout\) # (!\Add2~37\)) # (!\Add2~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~38_combout\,
	datab => \Mux18~0_combout\,
	datad => VCC,
	cin => \Add2~37\,
	combout => \Add2~38_combout\,
	cout => \Add2~39\);

-- Location: LCCOMB_X67_Y55_N0
\LessThan2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~2_combout\ = (!\Add2~18_combout\ & (((!\Add2~10_combout\ & !\Add2~12_combout\)) # (!\Add2~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~14_combout\,
	datab => \Add2~10_combout\,
	datac => \Add2~12_combout\,
	datad => \Add2~18_combout\,
	combout => \LessThan2~2_combout\);

-- Location: LCCOMB_X67_Y55_N2
\LessThan2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~3_combout\ = (((!\Add2~16_combout\ & \LessThan2~2_combout\)) # (!\Add2~20_combout\)) # (!\Add2~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~16_combout\,
	datab => \Add2~22_combout\,
	datac => \Add2~20_combout\,
	datad => \LessThan2~2_combout\,
	combout => \LessThan2~3_combout\);

-- Location: LCCOMB_X66_Y54_N8
\LessThan2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~4_combout\ = (!\Add2~28_combout\ & (((\LessThan2~3_combout\ & !\Add2~24_combout\)) # (!\Add2~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~3_combout\,
	datab => \Add2~26_combout\,
	datac => \Add2~24_combout\,
	datad => \Add2~28_combout\,
	combout => \LessThan2~4_combout\);

-- Location: LCCOMB_X67_Y54_N28
\LessThan2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~5_combout\ = (\Add2~34_combout\) # ((!\LessThan2~4_combout\ & (\Add2~30_combout\ & \Add2~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~4_combout\,
	datab => \Add2~30_combout\,
	datac => \Add2~34_combout\,
	datad => \Add2~32_combout\,
	combout => \LessThan2~5_combout\);

-- Location: LCCOMB_X67_Y54_N14
\Add2~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~40_combout\ = (\Add2~39\ & (\Add2~40_combout\ & (!\Mux18~0_combout\ & VCC))) # (!\Add2~39\ & ((((\Add2~40_combout\ & !\Mux18~0_combout\)))))
-- \Add2~41\ = CARRY((\Add2~40_combout\ & (!\Mux18~0_combout\ & !\Add2~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~40_combout\,
	datab => \Mux18~0_combout\,
	datad => VCC,
	cin => \Add2~39\,
	combout => \Add2~40_combout\,
	cout => \Add2~41\);

-- Location: LCCOMB_X67_Y54_N30
\LessThan2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~6_combout\ = (\Add2~38_combout\ & (\Add2~40_combout\ & ((\LessThan2~5_combout\) # (\Add2~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~38_combout\,
	datab => \LessThan2~5_combout\,
	datac => \Add2~40_combout\,
	datad => \Add2~36_combout\,
	combout => \LessThan2~6_combout\);

-- Location: LCCOMB_X67_Y54_N16
\Add2~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~42_combout\ = (\Add2~41\ & ((\Mux18~0_combout\) # ((!\Add2~42_combout\)))) # (!\Add2~41\ & (((!\Mux18~0_combout\ & \Add2~42_combout\)) # (GND)))
-- \Add2~43\ = CARRY((\Mux18~0_combout\) # ((!\Add2~41\) # (!\Add2~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux18~0_combout\,
	datab => \Add2~42_combout\,
	datad => VCC,
	cin => \Add2~41\,
	combout => \Add2~42_combout\,
	cout => \Add2~43\);

-- Location: LCCOMB_X67_Y54_N18
\Add2~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~44_combout\ = (\Add2~43\ & (!\Mux18~0_combout\ & (\Add2~44_combout\ & VCC))) # (!\Add2~43\ & ((((!\Mux18~0_combout\ & \Add2~44_combout\)))))
-- \Add2~45\ = CARRY((!\Mux18~0_combout\ & (\Add2~44_combout\ & !\Add2~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux18~0_combout\,
	datab => \Add2~44_combout\,
	datad => VCC,
	cin => \Add2~43\,
	combout => \Add2~44_combout\,
	cout => \Add2~45\);

-- Location: LCCOMB_X67_Y54_N20
\Add2~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~46_combout\ = (\Add2~45\ & (((\Mux18~0_combout\)) # (!\Add2~46_combout\))) # (!\Add2~45\ & (((\Add2~46_combout\ & !\Mux18~0_combout\)) # (GND)))
-- \Add2~47\ = CARRY(((\Mux18~0_combout\) # (!\Add2~45\)) # (!\Add2~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~46_combout\,
	datab => \Mux18~0_combout\,
	datad => VCC,
	cin => \Add2~45\,
	combout => \Add2~46_combout\,
	cout => \Add2~47\);

-- Location: LCCOMB_X67_Y54_N22
\Add2~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~48_combout\ = (\Add2~47\ & (!\Mux18~0_combout\ & (\Add2~48_combout\ & VCC))) # (!\Add2~47\ & ((((!\Mux18~0_combout\ & \Add2~48_combout\)))))
-- \Add2~49\ = CARRY((!\Mux18~0_combout\ & (\Add2~48_combout\ & !\Add2~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux18~0_combout\,
	datab => \Add2~48_combout\,
	datad => VCC,
	cin => \Add2~47\,
	combout => \Add2~48_combout\,
	cout => \Add2~49\);

-- Location: LCCOMB_X67_Y54_N24
\Add2~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~50_combout\ = \Add2~49\ $ (\Mux3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Mux3~0_combout\,
	cin => \Add2~49\,
	combout => \Add2~50_combout\);

-- Location: LCCOMB_X68_Y54_N18
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\Add2~50_combout\ & !\Mux18~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~50_combout\,
	datac => \Mux18~0_combout\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X67_Y54_N26
\LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~1_combout\ = (\Mux18~0_combout\) # (((!\Mux3~0_combout\) # (!\Add2~48_combout\)) # (!\Add2~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux18~0_combout\,
	datab => \Add2~46_combout\,
	datac => \Add2~48_combout\,
	datad => \Mux3~0_combout\,
	combout => \LessThan2~1_combout\);

-- Location: LCCOMB_X68_Y55_N26
\LessThan2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~7_combout\ = (!\LessThan2~1_combout\ & ((\Add2~44_combout\) # ((\LessThan2~6_combout\ & \Add2~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~6_combout\,
	datab => \Add2~44_combout\,
	datac => \Add2~42_combout\,
	datad => \LessThan2~1_combout\,
	combout => \LessThan2~7_combout\);

-- Location: IOIBUF_X115_Y13_N1
\play~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_play,
	o => \play~input_o\);

-- Location: LCCOMB_X70_Y55_N20
\Mux32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux32~0_combout\ = (\WideOr1~0_combout\ & (((S(0))) # (!\LessThan2~7_combout\))) # (!\WideOr1~0_combout\ & (((\play~input_o\ & S(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~7_combout\,
	datab => \play~input_o\,
	datac => \WideOr1~0_combout\,
	datad => S(0),
	combout => \Mux32~0_combout\);

-- Location: LCCOMB_X70_Y55_N12
\Mux32~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux32~1_combout\ = ((\Mux1~0_combout\ & !\NS~8_combout\)) # (!\Mux32~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~0_combout\,
	datac => \NS~8_combout\,
	datad => \Mux32~0_combout\,
	combout => \Mux32~1_combout\);

-- Location: FF_X70_Y55_N13
\S[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux32~1_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => S(0));

-- Location: LCCOMB_X70_Y55_N8
\Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux31~0_combout\ = (S(2) & (\Mux30~1_combout\)) # (!S(2) & ((\play~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~1_combout\,
	datac => \play~input_o\,
	datad => S(2),
	combout => \Mux31~0_combout\);

-- Location: LCCOMB_X70_Y55_N2
\Mux31~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux31~1_combout\ = (S(0) & ((S(1) & ((!\NS~8_combout\))) # (!S(1) & (\Mux31~0_combout\)))) # (!S(0) & (((S(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => S(0),
	datab => \Mux31~0_combout\,
	datac => S(1),
	datad => \NS~8_combout\,
	combout => \Mux31~1_combout\);

-- Location: FF_X70_Y55_N3
\S[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux31~1_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => S(1));

-- Location: LCCOMB_X68_Y55_N28
\WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr1~0_combout\ = (S(1)) # (S(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => S(1),
	datad => S(2),
	combout => \WideOr1~0_combout\);

-- Location: LCCOMB_X68_Y55_N6
\always16~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \always16~3_combout\ = (!S(0) & ((S(1)) # (S(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => S(1),
	datac => S(0),
	datad => S(2),
	combout => \always16~3_combout\);

-- Location: LCCOMB_X68_Y57_N26
\always16~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \always16~4_combout\ = (pixel_x(6) & (\WideOr1~0_combout\ & (S(0)))) # (!pixel_x(6) & (((\always16~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr1~0_combout\,
	datab => pixel_x(6),
	datac => S(0),
	datad => \always16~3_combout\,
	combout => \always16~4_combout\);

-- Location: LCCOMB_X68_Y57_N8
\always16~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \always16~8_combout\ = (pixel_x(6) & (pixel_y(2) & (pixel_y(4) $ (\always16~6_combout\)))) # (!pixel_x(6) & (((pixel_y(2)) # (\always16~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pixel_y(4),
	datab => pixel_x(6),
	datac => pixel_y(2),
	datad => \always16~6_combout\,
	combout => \always16~8_combout\);

-- Location: LCCOMB_X68_Y57_N10
\always16~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \always16~9_combout\ = (\always16~8_combout\ & (\always16~7_combout\ $ (((!pixel_y(3) & pixel_y(4)))))) # (!\always16~8_combout\ & (pixel_y(3) & (!\always16~7_combout\ & !pixel_y(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pixel_y(3),
	datab => \always16~8_combout\,
	datac => \always16~7_combout\,
	datad => pixel_y(4),
	combout => \always16~9_combout\);

-- Location: LCCOMB_X68_Y57_N4
\always16~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \always16~10_combout\ = (\always16~4_combout\ & ((\always16~7_combout\ & (\always16~5_combout\ $ (\always16~9_combout\))) # (!\always16~7_combout\ & (\always16~5_combout\ & \always16~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always16~7_combout\,
	datab => \always16~5_combout\,
	datac => \always16~4_combout\,
	datad => \always16~9_combout\,
	combout => \always16~10_combout\);

-- Location: LCCOMB_X68_Y59_N8
\always16~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \always16~13_combout\ = (\always16~12_combout\ & \always16~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \always16~12_combout\,
	datac => \always16~10_combout\,
	combout => \always16~13_combout\);

-- Location: LCCOMB_X68_Y56_N12
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!pixel_x(7) & (!pixel_x(6) & !pixel_x(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pixel_x(7),
	datac => pixel_x(6),
	datad => pixel_x(5),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X68_Y57_N24
\Decoder8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder8~0_combout\ = (pixel_y(3) & (!pixel_y(1) & pixel_y(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pixel_y(3),
	datab => pixel_y(1),
	datac => pixel_y(2),
	combout => \Decoder8~0_combout\);

-- Location: LCCOMB_X69_Y57_N6
\Mux33~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux33~7_combout\ = (pixel_y(3) & ((pixel_y(2) & ((!pixel_y(1)))) # (!pixel_y(2) & (!pixel_x(2))))) # (!pixel_y(3) & (!pixel_x(2) & ((pixel_y(1)) # (pixel_y(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pixel_x(2),
	datab => pixel_y(3),
	datac => pixel_y(1),
	datad => pixel_y(2),
	combout => \Mux33~7_combout\);

-- Location: LCCOMB_X69_Y57_N24
\Mux33~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux33~8_combout\ = (\Mux33~7_combout\ & ((pixel_x(2)) # (pixel_x(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pixel_x(2),
	datac => pixel_x(1),
	datad => \Mux33~7_combout\,
	combout => \Mux33~8_combout\);

-- Location: LCCOMB_X69_Y57_N12
\Mux33~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux33~2_combout\ = (pixel_x(2) & ((S(1)) # (S(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pixel_x(2),
	datab => S(1),
	datad => S(0),
	combout => \Mux33~2_combout\);

-- Location: LCCOMB_X69_Y57_N0
\Mux33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux33~0_combout\ = (pixel_x(1)) # ((pixel_y(2) & S(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pixel_y(2),
	datac => pixel_x(1),
	datad => S(2),
	combout => \Mux33~0_combout\);

-- Location: LCCOMB_X69_Y57_N2
\Mux33~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux33~1_combout\ = (pixel_y(2) & (!pixel_y(1) & ((pixel_y(3)) # (!\Mux33~0_combout\)))) # (!pixel_y(2) & (!pixel_y(3) & (pixel_y(1) & \Mux33~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pixel_y(2),
	datab => pixel_y(3),
	datac => pixel_y(1),
	datad => \Mux33~0_combout\,
	combout => \Mux33~1_combout\);

-- Location: LCCOMB_X69_Y57_N8
\Mux33~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux33~4_combout\ = (pixel_y(3) & (pixel_x(1) & (pixel_x(2) $ (S(1))))) # (!pixel_y(3) & (pixel_x(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pixel_x(2),
	datab => S(1),
	datac => pixel_x(1),
	datad => pixel_y(3),
	combout => \Mux33~4_combout\);

-- Location: LCCOMB_X69_Y57_N30
\Mux33~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux33~3_combout\ = (pixel_x(2) & (((pixel_y(3))))) # (!pixel_x(2) & (pixel_x(1) & ((!pixel_y(3)) # (!S(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pixel_x(2),
	datab => S(1),
	datac => pixel_x(1),
	datad => pixel_y(3),
	combout => \Mux33~3_combout\);

-- Location: LCCOMB_X69_Y57_N26
\Mux33~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux33~5_combout\ = (pixel_y(2) & (((!pixel_y(1) & \Mux33~3_combout\)))) # (!pixel_y(2) & (\Mux33~4_combout\ & (pixel_y(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pixel_y(2),
	datab => \Mux33~4_combout\,
	datac => pixel_y(1),
	datad => \Mux33~3_combout\,
	combout => \Mux33~5_combout\);

-- Location: LCCOMB_X69_Y57_N4
\Mux33~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux33~6_combout\ = (\Mux33~2_combout\ & ((\Mux33~1_combout\) # ((\Mux33~5_combout\ & S(2))))) # (!\Mux33~2_combout\ & (((\Mux33~5_combout\ & S(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux33~2_combout\,
	datab => \Mux33~1_combout\,
	datac => \Mux33~5_combout\,
	datad => S(2),
	combout => \Mux33~6_combout\);

-- Location: LCCOMB_X68_Y57_N18
\Mux33~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux33~9_combout\ = (pixel_x(3) & (((pixel_x(4))))) # (!pixel_x(3) & ((pixel_x(4) & ((\Mux33~6_combout\))) # (!pixel_x(4) & (\Mux33~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pixel_x(3),
	datab => \Mux33~8_combout\,
	datac => pixel_x(4),
	datad => \Mux33~6_combout\,
	combout => \Mux33~9_combout\);

-- Location: LCCOMB_X69_Y57_N28
\Mux33~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux33~11_combout\ = (pixel_y(3) & ((S(1)) # ((S(0) & !S(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => S(0),
	datab => pixel_y(3),
	datac => S(1),
	datad => S(2),
	combout => \Mux33~11_combout\);

-- Location: LCCOMB_X69_Y57_N14
\Mux33~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux33~12_combout\ = (pixel_y(2) & (!pixel_y(1) & (\Mux33~11_combout\ $ (S(2))))) # (!pixel_y(2) & (\Mux33~11_combout\ & ((S(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pixel_y(2),
	datab => \Mux33~11_combout\,
	datac => pixel_y(1),
	datad => S(2),
	combout => \Mux33~12_combout\);

-- Location: LCCOMB_X69_Y57_N10
\Mux33~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux33~10_combout\ = (pixel_y(2) & ((pixel_y(3) & (!pixel_y(1))) # (!pixel_y(3) & ((!pixel_x(1)))))) # (!pixel_y(2) & (!pixel_x(1) & ((pixel_y(1)) # (pixel_y(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pixel_y(2),
	datab => pixel_y(1),
	datac => pixel_x(1),
	datad => pixel_y(3),
	combout => \Mux33~10_combout\);

-- Location: LCCOMB_X69_Y57_N16
\Mux33~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux33~13_combout\ = (!pixel_x(1) & !S(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => pixel_x(1),
	datac => S(1),
	combout => \Mux33~13_combout\);

-- Location: LCCOMB_X69_Y57_N18
\Mux33~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux33~14_combout\ = (pixel_y(3) & (!pixel_y(1) & ((pixel_y(2)) # (\Mux33~13_combout\)))) # (!pixel_y(3) & (pixel_y(1) & ((!\Mux33~13_combout\) # (!pixel_y(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pixel_y(2),
	datab => pixel_y(3),
	datac => pixel_y(1),
	datad => \Mux33~13_combout\,
	combout => \Mux33~14_combout\);

-- Location: LCCOMB_X68_Y55_N2
\WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr2~0_combout\ = (S(2)) # ((!S(1) & !S(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => S(1),
	datac => S(0),
	datad => S(2),
	combout => \WideOr2~0_combout\);

-- Location: LCCOMB_X69_Y57_N20
\Mux33~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux33~16_combout\ = (\Mux33~10_combout\ & (((\Mux33~14_combout\ & S(2))) # (!\WideOr2~0_combout\))) # (!\Mux33~10_combout\ & (\Mux33~14_combout\ & ((S(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux33~10_combout\,
	datab => \Mux33~14_combout\,
	datac => \WideOr2~0_combout\,
	datad => S(2),
	combout => \Mux33~16_combout\);

-- Location: LCCOMB_X69_Y57_N22
\Mux33~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux33~17_combout\ = (pixel_x(2) & (\Mux33~12_combout\ & (!pixel_x(1)))) # (!pixel_x(2) & (((\Mux33~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pixel_x(2),
	datab => \Mux33~12_combout\,
	datac => pixel_x(1),
	datad => \Mux33~16_combout\,
	combout => \Mux33~17_combout\);

-- Location: LCCOMB_X68_Y57_N20
\Mux33~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux33~15_combout\ = (pixel_x(3) & ((\Mux33~9_combout\ & ((\Mux33~17_combout\))) # (!\Mux33~9_combout\ & (\Decoder8~0_combout\)))) # (!pixel_x(3) & (((\Mux33~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pixel_x(3),
	datab => \Decoder8~0_combout\,
	datac => \Mux33~9_combout\,
	datad => \Mux33~17_combout\,
	combout => \Mux33~15_combout\);

-- Location: LCCOMB_X68_Y57_N6
\always16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \always16~1_combout\ = (pixel_y(4) & (!pixel_y(7) & pixel_y(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pixel_y(4),
	datac => pixel_y(7),
	datad => pixel_y(5),
	combout => \always16~1_combout\);

-- Location: LCCOMB_X68_Y57_N0
\always16~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \always16~2_combout\ = (\Equal0~0_combout\ & (\Mux33~15_combout\ & \always16~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Mux33~15_combout\,
	datad => \always16~1_combout\,
	combout => \always16~2_combout\);

-- Location: LCCOMB_X68_Y59_N2
\vga_B~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_B~8_combout\ = (\always16~0_combout\ & (!\grnB_on~3_combout\ & ((\always16~13_combout\) # (\always16~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always16~0_combout\,
	datab => \grnB_on~3_combout\,
	datac => \always16~13_combout\,
	datad => \always16~2_combout\,
	combout => \vga_B~8_combout\);

-- Location: LCCOMB_X68_Y55_N8
\always15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \always15~0_combout\ = (S(1)) # ((S(0)) # (S(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => S(1),
	datac => S(0),
	datad => S(2),
	combout => \always15~0_combout\);

-- Location: LCCOMB_X69_Y55_N0
\vga_R~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_R~4_combout\ = (\always15~0_combout\ & (\color[2]~input_o\ & !\redB_on~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always15~0_combout\,
	datab => \color[2]~input_o\,
	datad => \redB_on~3_combout\,
	combout => \vga_R~4_combout\);

-- Location: LCCOMB_X66_Y56_N4
\LessThan16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan16~0_combout\ = (((!pixel_x(4)) # (!pixel_x(3))) # (!pixel_x(6))) # (!pixel_x(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pixel_x(5),
	datab => pixel_x(6),
	datac => pixel_x(3),
	datad => pixel_x(4),
	combout => \LessThan16~0_combout\);

-- Location: LCCOMB_X66_Y56_N6
\LessThan16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan16~1_combout\ = (\LessThan16~0_combout\) # (((!pixel_x(2) & !pixel_x(1))) # (!pixel_x(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pixel_x(2),
	datab => \LessThan16~0_combout\,
	datac => pixel_x(7),
	datad => pixel_x(1),
	combout => \LessThan16~1_combout\);

-- Location: LCCOMB_X67_Y57_N26
\bounding_box~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \bounding_box~6_combout\ = (!pixel_y(3) & (!pixel_y(0) & (pixel_y(6) & !pixel_y(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pixel_y(3),
	datab => pixel_y(0),
	datac => pixel_y(6),
	datad => pixel_y(4),
	combout => \bounding_box~6_combout\);

-- Location: LCCOMB_X67_Y57_N28
\bounding_box~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \bounding_box~7_combout\ = (\bounding_box~6_combout\ & ((pixel_x(8)) # ((pixel_x(9)) # (!\LessThan16~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pixel_x(8),
	datab => \LessThan16~1_combout\,
	datac => \bounding_box~6_combout\,
	datad => pixel_x(9),
	combout => \bounding_box~7_combout\);

-- Location: LCCOMB_X67_Y57_N22
\bounding_box~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \bounding_box~9_combout\ = (\bounding_box~7_combout\ & ((pixel_y(2) & (!pixel_y(1) & !pixel_y(8))) # (!pixel_y(2) & (pixel_y(1) & pixel_y(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pixel_y(2),
	datab => \bounding_box~7_combout\,
	datac => pixel_y(1),
	datad => pixel_y(8),
	combout => \bounding_box~9_combout\);

-- Location: LCCOMB_X68_Y57_N16
\bounding_box~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \bounding_box~10_combout\ = (\bounding_box~9_combout\ & ((pixel_y(5) & (!pixel_y(7) & pixel_y(2))) # (!pixel_y(5) & (pixel_y(7) & !pixel_y(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pixel_y(5),
	datab => pixel_y(7),
	datac => pixel_y(2),
	datad => \bounding_box~9_combout\,
	combout => \bounding_box~10_combout\);

-- Location: LCCOMB_X66_Y56_N2
\bounding_box~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \bounding_box~3_combout\ = (pixel_x(5) & (pixel_x(4) & (pixel_x(6) & !pixel_x(9)))) # (!pixel_x(5) & (!pixel_x(4) & (!pixel_x(6) & pixel_x(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pixel_x(5),
	datab => pixel_x(4),
	datac => pixel_x(6),
	datad => pixel_x(9),
	combout => \bounding_box~3_combout\);

-- Location: LCCOMB_X66_Y56_N28
\bounding_box~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bounding_box~4_combout\ = (!pixel_x(2) & (pixel_x(3) & (pixel_x(7) & pixel_x(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pixel_x(2),
	datab => pixel_x(3),
	datac => pixel_x(7),
	datad => pixel_x(1),
	combout => \bounding_box~4_combout\);

-- Location: LCCOMB_X66_Y56_N30
\bounding_box~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \bounding_box~5_combout\ = (!pixel_x(8) & (\bounding_box~3_combout\ & (!pixel_x(0) & \bounding_box~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pixel_x(8),
	datab => \bounding_box~3_combout\,
	datac => pixel_x(0),
	datad => \bounding_box~4_combout\,
	combout => \bounding_box~5_combout\);

-- Location: LCCOMB_X67_Y56_N18
\bounding_box~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bounding_box~1_combout\ = (pixel_y(6) & ((pixel_y(8)) # ((pixel_y(5) & !\P_data~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pixel_y(5),
	datab => \P_data~0_combout\,
	datac => pixel_y(8),
	datad => pixel_y(6),
	combout => \bounding_box~1_combout\);

-- Location: LCCOMB_X67_Y56_N4
\bounding_box~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bounding_box~2_combout\ = (pixel_y(8) & (((!\bounding_box~1_combout\) # (!pixel_y(7))) # (!\LessThan13~0_combout\))) # (!pixel_y(8) & (((pixel_y(7)) # (\bounding_box~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pixel_y(8),
	datab => \LessThan13~0_combout\,
	datac => pixel_y(7),
	datad => \bounding_box~1_combout\,
	combout => \bounding_box~2_combout\);

-- Location: LCCOMB_X68_Y56_N20
\LessThan15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan15~0_combout\ = (pixel_x(3) & ((pixel_x(2)) # ((pixel_x(0) & pixel_x(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pixel_x(2),
	datab => pixel_x(0),
	datac => pixel_x(3),
	datad => pixel_x(1),
	combout => \LessThan15~0_combout\);

-- Location: LCCOMB_X68_Y56_N14
\LessThan15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan15~1_combout\ = (pixel_x(5)) # ((pixel_x(4)) # ((pixel_x(6)) # (\LessThan15~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pixel_x(5),
	datab => pixel_x(4),
	datac => pixel_x(6),
	datad => \LessThan15~0_combout\,
	combout => \LessThan15~1_combout\);

-- Location: LCCOMB_X68_Y56_N24
\LessThan15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan15~2_combout\ = (pixel_x(9) & ((pixel_x(8)) # ((pixel_x(7) & \LessThan15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pixel_x(7),
	datab => pixel_x(8),
	datac => \LessThan15~1_combout\,
	datad => pixel_x(9),
	combout => \LessThan15~2_combout\);

-- Location: LCCOMB_X67_Y56_N22
\bounding_box~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \bounding_box~8_combout\ = (\bounding_box~10_combout\ & (((\bounding_box~5_combout\ & \bounding_box~2_combout\)) # (!\LessThan15~2_combout\))) # (!\bounding_box~10_combout\ & (\bounding_box~5_combout\ & (\bounding_box~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bounding_box~10_combout\,
	datab => \bounding_box~5_combout\,
	datac => \bounding_box~2_combout\,
	datad => \LessThan15~2_combout\,
	combout => \bounding_box~8_combout\);

-- Location: LCCOMB_X69_Y56_N2
\yelB_on~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \yelB_on~2_combout\ = (pixel_x(3)) # ((pixel_x(4)) # ((pixel_x(1) & pixel_x(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pixel_x(3),
	datab => pixel_x(1),
	datac => pixel_x(2),
	datad => pixel_x(4),
	combout => \yelB_on~2_combout\);

-- Location: LCCOMB_X69_Y56_N4
\yelB_on~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \yelB_on~3_combout\ = (pixel_x(5) & ((\yelB_on~1_combout\) # ((!\Mux34~0_combout\)))) # (!pixel_x(5) & (((\yelB_on~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pixel_x(5),
	datab => \yelB_on~1_combout\,
	datac => \Mux34~0_combout\,
	datad => \yelB_on~2_combout\,
	combout => \yelB_on~3_combout\);

-- Location: LCCOMB_X69_Y56_N6
\yelB_on~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \yelB_on~4_combout\ = (!pixel_x(6) & (pixel_x(7) & (\yelB_on~3_combout\ & \yelB_on~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pixel_x(6),
	datab => pixel_x(7),
	datac => \yelB_on~3_combout\,
	datad => \yelB_on~0_combout\,
	combout => \yelB_on~4_combout\);

-- Location: LCCOMB_X68_Y59_N20
\vga_R~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_R~5_combout\ = (!\bounding_box~8_combout\ & ((!\yelB_on~4_combout\) # (!\redB_on~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \redB_on~3_combout\,
	datac => \bounding_box~8_combout\,
	datad => \yelB_on~4_combout\,
	combout => \vga_R~5_combout\);

-- Location: LCCOMB_X68_Y59_N6
\vga_R~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_R~6_combout\ = (\vga_R~4_combout\) # (((\redB_on~3_combout\ & \vga_B~8_combout\)) # (!\vga_R~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \redB_on~3_combout\,
	datab => \vga_B~8_combout\,
	datac => \vga_R~4_combout\,
	datad => \vga_R~5_combout\,
	combout => \vga_R~6_combout\);

-- Location: LCCOMB_X68_Y59_N10
\vga_R~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_R~10_combout\ = ((\vga_B~8_combout\) # ((\bounding_box~8_combout\) # (\yelB_on~4_combout\))) # (!\redB_on~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \redB_on~3_combout\,
	datab => \vga_B~8_combout\,
	datac => \bounding_box~8_combout\,
	datad => \yelB_on~4_combout\,
	combout => \vga_R~10_combout\);

-- Location: LCCOMB_X69_Y55_N10
\vga_R~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_R~7_combout\ = (\redB_on~3_combout\ & (((\color[1]~input_o\ & \yelB_on~4_combout\)))) # (!\redB_on~3_combout\ & (\color[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \redB_on~3_combout\,
	datab => \color[2]~input_o\,
	datac => \color[1]~input_o\,
	datad => \yelB_on~4_combout\,
	combout => \vga_R~7_combout\);

-- Location: LCCOMB_X69_Y55_N12
\vga_R~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_R~8_combout\ = (\bounding_box~8_combout\) # ((\always15~0_combout\ & \vga_R~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always15~0_combout\,
	datab => \bounding_box~8_combout\,
	datad => \vga_R~7_combout\,
	combout => \vga_R~8_combout\);

-- Location: LCCOMB_X68_Y59_N28
\vga_R~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_R~11_combout\ = (\vga_R~8_combout\) # ((\redB_on~3_combout\ & (\vga_B~8_combout\ & !\yelB_on~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \redB_on~3_combout\,
	datab => \vga_B~8_combout\,
	datac => \vga_R~8_combout\,
	datad => \yelB_on~4_combout\,
	combout => \vga_R~11_combout\);

-- Location: LCCOMB_X69_Y55_N30
\vga_G~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_G~4_combout\ = (\vga_B~8_combout\) # ((\always15~0_combout\ & (\grnB_on~3_combout\ & \color[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always15~0_combout\,
	datab => \grnB_on~3_combout\,
	datac => \color[0]~input_o\,
	datad => \vga_B~8_combout\,
	combout => \vga_G~4_combout\);

-- Location: LCCOMB_X69_Y55_N22
\vga_G~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_G~7_combout\ = (\bounding_box~8_combout\) # ((\redB_on~3_combout\ & ((\vga_G~4_combout\) # (\yelB_on~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bounding_box~8_combout\,
	datab => \redB_on~3_combout\,
	datac => \vga_G~4_combout\,
	datad => \yelB_on~4_combout\,
	combout => \vga_G~7_combout\);

-- Location: LCCOMB_X68_Y59_N24
\always16~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \always16~14_combout\ = (\always16~0_combout\ & ((\always16~2_combout\) # ((\always16~12_combout\ & \always16~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always16~0_combout\,
	datab => \always16~12_combout\,
	datac => \always16~10_combout\,
	datad => \always16~2_combout\,
	combout => \always16~14_combout\);

-- Location: LCCOMB_X68_Y59_N26
\vga_G~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_G~5_combout\ = ((\redB_on~3_combout\ & ((\grnB_on~3_combout\) # (\always16~14_combout\)))) # (!\vga_R~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \grnB_on~3_combout\,
	datab => \vga_R~5_combout\,
	datac => \redB_on~3_combout\,
	datad => \always16~14_combout\,
	combout => \vga_G~5_combout\);

-- Location: LCCOMB_X69_Y55_N16
\vga_R~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_R~9_combout\ = (\redB_on~3_combout\ & \yelB_on~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \redB_on~3_combout\,
	datad => \yelB_on~4_combout\,
	combout => \vga_R~9_combout\);

-- Location: LCCOMB_X69_Y55_N26
\vga_G~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_G~6_combout\ = (\bounding_box~8_combout\) # ((\always15~0_combout\ & (\color[1]~input_o\ & \vga_R~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always15~0_combout\,
	datab => \bounding_box~8_combout\,
	datac => \color[1]~input_o\,
	datad => \vga_R~9_combout\,
	combout => \vga_G~6_combout\);

-- Location: LCCOMB_X69_Y55_N24
\vga_G~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_G~8_combout\ = (\vga_G~6_combout\) # ((\vga_G~4_combout\ & (\redB_on~3_combout\ & !\yelB_on~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_G~4_combout\,
	datab => \redB_on~3_combout\,
	datac => \vga_G~6_combout\,
	datad => \yelB_on~4_combout\,
	combout => \vga_G~8_combout\);

-- Location: LCCOMB_X68_Y56_N4
\bluB_on~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \bluB_on~6_combout\ = (!pixel_x(5) & (!pixel_x(4) & (pixel_x(6) & !\Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pixel_x(5),
	datab => pixel_x(4),
	datac => pixel_x(6),
	datad => \Equal0~2_combout\,
	combout => \bluB_on~6_combout\);

-- Location: LCCOMB_X67_Y56_N24
\bluB_on~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bluB_on~4_combout\ = (!pixel_x(7) & (pixel_x(9) & !pixel_x(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pixel_x(7),
	datac => pixel_x(9),
	datad => pixel_x(8),
	combout => \bluB_on~4_combout\);

-- Location: LCCOMB_X69_Y56_N0
\bluB_on~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \bluB_on~5_combout\ = (!pixel_x(6) & ((pixel_x(5)) # ((\Mux34~0_combout\ & pixel_x(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pixel_x(6),
	datab => \Mux34~0_combout\,
	datac => pixel_x(2),
	datad => pixel_x(5),
	combout => \bluB_on~5_combout\);

-- Location: LCCOMB_X68_Y59_N12
\bluB_on~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \bluB_on~7_combout\ = (\bluB_on~4_combout\ & (\bluB_on~3_combout\ & ((\bluB_on~6_combout\) # (\bluB_on~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bluB_on~6_combout\,
	datab => \bluB_on~4_combout\,
	datac => \bluB_on~3_combout\,
	datad => \bluB_on~5_combout\,
	combout => \bluB_on~7_combout\);

-- Location: LCCOMB_X68_Y55_N16
\vga_B~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_B~9_combout\ = (\color[3]~input_o\ & ((S(1)) # ((S(0)) # (S(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => S(1),
	datab => S(0),
	datac => \color[3]~input_o\,
	datad => S(2),
	combout => \vga_B~9_combout\);

-- Location: LCCOMB_X68_Y59_N22
\vga_B~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_B~10_combout\ = (\bluB_on~7_combout\ & (!\grnB_on~3_combout\ & (\vga_B~9_combout\))) # (!\bluB_on~7_combout\ & (((\vga_B~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bluB_on~7_combout\,
	datab => \grnB_on~3_combout\,
	datac => \vga_B~9_combout\,
	datad => \vga_B~8_combout\,
	combout => \vga_B~10_combout\);

-- Location: LCCOMB_X68_Y59_N14
\vga_B~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_B~13_combout\ = (\bounding_box~8_combout\) # ((\vga_B~10_combout\ & (\redB_on~3_combout\ & !\yelB_on~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_B~10_combout\,
	datab => \redB_on~3_combout\,
	datac => \bounding_box~8_combout\,
	datad => \yelB_on~4_combout\,
	combout => \vga_B~13_combout\);

-- Location: LCCOMB_X69_Y55_N4
\vga_B~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_B~11_combout\ = (!\bounding_box~8_combout\ & (((\always15~0_combout\ & \color[1]~input_o\)) # (!\vga_R~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always15~0_combout\,
	datab => \bounding_box~8_combout\,
	datac => \color[1]~input_o\,
	datad => \vga_R~9_combout\,
	combout => \vga_B~11_combout\);

-- Location: LCCOMB_X68_Y59_N0
\vga_B~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_B~14_combout\ = ((\redB_on~3_combout\ & (\vga_B~10_combout\ & !\yelB_on~4_combout\))) # (!\vga_B~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \redB_on~3_combout\,
	datab => \vga_B~11_combout\,
	datac => \vga_B~10_combout\,
	datad => \yelB_on~4_combout\,
	combout => \vga_B~14_combout\);

-- Location: LCCOMB_X68_Y59_N16
\vga_B~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_B~12_combout\ = (!\grnB_on~3_combout\ & ((\bluB_on~7_combout\) # (\always16~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bluB_on~7_combout\,
	datab => \grnB_on~3_combout\,
	datad => \always16~14_combout\,
	combout => \vga_B~12_combout\);

-- Location: LCCOMB_X68_Y59_N18
\vga_B~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_B~15_combout\ = ((\redB_on~3_combout\ & (\vga_B~12_combout\ & !\yelB_on~4_combout\))) # (!\vga_B~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \redB_on~3_combout\,
	datab => \vga_B~12_combout\,
	datac => \vga_B~11_combout\,
	datad => \yelB_on~4_combout\,
	combout => \vga_B~15_combout\);

-- Location: LCCOMB_X68_Y59_N4
\vga_B~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_B~16_combout\ = (\bounding_box~8_combout\) # ((\redB_on~3_combout\ & (\vga_B~12_combout\ & !\yelB_on~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \redB_on~3_combout\,
	datab => \vga_B~12_combout\,
	datac => \bounding_box~8_combout\,
	datad => \yelB_on~4_combout\,
	combout => \vga_B~16_combout\);

-- Location: LCCOMB_X67_Y56_N2
\vga_blank~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_blank~0_combout\ = (\vga_HS~q\) # (\vga_VS~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_HS~q\,
	datac => \vga_VS~q\,
	combout => \vga_blank~0_combout\);

-- Location: LCCOMB_X68_Y55_N10
\WideOr1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr1~1_combout\ = S(0) $ (((S(1)) # (S(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => S(1),
	datac => S(0),
	datad => S(2),
	combout => \WideOr1~1_combout\);

-- Location: LCCOMB_X68_Y55_N20
\Decoder3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder3~0_combout\ = (!S(1) & S(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => S(1),
	datad => S(2),
	combout => \Decoder3~0_combout\);

-- Location: LCCOMB_X68_Y55_N22
\level_num_ssd~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \level_num_ssd~0_combout\ = (S(1)) # ((S(0) & !S(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => S(1),
	datac => S(0),
	datad => S(2),
	combout => \level_num_ssd~0_combout\);

-- Location: IOIBUF_X0_Y38_N1
\altera_reserved_tms~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_altera_reserved_tms,
	o => \altera_reserved_tms~input_o\);

-- Location: IOIBUF_X0_Y39_N1
\altera_reserved_tck~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_altera_reserved_tck,
	o => \altera_reserved_tck~input_o\);

-- Location: IOIBUF_X0_Y40_N1
\altera_reserved_tdi~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_altera_reserved_tdi,
	o => \altera_reserved_tdi~input_o\);

-- Location: JTAG_X1_Y37_N0
altera_internal_jtag : cycloneive_jtag
PORT MAP (
	tms => \altera_reserved_tms~input_o\,
	tck => \altera_reserved_tck~input_o\,
	tdi => \altera_reserved_tdi~input_o\,
	tdouser => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~_wirecell_combout\,
	tdo => \altera_internal_jtag~TDO\,
	tmsutap => \altera_internal_jtag~TMSUTAP\,
	tckutap => \altera_internal_jtag~TCKUTAP\,
	tdiutap => \altera_internal_jtag~TDIUTAP\);

-- Location: CLKCTRL_G0
\altera_internal_jtag~TCKUTAPclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \altera_internal_jtag~TCKUTAPclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\);

-- Location: LCCOMB_X67_Y30_N8
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~3\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(2),
	datac => \altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~3_combout\);

-- Location: FF_X67_Y30_N9
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3));

-- Location: LCCOMB_X70_Y30_N0
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~4\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(7),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~4_combout\);

-- Location: FF_X70_Y30_N1
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~4_combout\,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4));

-- Location: LCCOMB_X70_Y30_N20
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~5\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datac => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~5_combout\);

-- Location: FF_X70_Y30_N21
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(5));

-- Location: LCCOMB_X70_Y30_N10
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~6\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(6),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(5),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~6_combout\);

-- Location: FF_X70_Y30_N11
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~6_combout\,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(6));

-- Location: LCCOMB_X70_Y30_N30
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~7\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(6),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~7_combout\);

-- Location: FF_X70_Y30_N31
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(7));

-- Location: LCCOMB_X70_Y30_N16
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_proc~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(7),
	datac => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(5),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_proc~0_combout\);

-- Location: FF_X70_Y30_N17
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8));

-- Location: LCCOMB_X67_Y30_N14
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~2\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(15),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(1),
	datac => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~2_combout\);

-- Location: FF_X67_Y30_N15
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(2));

-- Location: LCCOMB_X67_Y30_N18
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena_proc~1\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(2),
	datac => \altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena_proc~1_combout\);

-- Location: FF_X67_Y30_N19
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena_proc~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(9));

-- Location: LCCOMB_X66_Y30_N12
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~8\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(9),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~8_combout\);

-- Location: FF_X66_Y30_N13
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(10));

-- Location: LCCOMB_X66_Y30_N10
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~11\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(13),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(12),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~11_combout\);

-- Location: FF_X66_Y30_N11
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~11_combout\,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(13));

-- Location: LCCOMB_X66_Y30_N16
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~12\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(13),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~12_combout\);

-- Location: FF_X66_Y30_N17
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(14));

-- Location: LCCOMB_X66_Y30_N24
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~9\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(10),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(11),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(14),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~9_combout\);

-- Location: FF_X66_Y30_N25
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~9_combout\,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(11));

-- Location: LCCOMB_X66_Y30_N6
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~10\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(10),
	datac => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(11),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~10_combout\);

-- Location: FF_X66_Y30_N7
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(12));

-- Location: LCCOMB_X66_Y30_N18
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_dr_scan_proc~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(12),
	datac => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(14),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_dr_scan_proc~0_combout\);

-- Location: FF_X66_Y30_N19
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_dr_scan_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(15));

-- Location: LCCOMB_X63_Y30_N6
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt~1\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt\(0),
	datad => \altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt~1_combout\);

-- Location: FF_X63_Y30_N7
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt\(0));

-- Location: LCCOMB_X63_Y30_N10
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt~2\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt~2_combout\);

-- Location: FF_X63_Y30_N11
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt~2_combout\,
	sclr => \ALT_INV_altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt\(1));

-- Location: LCCOMB_X63_Y30_N24
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt\(1),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt\(2),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt~0_combout\);

-- Location: FF_X63_Y30_N25
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt~0_combout\,
	sclr => \ALT_INV_altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt\(2));

-- Location: LCCOMB_X63_Y30_N20
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TMSUTAP\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt\(2),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(0),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(9),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~0_combout\);

-- Location: FF_X63_Y30_N21
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(0));

-- Location: LCCOMB_X67_Y30_N16
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~1\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(15),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(0),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~1_combout\);

-- Location: FF_X67_Y30_N17
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~1_combout\,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(1));

-- Location: LCCOMB_X68_Y31_N24
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~4\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \altera_internal_jtag~TDIUTAP\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(10),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~4_combout\);

-- Location: LCCOMB_X66_Y29_N0
\~QIC_CREATED_GND~I\ : cycloneive_lcell_comb
-- Equation(s):
-- \~QIC_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QIC_CREATED_GND~I_combout\);

-- Location: FF_X65_Y30_N13
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \altera_internal_jtag~TDIUTAP\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(0),
	sload => VCC,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(9));

-- Location: FF_X65_Y30_N31
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(9),
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(0),
	sload => VCC,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(8));

-- Location: FF_X65_Y30_N25
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(8),
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(0),
	sload => VCC,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(7));

-- Location: LCCOMB_X65_Y30_N26
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[6]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(7),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[6]~feeder_combout\);

-- Location: FF_X65_Y30_N27
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[6]~feeder_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(0),
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(6));

-- Location: FF_X65_Y30_N23
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(6),
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(0),
	sload => VCC,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(5));

-- Location: LCCOMB_X65_Y30_N8
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[4]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(5),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[4]~feeder_combout\);

-- Location: FF_X65_Y30_N9
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[4]~feeder_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(0),
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(4));

-- Location: FF_X65_Y30_N21
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(4),
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(0),
	sload => VCC,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(3));

-- Location: LCCOMB_X65_Y30_N18
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[2]~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[2]~0_combout\);

-- Location: FF_X65_Y30_N19
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[2]~0_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(0),
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(2));

-- Location: LCCOMB_X65_Y30_N22
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~1\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(4),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(3),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(5),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~1_combout\);

-- Location: LCCOMB_X65_Y30_N28
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[1]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[1]~feeder_combout\);

-- Location: FF_X65_Y30_N29
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[1]~feeder_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(0),
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(1));

-- Location: LCCOMB_X65_Y30_N14
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[0]~1\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[0]~1_combout\);

-- Location: FF_X65_Y30_N15
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[0]~1_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(0),
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(0));

-- Location: LCCOMB_X65_Y30_N12
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(8),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(6),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(9),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(7),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~0_combout\);

-- Location: LCCOMB_X65_Y30_N16
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal1~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~1_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(1),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(0),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~0_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal1~0_combout\);

-- Location: FF_X65_Y30_N17
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal1~0_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(0),
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_dr_scan_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\);

-- Location: FF_X68_Y31_N25
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~4_combout\,
	asdata => \~QIC_CREATED_GND~I_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_clr_reg~q\,
	sload => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(10));

-- Location: LCCOMB_X70_Y30_N24
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|reset_ena_reg_proc~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(7),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	datac => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(5),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|reset_ena_reg_proc~0_combout\);

-- Location: FF_X70_Y30_N25
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|reset_ena_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|reset_ena_reg_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|reset_ena_reg~q\);

-- Location: LCCOMB_X72_Y30_N0
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~feeder_combout\);

-- Location: LCCOMB_X72_Y30_N6
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(10),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|reset_ena_reg_proc~0_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~0_combout\);

-- Location: FF_X72_Y30_N1
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~feeder_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_clr_reg~q\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~q\);

-- Location: LCCOMB_X73_Y30_N22
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~q\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~0_combout\);

-- Location: LCCOMB_X72_Y30_N22
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[2]~1\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(0),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(10),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[2]~1_combout\);

-- Location: LCCOMB_X72_Y30_N24
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[0]~2\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[2]~1_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[0]~2_combout\);

-- Location: FF_X73_Y30_N23
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~0_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_clr_reg~q\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(0));

-- Location: LCCOMB_X69_Y30_N0
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal3~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(1),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(2),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal3~0_combout\);

-- Location: LCCOMB_X72_Y30_N12
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[0]~4\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal3~0_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(10),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(0),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|reset_ena_reg_proc~0_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[0]~4_combout\);

-- Location: FF_X72_Y30_N13
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[0]~4_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_clr_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(0));

-- Location: LCCOMB_X72_Y30_N28
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~7\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~7_combout\);

-- Location: LCCOMB_X72_Y30_N30
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~8\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~7_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(10),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~8_combout\);

-- Location: LCCOMB_X72_Y30_N18
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][3]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][3]~feeder_combout\);

-- Location: FF_X72_Y30_N19
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][3]~feeder_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_clr_reg~q\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][3]~q\);

-- Location: LCCOMB_X72_Y30_N4
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][4]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(4),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][4]~feeder_combout\);

-- Location: FF_X72_Y30_N5
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][4]~feeder_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_clr_reg~q\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][4]~q\);

-- Location: FF_X73_Y30_N13
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(9),
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_clr_reg~q\,
	sload => VCC,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][9]~q\);

-- Location: LCCOMB_X73_Y30_N30
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~15\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(10),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][9]~q\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~15_combout\);

-- Location: FF_X73_Y30_N31
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~15_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_clr_reg~q\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(9));

-- Location: LCCOMB_X73_Y30_N2
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][8]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(8),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][8]~feeder_combout\);

-- Location: FF_X73_Y30_N3
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][8]~feeder_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_clr_reg~q\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][8]~q\);

-- Location: LCCOMB_X73_Y30_N28
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~14\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(9),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][8]~q\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~14_combout\);

-- Location: FF_X73_Y30_N29
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~14_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_clr_reg~q\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(8));

-- Location: LCCOMB_X73_Y30_N0
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][7]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(7),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][7]~feeder_combout\);

-- Location: FF_X73_Y30_N1
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][7]~feeder_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_clr_reg~q\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][7]~q\);

-- Location: LCCOMB_X73_Y30_N10
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~13\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(8),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][7]~q\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~13_combout\);

-- Location: FF_X73_Y30_N11
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~13_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_clr_reg~q\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(7));

-- Location: LCCOMB_X73_Y30_N6
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][6]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(6),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][6]~feeder_combout\);

-- Location: FF_X73_Y30_N7
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][6]~feeder_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_clr_reg~q\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][6]~q\);

-- Location: LCCOMB_X73_Y30_N24
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~12\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(7),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][6]~q\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~12_combout\);

-- Location: FF_X73_Y30_N25
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~12_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_clr_reg~q\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(6));

-- Location: FF_X73_Y30_N21
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(5),
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_clr_reg~q\,
	sload => VCC,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][5]~q\);

-- Location: LCCOMB_X73_Y30_N14
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~11\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(6),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][5]~q\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~11_combout\);

-- Location: FF_X73_Y30_N15
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~11_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_clr_reg~q\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(5));

-- Location: LCCOMB_X73_Y30_N4
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~10\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][4]~q\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(5),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~10_combout\);

-- Location: FF_X73_Y30_N5
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~10_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_clr_reg~q\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(4));

-- Location: LCCOMB_X72_Y30_N10
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~6\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][3]~q\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[2]~1_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(4),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~6_combout\);

-- Location: LCCOMB_X72_Y30_N16
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~9\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~8_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~6_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~9_combout\);

-- Location: FF_X72_Y30_N17
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~9_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_clr_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(3));

-- Location: LCCOMB_X73_Y30_N18
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][2]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][2]~feeder_combout\);

-- Location: FF_X73_Y30_N19
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][2]~feeder_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_clr_reg~q\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][2]~q\);

-- Location: LCCOMB_X73_Y30_N16
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~3\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(3),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][2]~q\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~3_combout\);

-- Location: FF_X73_Y30_N17
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~3_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_clr_reg~q\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(2));

-- Location: LCCOMB_X69_Y30_N28
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[1]~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(2),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(1),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[1]~0_combout\);

-- Location: LCCOMB_X72_Y30_N26
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[1]~1\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[1]~0_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(10),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|reset_ena_reg_proc~0_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[1]~1_combout\);

-- Location: FF_X72_Y30_N27
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[1]~1_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_clr_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(1));

-- Location: LCCOMB_X69_Y30_N14
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[2]~2\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(2),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(1),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[2]~2_combout\);

-- Location: LCCOMB_X70_Y30_N26
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[2]~3\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(10),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|reset_ena_reg~q\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(2),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[2]~2_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[2]~3_combout\);

-- Location: FF_X70_Y30_N27
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[2]~3_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(2));

-- Location: LCCOMB_X67_Y30_N20
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg_proc~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg_proc~0_combout\);

-- Location: FF_X67_Y30_N21
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~q\);

-- Location: FF_X73_Y30_N9
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(1),
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_clr_reg~q\,
	sload => VCC,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][1]~q\);

-- Location: LCCOMB_X73_Y30_N26
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~5\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][1]~q\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~5_combout\);

-- Location: FF_X73_Y30_N27
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~5_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_clr_reg~q\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(1));

-- Location: LCCOMB_X67_Y30_N12
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TMSUTAP\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(10),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datad => \altera_internal_jtag~TDIUTAP\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~0_combout\);

-- Location: LCCOMB_X67_Y30_N22
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~1\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~0_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(2),
	datac => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~1_combout\);

-- Location: LCCOMB_X67_Y30_N0
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena_proc~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datac => \altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena_proc~0_combout\);

-- Location: LCCOMB_X65_Y30_N10
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~2\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~1_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(1),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(0),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~0_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~2_combout\);

-- Location: FF_X65_Y30_N11
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_dr_scan_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~2_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(0),
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_dr_scan_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_dr_scan_reg~q\);

-- Location: LCCOMB_X67_Y30_N26
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~2\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena_proc~0_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_dr_scan_reg~q\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(15),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~2_combout\);

-- Location: LCCOMB_X67_Y30_N2
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~3\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~1_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena_proc~1_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena[1]~reg0_q\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~2_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~3_combout\);

-- Location: FF_X67_Y30_N3
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~3_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_clr_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena[1]~reg0_q\);

-- Location: LCCOMB_X74_Y30_N10
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|bypass_reg_out~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena[1]~reg0_q\,
	datab => \altera_internal_jtag~TDIUTAP\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|bypass_reg_out~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|bypass_reg_out~0_combout\);

-- Location: LCCOMB_X73_Y31_N8
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~q\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~0_combout\);

-- Location: FF_X73_Y31_N9
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~q\);

-- Location: CLKCTRL_G8
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\);

-- Location: FF_X74_Y30_N11
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|bypass_reg_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|bypass_reg_out~0_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|bypass_reg_out~q\);

-- Location: LCCOMB_X74_Y29_N24
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_shift_enable~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][6]~q\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][1]~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_shift_enable~0_combout\);

-- Location: LCCOMB_X74_Y30_N20
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr_ena~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena[1]~reg0_q\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr_ena~0_combout\);

-- Location: IOIBUF_X0_Y36_N22
\auto_stp_external_clock_0~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_auto_stp_external_clock_0,
	o => \auto_stp_external_clock_0~input_o\);

-- Location: CLKCTRL_G3
\auto_stp_external_clock_0~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \auto_stp_external_clock_0~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \auto_stp_external_clock_0~inputclkctrl_outclk\);

-- Location: LCCOMB_X75_Y28_N0
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|final_trigger_set~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|final_trigger_set~feeder_combout\);

-- Location: FF_X75_Y29_N15
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|run\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	asdata => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][1]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|run~q\);

-- Location: LCCOMB_X75_Y29_N26
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|condition_delay_reg[0]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|condition_delay_reg[0]~feeder_combout\);

-- Location: FF_X75_Y29_N27
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|condition_delay_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|condition_delay_reg[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|condition_delay_reg\(0));

-- Location: FF_X75_Y29_N1
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|condition_delay_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|condition_delay_reg\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|condition_delay_reg\(1));

-- Location: LCCOMB_X75_Y29_N22
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|condition_delay_reg[2]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|condition_delay_reg\(1),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|condition_delay_reg[2]~feeder_combout\);

-- Location: FF_X75_Y29_N23
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|condition_delay_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|condition_delay_reg[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|condition_delay_reg\(2));

-- Location: FF_X75_Y29_N25
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|condition_delay_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|condition_delay_reg\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|condition_delay_reg\(3));

-- Location: LCCOMB_X75_Y29_N24
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|final_trigger_set~4\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter[5]~0_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|run~q\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|condition_delay_reg\(3),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|final_trigger_set~4_combout\);

-- Location: FF_X75_Y28_N1
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|final_trigger_set\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|final_trigger_set~feeder_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|final_trigger_set~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|final_trigger_set~q\);

-- Location: LCCOMB_X75_Y30_N22
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|is_buffer_wrapped~2\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal1~4_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter[5]~0_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|final_trigger_set~q\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal0~2_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|is_buffer_wrapped~2_combout\);

-- Location: LCCOMB_X76_Y28_N16
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter\(0),
	datad => VCC,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~0_combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~1\);

-- Location: LCCOMB_X76_Y28_N8
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter~2\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal0~2_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal1~4_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter[5]~0_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~0_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter~2_combout\);

-- Location: LCCOMB_X75_Y29_N10
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|collect_data\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|condition_delay_reg\(3),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|run~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|collect_data~combout\);

-- Location: FF_X76_Y28_N9
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter~2_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|collect_data~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter\(0));

-- Location: LCCOMB_X76_Y28_N18
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~2\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter\(1),
	datad => VCC,
	cin => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~1\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~2_combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~3\);

-- Location: LCCOMB_X76_Y28_N20
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~5\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter\(2),
	datad => VCC,
	cin => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~3\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~5_combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~6\);

-- Location: LCCOMB_X76_Y28_N4
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~7\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal0~2_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal1~4_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter[5]~0_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~5_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~7_combout\);

-- Location: FF_X76_Y28_N5
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~7_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|collect_data~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter\(2));

-- Location: LCCOMB_X76_Y28_N22
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~8\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter\(3),
	datad => VCC,
	cin => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~6\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~8_combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~9\);

-- Location: LCCOMB_X76_Y28_N14
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~10\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal0~2_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal1~4_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter[5]~0_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~8_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~10_combout\);

-- Location: FF_X76_Y28_N15
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~10_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|collect_data~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter\(3));

-- Location: LCCOMB_X76_Y28_N24
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~11\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter\(4),
	datad => VCC,
	cin => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~9\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~11_combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~12\);

-- Location: LCCOMB_X76_Y28_N0
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~13\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal0~2_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal1~4_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter[5]~0_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~11_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~13_combout\);

-- Location: FF_X76_Y28_N1
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~13_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|collect_data~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter\(4));

-- Location: LCCOMB_X76_Y28_N26
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~14\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter\(5),
	datad => VCC,
	cin => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~12\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~14_combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~15\);

-- Location: LCCOMB_X76_Y28_N10
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~16\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal0~2_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal1~4_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter[5]~0_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~14_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~16_combout\);

-- Location: FF_X76_Y28_N11
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~16_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|collect_data~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter\(5));

-- Location: LCCOMB_X76_Y28_N28
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~17\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter\(6),
	datad => VCC,
	cin => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~15\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~17_combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~18\);

-- Location: LCCOMB_X76_Y28_N12
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~19\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal0~2_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal1~4_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter[5]~0_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~17_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~19_combout\);

-- Location: FF_X76_Y28_N13
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~19_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|collect_data~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter\(6));

-- Location: LCCOMB_X75_Y30_N26
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal0~1\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter\(5),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter\(6),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter\(7),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter\(4),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal0~1_combout\);

-- Location: LCCOMB_X75_Y30_N4
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter[5]~1\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal0~0_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter[5]~0_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal0~1_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter[5]~1_combout\);

-- Location: LCCOMB_X75_Y32_N8
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|offset_count~2\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|final_trigger_set~q\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter[5]~1_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~4_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal1~4_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|offset_count~2_combout\);

-- Location: FF_X75_Y32_N21
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|offset_count~2_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|collect_data~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[2]~q\);

-- Location: LCCOMB_X75_Y32_N16
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[0]~q\,
	datad => VCC,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~0_combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~1\);

-- Location: LCCOMB_X75_Y32_N4
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|offset_count~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal1~4_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter[5]~1_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|final_trigger_set~q\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~0_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|offset_count~0_combout\);

-- Location: FF_X75_Y32_N17
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|offset_count~0_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|collect_data~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[0]~q\);

-- Location: LCCOMB_X75_Y32_N18
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~2\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[1]~q\,
	datad => VCC,
	cin => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~1\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~2_combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~3\);

-- Location: LCCOMB_X75_Y32_N30
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|offset_count~1\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal1~4_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter[5]~1_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|final_trigger_set~q\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~2_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|offset_count~1_combout\);

-- Location: FF_X75_Y32_N19
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|offset_count~1_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|collect_data~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[1]~q\);

-- Location: LCCOMB_X75_Y32_N20
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~4\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[2]~q\,
	datad => VCC,
	cin => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~3\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~4_combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~5\);

-- Location: LCCOMB_X75_Y32_N2
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|offset_count~3\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|final_trigger_set~q\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter[5]~1_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~6_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal1~4_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|offset_count~3_combout\);

-- Location: FF_X75_Y32_N23
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|offset_count~3_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|collect_data~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[3]~q\);

-- Location: LCCOMB_X75_Y32_N22
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~6\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[3]~q\,
	datad => VCC,
	cin => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~5\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~6_combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~7\);

-- Location: LCCOMB_X75_Y32_N0
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|is_buffer_wrapped~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~4_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~0_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~6_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~2_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|is_buffer_wrapped~0_combout\);

-- Location: LCCOMB_X75_Y32_N14
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|offset_count~6\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal1~4_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter[5]~1_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|final_trigger_set~q\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~12_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|offset_count~6_combout\);

-- Location: FF_X75_Y32_N29
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|offset_count~6_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|collect_data~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[6]~q\);

-- Location: LCCOMB_X75_Y32_N24
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~8\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[4]~q\,
	datad => VCC,
	cin => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~7\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~8_combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~9\);

-- Location: LCCOMB_X75_Y32_N12
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|offset_count~4\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal1~4_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter[5]~1_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|final_trigger_set~q\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~8_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|offset_count~4_combout\);

-- Location: FF_X75_Y32_N25
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|offset_count~4_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|collect_data~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[4]~q\);

-- Location: LCCOMB_X75_Y32_N26
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~10\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[5]~q\,
	datad => VCC,
	cin => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~9\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~10_combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~11\);

-- Location: LCCOMB_X75_Y32_N6
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|offset_count~5\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|final_trigger_set~q\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter[5]~1_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~10_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal1~4_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|offset_count~5_combout\);

-- Location: FF_X75_Y32_N27
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|offset_count~5_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|collect_data~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[5]~q\);

-- Location: LCCOMB_X75_Y32_N28
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~12\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[6]~q\,
	cin => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~11\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~12_combout\);

-- Location: LCCOMB_X75_Y32_N10
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|is_buffer_wrapped~1\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|is_buffer_wrapped~0_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~12_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~10_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~8_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|is_buffer_wrapped~1_combout\);

-- Location: LCCOMB_X75_Y30_N16
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|is_buffer_wrapped~3\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|final_trigger_set~q\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|is_buffer_wrapped~2_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:is_buffer_wrapped~q\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|is_buffer_wrapped~1_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|is_buffer_wrapped~3_combout\);

-- Location: FF_X75_Y30_N17
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:is_buffer_wrapped\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|is_buffer_wrapped~3_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|collect_data~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:is_buffer_wrapped~q\);

-- Location: LCCOMB_X74_Y28_N8
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|run~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|condition_delay_reg\(3),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][1]~q\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:is_buffer_wrapped~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|run~0_combout\);

-- Location: FF_X74_Y28_N9
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|run\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|run~0_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|run~q\);

-- Location: LCCOMB_X73_Y36_N26
\auto_signaltap_0|acq_trigger_in_reg[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_signaltap_0|acq_trigger_in_reg[8]~feeder_combout\ = \rst~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rst~input_o\,
	combout => \auto_signaltap_0|acq_trigger_in_reg[8]~feeder_combout\);

-- Location: FF_X73_Y36_N27
\auto_signaltap_0|acq_trigger_in_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	d => \auto_signaltap_0|acq_trigger_in_reg[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|acq_trigger_in_reg\(8));

-- Location: LCCOMB_X74_Y30_N4
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_setup_ena\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][3]~q\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena[1]~reg0_q\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_setup_ena~combout\);

-- Location: FF_X74_Y36_N31
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_2|dffs[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \altera_internal_jtag~TDIUTAP\,
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_2|dffs\(2));

-- Location: LCCOMB_X74_Y36_N10
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_2|dffs[1]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_2|dffs\(2),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_2|dffs[1]~feeder_combout\);

-- Location: FF_X74_Y36_N11
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_2|dffs[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_2|dffs[1]~feeder_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_2|dffs\(1));

-- Location: LCCOMB_X74_Y36_N0
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_2|dffs[0]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_2|dffs\(1),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_2|dffs[0]~feeder_combout\);

-- Location: FF_X74_Y36_N1
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_2|dffs[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_2|dffs[0]~feeder_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_2|dffs\(0));

-- Location: FF_X74_Y36_N9
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_3|dffs[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_2|dffs\(0),
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_3|dffs\(0));

-- Location: FF_X74_Y36_N13
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_5|dffs[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_3|dffs\(0),
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_5|dffs\(2));

-- Location: FF_X74_Y36_N27
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_5|dffs[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_5|dffs\(2),
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_5|dffs\(1));

-- Location: FF_X74_Y36_N15
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_5|dffs[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_5|dffs\(1),
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_5|dffs\(0));

-- Location: FF_X74_Y36_N23
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_6|dffs[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_5|dffs\(0),
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_6|dffs\(0));

-- Location: FF_X74_Y36_N3
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_8|dffs[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_6|dffs\(0),
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_8|dffs\(2));

-- Location: LCCOMB_X74_Y36_N18
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_8|dffs[1]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_8|dffs\(2),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_8|dffs[1]~feeder_combout\);

-- Location: FF_X74_Y36_N19
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_8|dffs[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_8|dffs[1]~feeder_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_8|dffs\(1));

-- Location: LCCOMB_X74_Y36_N20
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_8|dffs[0]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_8|dffs\(1),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_8|dffs[0]~feeder_combout\);

-- Location: FF_X74_Y36_N21
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_8|dffs[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_8|dffs[0]~feeder_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_8|dffs\(0));

-- Location: FF_X74_Y36_N29
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_9|dffs[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_8|dffs\(0),
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_9|dffs\(0));

-- Location: FF_X70_Y36_N17
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_11|dffs[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_9|dffs\(0),
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_11|dffs\(2));

-- Location: LCCOMB_X70_Y36_N2
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_11|dffs[1]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_11|dffs\(2),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_11|dffs[1]~feeder_combout\);

-- Location: FF_X70_Y36_N3
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_11|dffs[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_11|dffs[1]~feeder_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_11|dffs\(1));

-- Location: LCCOMB_X70_Y36_N30
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_11|dffs[0]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_11|dffs\(1),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_11|dffs[0]~feeder_combout\);

-- Location: FF_X70_Y36_N31
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_11|dffs[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_11|dffs[0]~feeder_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_11|dffs\(0));

-- Location: FF_X70_Y36_N15
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_12|dffs[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_11|dffs\(0),
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_12|dffs\(0));

-- Location: FF_X70_Y36_N11
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_14|dffs[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_12|dffs\(0),
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_14|dffs\(2));

-- Location: LCCOMB_X70_Y36_N18
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_14|dffs[1]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_14|dffs\(2),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_14|dffs[1]~feeder_combout\);

-- Location: FF_X70_Y36_N19
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_14|dffs[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_14|dffs[1]~feeder_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_14|dffs\(1));

-- Location: LCCOMB_X70_Y36_N4
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_14|dffs[0]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_14|dffs\(1),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_14|dffs[0]~feeder_combout\);

-- Location: FF_X70_Y36_N5
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_14|dffs[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_14|dffs[0]~feeder_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_14|dffs\(0));

-- Location: FF_X70_Y36_N25
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_15|dffs[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_14|dffs\(0),
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_15|dffs\(0));

-- Location: FF_X72_Y36_N1
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_17|dffs[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_15|dffs\(0),
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_17|dffs\(2));

-- Location: LCCOMB_X72_Y36_N4
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_17|dffs[1]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_17|dffs\(2),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_17|dffs[1]~feeder_combout\);

-- Location: FF_X72_Y36_N5
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_17|dffs[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_17|dffs[1]~feeder_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_17|dffs\(1));

-- Location: FF_X72_Y36_N11
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_17|dffs[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_17|dffs\(1),
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_17|dffs\(0));

-- Location: FF_X72_Y36_N9
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_18|dffs[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_17|dffs\(0),
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_18|dffs\(0));

-- Location: FF_X72_Y36_N17
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_20|dffs[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_18|dffs\(0),
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_20|dffs\(2));

-- Location: LCCOMB_X72_Y36_N18
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_20|dffs[1]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_20|dffs\(2),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_20|dffs[1]~feeder_combout\);

-- Location: FF_X72_Y36_N19
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_20|dffs[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_20|dffs[1]~feeder_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_20|dffs\(1));

-- Location: LCCOMB_X72_Y36_N12
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_20|dffs[0]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_20|dffs\(1),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_20|dffs[0]~feeder_combout\);

-- Location: FF_X72_Y36_N13
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_20|dffs[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_20|dffs[0]~feeder_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_20|dffs\(0));

-- Location: FF_X72_Y36_N15
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_21|dffs[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_20|dffs\(0),
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_21|dffs\(0));

-- Location: FF_X73_Y36_N13
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_23|dffs[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_21|dffs\(0),
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_23|dffs\(2));

-- Location: LCCOMB_X73_Y36_N0
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_23|dffs[1]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_23|dffs\(2),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_23|dffs[1]~feeder_combout\);

-- Location: FF_X73_Y36_N1
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_23|dffs[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_23|dffs[1]~feeder_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_23|dffs\(1));

-- Location: LCCOMB_X73_Y36_N8
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_23|dffs[0]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_23|dffs\(1),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_23|dffs[0]~feeder_combout\);

-- Location: FF_X73_Y36_N9
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_23|dffs[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_23|dffs[0]~feeder_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_23|dffs\(0));

-- Location: FF_X73_Y36_N23
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_24|dffs[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_23|dffs\(0),
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_24|dffs\(0));

-- Location: FF_X73_Y36_N25
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_26|dffs[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_24|dffs\(0),
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_26|dffs\(2));

-- Location: FF_X73_Y36_N29
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_26|dffs[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_26|dffs\(2),
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_26|dffs\(1));

-- Location: FF_X73_Y36_N31
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_26|dffs[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_26|dffs\(1),
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_26|dffs\(0));

-- Location: FF_X73_Y36_N19
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|mbpm_25|gen_sbpmg_pipeline_less_than_two:sm0:0:sm1|holdff\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	asdata => \auto_signaltap_0|acq_trigger_in_reg\(8),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|mbpm_25|gen_sbpmg_pipeline_less_than_two:sm0:0:sm1|holdff~q\);

-- Location: LCCOMB_X73_Y36_N18
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|output28a~13\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|acq_trigger_in_reg\(8),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_26|dffs\(0),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|mbpm_25|gen_sbpmg_pipeline_less_than_two:sm0:0:sm1|holdff~q\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_26|dffs\(1),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|output28a~13_combout\);

-- Location: FF_X73_Y36_N5
\auto_signaltap_0|acq_trigger_in_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	asdata => \color[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|acq_trigger_in_reg\(7));

-- Location: FF_X73_Y36_N3
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|mbpm_22|gen_sbpmg_pipeline_less_than_two:sm0:0:sm1|holdff\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	asdata => \auto_signaltap_0|acq_trigger_in_reg\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|mbpm_22|gen_sbpmg_pipeline_less_than_two:sm0:0:sm1|holdff~q\);

-- Location: LCCOMB_X73_Y36_N2
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|output28a~14\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_23|dffs\(0),
	datab => \auto_signaltap_0|acq_trigger_in_reg\(7),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|mbpm_22|gen_sbpmg_pipeline_less_than_two:sm0:0:sm1|holdff~q\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_23|dffs\(1),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|output28a~14_combout\);

-- Location: FF_X73_Y36_N15
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_27|dffs[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_26|dffs\(0),
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_27|dffs\(0));

-- Location: LCCOMB_X73_Y36_N22
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|output28a~15\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|output28a~13_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|output28a~14_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_24|dffs\(0),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_27|dffs\(0),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|output28a~15_combout\);

-- Location: LCCOMB_X72_Y36_N30
\auto_signaltap_0|acq_trigger_in_reg[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_signaltap_0|acq_trigger_in_reg[6]~feeder_combout\ = \color[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \color[2]~input_o\,
	combout => \auto_signaltap_0|acq_trigger_in_reg[6]~feeder_combout\);

-- Location: FF_X72_Y36_N31
\auto_signaltap_0|acq_trigger_in_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	d => \auto_signaltap_0|acq_trigger_in_reg[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|acq_trigger_in_reg\(6));

-- Location: FF_X72_Y36_N7
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|mbpm_19|gen_sbpmg_pipeline_less_than_two:sm0:0:sm1|holdff\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	asdata => \auto_signaltap_0|acq_trigger_in_reg\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|mbpm_19|gen_sbpmg_pipeline_less_than_two:sm0:0:sm1|holdff~q\);

-- Location: LCCOMB_X72_Y36_N6
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|output28a~25\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|acq_trigger_in_reg\(6),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_20|dffs\(0),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|mbpm_19|gen_sbpmg_pipeline_less_than_two:sm0:0:sm1|holdff~q\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_20|dffs\(1),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|output28a~25_combout\);

-- Location: LCCOMB_X72_Y36_N26
\auto_signaltap_0|acq_trigger_in_reg[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_signaltap_0|acq_trigger_in_reg[5]~feeder_combout\ = \color[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \color[1]~input_o\,
	combout => \auto_signaltap_0|acq_trigger_in_reg[5]~feeder_combout\);

-- Location: FF_X72_Y36_N27
\auto_signaltap_0|acq_trigger_in_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	d => \auto_signaltap_0|acq_trigger_in_reg[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|acq_trigger_in_reg\(5));

-- Location: FF_X72_Y36_N3
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|mbpm_16|gen_sbpmg_pipeline_less_than_two:sm0:0:sm1|holdff\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	asdata => \auto_signaltap_0|acq_trigger_in_reg\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|mbpm_16|gen_sbpmg_pipeline_less_than_two:sm0:0:sm1|holdff~q\);

-- Location: LCCOMB_X72_Y36_N2
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|output28a~26\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|acq_trigger_in_reg\(5),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_17|dffs\(1),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|mbpm_16|gen_sbpmg_pipeline_less_than_two:sm0:0:sm1|holdff~q\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_17|dffs\(0),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|output28a~26_combout\);

-- Location: LCCOMB_X72_Y36_N14
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|output28a~27\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|output28a~25_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_18|dffs\(0),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_21|dffs\(0),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|output28a~26_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|output28a~27_combout\);

-- Location: LCCOMB_X70_Y36_N8
\auto_signaltap_0|acq_trigger_in_reg[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_signaltap_0|acq_trigger_in_reg[3]~feeder_combout\ = \clk~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \clk~input_o\,
	combout => \auto_signaltap_0|acq_trigger_in_reg[3]~feeder_combout\);

-- Location: FF_X70_Y36_N9
\auto_signaltap_0|acq_trigger_in_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	d => \auto_signaltap_0|acq_trigger_in_reg[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|acq_trigger_in_reg\(3));

-- Location: FF_X70_Y36_N21
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|mbpm_10|gen_sbpmg_pipeline_less_than_two:sm0:0:sm1|holdff\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	asdata => \auto_signaltap_0|acq_trigger_in_reg\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|mbpm_10|gen_sbpmg_pipeline_less_than_two:sm0:0:sm1|holdff~q\);

-- Location: LCCOMB_X70_Y36_N20
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|output28a~23\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_11|dffs\(0),
	datab => \auto_signaltap_0|acq_trigger_in_reg\(3),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|mbpm_10|gen_sbpmg_pipeline_less_than_two:sm0:0:sm1|holdff~q\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_11|dffs\(1),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|output28a~23_combout\);

-- Location: LCCOMB_X70_Y36_N26
\auto_signaltap_0|acq_trigger_in_reg[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_signaltap_0|acq_trigger_in_reg[4]~feeder_combout\ = \color[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \color[0]~input_o\,
	combout => \auto_signaltap_0|acq_trigger_in_reg[4]~feeder_combout\);

-- Location: FF_X70_Y36_N27
\auto_signaltap_0|acq_trigger_in_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	d => \auto_signaltap_0|acq_trigger_in_reg[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|acq_trigger_in_reg\(4));

-- Location: FF_X70_Y36_N13
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|mbpm_13|gen_sbpmg_pipeline_less_than_two:sm0:0:sm1|holdff\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	asdata => \auto_signaltap_0|acq_trigger_in_reg\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|mbpm_13|gen_sbpmg_pipeline_less_than_two:sm0:0:sm1|holdff~q\);

-- Location: LCCOMB_X70_Y36_N12
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|output28a~22\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|acq_trigger_in_reg\(4),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_14|dffs\(0),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|mbpm_13|gen_sbpmg_pipeline_less_than_two:sm0:0:sm1|holdff~q\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_14|dffs\(1),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|output28a~22_combout\);

-- Location: LCCOMB_X70_Y36_N24
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|output28a~24\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_12|dffs\(0),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|output28a~23_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_15|dffs\(0),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|output28a~22_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|output28a~24_combout\);

-- Location: LCCOMB_X73_Y36_N24
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|output28a~16\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|acq_trigger_in_reg\(8),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_26|dffs\(0),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_26|dffs\(2),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_26|dffs\(1),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|output28a~16_combout\);

-- Location: LCCOMB_X73_Y36_N12
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|output28a~17\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_23|dffs\(0),
	datab => \auto_signaltap_0|acq_trigger_in_reg\(7),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_23|dffs\(2),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_23|dffs\(1),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|output28a~17_combout\);

-- Location: LCCOMB_X73_Y36_N14
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|output28a~18\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_24|dffs\(0),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|output28a~16_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_27|dffs\(0),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|output28a~17_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|output28a~18_combout\);

-- Location: FF_X74_Y36_N5
\auto_signaltap_0|acq_trigger_in_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	asdata => S(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|acq_trigger_in_reg\(1));

-- Location: FF_X74_Y36_N17
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|mbpm_4|gen_sbpmg_pipeline_less_than_two:sm0:0:sm1|holdff\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	asdata => \auto_signaltap_0|acq_trigger_in_reg\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|mbpm_4|gen_sbpmg_pipeline_less_than_two:sm0:0:sm1|holdff~q\);

-- Location: LCCOMB_X74_Y36_N16
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|output28a~20\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_5|dffs\(1),
	datab => \auto_signaltap_0|acq_trigger_in_reg\(1),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|mbpm_4|gen_sbpmg_pipeline_less_than_two:sm0:0:sm1|holdff~q\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_5|dffs\(0),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|output28a~20_combout\);

-- Location: LCCOMB_X74_Y37_N14
\auto_signaltap_0|acq_trigger_in_reg[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_signaltap_0|acq_trigger_in_reg[2]~feeder_combout\ = S(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => S(2),
	combout => \auto_signaltap_0|acq_trigger_in_reg[2]~feeder_combout\);

-- Location: FF_X74_Y37_N15
\auto_signaltap_0|acq_trigger_in_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	d => \auto_signaltap_0|acq_trigger_in_reg[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|acq_trigger_in_reg\(2));

-- Location: FF_X74_Y36_N7
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|mbpm_7|gen_sbpmg_pipeline_less_than_two:sm0:0:sm1|holdff\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	asdata => \auto_signaltap_0|acq_trigger_in_reg\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|mbpm_7|gen_sbpmg_pipeline_less_than_two:sm0:0:sm1|holdff~q\);

-- Location: LCCOMB_X74_Y36_N6
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|output28a~19\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|acq_trigger_in_reg\(2),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_8|dffs\(0),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|mbpm_7|gen_sbpmg_pipeline_less_than_two:sm0:0:sm1|holdff~q\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_8|dffs\(1),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|output28a~19_combout\);

-- Location: LCCOMB_X74_Y36_N28
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|output28a~21\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_6|dffs\(0),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|output28a~20_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_9|dffs\(0),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|output28a~19_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|output28a~21_combout\);

-- Location: LCCOMB_X73_Y36_N20
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|output28a~28\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|output28a~27_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|output28a~24_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|output28a~18_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|output28a~21_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|output28a~28_combout\);

-- Location: FF_X74_Y37_N5
\auto_signaltap_0|acq_trigger_in_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	asdata => S(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|acq_trigger_in_reg\(0));

-- Location: LCCOMB_X74_Y36_N30
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|output28a~3\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|acq_trigger_in_reg\(0),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_2|dffs\(0),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_2|dffs\(2),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_2|dffs\(1),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|output28a~3_combout\);

-- Location: FF_X74_Y36_N25
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|mbpm_1|gen_sbpmg_pipeline_less_than_two:sm0:0:sm1|holdff\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	asdata => \auto_signaltap_0|acq_trigger_in_reg\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|mbpm_1|gen_sbpmg_pipeline_less_than_two:sm0:0:sm1|holdff~q\);

-- Location: LCCOMB_X74_Y36_N24
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|output28a~4\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|acq_trigger_in_reg\(0),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_2|dffs\(0),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|mbpm_1|gen_sbpmg_pipeline_less_than_two:sm0:0:sm1|holdff~q\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_2|dffs\(1),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|output28a~4_combout\);

-- Location: LCCOMB_X74_Y36_N12
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|output28a~1\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_5|dffs\(1),
	datab => \auto_signaltap_0|acq_trigger_in_reg\(1),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_5|dffs\(2),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_5|dffs\(0),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|output28a~1_combout\);

-- Location: LCCOMB_X74_Y36_N2
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|output28a~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|acq_trigger_in_reg\(2),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_8|dffs\(0),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_8|dffs\(2),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_8|dffs\(1),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|output28a~0_combout\);

-- Location: LCCOMB_X74_Y36_N22
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|output28a~2\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|output28a~1_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|output28a~0_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_6|dffs\(0),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_9|dffs\(0),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|output28a~2_combout\);

-- Location: LCCOMB_X74_Y36_N8
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|output28a~5\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|output28a~3_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|output28a~4_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_3|dffs\(0),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|output28a~2_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|output28a~5_combout\);

-- Location: LCCOMB_X72_Y36_N10
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|output28a~9\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101111011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|acq_trigger_in_reg\(5),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_17|dffs\(1),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_17|dffs\(0),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|output28a~9_combout\);

-- Location: LCCOMB_X72_Y36_N0
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|output28a~10\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|output28a~9_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_18|dffs\(0),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_17|dffs\(2),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|output28a~10_combout\);

-- Location: LCCOMB_X70_Y36_N16
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|output28a~7\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|acq_trigger_in_reg\(3),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_11|dffs\(0),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_11|dffs\(2),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_11|dffs\(1),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|output28a~7_combout\);

-- Location: LCCOMB_X70_Y36_N10
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|output28a~6\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|acq_trigger_in_reg\(4),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_14|dffs\(0),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_14|dffs\(2),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_14|dffs\(1),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|output28a~6_combout\);

-- Location: LCCOMB_X70_Y36_N14
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|output28a~8\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|output28a~7_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|output28a~6_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_12|dffs\(0),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_15|dffs\(0),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|output28a~8_combout\);

-- Location: LCCOMB_X72_Y36_N16
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|output28a~11\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|acq_trigger_in_reg\(6),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_20|dffs\(0),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_20|dffs\(2),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_20|dffs\(1),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|output28a~11_combout\);

-- Location: LCCOMB_X72_Y36_N22
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|output28a~12\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|output28a~10_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|output28a~8_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|output28a~11_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_21|dffs\(0),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|output28a~12_combout\);

-- Location: LCCOMB_X73_Y36_N16
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|output28a~29\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|output28a~15_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|output28a~28_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|output28a~5_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|output28a~12_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|output28a~29_combout\);

-- Location: FF_X73_Y36_N17
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|output28a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|output28a~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|output28a\(0));

-- Location: LCCOMB_X74_Y28_N16
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|last_level_delayed~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|run~q\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|last_level_delayed~q\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|output28a\(0),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|last_level_delayed~0_combout\);

-- Location: FF_X74_Y28_N17
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|last_level_delayed\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|last_level_delayed~0_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|last_level_delayed~q\);

-- Location: LCCOMB_X74_Y34_N6
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|trigger_config_deserialize|dffs[9]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|multi_level_advanced_trigger_gen:advanced_trigger_wrapper|auto_generated|mgl_prim1|config_shiftreg_27|dffs\(0),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|trigger_config_deserialize|dffs[9]~feeder_combout\);

-- Location: FF_X74_Y34_N7
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|trigger_config_deserialize|dffs[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|trigger_config_deserialize|dffs[9]~feeder_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|trigger_config_deserialize|dffs\(9));

-- Location: LCCOMB_X74_Y34_N12
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|trigger_config_deserialize|dffs[8]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|trigger_config_deserialize|dffs\(9),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|trigger_config_deserialize|dffs[8]~feeder_combout\);

-- Location: FF_X74_Y34_N13
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|trigger_config_deserialize|dffs[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|trigger_config_deserialize|dffs[8]~feeder_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|trigger_config_deserialize|dffs\(8));

-- Location: LCCOMB_X74_Y34_N26
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|trigger_config_deserialize|dffs[7]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|trigger_config_deserialize|dffs\(8),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|trigger_config_deserialize|dffs[7]~feeder_combout\);

-- Location: FF_X74_Y34_N27
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|trigger_config_deserialize|dffs[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|trigger_config_deserialize|dffs[7]~feeder_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|trigger_config_deserialize|dffs\(7));

-- Location: FF_X74_Y34_N25
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|trigger_config_deserialize|dffs[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|trigger_config_deserialize|dffs\(7),
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|trigger_config_deserialize|dffs\(6));

-- Location: LCCOMB_X74_Y34_N22
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|trigger_config_deserialize|dffs[5]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|trigger_config_deserialize|dffs\(6),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|trigger_config_deserialize|dffs[5]~feeder_combout\);

-- Location: FF_X74_Y34_N23
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|trigger_config_deserialize|dffs[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|trigger_config_deserialize|dffs[5]~feeder_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|trigger_config_deserialize|dffs\(5));

-- Location: FF_X74_Y34_N5
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|trigger_config_deserialize|dffs[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|trigger_config_deserialize|dffs\(5),
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|trigger_config_deserialize|dffs\(4));

-- Location: FF_X74_Y34_N11
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|trigger_config_deserialize|dffs[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|trigger_config_deserialize|dffs\(4),
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|trigger_config_deserialize|dffs\(3));

-- Location: LCCOMB_X74_Y34_N16
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|trigger_config_deserialize|dffs[2]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|trigger_config_deserialize|dffs\(3),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|trigger_config_deserialize|dffs[2]~feeder_combout\);

-- Location: FF_X74_Y34_N17
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|trigger_config_deserialize|dffs[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|trigger_config_deserialize|dffs[2]~feeder_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|trigger_config_deserialize|dffs\(2));

-- Location: FF_X74_Y28_N5
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|trigger_config_deserialize|dffs[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|trigger_config_deserialize|dffs\(2),
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|trigger_config_deserialize|dffs\(1));

-- Location: FF_X74_Y28_N23
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|trigger_config_deserialize|dffs[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|trigger_config_deserialize|dffs\(1),
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|trigger_config_deserialize|dffs\(0));

-- Location: LCCOMB_X74_Y28_N22
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter[5]~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|final_trigger_set~q\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|last_level_delayed~q\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|trigger_config_deserialize|dffs\(0),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter[5]~0_combout\);

-- Location: LCCOMB_X76_Y28_N2
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~4\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal0~2_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal1~4_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter[5]~0_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~2_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~4_combout\);

-- Location: FF_X76_Y28_N3
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~4_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|collect_data~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter\(1));

-- Location: LCCOMB_X75_Y28_N2
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal0~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter\(1),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter\(0),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter\(3),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter\(2),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal0~0_combout\);

-- Location: LCCOMB_X75_Y30_N12
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal0~2\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal0~0_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal0~1_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal0~2_combout\);

-- Location: LCCOMB_X76_Y28_N30
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~20\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter\(7),
	cin => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~18\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~20_combout\);

-- Location: LCCOMB_X76_Y28_N6
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~22\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal0~2_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal1~4_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter[5]~0_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~20_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~22_combout\);

-- Location: FF_X76_Y28_N7
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~22_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|collect_data~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter\(7));

-- Location: FF_X74_Y28_N21
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|trigger_config_deserialize|dffs[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|trigger_config_deserialize|dffs\(0),
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|trigger_config_deserialize|dffs\(3));

-- Location: LCCOMB_X74_Y28_N10
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|trigger_config_deserialize|dffs[2]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|trigger_config_deserialize|dffs\(3),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|trigger_config_deserialize|dffs[2]~feeder_combout\);

-- Location: FF_X74_Y28_N11
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|trigger_config_deserialize|dffs[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|trigger_config_deserialize|dffs[2]~feeder_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|trigger_config_deserialize|dffs\(2));

-- Location: LCCOMB_X74_Y28_N24
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|trigger_config_deserialize|dffs[1]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|trigger_config_deserialize|dffs\(2),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|trigger_config_deserialize|dffs[1]~feeder_combout\);

-- Location: FF_X74_Y28_N25
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|trigger_config_deserialize|dffs[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|trigger_config_deserialize|dffs[1]~feeder_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|trigger_config_deserialize|dffs\(1));

-- Location: LCCOMB_X74_Y28_N28
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|trigger_config_deserialize|dffs[0]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|trigger_config_deserialize|dffs\(1),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|trigger_config_deserialize|dffs[0]~feeder_combout\);

-- Location: FF_X74_Y28_N29
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|trigger_config_deserialize|dffs[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|trigger_config_deserialize|dffs[0]~feeder_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|trigger_config_deserialize|dffs\(0));

-- Location: LCCOMB_X74_Y28_N30
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_offset_config_deserialize|dffs[6]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|trigger_config_deserialize|dffs\(0),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_offset_config_deserialize|dffs[6]~feeder_combout\);

-- Location: FF_X74_Y28_N31
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_offset_config_deserialize|dffs[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_offset_config_deserialize|dffs[6]~feeder_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_offset_config_deserialize|dffs\(6));

-- Location: FF_X74_Y28_N3
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_offset_config_deserialize|dffs[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_offset_config_deserialize|dffs\(6),
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_offset_config_deserialize|dffs\(5));

-- Location: LCCOMB_X74_Y28_N0
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_offset_config_deserialize|dffs[4]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_offset_config_deserialize|dffs\(5),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_offset_config_deserialize|dffs[4]~feeder_combout\);

-- Location: FF_X74_Y28_N1
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_offset_config_deserialize|dffs[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_offset_config_deserialize|dffs[4]~feeder_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_offset_config_deserialize|dffs\(4));

-- Location: LCCOMB_X74_Y28_N12
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_offset_config_deserialize|dffs[3]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_offset_config_deserialize|dffs\(4),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_offset_config_deserialize|dffs[3]~feeder_combout\);

-- Location: FF_X74_Y28_N13
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_offset_config_deserialize|dffs[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_offset_config_deserialize|dffs[3]~feeder_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_offset_config_deserialize|dffs\(3));

-- Location: FF_X74_Y28_N15
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_offset_config_deserialize|dffs[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_offset_config_deserialize|dffs\(3),
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_offset_config_deserialize|dffs\(2));

-- Location: LCCOMB_X75_Y28_N30
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_offset_config_deserialize|dffs[1]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_offset_config_deserialize|dffs\(2),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_offset_config_deserialize|dffs[1]~feeder_combout\);

-- Location: FF_X75_Y28_N31
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_offset_config_deserialize|dffs[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_offset_config_deserialize|dffs[1]~feeder_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_offset_config_deserialize|dffs\(1));

-- Location: FF_X75_Y28_N5
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_offset_config_deserialize|dffs[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_offset_config_deserialize|dffs\(1),
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_offset_config_deserialize|dffs\(0));

-- Location: LCCOMB_X75_Y28_N14
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[1]~7\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_offset_config_deserialize|dffs\(1),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_offset_config_deserialize|dffs\(0),
	datad => VCC,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[1]~7_combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[1]~8\);

-- Location: LCCOMB_X75_Y28_N16
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[2]~9\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_offset_config_deserialize|dffs\(2),
	datad => VCC,
	cin => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[1]~8\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[2]~9_combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[2]~10\);

-- Location: LCCOMB_X75_Y28_N18
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[3]~11\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_offset_config_deserialize|dffs\(3),
	datad => VCC,
	cin => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[2]~10\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[3]~11_combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[3]~12\);

-- Location: LCCOMB_X75_Y28_N20
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[4]~13\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_offset_config_deserialize|dffs\(4),
	datad => VCC,
	cin => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[3]~12\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[4]~13_combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[4]~14\);

-- Location: LCCOMB_X75_Y28_N22
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[5]~15\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_offset_config_deserialize|dffs\(5),
	datad => VCC,
	cin => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[4]~14\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[5]~15_combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[5]~16\);

-- Location: LCCOMB_X75_Y28_N24
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[6]~17\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_offset_config_deserialize|dffs\(6),
	datad => VCC,
	cin => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[5]~16\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[6]~17_combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[6]~18\);

-- Location: FF_X75_Y28_N25
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[6]~17_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|final_trigger_set~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count\(6));

-- Location: LCCOMB_X75_Y28_N26
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[7]~19\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[6]~18\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[7]~19_combout\);

-- Location: FF_X75_Y28_N27
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[7]~19_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|final_trigger_set~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count\(7));

-- Location: LCCOMB_X75_Y28_N6
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal1~3\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter\(7),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count\(6),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter\(6),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count\(7),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal1~3_combout\);

-- Location: FF_X75_Y28_N23
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[5]~15_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|final_trigger_set~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count\(5));

-- Location: FF_X75_Y28_N21
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[4]~13_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|final_trigger_set~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count\(4));

-- Location: LCCOMB_X75_Y28_N28
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal1~2\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count\(5),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter\(4),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter\(5),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count\(4),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal1~2_combout\);

-- Location: FF_X75_Y28_N17
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[2]~9_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|final_trigger_set~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count\(2));

-- Location: FF_X75_Y28_N19
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[3]~11_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|final_trigger_set~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count\(3));

-- Location: LCCOMB_X75_Y28_N8
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal1~1\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter\(2),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count\(2),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter\(3),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count\(3),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal1~1_combout\);

-- Location: FF_X75_Y28_N11
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_offset_config_deserialize|dffs\(0),
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|final_trigger_set~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count\(0));

-- Location: FF_X75_Y28_N15
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[1]~7_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|final_trigger_set~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count\(1));

-- Location: LCCOMB_X75_Y28_N10
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal1~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter\(1),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter\(0),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count\(0),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count\(1),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal1~0_combout\);

-- Location: LCCOMB_X75_Y28_N12
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal1~4\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal1~3_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal1~2_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal1~1_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal1~0_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal1~4_combout\);

-- Location: LCCOMB_X75_Y30_N28
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|done~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|final_trigger_set~q\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:done~q\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal1~4_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|done~0_combout\);

-- Location: FF_X75_Y30_N29
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|done~0_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|collect_data~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:done~q\);

-- Location: LCCOMB_X75_Y30_N18
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|collecting_post_data_var~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal1~4_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:done~q\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|final_trigger_set~q\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal0~2_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|collecting_post_data_var~0_combout\);

-- Location: FF_X75_Y30_N19
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:collecting_post_data_var\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|collecting_post_data_var~0_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|collect_data~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:collecting_post_data_var~q\);

-- Location: LCCOMB_X75_Y30_N2
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|base_address~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|final_trigger_set~q\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter[5]~1_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:base_address[0]~q\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal1~4_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|base_address~0_combout\);

-- Location: FF_X75_Y30_N3
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:base_address[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|base_address~0_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|collect_data~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:base_address[0]~q\);

-- Location: FF_X75_Y30_N11
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|current_segment_delayed[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:base_address[0]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|current_segment_delayed\(0));

-- Location: LCCOMB_X75_Y29_N12
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|cdr~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena[1]~reg0_q\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|cdr~0_combout\);

-- Location: LCCOMB_X74_Y29_N30
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|_~16\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TDIUTAP\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][6]~q\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|cdr~0_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][1]~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|_~16_combout\);

-- Location: LCCOMB_X74_Y29_N2
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_shift_enable~1\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr_ena~0_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][1]~q\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][6]~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_shift_enable~1_combout\);

-- Location: FF_X74_Y29_N31
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|dffs[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|_~16_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_shift_enable~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|dffs\(16));

-- Location: LCCOMB_X74_Y29_N4
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|_~15\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|dffs\(16),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][6]~q\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|cdr~0_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][1]~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|_~15_combout\);

-- Location: FF_X74_Y29_N5
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|dffs[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|_~15_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_shift_enable~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|dffs\(15));

-- Location: LCCOMB_X74_Y29_N26
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|_~14\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|dffs\(15),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][6]~q\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|cdr~0_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][1]~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|_~14_combout\);

-- Location: FF_X74_Y29_N27
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|dffs[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|_~14_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_shift_enable~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|dffs\(14));

-- Location: LCCOMB_X74_Y29_N0
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|_~13\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|dffs\(14),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][6]~q\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|cdr~0_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][1]~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|_~13_combout\);

-- Location: FF_X74_Y29_N1
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|dffs[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|_~13_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_shift_enable~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|dffs\(13));

-- Location: LCCOMB_X74_Y29_N22
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|_~12\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][1]~q\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][6]~q\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|cdr~0_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|dffs\(13),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|_~12_combout\);

-- Location: FF_X74_Y29_N23
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|dffs[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|_~12_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_shift_enable~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|dffs\(12));

-- Location: LCCOMB_X74_Y29_N20
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|_~11\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|dffs\(12),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][6]~q\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|cdr~0_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][1]~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|_~11_combout\);

-- Location: FF_X74_Y29_N21
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|dffs[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|_~11_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_shift_enable~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|dffs\(11));

-- Location: LCCOMB_X74_Y29_N10
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|_~10\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][1]~q\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][6]~q\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|cdr~0_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|dffs\(11),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|_~10_combout\);

-- Location: FF_X74_Y29_N11
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|dffs[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|_~10_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_shift_enable~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|dffs\(10));

-- Location: LCCOMB_X74_Y29_N8
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|_~9\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|dffs\(10),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][6]~q\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|cdr~0_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][1]~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|_~9_combout\);

-- Location: FF_X74_Y29_N9
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|dffs[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|_~9_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_shift_enable~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|dffs\(9));

-- Location: LCCOMB_X74_Y29_N14
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|_~8\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|dffs\(9),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][6]~q\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|cdr~0_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][1]~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|_~8_combout\);

-- Location: FF_X74_Y29_N15
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|dffs[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|_~8_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_shift_enable~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|dffs\(8));

-- Location: LCCOMB_X74_Y29_N28
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|_~7\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|dffs\(8),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][6]~q\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|cdr~0_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][1]~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|_~7_combout\);

-- Location: FF_X74_Y29_N29
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|dffs[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|_~7_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_shift_enable~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|dffs\(7));

-- Location: LCCOMB_X74_Y29_N18
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|_~6\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][1]~q\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][6]~q\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|cdr~0_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|dffs\(7),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|_~6_combout\);

-- Location: FF_X74_Y29_N19
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|dffs[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|_~6_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_shift_enable~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|dffs\(6));

-- Location: LCCOMB_X74_Y29_N16
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|_~5\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][1]~q\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][6]~q\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|cdr~0_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|dffs\(6),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|_~5_combout\);

-- Location: FF_X74_Y29_N17
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|dffs[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|_~5_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_shift_enable~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|dffs\(5));

-- Location: LCCOMB_X74_Y29_N6
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|_~4\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|current_segment_delayed\(0),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|dffs\(5),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|cdr~0_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_shift_enable~0_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|_~4_combout\);

-- Location: FF_X74_Y29_N7
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|dffs[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|_~4_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_shift_enable~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|dffs\(4));

-- Location: LCCOMB_X74_Y29_N12
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|_~3\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|dffs\(4),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][6]~q\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|cdr~0_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][1]~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|_~3_combout\);

-- Location: FF_X74_Y29_N13
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|dffs[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|_~3_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_shift_enable~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|dffs\(3));

-- Location: LCCOMB_X75_Y29_N18
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_load_on~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena[1]~reg0_q\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_shift_enable~0_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_load_on~0_combout\);

-- Location: LCCOMB_X75_Y30_N30
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_enable_delayed~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:done~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_enable_delayed~0_combout\);

-- Location: FF_X75_Y30_N31
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_enable_delayed\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_enable_delayed~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_enable_delayed~q\);

-- Location: LCCOMB_X75_Y29_N4
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|state_status[2]~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_enable_delayed~q\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:done~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|state_status[2]~0_combout\);

-- Location: LCCOMB_X75_Y29_N6
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|state_status[2]~1\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|state_status[2]~0_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|run~q\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:is_buffer_wrapped~q\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:collecting_post_data_var~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|state_status[2]~1_combout\);

-- Location: LCCOMB_X75_Y29_N28
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|_~2\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|dffs\(3),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_load_on~0_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|state_status[2]~1_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|_~2_combout\);

-- Location: FF_X75_Y29_N29
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|dffs[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|_~2_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_shift_enable~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|dffs\(2));

-- Location: LCCOMB_X75_Y29_N8
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|_~1\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|dffs\(2),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|state_status[2]~0_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|run~q\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_load_on~0_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|_~1_combout\);

-- Location: FF_X75_Y29_N9
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|dffs[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|_~1_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_shift_enable~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|dffs\(1));

-- Location: LCCOMB_X75_Y29_N16
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|_~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:collecting_post_data_var~q\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|dffs\(1),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|run~q\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_load_on~0_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|_~0_combout\);

-- Location: FF_X75_Y29_N17
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|dffs[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|_~0_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_shift_enable~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|dffs\(0));

-- Location: LCCOMB_X75_Y29_N2
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_internal~5\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|bypass_reg_out~q\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_shift_enable~0_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr_ena~0_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|dffs\(0),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_internal~5_combout\);

-- Location: LCCOMB_X75_Y30_N14
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|segment_shift_var~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal1~4_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter[5]~0_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|final_trigger_set~q\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal0~2_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|segment_shift_var~0_combout\);

-- Location: LCCOMB_X75_Y30_N8
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|is_buffer_wrapped_once_sig~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|collect_data~combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal1~4_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|final_trigger_set~q\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:done~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|is_buffer_wrapped_once_sig~0_combout\);

-- Location: LCCOMB_X75_Y30_N24
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|is_buffer_wrapped_once_sig~1\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|segment_shift_var~0_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|is_buffer_wrapped_once_sig~0_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|is_buffer_wrapped_once_sig~q\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|base_address~0_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|is_buffer_wrapped_once_sig~1_combout\);

-- Location: FF_X75_Y30_N25
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|is_buffer_wrapped_once_sig\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|is_buffer_wrapped_once_sig~1_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|is_buffer_wrapped_once_sig~q\);

-- Location: LCCOMB_X74_Y32_N12
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig[0]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|offset_count~0_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig[0]~feeder_combout\);

-- Location: LCCOMB_X75_Y29_N14
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig[0]~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|condition_delay_reg\(3),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|run~q\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:done~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig[0]~0_combout\);

-- Location: FF_X74_Y32_N13
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig[0]~feeder_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig\(0));

-- Location: LCCOMB_X76_Y32_N2
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sdr\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena[1]~reg0_q\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sdr~combout\);

-- Location: FF_X74_Y32_N17
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|offset_count~1_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig\(1));

-- Location: LCCOMB_X74_Y32_N0
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig[3]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|offset_count~3_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig[3]~feeder_combout\);

-- Location: FF_X74_Y32_N1
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig[3]~feeder_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig\(3));

-- Location: FF_X74_Y32_N29
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|offset_count~6_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig\(6));

-- Location: FF_X75_Y32_N5
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|offset_count~0_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|final_trigger_set~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[0]~q\);

-- Location: FF_X75_Y32_N31
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|offset_count~1_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|final_trigger_set~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[1]~q\);

-- Location: FF_X75_Y32_N9
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|offset_count~2_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|final_trigger_set~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[2]~q\);

-- Location: FF_X75_Y32_N3
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|offset_count~3_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|final_trigger_set~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[3]~q\);

-- Location: FF_X75_Y32_N13
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|offset_count~4_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|final_trigger_set~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[4]~q\);

-- Location: FF_X75_Y32_N15
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|offset_count~6_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|final_trigger_set~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[6]~q\);

-- Location: FF_X74_Y37_N1
\auto_signaltap_0|acq_data_in_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	asdata => S(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|acq_data_in_reg\(0));

-- Location: LCCOMB_X74_Y37_N28
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][0]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|acq_data_in_reg\(0),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][0]~feeder_combout\);

-- Location: FF_X74_Y37_N29
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][0]~q\);

-- Location: LCCOMB_X74_Y37_N16
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][0]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][0]~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][0]~feeder_combout\);

-- Location: FF_X74_Y37_N17
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][0]~q\);

-- Location: LCCOMB_X74_Y37_N20
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][0]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][0]~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][0]~feeder_combout\);

-- Location: FF_X74_Y37_N21
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][0]~q\);

-- Location: LCCOMB_X74_Y37_N24
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][0]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][0]~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][0]~feeder_combout\);

-- Location: FF_X74_Y37_N25
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][0]~q\);

-- Location: LCCOMB_X77_Y32_N10
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed[0]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[0]~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed[0]~feeder_combout\);

-- Location: FF_X77_Y32_N11
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed\(0));

-- Location: LCCOMB_X77_Y32_N12
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed[1]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[1]~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed[1]~feeder_combout\);

-- Location: FF_X77_Y32_N13
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed\(1));

-- Location: LCCOMB_X77_Y32_N6
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed[2]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[2]~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed[2]~feeder_combout\);

-- Location: FF_X77_Y32_N7
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed\(2));

-- Location: LCCOMB_X76_Y32_N4
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed[3]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[3]~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed[3]~feeder_combout\);

-- Location: FF_X76_Y32_N5
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed\(3));

-- Location: LCCOMB_X77_Y32_N0
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed[4]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[4]~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed[4]~feeder_combout\);

-- Location: FF_X77_Y32_N1
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed\(4));

-- Location: LCCOMB_X77_Y32_N26
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed[5]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[5]~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed[5]~feeder_combout\);

-- Location: FF_X77_Y32_N27
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed\(5));

-- Location: LCCOMB_X77_Y32_N20
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed[6]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[6]~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed[6]~feeder_combout\);

-- Location: FF_X77_Y32_N21
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed\(6));

-- Location: LCCOMB_X77_Y33_N14
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_reg_bit\(0),
	datad => VCC,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita0~combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X80_Y33_N0
\auto_signaltap_0|~GND\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_signaltap_0|~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \auto_signaltap_0|~GND~combout\);

-- Location: LCCOMB_X77_Y33_N2
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|acq_buf_read_reset\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~q\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr_ena~0_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][1]~q\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][4]~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|acq_buf_read_reset~combout\);

-- Location: LCCOMB_X76_Y33_N4
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_comb_bita0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_reg_bit\(0),
	datad => VCC,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_comb_bita0~combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X76_Y33_N6
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_comb_bita1\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_reg_bit\(1),
	datad => VCC,
	cin => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_comb_bita0~COUT\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_comb_bita1~combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_comb_bita1~COUT\);

-- Location: LCCOMB_X76_Y33_N8
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_comb_bita2\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_reg_bit\(2),
	datad => VCC,
	cin => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_comb_bita1~COUT\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_comb_bita2~combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_comb_bita2~COUT\);

-- Location: FF_X76_Y33_N9
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_comb_bita2~combout\,
	asdata => \auto_signaltap_0|~GND~combout\,
	sload => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_reg_bit[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_reg_bit\(2));

-- Location: LCCOMB_X76_Y33_N10
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_comb_bita3\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_reg_bit\(3),
	datad => VCC,
	cin => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_comb_bita2~COUT\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_comb_bita3~combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_comb_bita3~COUT\);

-- Location: FF_X76_Y33_N11
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_comb_bita3~combout\,
	asdata => \auto_signaltap_0|~GND~combout\,
	sload => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_reg_bit[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_reg_bit\(3));

-- Location: LCCOMB_X76_Y33_N12
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_comb_bita3~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_comb_bita3~COUT\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_comb_bita3~0_combout\);

-- Location: LCCOMB_X76_Y33_N16
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|Equal1~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_reg_bit\(1),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_reg_bit\(2),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_reg_bit\(0),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_reg_bit\(3),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|Equal1~0_combout\);

-- Location: LCCOMB_X76_Y33_N22
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_reg_bit[3]~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_comb_bita3~0_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sdr~combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][4]~q\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|Equal1~0_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_reg_bit[3]~0_combout\);

-- Location: FF_X76_Y33_N5
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_comb_bita0~combout\,
	asdata => \auto_signaltap_0|~GND~combout\,
	sload => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_reg_bit[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_reg_bit\(0));

-- Location: FF_X76_Y33_N7
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_comb_bita1~combout\,
	asdata => \auto_signaltap_0|~GND~combout\,
	sload => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_reg_bit[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_reg_bit\(1));

-- Location: LCCOMB_X76_Y33_N24
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|Equal0~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_reg_bit\(1),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_reg_bit\(2),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_reg_bit\(0),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_reg_bit\(3),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|Equal0~0_combout\);

-- Location: LCCOMB_X77_Y33_N8
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|acq_buf_read_reset~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~q\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][1]~q\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr_ena~0_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|acq_buf_read_reset~0_combout\);

-- Location: LCCOMB_X77_Y33_N28
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter_clk_ena\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][4]~q\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|Equal0~0_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|acq_buf_read_reset~0_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter_clk_ena~combout\);

-- Location: FF_X77_Y33_N15
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita0~combout\,
	asdata => \auto_signaltap_0|~GND~combout\,
	sload => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|acq_buf_read_reset~combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter_clk_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_reg_bit\(0));

-- Location: LCCOMB_X77_Y33_N16
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita1\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_reg_bit\(1),
	datad => VCC,
	cin => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita0~COUT\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita1~combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita1~COUT\);

-- Location: FF_X77_Y33_N17
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita1~combout\,
	asdata => \auto_signaltap_0|~GND~combout\,
	sload => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|acq_buf_read_reset~combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter_clk_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_reg_bit\(1));

-- Location: LCCOMB_X77_Y33_N18
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita2\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_reg_bit\(2),
	datad => VCC,
	cin => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita1~COUT\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita2~combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita2~COUT\);

-- Location: FF_X77_Y33_N19
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita2~combout\,
	asdata => \auto_signaltap_0|~GND~combout\,
	sload => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|acq_buf_read_reset~combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter_clk_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_reg_bit\(2));

-- Location: LCCOMB_X77_Y33_N20
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita3\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_reg_bit\(3),
	datad => VCC,
	cin => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita2~COUT\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita3~combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita3~COUT\);

-- Location: FF_X77_Y33_N21
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita3~combout\,
	asdata => \auto_signaltap_0|~GND~combout\,
	sload => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|acq_buf_read_reset~combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter_clk_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_reg_bit\(3));

-- Location: LCCOMB_X77_Y33_N22
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita4\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_reg_bit\(4),
	datad => VCC,
	cin => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita3~COUT\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita4~combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita4~COUT\);

-- Location: FF_X77_Y33_N23
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_reg_bit[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita4~combout\,
	asdata => \auto_signaltap_0|~GND~combout\,
	sload => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|acq_buf_read_reset~combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter_clk_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_reg_bit\(4));

-- Location: LCCOMB_X77_Y33_N24
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita5\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_reg_bit\(5),
	datad => VCC,
	cin => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita4~COUT\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita5~combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita5~COUT\);

-- Location: FF_X77_Y33_N25
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_reg_bit[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita5~combout\,
	asdata => \auto_signaltap_0|~GND~combout\,
	sload => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|acq_buf_read_reset~combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter_clk_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_reg_bit\(5));

-- Location: LCCOMB_X77_Y33_N26
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita6\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_reg_bit\(6),
	cin => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita5~COUT\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita6~combout\);

-- Location: FF_X77_Y33_N27
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_reg_bit[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita6~combout\,
	asdata => \auto_signaltap_0|~GND~combout\,
	sload => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|acq_buf_read_reset~combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter_clk_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_reg_bit\(6));

-- Location: LCCOMB_X74_Y37_N10
\auto_signaltap_0|acq_data_in_reg[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_signaltap_0|acq_data_in_reg[1]~feeder_combout\ = S(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => S(1),
	combout => \auto_signaltap_0|acq_data_in_reg[1]~feeder_combout\);

-- Location: FF_X74_Y37_N11
\auto_signaltap_0|acq_data_in_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	d => \auto_signaltap_0|acq_data_in_reg[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|acq_data_in_reg\(1));

-- Location: LCCOMB_X74_Y37_N22
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][1]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|acq_data_in_reg\(1),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][1]~feeder_combout\);

-- Location: FF_X74_Y37_N23
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][1]~q\);

-- Location: FF_X74_Y37_N27
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][1]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][1]~q\);

-- Location: FF_X74_Y37_N7
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][1]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][1]~q\);

-- Location: LCCOMB_X74_Y37_N18
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][1]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][1]~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][1]~feeder_combout\);

-- Location: FF_X74_Y37_N19
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][1]~q\);

-- Location: LCCOMB_X68_Y55_N14
\auto_signaltap_0|acq_data_in_reg[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_signaltap_0|acq_data_in_reg[2]~feeder_combout\ = S(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => S(2),
	combout => \auto_signaltap_0|acq_data_in_reg[2]~feeder_combout\);

-- Location: FF_X68_Y55_N15
\auto_signaltap_0|acq_data_in_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	d => \auto_signaltap_0|acq_data_in_reg[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|acq_data_in_reg\(2));

-- Location: FF_X68_Y55_N31
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	asdata => \auto_signaltap_0|acq_data_in_reg\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][2]~q\);

-- Location: FF_X68_Y55_N13
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][2]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][2]~q\);

-- Location: LCCOMB_X68_Y55_N18
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][2]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][2]~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][2]~feeder_combout\);

-- Location: FF_X68_Y55_N19
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][2]~q\);

-- Location: LCCOMB_X68_Y55_N0
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][2]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][2]~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][2]~feeder_combout\);

-- Location: FF_X68_Y55_N1
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][2]~q\);

-- Location: LCCOMB_X70_Y36_N6
\auto_signaltap_0|acq_data_in_reg[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_signaltap_0|acq_data_in_reg[3]~feeder_combout\ = \clk~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \clk~input_o\,
	combout => \auto_signaltap_0|acq_data_in_reg[3]~feeder_combout\);

-- Location: FF_X70_Y36_N7
\auto_signaltap_0|acq_data_in_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	d => \auto_signaltap_0|acq_data_in_reg[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|acq_data_in_reg\(3));

-- Location: LCCOMB_X70_Y36_N22
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][3]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|acq_data_in_reg\(3),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][3]~feeder_combout\);

-- Location: FF_X70_Y36_N23
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][3]~q\);

-- Location: LCCOMB_X77_Y36_N24
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][3]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][3]~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][3]~feeder_combout\);

-- Location: FF_X77_Y36_N25
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][3]~q\);

-- Location: LCCOMB_X77_Y36_N6
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][3]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][3]~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][3]~feeder_combout\);

-- Location: FF_X77_Y36_N7
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][3]~q\);

-- Location: LCCOMB_X77_Y36_N4
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][3]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][3]~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][3]~feeder_combout\);

-- Location: FF_X77_Y36_N5
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][3]~q\);

-- Location: LCCOMB_X69_Y56_N18
\auto_signaltap_0|acq_data_in_reg[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_signaltap_0|acq_data_in_reg[4]~feeder_combout\ = \color[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \color[0]~input_o\,
	combout => \auto_signaltap_0|acq_data_in_reg[4]~feeder_combout\);

-- Location: FF_X69_Y56_N19
\auto_signaltap_0|acq_data_in_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	d => \auto_signaltap_0|acq_data_in_reg[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|acq_data_in_reg\(4));

-- Location: LCCOMB_X69_Y56_N30
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][4]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|acq_data_in_reg\(4),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][4]~feeder_combout\);

-- Location: FF_X69_Y56_N31
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][4]~q\);

-- Location: FF_X69_Y56_N21
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][4]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][4]~q\);

-- Location: LCCOMB_X69_Y56_N16
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][4]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][4]~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][4]~feeder_combout\);

-- Location: FF_X69_Y56_N17
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][4]~q\);

-- Location: LCCOMB_X69_Y56_N28
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][4]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][4]~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][4]~feeder_combout\);

-- Location: FF_X69_Y56_N29
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][4]~q\);

-- Location: LCCOMB_X72_Y36_N28
\auto_signaltap_0|acq_data_in_reg[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_signaltap_0|acq_data_in_reg[5]~feeder_combout\ = \color[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \color[1]~input_o\,
	combout => \auto_signaltap_0|acq_data_in_reg[5]~feeder_combout\);

-- Location: FF_X72_Y36_N29
\auto_signaltap_0|acq_data_in_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	d => \auto_signaltap_0|acq_data_in_reg[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|acq_data_in_reg\(5));

-- Location: LCCOMB_X72_Y36_N20
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][5]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|acq_data_in_reg\(5),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][5]~feeder_combout\);

-- Location: FF_X72_Y36_N21
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][5]~q\);

-- Location: LCCOMB_X72_Y36_N24
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][5]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][5]~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][5]~feeder_combout\);

-- Location: FF_X72_Y36_N25
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][5]~q\);

-- Location: LCCOMB_X69_Y56_N10
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][5]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][5]~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][5]~feeder_combout\);

-- Location: FF_X69_Y56_N11
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][5]~q\);

-- Location: LCCOMB_X69_Y56_N14
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][5]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][5]~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][5]~feeder_combout\);

-- Location: FF_X69_Y56_N15
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][5]~q\);

-- Location: LCCOMB_X79_Y35_N0
\auto_signaltap_0|acq_data_in_reg[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_signaltap_0|acq_data_in_reg[6]~feeder_combout\ = \color[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \color[2]~input_o\,
	combout => \auto_signaltap_0|acq_data_in_reg[6]~feeder_combout\);

-- Location: FF_X79_Y35_N1
\auto_signaltap_0|acq_data_in_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	d => \auto_signaltap_0|acq_data_in_reg[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|acq_data_in_reg\(6));

-- Location: LCCOMB_X79_Y35_N24
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][6]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|acq_data_in_reg\(6),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][6]~feeder_combout\);

-- Location: FF_X79_Y35_N25
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][6]~q\);

-- Location: LCCOMB_X79_Y35_N6
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][6]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][6]~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][6]~feeder_combout\);

-- Location: FF_X79_Y35_N7
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][6]~q\);

-- Location: LCCOMB_X79_Y35_N12
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][6]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][6]~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][6]~feeder_combout\);

-- Location: FF_X79_Y35_N13
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][6]~q\);

-- Location: LCCOMB_X79_Y35_N26
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][6]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][6]~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][6]~feeder_combout\);

-- Location: FF_X79_Y35_N27
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][6]~q\);

-- Location: FF_X77_Y36_N17
\auto_signaltap_0|acq_data_in_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	asdata => \color[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|acq_data_in_reg\(7));

-- Location: LCCOMB_X77_Y36_N22
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][7]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|acq_data_in_reg\(7),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][7]~feeder_combout\);

-- Location: FF_X77_Y36_N23
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][7]~q\);

-- Location: FF_X77_Y36_N11
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][7]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][7]~q\);

-- Location: LCCOMB_X77_Y36_N30
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][7]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][7]~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][7]~feeder_combout\);

-- Location: FF_X77_Y36_N31
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][7]~q\);

-- Location: FF_X77_Y36_N27
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][7]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][7]~q\);

-- Location: LCCOMB_X77_Y36_N18
\auto_signaltap_0|acq_data_in_reg[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_signaltap_0|acq_data_in_reg[8]~feeder_combout\ = \rst~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rst~input_o\,
	combout => \auto_signaltap_0|acq_data_in_reg[8]~feeder_combout\);

-- Location: FF_X77_Y36_N19
\auto_signaltap_0|acq_data_in_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	d => \auto_signaltap_0|acq_data_in_reg[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|acq_data_in_reg\(8));

-- Location: LCCOMB_X77_Y36_N8
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][8]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|acq_data_in_reg\(8),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][8]~feeder_combout\);

-- Location: FF_X77_Y36_N9
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][8]~q\);

-- Location: FF_X77_Y36_N29
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][8]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][8]~q\);

-- Location: LCCOMB_X77_Y36_N0
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][8]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][8]~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][8]~feeder_combout\);

-- Location: FF_X77_Y36_N1
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][8]~q\);

-- Location: LCCOMB_X77_Y36_N20
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][8]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][8]~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][8]~feeder_combout\);

-- Location: FF_X77_Y36_N21
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][8]~q\);

-- Location: M9K_X78_Y33_N0
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "sld_signaltap:auto_signaltap_0|sld_signaltap_impl:sld_signaltap_body|sld_signaltap_implb:sld_signaltap_body|altsyncram:\stp_non_zero_ram_gen:stp_buffer_ram|altsyncram_ir14:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 7,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 127,
	port_a_logical_ram_depth => 128,
	port_a_logical_ram_width => 9,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 7,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 36,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 127,
	port_b_logical_ram_depth => 128,
	port_b_logical_ram_width => 9,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_enable_delayed~q\,
	portbre => VCC,
	clk0 => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	clk1 => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	ena0 => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_enable_delayed~q\,
	ena1 => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][4]~q\,
	portadatain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X76_Y33_N2
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_shift_load~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][4]~q\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sdr~combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|Equal1~0_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_shift_load~0_combout\);

-- Location: LCCOMB_X76_Y33_N26
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|_~8\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][4]~q\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sdr~combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a8\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|Equal1~0_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|_~8_combout\);

-- Location: FF_X76_Y33_N27
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|dffs[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|_~8_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|dffs\(8));

-- Location: LCCOMB_X79_Y33_N22
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|_~7\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|dffs\(8),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_shift_load~0_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a7\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|_~7_combout\);

-- Location: FF_X79_Y33_N23
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|dffs[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|_~7_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|dffs\(7));

-- Location: LCCOMB_X79_Y33_N4
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|_~6\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|dffs\(7),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a6\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_shift_load~0_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|_~6_combout\);

-- Location: FF_X79_Y33_N5
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|dffs[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|_~6_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|dffs\(6));

-- Location: LCCOMB_X79_Y33_N26
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|_~5\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a5\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|dffs\(6),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_shift_load~0_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|_~5_combout\);

-- Location: FF_X79_Y33_N27
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|dffs[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|_~5_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|dffs\(5));

-- Location: LCCOMB_X79_Y33_N24
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|_~4\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|dffs\(5),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a4\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_shift_load~0_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|_~4_combout\);

-- Location: FF_X79_Y33_N25
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|dffs[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|_~4_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|dffs\(4));

-- Location: LCCOMB_X79_Y33_N6
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|_~3\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a3\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_shift_load~0_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|dffs\(4),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|_~3_combout\);

-- Location: FF_X79_Y33_N7
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|dffs[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|_~3_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|dffs\(3));

-- Location: LCCOMB_X79_Y33_N12
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|_~2\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_shift_load~0_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a2\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|dffs\(3),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|_~2_combout\);

-- Location: FF_X79_Y33_N13
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|dffs[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|_~2_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|dffs\(2));

-- Location: LCCOMB_X79_Y33_N10
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|_~1\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_shift_load~0_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a1\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|dffs\(2),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|_~1_combout\);

-- Location: FF_X79_Y33_N11
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|dffs[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|_~1_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|dffs\(1));

-- Location: LCCOMB_X79_Y33_N8
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|_~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a0~portbdataout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_shift_load~0_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|dffs\(1),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|_~0_combout\);

-- Location: FF_X79_Y33_N9
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|dffs[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|_~0_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|dffs\(0));

-- Location: LCCOMB_X76_Y32_N22
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~14\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[6]~q\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sdr~combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|dffs\(0),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~14_combout\);

-- Location: FF_X76_Y32_N23
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~14_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs\(14));

-- Location: FF_X75_Y32_N7
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|offset_count~5_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|final_trigger_set~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[5]~q\);

-- Location: LCCOMB_X76_Y32_N26
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~13\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs\(14),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sdr~combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[5]~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~13_combout\);

-- Location: FF_X76_Y32_N27
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~13_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs\(13));

-- Location: LCCOMB_X76_Y32_N16
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~12\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[4]~q\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sdr~combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs\(13),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~12_combout\);

-- Location: FF_X76_Y32_N17
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~12_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs\(12));

-- Location: LCCOMB_X76_Y32_N6
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~11\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[3]~q\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sdr~combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs\(12),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~11_combout\);

-- Location: FF_X76_Y32_N7
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~11_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs\(11));

-- Location: LCCOMB_X76_Y32_N20
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~10\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[2]~q\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sdr~combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs\(11),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~10_combout\);

-- Location: FF_X76_Y32_N21
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~10_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs\(10));

-- Location: LCCOMB_X76_Y32_N8
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~9\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sdr~combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[1]~q\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs\(10),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~9_combout\);

-- Location: FF_X76_Y32_N9
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~9_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs\(9));

-- Location: LCCOMB_X76_Y32_N12
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~8\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sdr~combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[0]~q\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs\(9),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~8_combout\);

-- Location: FF_X76_Y32_N13
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~8_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs\(8));

-- Location: LCCOMB_X74_Y32_N26
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~7\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig\(6),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sdr~combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs\(8),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~7_combout\);

-- Location: FF_X74_Y32_N27
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~7_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs\(7));

-- Location: LCCOMB_X74_Y32_N24
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig[5]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|offset_count~5_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig[5]~feeder_combout\);

-- Location: FF_X74_Y32_N25
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig[5]~feeder_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig\(5));

-- Location: LCCOMB_X74_Y32_N30
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~6\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs\(7),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig\(5),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sdr~combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~6_combout\);

-- Location: FF_X74_Y32_N31
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~6_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs\(6));

-- Location: LCCOMB_X74_Y32_N20
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig[4]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|offset_count~4_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig[4]~feeder_combout\);

-- Location: FF_X74_Y32_N21
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig[4]~feeder_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig\(4));

-- Location: LCCOMB_X74_Y32_N18
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~5\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs\(6),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sdr~combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig\(4),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~5_combout\);

-- Location: FF_X74_Y32_N19
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~5_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs\(5));

-- Location: LCCOMB_X74_Y32_N22
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~4\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig\(3),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sdr~combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs\(5),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~4_combout\);

-- Location: FF_X74_Y32_N23
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~4_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs\(4));

-- Location: FF_X74_Y32_N5
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|offset_count~2_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig\(2));

-- Location: LCCOMB_X74_Y32_N10
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~3\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs\(4),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig\(2),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sdr~combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~3_combout\);

-- Location: FF_X74_Y32_N11
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~3_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs\(3));

-- Location: LCCOMB_X74_Y32_N6
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~2\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig\(1),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sdr~combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs\(3),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~2_combout\);

-- Location: FF_X74_Y32_N7
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~2_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs\(2));

-- Location: LCCOMB_X74_Y32_N8
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~1\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig\(0),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sdr~combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs\(2),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~1_combout\);

-- Location: FF_X74_Y32_N9
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~1_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs\(1));

-- Location: LCCOMB_X74_Y32_N2
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|is_buffer_wrapped_once_sig~q\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs\(1),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sdr~combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~0_combout\);

-- Location: FF_X74_Y30_N23
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~0_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs\(0));

-- Location: LCCOMB_X75_Y34_N20
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter~6\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter\(0),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter[0]~2_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter~6_combout\);

-- Location: LCCOMB_X75_Y34_N26
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter[0]~5\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr_ena~0_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter[0]~5_combout\);

-- Location: FF_X75_Y34_N21
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter~6_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|ALT_INV_word_counter[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter\(0));

-- Location: LCCOMB_X75_Y34_N0
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|Add0~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter\(0),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter\(1),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|Add0~0_combout\);

-- Location: LCCOMB_X75_Y34_N2
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter~8\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter[0]~3_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter\(0),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter\(2),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter\(1),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter~8_combout\);

-- Location: FF_X75_Y34_N3
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter~8_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|ALT_INV_word_counter[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter\(2));

-- Location: LCCOMB_X75_Y34_N10
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter~7\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter[0]~3_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|Add0~0_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter\(3),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter\(2),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter~7_combout\);

-- Location: FF_X75_Y34_N11
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter~7_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|ALT_INV_word_counter[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter\(3));

-- Location: LCCOMB_X75_Y34_N28
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter[0]~2\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter\(1),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter\(0),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter\(3),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter\(2),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter[0]~2_combout\);

-- Location: LCCOMB_X75_Y34_N12
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter[0]~3\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter[0]~2_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter[0]~3_combout\);

-- Location: LCCOMB_X75_Y34_N6
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter~4\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter[0]~3_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter\(1),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter\(0),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter~4_combout\);

-- Location: FF_X75_Y34_N7
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter~4_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|ALT_INV_word_counter[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter\(1));

-- Location: LCCOMB_X80_Y34_N24
\auto_signaltap_0|~VCC\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_signaltap_0|~VCC~combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \auto_signaltap_0|~VCC~combout\);

-- Location: LCCOMB_X79_Y34_N4
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR~6\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter\(1),
	datab => \auto_signaltap_0|~GND~combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter\(0),
	datad => \auto_signaltap_0|~GND~combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR~6_combout\);

-- Location: LCCOMB_X79_Y34_N14
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR~7\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter\(1),
	datab => \auto_signaltap_0|~VCC~combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR~6_combout\,
	datad => \auto_signaltap_0|~VCC~combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR~7_combout\);

-- Location: LCCOMB_X79_Y34_N24
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR~4\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter\(1),
	datab => \auto_signaltap_0|~GND~combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter\(0),
	datad => \auto_signaltap_0|~VCC~combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR~4_combout\);

-- Location: LCCOMB_X79_Y34_N18
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR~5\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter\(1),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR~4_combout\,
	datac => \auto_signaltap_0|~GND~combout\,
	datad => \auto_signaltap_0|~VCC~combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR~5_combout\);

-- Location: LCCOMB_X75_Y34_N22
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR[0]~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR~7_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter\(2),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR~5_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR[0]~0_combout\);

-- Location: LCCOMB_X79_Y34_N0
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR~12\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter\(1),
	datab => \auto_signaltap_0|~GND~combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter\(0),
	datad => \auto_signaltap_0|~VCC~combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR~12_combout\);

-- Location: LCCOMB_X79_Y34_N2
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR~13\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter\(1),
	datab => \auto_signaltap_0|~GND~combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR~12_combout\,
	datad => \auto_signaltap_0|~VCC~combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR~13_combout\);

-- Location: LCCOMB_X75_Y34_N24
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR~10\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter\(1),
	datab => \auto_signaltap_0|~GND~combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter\(0),
	datad => \auto_signaltap_0|~GND~combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR~10_combout\);

-- Location: LCCOMB_X75_Y34_N16
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR~11\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter\(0),
	datab => \auto_signaltap_0|~GND~combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR~10_combout\,
	datad => \auto_signaltap_0|~GND~combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR~11_combout\);

-- Location: LCCOMB_X75_Y34_N14
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR[1]~1\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR~13_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter\(2),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR~11_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR[1]~1_combout\);

-- Location: LCCOMB_X79_Y34_N8
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR~16\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter\(1),
	datab => \auto_signaltap_0|~VCC~combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter\(0),
	datad => \auto_signaltap_0|~VCC~combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR~16_combout\);

-- Location: LCCOMB_X79_Y34_N10
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR~17\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter\(1),
	datab => \auto_signaltap_0|~GND~combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR~16_combout\,
	datad => \auto_signaltap_0|~VCC~combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR~17_combout\);

-- Location: LCCOMB_X79_Y34_N20
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR~14\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter\(1),
	datab => \auto_signaltap_0|~GND~combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter\(0),
	datad => \auto_signaltap_0|~VCC~combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR~14_combout\);

-- Location: LCCOMB_X79_Y34_N22
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR~15\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR~14_combout\,
	datab => \auto_signaltap_0|~GND~combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter\(0),
	datad => \auto_signaltap_0|~VCC~combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR~15_combout\);

-- Location: LCCOMB_X75_Y34_N8
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR[2]~2\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR~17_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter\(2),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR~15_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR[2]~2_combout\);

-- Location: LCCOMB_X79_Y34_N16
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR~20\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter\(1),
	datab => \auto_signaltap_0|~VCC~combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter\(0),
	datad => \auto_signaltap_0|~VCC~combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR~20_combout\);

-- Location: LCCOMB_X79_Y34_N26
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR~21\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter\(1),
	datab => \auto_signaltap_0|~GND~combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR~20_combout\,
	datad => \auto_signaltap_0|~VCC~combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR~21_combout\);

-- Location: LCCOMB_X79_Y34_N28
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR~18\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter\(1),
	datab => \auto_signaltap_0|~GND~combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter\(0),
	datad => \auto_signaltap_0|~VCC~combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR~18_combout\);

-- Location: LCCOMB_X79_Y34_N6
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR~19\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR~18_combout\,
	datab => \auto_signaltap_0|~GND~combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter\(0),
	datad => \auto_signaltap_0|~VCC~combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR~19_combout\);

-- Location: LCCOMB_X75_Y34_N30
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR[3]~3\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR~21_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter\(2),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR~19_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR[3]~3_combout\);

-- Location: LCCOMB_X75_Y34_N4
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR[3]~8\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter\(3),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR[3]~8_combout\);

-- Location: LCCOMB_X75_Y34_N18
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR[3]~9\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr_ena~0_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR[3]~9_combout\);

-- Location: FF_X75_Y34_N31
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR[3]~3_combout\,
	asdata => \altera_internal_jtag~TDIUTAP\,
	sclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR[3]~8_combout\,
	sload => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR\(3));

-- Location: FF_X75_Y34_N9
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR[2]~2_combout\,
	asdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR\(3),
	sclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR[3]~8_combout\,
	sload => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR\(2));

-- Location: FF_X75_Y34_N15
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR[1]~1_combout\,
	asdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR\(2),
	sclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR[3]~8_combout\,
	sload => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR\(1));

-- Location: FF_X75_Y34_N23
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR[0]~0_combout\,
	asdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR\(1),
	sclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR[3]~8_combout\,
	sload => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR\(0));

-- Location: LCCOMB_X74_Y30_N22
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_internal~3\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][4]~q\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][5]~q\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs\(0),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR\(0),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_internal~3_combout\);

-- Location: LCCOMB_X74_Y30_N0
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][9]~q\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena[1]~reg0_q\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen~0_combout\);

-- Location: LCCOMB_X75_Y31_N22
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen:tdo_crc_calc|lfsr~13\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen~0_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_internal~7_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen:tdo_crc_calc|lfsr\(0),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen:tdo_crc_calc|lfsr~13_combout\);

-- Location: LCCOMB_X76_Y30_N0
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[0]~32\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg\(0),
	datad => VCC,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[0]~32_combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[0]~33\);

-- Location: LCCOMB_X74_Y30_N26
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|process_0~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][8]~q\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena[1]~reg0_q\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|process_0~0_combout\);

-- Location: LCCOMB_X76_Y32_N0
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|process_0~1\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena[1]~reg0_q\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][8]~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|process_0~1_combout\);

-- Location: LCCOMB_X77_Y30_N12
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|LessThan0~2\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg\(10),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg\(11),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg\(8),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg\(9),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|LessThan0~2_combout\);

-- Location: LCCOMB_X77_Y30_N24
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|LessThan0~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg\(0),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg\(3),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg\(2),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg\(1),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|LessThan0~0_combout\);

-- Location: LCCOMB_X77_Y30_N30
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|LessThan0~3\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg\(14),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg\(15),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg\(13),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg\(12),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|LessThan0~3_combout\);

-- Location: LCCOMB_X77_Y30_N10
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|LessThan0~1\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg\(6),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg\(4),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg\(7),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg\(5),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|LessThan0~1_combout\);

-- Location: LCCOMB_X77_Y30_N0
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|LessThan0~4\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|LessThan0~2_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|LessThan0~0_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|LessThan0~3_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|LessThan0~1_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|LessThan0~4_combout\);

-- Location: LCCOMB_X75_Y31_N24
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|process_0~2\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|LessThan0~9_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sdr~combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|LessThan0~4_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|process_0~2_combout\);

-- Location: LCCOMB_X75_Y31_N18
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[8]~34\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr_ena~0_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][8]~q\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|process_0~2_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[8]~34_combout\);

-- Location: FF_X76_Y30_N1
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[0]~32_combout\,
	asdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg\(1),
	sclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|process_0~0_combout\,
	sload => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|process_0~1_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_tdo_crc_len_reg[8]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg\(0));

-- Location: LCCOMB_X76_Y30_N2
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[1]~35\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg\(1),
	datad => VCC,
	cin => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[0]~33\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[1]~35_combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[1]~36\);

-- Location: FF_X76_Y30_N3
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[1]~35_combout\,
	asdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg\(2),
	sclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|process_0~0_combout\,
	sload => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|process_0~1_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_tdo_crc_len_reg[8]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg\(1));

-- Location: LCCOMB_X76_Y30_N4
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[2]~37\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg\(2),
	datad => VCC,
	cin => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[1]~36\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[2]~37_combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[2]~38\);

-- Location: FF_X76_Y30_N5
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[2]~37_combout\,
	asdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg\(3),
	sclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|process_0~0_combout\,
	sload => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|process_0~1_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_tdo_crc_len_reg[8]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg\(2));

-- Location: LCCOMB_X76_Y30_N6
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[3]~39\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg\(3),
	datad => VCC,
	cin => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[2]~38\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[3]~39_combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[3]~40\);

-- Location: FF_X76_Y30_N7
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[3]~39_combout\,
	asdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg\(4),
	sclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|process_0~0_combout\,
	sload => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|process_0~1_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_tdo_crc_len_reg[8]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg\(3));

-- Location: LCCOMB_X76_Y30_N8
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[4]~41\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg\(4),
	datad => VCC,
	cin => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[3]~40\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[4]~41_combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[4]~42\);

-- Location: FF_X76_Y30_N9
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[4]~41_combout\,
	asdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg\(5),
	sclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|process_0~0_combout\,
	sload => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|process_0~1_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_tdo_crc_len_reg[8]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg\(4));

-- Location: LCCOMB_X76_Y30_N10
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[5]~43\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg\(5),
	datad => VCC,
	cin => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[4]~42\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[5]~43_combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[5]~44\);

-- Location: FF_X76_Y30_N11
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[5]~43_combout\,
	asdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg\(6),
	sclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|process_0~0_combout\,
	sload => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|process_0~1_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_tdo_crc_len_reg[8]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg\(5));

-- Location: LCCOMB_X76_Y30_N12
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[6]~45\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg\(6),
	datad => VCC,
	cin => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[5]~44\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[6]~45_combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[6]~46\);

-- Location: FF_X76_Y30_N13
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[6]~45_combout\,
	asdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg\(7),
	sclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|process_0~0_combout\,
	sload => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|process_0~1_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_tdo_crc_len_reg[8]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg\(6));

-- Location: LCCOMB_X76_Y30_N14
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[7]~47\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg\(7),
	datad => VCC,
	cin => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[6]~46\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[7]~47_combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[7]~48\);

-- Location: FF_X76_Y30_N15
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[7]~47_combout\,
	asdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg\(8),
	sclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|process_0~0_combout\,
	sload => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|process_0~1_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_tdo_crc_len_reg[8]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg\(7));

-- Location: LCCOMB_X76_Y30_N16
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[8]~49\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg\(8),
	datad => VCC,
	cin => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[7]~48\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[8]~49_combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[8]~50\);

-- Location: FF_X76_Y30_N17
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[8]~49_combout\,
	asdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg\(9),
	sclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|process_0~0_combout\,
	sload => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|process_0~1_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_tdo_crc_len_reg[8]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg\(8));

-- Location: LCCOMB_X76_Y30_N18
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[9]~51\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg\(9),
	datad => VCC,
	cin => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[8]~50\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[9]~51_combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[9]~52\);

-- Location: FF_X76_Y30_N19
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[9]~51_combout\,
	asdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg\(10),
	sclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|process_0~0_combout\,
	sload => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|process_0~1_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_tdo_crc_len_reg[8]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg\(9));

-- Location: LCCOMB_X76_Y30_N20
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[10]~53\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg\(10),
	datad => VCC,
	cin => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[9]~52\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[10]~53_combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[10]~54\);

-- Location: FF_X76_Y30_N21
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[10]~53_combout\,
	asdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg\(11),
	sclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|process_0~0_combout\,
	sload => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|process_0~1_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_tdo_crc_len_reg[8]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg\(10));

-- Location: LCCOMB_X76_Y30_N22
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[11]~55\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg\(11),
	datad => VCC,
	cin => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[10]~54\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[11]~55_combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[11]~56\);

-- Location: FF_X76_Y30_N23
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[11]~55_combout\,
	asdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg\(12),
	sclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|process_0~0_combout\,
	sload => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|process_0~1_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_tdo_crc_len_reg[8]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg\(11));

-- Location: LCCOMB_X76_Y30_N24
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[12]~57\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg\(12),
	datad => VCC,
	cin => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[11]~56\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[12]~57_combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[12]~58\);

-- Location: FF_X76_Y30_N25
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[12]~57_combout\,
	asdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg\(13),
	sclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|process_0~0_combout\,
	sload => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|process_0~1_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_tdo_crc_len_reg[8]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg\(12));

-- Location: LCCOMB_X76_Y30_N26
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[13]~59\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg\(13),
	datad => VCC,
	cin => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[12]~58\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[13]~59_combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[13]~60\);

-- Location: FF_X76_Y30_N27
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[13]~59_combout\,
	asdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg\(14),
	sclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|process_0~0_combout\,
	sload => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|process_0~1_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_tdo_crc_len_reg[8]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg\(13));

-- Location: LCCOMB_X76_Y30_N28
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[14]~61\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg\(14),
	datad => VCC,
	cin => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[13]~60\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[14]~61_combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[14]~62\);

-- Location: FF_X76_Y30_N29
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[14]~61_combout\,
	asdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg\(15),
	sclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|process_0~0_combout\,
	sload => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|process_0~1_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_tdo_crc_len_reg[8]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg\(14));

-- Location: LCCOMB_X76_Y30_N30
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[15]~63\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg\(15),
	datad => VCC,
	cin => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[14]~62\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[15]~63_combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[15]~64\);

-- Location: FF_X76_Y30_N31
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[15]~63_combout\,
	asdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg\(16),
	sclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|process_0~0_combout\,
	sload => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|process_0~1_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_tdo_crc_len_reg[8]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg\(15));

-- Location: LCCOMB_X76_Y29_N0
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[16]~65\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg\(16),
	datad => VCC,
	cin => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[15]~64\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[16]~65_combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[16]~66\);

-- Location: FF_X76_Y29_N1
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[16]~65_combout\,
	asdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg\(17),
	sclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|process_0~0_combout\,
	sload => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|process_0~1_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_tdo_crc_len_reg[8]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg\(16));

-- Location: LCCOMB_X76_Y29_N2
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[17]~67\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg\(17),
	datad => VCC,
	cin => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[16]~66\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[17]~67_combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[17]~68\);

-- Location: FF_X76_Y29_N3
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[17]~67_combout\,
	asdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg\(18),
	sclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|process_0~0_combout\,
	sload => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|process_0~1_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_tdo_crc_len_reg[8]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg\(17));

-- Location: LCCOMB_X76_Y29_N4
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[18]~69\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg\(18),
	datad => VCC,
	cin => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[17]~68\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[18]~69_combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[18]~70\);

-- Location: FF_X76_Y29_N5
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[18]~69_combout\,
	asdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg\(19),
	sclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|process_0~0_combout\,
	sload => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|process_0~1_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_tdo_crc_len_reg[8]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg\(18));

-- Location: LCCOMB_X76_Y29_N6
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[19]~71\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg\(19),
	datad => VCC,
	cin => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[18]~70\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[19]~71_combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[19]~72\);

-- Location: FF_X76_Y29_N7
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[19]~71_combout\,
	asdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg\(20),
	sclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|process_0~0_combout\,
	sload => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|process_0~1_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_tdo_crc_len_reg[8]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg\(19));

-- Location: LCCOMB_X76_Y29_N8
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[20]~73\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg\(20),
	datad => VCC,
	cin => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[19]~72\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[20]~73_combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[20]~74\);

-- Location: FF_X76_Y29_N9
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[20]~73_combout\,
	asdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg\(21),
	sclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|process_0~0_combout\,
	sload => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|process_0~1_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_tdo_crc_len_reg[8]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg\(20));

-- Location: LCCOMB_X76_Y29_N10
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[21]~75\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg\(21),
	datad => VCC,
	cin => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[20]~74\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[21]~75_combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[21]~76\);

-- Location: FF_X76_Y29_N11
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[21]~75_combout\,
	asdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg\(22),
	sclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|process_0~0_combout\,
	sload => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|process_0~1_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_tdo_crc_len_reg[8]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg\(21));

-- Location: LCCOMB_X76_Y29_N12
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[22]~77\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg\(22),
	datad => VCC,
	cin => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[21]~76\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[22]~77_combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[22]~78\);

-- Location: FF_X76_Y29_N13
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[22]~77_combout\,
	asdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg\(23),
	sclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|process_0~0_combout\,
	sload => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|process_0~1_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_tdo_crc_len_reg[8]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg\(22));

-- Location: LCCOMB_X76_Y29_N14
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[23]~79\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg\(23),
	datad => VCC,
	cin => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[22]~78\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[23]~79_combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[23]~80\);

-- Location: FF_X76_Y29_N15
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[23]~79_combout\,
	asdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg\(24),
	sclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|process_0~0_combout\,
	sload => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|process_0~1_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_tdo_crc_len_reg[8]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg\(23));

-- Location: LCCOMB_X76_Y29_N16
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[24]~81\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg\(24),
	datad => VCC,
	cin => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[23]~80\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[24]~81_combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[24]~82\);

-- Location: FF_X76_Y29_N17
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[24]~81_combout\,
	asdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg\(25),
	sclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|process_0~0_combout\,
	sload => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|process_0~1_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_tdo_crc_len_reg[8]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg\(24));

-- Location: LCCOMB_X76_Y29_N18
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[25]~83\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg\(25),
	datad => VCC,
	cin => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[24]~82\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[25]~83_combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[25]~84\);

-- Location: FF_X76_Y29_N19
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[25]~83_combout\,
	asdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg\(26),
	sclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|process_0~0_combout\,
	sload => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|process_0~1_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_tdo_crc_len_reg[8]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg\(25));

-- Location: LCCOMB_X76_Y29_N20
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[26]~85\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg\(26),
	datad => VCC,
	cin => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[25]~84\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[26]~85_combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[26]~86\);

-- Location: FF_X76_Y29_N21
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[26]~85_combout\,
	asdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg\(27),
	sclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|process_0~0_combout\,
	sload => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|process_0~1_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_tdo_crc_len_reg[8]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg\(26));

-- Location: LCCOMB_X76_Y29_N22
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[27]~87\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg\(27),
	datad => VCC,
	cin => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[26]~86\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[27]~87_combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[27]~88\);

-- Location: FF_X76_Y29_N23
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[27]~87_combout\,
	asdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg\(28),
	sclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|process_0~0_combout\,
	sload => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|process_0~1_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_tdo_crc_len_reg[8]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg\(27));

-- Location: LCCOMB_X76_Y29_N24
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[28]~89\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg\(28),
	datad => VCC,
	cin => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[27]~88\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[28]~89_combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[28]~90\);

-- Location: FF_X76_Y29_N25
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[28]~89_combout\,
	asdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg\(29),
	sclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|process_0~0_combout\,
	sload => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|process_0~1_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_tdo_crc_len_reg[8]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg\(28));

-- Location: LCCOMB_X76_Y29_N26
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[29]~91\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg\(29),
	datad => VCC,
	cin => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[28]~90\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[29]~91_combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[29]~92\);

-- Location: FF_X76_Y29_N27
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[29]~91_combout\,
	asdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg\(30),
	sclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|process_0~0_combout\,
	sload => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|process_0~1_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_tdo_crc_len_reg[8]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg\(29));

-- Location: LCCOMB_X76_Y29_N28
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[30]~93\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg\(30),
	datad => VCC,
	cin => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[29]~92\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[30]~93_combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[30]~94\);

-- Location: LCCOMB_X76_Y29_N30
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[31]~95\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg\(31),
	cin => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[30]~94\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[31]~95_combout\);

-- Location: FF_X76_Y29_N31
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[31]~95_combout\,
	asdata => \altera_internal_jtag~TDIUTAP\,
	sclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|process_0~0_combout\,
	sload => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|process_0~1_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_tdo_crc_len_reg[8]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg\(31));

-- Location: FF_X76_Y29_N29
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg[30]~93_combout\,
	asdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg\(31),
	sclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|process_0~0_combout\,
	sload => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|process_0~1_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_tdo_crc_len_reg[8]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg\(30));

-- Location: LCCOMB_X77_Y29_N6
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|LessThan0~8\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg\(30),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg\(31),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg\(29),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg\(28),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|LessThan0~8_combout\);

-- Location: LCCOMB_X77_Y29_N24
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|LessThan0~5\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg\(16),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg\(18),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg\(19),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg\(17),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|LessThan0~5_combout\);

-- Location: LCCOMB_X77_Y29_N26
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|LessThan0~6\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg\(21),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg\(20),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg\(23),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg\(22),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|LessThan0~6_combout\);

-- Location: LCCOMB_X77_Y29_N12
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|LessThan0~7\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg\(26),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg\(27),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg\(24),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg\(25),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|LessThan0~7_combout\);

-- Location: LCCOMB_X77_Y29_N8
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|LessThan0~9\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|LessThan0~8_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|LessThan0~5_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|LessThan0~6_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|LessThan0~7_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|LessThan0~9_combout\);

-- Location: LCCOMB_X75_Y31_N28
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen:tdo_crc_calc|lfsr[12]~1\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|LessThan0~9_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sdr~combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen~0_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|LessThan0~4_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen:tdo_crc_calc|lfsr[12]~1_combout\);

-- Location: FF_X75_Y31_N23
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen:tdo_crc_calc|lfsr[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen:tdo_crc_calc|lfsr~13_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen:tdo_crc_calc|ALT_INV_lfsr[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen:tdo_crc_calc|lfsr\(12));

-- Location: LCCOMB_X74_Y31_N30
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen:tdo_crc_calc|lfsr~12\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen~0_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen:tdo_crc_calc|lfsr\(12),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen:tdo_crc_calc|lfsr~12_combout\);

-- Location: FF_X74_Y31_N31
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen:tdo_crc_calc|lfsr[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen:tdo_crc_calc|lfsr~12_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen:tdo_crc_calc|ALT_INV_lfsr[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen:tdo_crc_calc|lfsr\(11));

-- Location: LCCOMB_X74_Y31_N10
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen:tdo_crc_calc|lfsr~11\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen~0_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen:tdo_crc_calc|lfsr\(11),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen:tdo_crc_calc|lfsr~11_combout\);

-- Location: FF_X74_Y31_N11
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen:tdo_crc_calc|lfsr[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen:tdo_crc_calc|lfsr~11_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen:tdo_crc_calc|ALT_INV_lfsr[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen:tdo_crc_calc|lfsr\(10));

-- Location: LCCOMB_X74_Y31_N22
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen:tdo_crc_calc|lfsr~10\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen~0_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen:tdo_crc_calc|lfsr\(10),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen:tdo_crc_calc|lfsr~10_combout\);

-- Location: FF_X74_Y31_N23
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen:tdo_crc_calc|lfsr[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen:tdo_crc_calc|lfsr~10_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen:tdo_crc_calc|ALT_INV_lfsr[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen:tdo_crc_calc|lfsr\(9));

-- Location: LCCOMB_X74_Y31_N18
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen:tdo_crc_calc|lfsr~9\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen~0_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen:tdo_crc_calc|lfsr\(9),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen:tdo_crc_calc|lfsr~9_combout\);

-- Location: FF_X74_Y31_N19
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen:tdo_crc_calc|lfsr[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen:tdo_crc_calc|lfsr~9_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen:tdo_crc_calc|ALT_INV_lfsr[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen:tdo_crc_calc|lfsr\(8));

-- Location: LCCOMB_X74_Y31_N6
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen:tdo_crc_calc|lfsr~8\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen~0_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen:tdo_crc_calc|lfsr\(8),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen:tdo_crc_calc|lfsr~8_combout\);

-- Location: FF_X74_Y31_N7
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen:tdo_crc_calc|lfsr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen:tdo_crc_calc|lfsr~8_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen:tdo_crc_calc|ALT_INV_lfsr[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen:tdo_crc_calc|lfsr\(7));

-- Location: LCCOMB_X74_Y31_N2
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen:tdo_crc_calc|lfsr~7\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen~0_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen:tdo_crc_calc|lfsr\(7),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen:tdo_crc_calc|lfsr~7_combout\);

-- Location: FF_X74_Y31_N3
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen:tdo_crc_calc|lfsr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen:tdo_crc_calc|lfsr~7_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen:tdo_crc_calc|ALT_INV_lfsr[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen:tdo_crc_calc|lfsr\(6));

-- Location: LCCOMB_X75_Y31_N20
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen:tdo_crc_calc|lfsr~6\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen~0_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_internal~7_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen:tdo_crc_calc|lfsr\(0),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen:tdo_crc_calc|lfsr\(6),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen:tdo_crc_calc|lfsr~6_combout\);

-- Location: FF_X75_Y31_N21
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen:tdo_crc_calc|lfsr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen:tdo_crc_calc|lfsr~6_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen:tdo_crc_calc|ALT_INV_lfsr[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen:tdo_crc_calc|lfsr\(5));

-- Location: LCCOMB_X75_Y31_N0
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen:tdo_crc_calc|lfsr~5\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen~0_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen:tdo_crc_calc|lfsr\(5),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen:tdo_crc_calc|lfsr~5_combout\);

-- Location: FF_X75_Y31_N1
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen:tdo_crc_calc|lfsr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen:tdo_crc_calc|lfsr~5_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen:tdo_crc_calc|ALT_INV_lfsr[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen:tdo_crc_calc|lfsr\(4));

-- Location: LCCOMB_X75_Y31_N12
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen:tdo_crc_calc|lfsr~4\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen~0_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen:tdo_crc_calc|lfsr\(4),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen:tdo_crc_calc|lfsr~4_combout\);

-- Location: FF_X75_Y31_N13
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen:tdo_crc_calc|lfsr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen:tdo_crc_calc|lfsr~4_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen:tdo_crc_calc|ALT_INV_lfsr[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen:tdo_crc_calc|lfsr\(3));

-- Location: LCCOMB_X75_Y31_N8
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen:tdo_crc_calc|lfsr~3\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen~0_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen:tdo_crc_calc|lfsr\(3),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen:tdo_crc_calc|lfsr~3_combout\);

-- Location: FF_X75_Y31_N9
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen:tdo_crc_calc|lfsr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen:tdo_crc_calc|lfsr~3_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen:tdo_crc_calc|ALT_INV_lfsr[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen:tdo_crc_calc|lfsr\(2));

-- Location: LCCOMB_X75_Y31_N10
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen:tdo_crc_calc|lfsr~2\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen:tdo_crc_calc|lfsr\(2),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen~0_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen:tdo_crc_calc|lfsr~2_combout\);

-- Location: FF_X75_Y31_N11
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen:tdo_crc_calc|lfsr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen:tdo_crc_calc|lfsr~2_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen:tdo_crc_calc|ALT_INV_lfsr[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen:tdo_crc_calc|lfsr\(1));

-- Location: LCCOMB_X75_Y31_N4
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen:tdo_crc_calc|lfsr~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen~0_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_internal~7_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen:tdo_crc_calc|lfsr\(0),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen:tdo_crc_calc|lfsr\(1),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen:tdo_crc_calc|lfsr~0_combout\);

-- Location: FF_X75_Y31_N5
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen:tdo_crc_calc|lfsr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen:tdo_crc_calc|lfsr~0_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen:tdo_crc_calc|ALT_INV_lfsr[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen:tdo_crc_calc|lfsr\(0));

-- Location: LCCOMB_X74_Y30_N6
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_val_shift_reg~16\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	datab => \altera_internal_jtag~TDIUTAP\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena[1]~reg0_q\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_val_shift_reg~16_combout\);

-- Location: LCCOMB_X74_Y30_N14
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_val_shift_reg[0]~1\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][9]~q\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr_ena~0_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_val_shift_reg[0]~1_combout\);

-- Location: FF_X74_Y30_N7
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_val_shift_reg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_val_shift_reg~16_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_val_shift_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_val_shift_reg\(15));

-- Location: LCCOMB_X74_Y30_N28
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_val_shift_reg~15\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_val_shift_reg\(15),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena[1]~reg0_q\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_val_shift_reg~15_combout\);

-- Location: FF_X74_Y30_N29
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_val_shift_reg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_val_shift_reg~15_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_val_shift_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_val_shift_reg\(14));

-- Location: LCCOMB_X74_Y30_N2
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_val_shift_reg~14\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena[1]~reg0_q\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_val_shift_reg\(14),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_val_shift_reg~14_combout\);

-- Location: FF_X74_Y30_N3
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_val_shift_reg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_val_shift_reg~14_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_val_shift_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_val_shift_reg\(13));

-- Location: LCCOMB_X74_Y31_N0
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_val_shift_reg~13\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_val_shift_reg\(13),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|cdr~0_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen:tdo_crc_calc|lfsr\(12),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_val_shift_reg~13_combout\);

-- Location: FF_X74_Y31_N1
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_val_shift_reg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_val_shift_reg~13_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_val_shift_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_val_shift_reg\(12));

-- Location: LCCOMB_X74_Y31_N28
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_val_shift_reg~12\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen:tdo_crc_calc|lfsr\(11),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_val_shift_reg\(12),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|cdr~0_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_val_shift_reg~12_combout\);

-- Location: FF_X74_Y31_N29
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_val_shift_reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_val_shift_reg~12_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_val_shift_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_val_shift_reg\(11));

-- Location: LCCOMB_X74_Y31_N16
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_val_shift_reg~11\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen:tdo_crc_calc|lfsr\(10),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_val_shift_reg\(11),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|cdr~0_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_val_shift_reg~11_combout\);

-- Location: FF_X74_Y31_N17
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_val_shift_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_val_shift_reg~11_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_val_shift_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_val_shift_reg\(10));

-- Location: LCCOMB_X74_Y31_N12
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_val_shift_reg~10\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen:tdo_crc_calc|lfsr\(9),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_val_shift_reg\(10),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|cdr~0_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_val_shift_reg~10_combout\);

-- Location: FF_X74_Y31_N13
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_val_shift_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_val_shift_reg~10_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_val_shift_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_val_shift_reg\(9));

-- Location: LCCOMB_X74_Y31_N24
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_val_shift_reg~9\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_val_shift_reg\(9),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen:tdo_crc_calc|lfsr\(8),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|cdr~0_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_val_shift_reg~9_combout\);

-- Location: FF_X74_Y31_N25
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_val_shift_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_val_shift_reg~9_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_val_shift_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_val_shift_reg\(8));

-- Location: LCCOMB_X74_Y31_N20
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_val_shift_reg~8\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen:tdo_crc_calc|lfsr\(7),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_val_shift_reg\(8),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|cdr~0_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_val_shift_reg~8_combout\);

-- Location: FF_X74_Y31_N21
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_val_shift_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_val_shift_reg~8_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_val_shift_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_val_shift_reg\(7));

-- Location: LCCOMB_X74_Y31_N8
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_val_shift_reg~7\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_val_shift_reg\(7),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|cdr~0_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen:tdo_crc_calc|lfsr\(6),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_val_shift_reg~7_combout\);

-- Location: FF_X74_Y31_N9
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_val_shift_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_val_shift_reg~7_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_val_shift_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_val_shift_reg\(6));

-- Location: LCCOMB_X75_Y31_N26
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_val_shift_reg~6\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_val_shift_reg\(6),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen:tdo_crc_calc|lfsr\(5),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|cdr~0_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_val_shift_reg~6_combout\);

-- Location: FF_X75_Y31_N27
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_val_shift_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_val_shift_reg~6_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_val_shift_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_val_shift_reg\(5));

-- Location: LCCOMB_X75_Y31_N30
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_val_shift_reg~5\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|cdr~0_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_val_shift_reg\(5),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen:tdo_crc_calc|lfsr\(4),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_val_shift_reg~5_combout\);

-- Location: FF_X75_Y31_N31
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_val_shift_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_val_shift_reg~5_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_val_shift_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_val_shift_reg\(4));

-- Location: LCCOMB_X75_Y31_N2
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_val_shift_reg~4\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|cdr~0_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_val_shift_reg\(4),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen:tdo_crc_calc|lfsr\(3),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_val_shift_reg~4_combout\);

-- Location: FF_X75_Y31_N3
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_val_shift_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_val_shift_reg~4_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_val_shift_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_val_shift_reg\(3));

-- Location: LCCOMB_X75_Y31_N14
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_val_shift_reg~3\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|cdr~0_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_val_shift_reg\(3),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen:tdo_crc_calc|lfsr\(2),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_val_shift_reg~3_combout\);

-- Location: FF_X75_Y31_N15
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_val_shift_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_val_shift_reg~3_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_val_shift_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_val_shift_reg\(2));

-- Location: LCCOMB_X75_Y31_N6
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_val_shift_reg~2\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|cdr~0_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_val_shift_reg\(2),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen:tdo_crc_calc|lfsr\(1),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_val_shift_reg~2_combout\);

-- Location: FF_X75_Y31_N7
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_val_shift_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_val_shift_reg~2_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_val_shift_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_val_shift_reg\(1));

-- Location: LCCOMB_X75_Y31_N16
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_val_shift_reg~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|cdr~0_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_gen:tdo_crc_calc|lfsr\(0),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_val_shift_reg\(1),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_val_shift_reg~0_combout\);

-- Location: FF_X74_Y30_N9
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_val_shift_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_val_shift_reg~0_combout\,
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_val_shift_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_val_shift_reg\(0));

-- Location: LCCOMB_X74_Y30_N12
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_internal~2\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][8]~q\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][3]~q\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][7]~q\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][9]~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_internal~2_combout\);

-- Location: LCCOMB_X74_Y30_N8
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_internal~4\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_internal~3_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][9]~q\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_val_shift_reg\(0),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_internal~2_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_internal~4_combout\);

-- Location: LCCOMB_X74_Y30_N30
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_internal~6\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][4]~q\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][5]~q\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_internal~2_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_internal~6_combout\);

-- Location: LCCOMB_X75_Y33_N6
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_comb_bita0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_reg_bit\(0),
	datad => VCC,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_comb_bita0~combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X75_Y33_N12
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_comb_bita3\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_reg_bit\(3),
	datad => VCC,
	cin => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_comb_bita2~COUT\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_comb_bita3~combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_comb_bita3~COUT\);

-- Location: LCCOMB_X75_Y33_N14
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_comb_bita3~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_comb_bita3~COUT\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_comb_bita3~0_combout\);

-- Location: LCCOMB_X75_Y33_N28
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_reg_bit[3]~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][7]~q\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sdr~combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_comb_bita3~0_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|Equal3~0_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_reg_bit[3]~0_combout\);

-- Location: FF_X75_Y33_N7
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_comb_bita0~combout\,
	asdata => \auto_signaltap_0|~GND~combout\,
	sload => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_reg_bit[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_reg_bit\(0));

-- Location: LCCOMB_X75_Y33_N8
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_comb_bita1\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_reg_bit\(1),
	datad => VCC,
	cin => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_comb_bita0~COUT\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_comb_bita1~combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_comb_bita1~COUT\);

-- Location: FF_X75_Y33_N9
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_comb_bita1~combout\,
	asdata => \auto_signaltap_0|~GND~combout\,
	sload => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_reg_bit[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_reg_bit\(1));

-- Location: LCCOMB_X75_Y33_N10
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_comb_bita2\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_reg_bit\(2),
	datad => VCC,
	cin => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_comb_bita1~COUT\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_comb_bita2~combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_comb_bita2~COUT\);

-- Location: FF_X75_Y33_N11
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_comb_bita2~combout\,
	asdata => \auto_signaltap_0|~GND~combout\,
	sload => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_reg_bit[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_reg_bit\(2));

-- Location: FF_X75_Y33_N13
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_comb_bita3~combout\,
	asdata => \auto_signaltap_0|~GND~combout\,
	sload => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_reg_bit[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_reg_bit\(3));

-- Location: LCCOMB_X75_Y33_N0
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|Equal3~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_reg_bit\(3),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_reg_bit\(2),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_reg_bit\(1),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_reg_bit\(0),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|Equal3~0_combout\);

-- Location: LCCOMB_X75_Y33_N18
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_ram_shift_load~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][7]~q\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sdr~combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|Equal3~0_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_ram_shift_load~0_combout\);

-- Location: FF_X76_Y32_N29
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[0]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed\(0));

-- Location: LCCOMB_X77_Y31_N4
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][1]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed\(0),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][1]~feeder_combout\);

-- Location: FF_X75_Y30_N15
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:segment_shift_var\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|segment_shift_var~0_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|collect_data~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:segment_shift_var~q\);

-- Location: LCCOMB_X75_Y30_N20
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[1]~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][2]~q\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_enable_delayed~q\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:segment_shift_var~q\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|current_segment_delayed\(0),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[1]~0_combout\);

-- Location: FF_X77_Y31_N5
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][1]~feeder_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][1]~q\);

-- Location: LCCOMB_X74_Y33_N14
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_read_pointer_counter|auto_generated|counter_comb_bita0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_read_pointer_counter|auto_generated|counter_reg_bit\(0),
	datad => VCC,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_read_pointer_counter|auto_generated|counter_comb_bita0~combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_read_pointer_counter|auto_generated|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X74_Y33_N16
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_read_pointer_counter|auto_generated|counter_comb_bita0~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_read_pointer_counter|auto_generated|counter_comb_bita0~COUT\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_read_pointer_counter|auto_generated|counter_comb_bita0~0_combout\);

-- Location: LCCOMB_X74_Y33_N8
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_read_pointer_counter|auto_generated|counter_reg_bit[0]~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|acq_buf_read_reset~0_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][7]~q\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_read_pointer_counter|auto_generated|counter_reg_bit\(0),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_read_pointer_counter|auto_generated|counter_comb_bita0~0_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_read_pointer_counter|auto_generated|counter_reg_bit[0]~0_combout\);

-- Location: LCCOMB_X75_Y33_N24
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|Equal2~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_reg_bit\(3),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_reg_bit\(2),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_reg_bit\(1),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_reg_bit\(0),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|Equal2~0_combout\);

-- Location: FF_X74_Y33_N15
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_read_pointer_counter|auto_generated|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_read_pointer_counter|auto_generated|counter_comb_bita0~combout\,
	asdata => \auto_signaltap_0|~GND~combout\,
	sload => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_read_pointer_counter|auto_generated|counter_reg_bit[0]~0_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_read_pointer_counter|auto_generated|counter_reg_bit\(0));

-- Location: FF_X76_Y31_N19
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xraddr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_read_pointer_counter|auto_generated|counter_reg_bit\(0),
	sload => VCC,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][7]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xraddr\(0));

-- Location: LCCOMB_X77_Y31_N22
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][1]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed\(0),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][1]~feeder_combout\);

-- Location: LCCOMB_X75_Y30_N10
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[0]~1\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][2]~q\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:segment_shift_var~q\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|current_segment_delayed\(0),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_enable_delayed~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[0]~1_combout\);

-- Location: FF_X77_Y31_N23
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][1]~feeder_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][1]~q\);

-- Location: LCCOMB_X76_Y31_N16
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[1]~1\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][1]~q\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xraddr\(0),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][1]~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[1]~1_combout\);

-- Location: FF_X76_Y31_N17
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[1]~1_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][7]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq\(1));

-- Location: FF_X77_Y32_N9
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[1]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed\(1));

-- Location: FF_X77_Y31_N1
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed\(1),
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][2]~q\);

-- Location: FF_X77_Y31_N27
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed\(1),
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][2]~q\);

-- Location: LCCOMB_X76_Y31_N22
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[2]~2\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xraddr\(0),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][2]~q\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][2]~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[2]~2_combout\);

-- Location: FF_X76_Y31_N23
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[2]~2_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][7]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq\(2));

-- Location: LCCOMB_X76_Y32_N30
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed[2]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[2]~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed[2]~feeder_combout\);

-- Location: FF_X76_Y32_N31
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed\(2));

-- Location: LCCOMB_X77_Y31_N6
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][3]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed\(2),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][3]~feeder_combout\);

-- Location: FF_X77_Y31_N7
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][3]~feeder_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][3]~q\);

-- Location: LCCOMB_X77_Y31_N12
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][3]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed\(2),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][3]~feeder_combout\);

-- Location: FF_X77_Y31_N13
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][3]~feeder_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][3]~q\);

-- Location: LCCOMB_X76_Y31_N26
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[3]~3\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][3]~q\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xraddr\(0),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][3]~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[3]~3_combout\);

-- Location: FF_X76_Y31_N27
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[3]~3_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][7]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq\(3));

-- Location: LCCOMB_X76_Y32_N10
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed[4]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[4]~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed[4]~feeder_combout\);

-- Location: FF_X76_Y32_N11
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed\(4));

-- Location: FF_X77_Y31_N21
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed\(4),
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][5]~q\);

-- Location: FF_X77_Y31_N31
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed\(4),
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][5]~q\);

-- Location: LCCOMB_X76_Y31_N2
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[5]~5\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][5]~q\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xraddr\(0),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][5]~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[5]~5_combout\);

-- Location: FF_X76_Y31_N3
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[5]~5_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][7]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq\(5));

-- Location: FF_X76_Y32_N15
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[5]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed\(5));

-- Location: FF_X77_Y31_N3
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed\(5),
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][6]~q\);

-- Location: FF_X77_Y31_N17
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed\(5),
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][6]~q\);

-- Location: LCCOMB_X76_Y31_N28
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[6]~6\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][6]~q\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xraddr\(0),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][6]~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[6]~6_combout\);

-- Location: FF_X76_Y31_N29
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[6]~6_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][7]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq\(6));

-- Location: LCCOMB_X77_Y34_N18
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][9]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed\(1),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][9]~feeder_combout\);

-- Location: FF_X77_Y34_N19
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][9]~feeder_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][9]~q\);

-- Location: LCCOMB_X77_Y34_N0
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][9]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed\(1),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][9]~feeder_combout\);

-- Location: FF_X77_Y34_N1
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][9]~feeder_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][9]~q\);

-- Location: LCCOMB_X76_Y34_N4
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[9]~9\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xraddr\(0),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][9]~q\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][9]~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[9]~9_combout\);

-- Location: FF_X76_Y34_N5
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[9]~9_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][7]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq\(9));

-- Location: FF_X77_Y34_N31
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed\(3),
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][11]~q\);

-- Location: FF_X77_Y34_N13
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed\(3),
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][11]~q\);

-- Location: LCCOMB_X76_Y34_N20
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[11]~11\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][11]~q\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][11]~q\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xraddr\(0),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[11]~11_combout\);

-- Location: FF_X76_Y34_N21
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[11]~11_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][7]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq\(11));

-- Location: FF_X77_Y34_N27
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed\(6),
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][14]~q\);

-- Location: FF_X77_Y34_N17
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed\(6),
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][14]~q\);

-- Location: LCCOMB_X76_Y34_N22
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[14]~14\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][14]~q\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xraddr\(0),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][14]~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[14]~14_combout\);

-- Location: FF_X76_Y34_N23
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[14]~14_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][7]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq\(14));

-- Location: LCCOMB_X76_Y34_N26
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~14\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sdr~combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][7]~q\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq\(14),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|Equal3~0_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~14_combout\);

-- Location: FF_X76_Y34_N27
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~14_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs\(14));

-- Location: FF_X77_Y34_N7
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed\(5),
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][13]~q\);

-- Location: FF_X77_Y34_N29
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed\(5),
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][13]~q\);

-- Location: LCCOMB_X76_Y34_N12
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[13]~13\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][13]~q\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xraddr\(0),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][13]~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[13]~13_combout\);

-- Location: FF_X76_Y34_N13
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[13]~13_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][7]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq\(13));

-- Location: LCCOMB_X76_Y34_N30
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~13\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_ram_shift_load~0_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs\(14),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq\(13),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~13_combout\);

-- Location: FF_X76_Y34_N31
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~13_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs\(13));

-- Location: FF_X77_Y34_N3
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed\(4),
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][12]~q\);

-- Location: FF_X77_Y34_N9
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed\(4),
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][12]~q\);

-- Location: LCCOMB_X76_Y34_N24
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[12]~12\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][12]~q\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][12]~q\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xraddr\(0),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[12]~12_combout\);

-- Location: FF_X76_Y34_N25
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[12]~12_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][7]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq\(12));

-- Location: LCCOMB_X76_Y34_N2
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~12\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_ram_shift_load~0_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs\(13),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq\(12),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~12_combout\);

-- Location: FF_X76_Y34_N3
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~12_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs\(12));

-- Location: LCCOMB_X76_Y34_N14
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~11\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq\(11),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_ram_shift_load~0_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs\(12),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~11_combout\);

-- Location: FF_X76_Y34_N15
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~11_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs\(11));

-- Location: FF_X77_Y31_N15
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed\(2),
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][10]~q\);

-- Location: FF_X77_Y31_N29
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed\(2),
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][10]~q\);

-- Location: LCCOMB_X76_Y34_N0
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[10]~10\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][10]~q\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xraddr\(0),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][10]~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[10]~10_combout\);

-- Location: FF_X76_Y34_N1
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[10]~10_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][7]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq\(10));

-- Location: LCCOMB_X76_Y34_N18
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~10\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_ram_shift_load~0_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs\(11),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq\(10),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~10_combout\);

-- Location: FF_X76_Y34_N19
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~10_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs\(10));

-- Location: LCCOMB_X76_Y34_N6
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~9\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_ram_shift_load~0_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq\(9),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs\(10),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~9_combout\);

-- Location: FF_X76_Y34_N7
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~9_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs\(9));

-- Location: LCCOMB_X77_Y34_N4
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][8]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed\(0),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][8]~feeder_combout\);

-- Location: FF_X77_Y34_N5
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][8]~feeder_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][8]~q\);

-- Location: LCCOMB_X77_Y34_N22
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][8]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed\(0),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][8]~feeder_combout\);

-- Location: FF_X77_Y34_N23
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][8]~feeder_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][8]~q\);

-- Location: LCCOMB_X76_Y34_N16
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[8]~8\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][8]~q\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xraddr\(0),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][8]~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[8]~8_combout\);

-- Location: FF_X76_Y34_N17
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[8]~8_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][7]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq\(8));

-- Location: LCCOMB_X76_Y34_N10
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~8\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs\(9),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_ram_shift_load~0_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq\(8),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~8_combout\);

-- Location: FF_X76_Y34_N11
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~8_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs\(8));

-- Location: LCCOMB_X76_Y32_N18
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed[6]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[6]~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed[6]~feeder_combout\);

-- Location: FF_X76_Y32_N19
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed\(6));

-- Location: LCCOMB_X77_Y34_N10
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][7]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed\(6),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][7]~feeder_combout\);

-- Location: FF_X77_Y34_N11
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][7]~feeder_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][7]~q\);

-- Location: LCCOMB_X77_Y34_N24
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][7]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed\(6),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][7]~feeder_combout\);

-- Location: FF_X77_Y34_N25
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][7]~feeder_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][7]~q\);

-- Location: LCCOMB_X76_Y34_N28
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[7]~7\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][7]~q\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xraddr\(0),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][7]~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[7]~7_combout\);

-- Location: FF_X76_Y34_N29
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[7]~7_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][7]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq\(7));

-- Location: LCCOMB_X76_Y34_N8
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~7\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs\(8),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_ram_shift_load~0_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq\(7),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~7_combout\);

-- Location: FF_X76_Y34_N9
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~7_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs\(7));

-- Location: LCCOMB_X76_Y31_N8
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~6\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_ram_shift_load~0_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq\(6),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs\(7),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~6_combout\);

-- Location: FF_X76_Y31_N9
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~6_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs\(6));

-- Location: LCCOMB_X76_Y31_N4
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~5\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_ram_shift_load~0_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq\(5),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs\(6),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~5_combout\);

-- Location: FF_X76_Y31_N5
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~5_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs\(5));

-- Location: LCCOMB_X76_Y32_N24
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed[3]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[3]~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed[3]~feeder_combout\);

-- Location: FF_X76_Y32_N25
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed\(3));

-- Location: LCCOMB_X77_Y31_N10
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][4]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed\(3),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][4]~feeder_combout\);

-- Location: FF_X77_Y31_N11
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][4]~feeder_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][4]~q\);

-- Location: LCCOMB_X77_Y31_N8
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][4]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed\(3),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][4]~feeder_combout\);

-- Location: FF_X77_Y31_N9
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][4]~feeder_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][4]~q\);

-- Location: LCCOMB_X76_Y31_N30
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[4]~4\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][4]~q\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][4]~q\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xraddr\(0),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[4]~4_combout\);

-- Location: FF_X76_Y31_N31
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[4]~4_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][7]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq\(4));

-- Location: LCCOMB_X76_Y31_N0
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~4\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_ram_shift_load~0_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs\(5),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq\(4),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~4_combout\);

-- Location: FF_X76_Y31_N1
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~4_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs\(4));

-- Location: LCCOMB_X76_Y31_N12
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~3\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_ram_shift_load~0_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq\(3),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs\(4),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~3_combout\);

-- Location: FF_X76_Y31_N13
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~3_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs\(3));

-- Location: LCCOMB_X76_Y31_N6
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~2\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_ram_shift_load~0_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq\(2),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs\(3),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~2_combout\);

-- Location: FF_X76_Y31_N7
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~2_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs\(2));

-- Location: LCCOMB_X76_Y31_N24
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~1\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_ram_shift_load~0_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq\(1),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs\(2),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~1_combout\);

-- Location: FF_X76_Y31_N25
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~1_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs\(1));

-- Location: LCCOMB_X75_Y30_N0
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_wrapped_delayed~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:is_buffer_wrapped~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_wrapped_delayed~feeder_combout\);

-- Location: FF_X75_Y30_N1
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_wrapped_delayed\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_wrapped_delayed~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_wrapped_delayed~q\);

-- Location: LCCOMB_X77_Y31_N18
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][0]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_wrapped_delayed~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][0]~feeder_combout\);

-- Location: FF_X77_Y31_N19
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][0]~feeder_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][0]~q\);

-- Location: LCCOMB_X77_Y31_N24
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][0]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_wrapped_delayed~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][0]~feeder_combout\);

-- Location: FF_X77_Y31_N25
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_stp_external_clock_0~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][0]~feeder_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][0]~q\);

-- Location: LCCOMB_X76_Y31_N10
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[0]~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][0]~q\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xraddr\(0),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][0]~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[0]~0_combout\);

-- Location: FF_X76_Y31_N11
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[0]~0_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][7]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq\(0));

-- Location: LCCOMB_X76_Y31_N20
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_ram_shift_load~0_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs\(1),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq\(0),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~0_combout\);

-- Location: FF_X74_Y30_N25
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~0_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs\(0));

-- Location: LCCOMB_X74_Y30_N24
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_internal~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][7]~q\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_offset_config_deserialize|dffs\(0),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs\(0),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][3]~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_internal~0_combout\);

-- Location: LCCOMB_X74_Y30_N18
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_internal~1\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][9]~q\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_internal~0_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_crc_len_reg\(0),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][8]~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_internal~1_combout\);

-- Location: LCCOMB_X74_Y30_N16
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_internal~7\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_internal~5_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_internal~4_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_internal~6_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_internal~1_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_internal~7_combout\);

-- Location: LCCOMB_X69_Y30_N10
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~1\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(1),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(10),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo_internal~7_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~1_combout\);

-- Location: LCCOMB_X68_Y30_N18
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~9\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(0),
	datad => VCC,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~9_combout\,
	cout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~10\);

-- Location: LCCOMB_X67_Y30_N4
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|clear_signal\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|clear_signal~combout\);

-- Location: LCCOMB_X68_Y30_N24
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[3]~16\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(3),
	datad => VCC,
	cin => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[2]~15\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[3]~16_combout\,
	cout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[3]~17\);

-- Location: LCCOMB_X68_Y30_N26
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[4]~18\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(4),
	cin => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[3]~17\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[4]~18_combout\);

-- Location: LCCOMB_X67_Y30_N6
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~20\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_dr_scan_reg~q\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|clear_signal~combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~20_combout\);

-- Location: FF_X68_Y30_N27
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[4]~18_combout\,
	sclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~13_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(4));

-- Location: LCCOMB_X68_Y30_N16
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~9\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(3),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(2),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~9_combout\);

-- Location: LCCOMB_X68_Y30_N10
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~13\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|clear_signal~combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(1),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~9_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~13_combout\);

-- Location: FF_X68_Y30_N19
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~9_combout\,
	sclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~13_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(0));

-- Location: LCCOMB_X68_Y30_N20
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~11\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(1),
	datad => VCC,
	cin => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~10\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~11_combout\,
	cout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~12\);

-- Location: FF_X68_Y30_N21
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~11_combout\,
	sclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~13_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(1));

-- Location: LCCOMB_X68_Y30_N22
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[2]~14\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(2),
	datad => VCC,
	cin => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~12\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[2]~14_combout\,
	cout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[2]~15\);

-- Location: FF_X68_Y30_N23
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[2]~14_combout\,
	sclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~13_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(2));

-- Location: FF_X68_Y30_N25
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[3]~16_combout\,
	sclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~13_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(3));

-- Location: LCCOMB_X68_Y30_N2
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~6\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(1),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~6_combout\);

-- Location: LCCOMB_X68_Y30_N12
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~7\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(3),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~6_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(2),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~7_combout\);

-- Location: LCCOMB_X68_Y30_N6
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~14\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(4),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(1),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(2),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~14_combout\);

-- Location: LCCOMB_X67_Y30_N10
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~15\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~14_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|clear_signal~combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~15_combout\);

-- Location: LCCOMB_X67_Y30_N24
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~16\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~15_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|clear_signal~combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datad => \altera_internal_jtag~TDIUTAP\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~16_combout\);

-- Location: LCCOMB_X67_Y30_N28
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR[0]~17\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_dr_scan_reg~q\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|clear_signal~combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR[0]~17_combout\);

-- Location: FF_X67_Y30_N25
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~16_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR\(3));

-- Location: LCCOMB_X68_Y30_N28
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~13\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(2),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR\(3),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~13_combout\);

-- Location: LCCOMB_X68_Y30_N30
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~18\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~13_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~18_combout\);

-- Location: FF_X68_Y30_N31
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~18_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR\(2));

-- Location: LCCOMB_X68_Y30_N0
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~11\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR\(2),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~9_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(4),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~11_combout\);

-- Location: LCCOMB_X68_Y30_N4
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~10\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(3),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~6_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(2),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~10_combout\);

-- Location: LCCOMB_X68_Y30_N14
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~12\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~11_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~10_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~12_combout\);

-- Location: FF_X68_Y30_N15
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~12_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR\(1));

-- Location: LCCOMB_X68_Y30_N8
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~8\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~7_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR\(1),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|clear_signal~combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~8_combout\);

-- Location: FF_X68_Y30_N9
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~8_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR\(0));

-- Location: LCCOMB_X70_Y30_N8
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~3\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \altera_internal_jtag~TDIUTAP\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~3_combout\);

-- Location: LCCOMB_X70_Y30_N22
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~0_combout\);

-- Location: FF_X70_Y30_N9
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~3_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg\(3));

-- Location: LCCOMB_X70_Y30_N6
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~2\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg\(3),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~2_combout\);

-- Location: FF_X70_Y30_N7
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~2_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg\(2));

-- Location: LCCOMB_X70_Y30_N28
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~1\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~1_combout\);

-- Location: FF_X70_Y30_N29
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~1_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg\(1));

-- Location: LCCOMB_X70_Y30_N12
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~0_combout\);

-- Location: FF_X70_Y30_N13
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~0_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg\(0));

-- Location: LCCOMB_X69_Y30_N16
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR\(0),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg\(0),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(2),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~0_combout\);

-- Location: LCCOMB_X70_Y30_N18
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo_bypass_reg~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \altera_internal_jtag~TDIUTAP\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo_bypass_reg~q\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo_bypass_reg~0_combout\);

-- Location: FF_X70_Y30_N19
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo_bypass_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo_bypass_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo_bypass_reg~q\);

-- Location: LCCOMB_X69_Y30_N6
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~2\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~1_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~0_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(10),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo_bypass_reg~q\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~2_combout\);

-- Location: LCCOMB_X69_Y30_N12
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~3\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~1_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~0_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(10),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo_bypass_reg~q\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~3_combout\);

-- Location: LCCOMB_X69_Y30_N2
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~4\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~3_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~4_combout\);

-- Location: LCCOMB_X68_Y29_N14
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[0]~9\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(0),
	datad => VCC,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[0]~9_combout\,
	cout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[0]~10\);

-- Location: LCCOMB_X68_Y29_N10
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~10\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(0),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~10_combout\);

-- Location: LCCOMB_X68_Y29_N26
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~20\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~10_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|clear_signal~combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~20_combout\);

-- Location: LCCOMB_X67_Y30_N30
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~15\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_dr_scan_reg~q\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~15_combout\);

-- Location: FF_X68_Y29_N15
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[0]~9_combout\,
	asdata => VCC,
	sload => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~20_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(0));

-- Location: LCCOMB_X68_Y29_N16
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[1]~11\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(1),
	datad => VCC,
	cin => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[0]~10\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[1]~11_combout\,
	cout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[1]~12\);

-- Location: FF_X68_Y29_N17
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[1]~11_combout\,
	asdata => VCC,
	sload => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~20_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(1));

-- Location: LCCOMB_X68_Y29_N18
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[2]~13\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(2),
	datad => VCC,
	cin => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[1]~12\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[2]~13_combout\,
	cout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[2]~14\);

-- Location: FF_X68_Y29_N19
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[2]~13_combout\,
	asdata => VCC,
	sload => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~20_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(2));

-- Location: LCCOMB_X68_Y29_N20
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[3]~16\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3),
	datad => VCC,
	cin => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[2]~14\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[3]~16_combout\,
	cout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[3]~17\);

-- Location: FF_X68_Y29_N21
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[3]~16_combout\,
	asdata => VCC,
	sload => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~20_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3));

-- Location: LCCOMB_X68_Y29_N22
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~18\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(4),
	cin => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[3]~17\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~18_combout\);

-- Location: FF_X68_Y29_N23
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~18_combout\,
	asdata => VCC,
	sload => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~20_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(4));

-- Location: LCCOMB_X68_Y29_N24
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[0]~8\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(2),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(0),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[0]~8_combout\);

-- Location: LCCOMB_X67_Y29_N0
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[0]~9\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[0]~8_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[0]~9_combout\);

-- Location: LCCOMB_X68_Y29_N28
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~17\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(4),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(2),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(0),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~17_combout\);

-- Location: LCCOMB_X68_Y29_N6
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~18\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~17_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~18_combout\);

-- Location: LCCOMB_X69_Y31_N26
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[3]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \altera_internal_jtag~TDIUTAP\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[3]~feeder_combout\);

-- Location: LCCOMB_X69_Y30_N24
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(2),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(1),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_dr_scan_reg~q\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~0_combout\);

-- Location: LCCOMB_X69_Y31_N2
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~1\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(10),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~0_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~1_combout\);

-- Location: FF_X69_Y31_N27
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[3]~feeder_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\(3));

-- Location: FF_X69_Y31_N7
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\(3),
	sload => VCC,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\(2));

-- Location: LCCOMB_X69_Y31_N16
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[1]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[1]~feeder_combout\);

-- Location: FF_X69_Y31_N17
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[1]~feeder_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\(1));

-- Location: LCCOMB_X69_Y31_N10
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~feeder_combout\);

-- Location: FF_X69_Y31_N11
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~feeder_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\(0));

-- Location: LCCOMB_X69_Y31_N24
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[0]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[0]~feeder_combout\);

-- Location: LCCOMB_X69_Y31_N12
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[0]~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(10),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~0_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[0]~0_combout\);

-- Location: FF_X69_Y31_N25
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[0]~feeder_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg\(0));

-- Location: LCCOMB_X69_Y30_N22
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[0]~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[0]~9_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~18_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[0]~0_combout\);

-- Location: LCCOMB_X69_Y31_N30
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[1]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[1]~feeder_combout\);

-- Location: FF_X69_Y31_N31
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[1]~feeder_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg\(1));

-- Location: LCCOMB_X68_Y29_N12
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~11\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(4),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(0),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~11_combout\);

-- Location: LCCOMB_X68_Y29_N30
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~12\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(4),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(0),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~12_combout\);

-- Location: LCCOMB_X69_Y29_N0
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~13\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~11_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~12_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~13_combout\);

-- Location: LCCOMB_X69_Y30_N8
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[1]~1\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[0]~9_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~13_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[1]~1_combout\);

-- Location: LCCOMB_X68_Y29_N4
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~6\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(2),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(0),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~6_combout\);

-- Location: LCCOMB_X68_Y29_N0
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~7\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(2),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(0),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~7_combout\);

-- Location: LCCOMB_X68_Y29_N2
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~16\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~6_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~7_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~16_combout\);

-- Location: LCCOMB_X69_Y31_N20
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[2]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[2]~feeder_combout\);

-- Location: FF_X69_Y31_N21
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[2]~feeder_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg\(2));

-- Location: LCCOMB_X69_Y30_N30
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[2]~2\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[0]~9_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~16_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[2]~2_combout\);

-- Location: LCCOMB_X68_Y29_N8
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~14\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(4),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(0),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~14_combout\);

-- Location: LCCOMB_X69_Y29_N2
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~15\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~14_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~15_combout\);

-- Location: FF_X69_Y31_N9
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\(3),
	sload => VCC,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg\(3));

-- Location: LCCOMB_X69_Y30_N4
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~3\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[0]~9_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~15_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~3_combout\);

-- Location: LCCOMB_X69_Y30_N26
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_proc~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_dr_scan_reg~q\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_proc~0_combout\);

-- Location: LCCOMB_X69_Y30_N20
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_dr_scan_reg~q\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~combout\);

-- Location: FF_X69_Y30_N5
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~3_combout\,
	asdata => \altera_internal_jtag~TDIUTAP\,
	sload => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_proc~0_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg\(3));

-- Location: FF_X69_Y30_N31
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[2]~2_combout\,
	asdata => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg\(3),
	sload => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_proc~0_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg\(2));

-- Location: FF_X69_Y30_N9
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[1]~1_combout\,
	asdata => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg\(2),
	sload => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_proc~0_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg\(1));

-- Location: FF_X69_Y30_N23
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[0]~0_combout\,
	asdata => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg\(1),
	sload => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_proc~0_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg\(0));

-- Location: LCCOMB_X69_Y30_N18
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~5\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~2_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~4_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg\(0),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~5_combout\);

-- Location: FF_X69_Y30_N19
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~5_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|ALT_INV_state\(8),
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~q\);

-- Location: LCCOMB_X21_Y34_N0
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~_wirecell\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~q\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~_wirecell_combout\);

-- Location: LCCOMB_X9_Y33_N0
\auto_hub|~GND\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
;

-- Location: LCCOMB_X72_Y30_N2
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~_wirecell\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~q\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~_wirecell_combout\);

-- Location: LCCOMB_X65_Y30_N0
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[0]~_wirecell\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[0]~_wirecell_combout\);

-- Location: IOIBUF_X56_Y73_N15
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);
END structure;


