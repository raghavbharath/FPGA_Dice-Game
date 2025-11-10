library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity lab5_part3 is 
port (pulse: in std_logic;
		die: out std_logic_vector(0 to 6);
		die_val: out std_logic_vector(2 downto 0));
		
end lab5_part3;

architecture structural of lab5_part3 is 

component die_decoder 
port (c: in std_logic_vector(2 downto 0);
		segments: out std_logic_vector(0 to 6));
		
end component;


component mod_6_counter

port(
	   clock		:	 IN STD_LOGIC;
		Q2		:	 OUT STD_LOGIC;
		Q0		:	 OUT STD_LOGIC;
		Q1		:	 OUT STD_LOGIC
	);
end component;


signal q0, q1, q2: std_logic;
begin 
	DD_1: die_decoder port map(c(0) => q0, c(1) => q1, c(2) => q2, segments(0 to 6) => die(0 to 6));
	MC_1: mod_6_counter port map(clock => pulse,Q0=> q0, Q1 => q1, Q2 => q2);
	die_val(0) <= q0;
	die_val(1) <= q1;
	die_val(2) <= q2;
end structural;

	