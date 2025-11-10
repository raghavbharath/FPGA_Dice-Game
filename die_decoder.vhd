library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity die_decoder is 
port (c: in std_logic_vector(2 downto 0);
		segments: out std_logic_vector(0 to 6));
		
end die_decoder;

architecture behavior of die_decoder is
begin
	with c select 
		segments <= 
						"1111110" when "001",
						"0110111" when "010",
						"0110110" when "011",
						"1001001" when "100",
						"1001000" when "101",
						"0000001" when "110",
						"1111111" when others;
						
end behavior;
