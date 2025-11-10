library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
library lpm;
use lpm.lpm_components.all;

entity lab5 is 
port (clock: in std_logic;
		button_p5: in std_logic;
		disp1: out std_logic_vector(0 to 6);
		disp2: out std_logic_vector(0 to 6);
		disp3: out std_logic_vector(0 to 6);
		disp4: out std_logic_vector(0 to 6);
		two_pair: out std_logic;
		three_kind: out std_logic;
		four_kind: out std_logic);
		
end lab5;

architecture structural of lab5 is 

component lab5_part4 
port (clk: in std_logic;
		button: in std_logic;
		display1: out std_logic_vector(0 to 6);
		display2: out std_logic_vector(0 to 6);
		display3: out std_logic_vector(0 to 6);
		display4: out std_logic_vector(0 to 6);
		die_value1: out std_logic_vector(2 downto 0);
		die_value2: out std_logic_vector(2 downto 0);
		die_value3: out std_logic_vector(2 downto 0);
		die_value4: out std_logic_vector(2 downto 0)
		);
		
end component;




signal segment1, segment2, segment3, segment4: std_logic_vector(0 to 6);
signal die1,die2,die3,die4: std_logic_vector(2 downto 0);
begin 
	process (clock)
	begin 

		if (die1 = die2) and (die1 = die3) and (die1 = die4) then
			four_kind <= '1';
			three_kind <= '0';
			two_pair <= '0';
		elsif ((die1 = die2) and (die2 = die3)) 
		or ((die1 = die2) and (die2 = die4)) 
		or ((die1 = die3) and (die3 = die4)) 
		or ((die2 = die3) and (die3 = die4)) 
		then
			three_kind <= '1';
			four_kind <= '0';
			two_pair <= '0';
		
		elsif ((die1 = die2) and (die1 = die3)) 
		or ((die1 = die3) and (die2 = die4)) 
		or ((die1 = die4) and (die2 = die3)) 
		then 
			two_pair <= '1';
			four_kind <= '0';
			three_kind <= '0';
		
		else
			two_pair <= '0';
			four_kind <= '0';
			three_kind <= '0';
			
		end if;
	end process;

	dice: lab5_part4 port map(clk => clock, button => button_p5, 
	display1(0 to 6) => segment1(0 to 6),display2(0 to 6) => segment2(0 to 6), display3(0 to 6) => segment3(0 to 6), display4(0 to 6) => segment4(0 to 6),
	die_value1 => die1, die_value2 => die2, die_value3 => die3, die_value4 => die4);
	
	disp1 <= segment1;
	disp2 <= segment2;
	disp3 <= segment3;
	disp4 <= segment4;
	
	
end structural;
