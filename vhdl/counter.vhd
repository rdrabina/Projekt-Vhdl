library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity counter is
	port(
		c_counting_direction : in std_logic;
		c_clk: in std_logic;
		c_counter : out std_logic_vector(3 downto 0)
		);
end counter;

architecture Behavioral of counter is
	signal actual_value : std_logic_vector(3 downto 0);
	signal direction : bit;
begin 
	process(c_clk,c_counting_direction)
	begin
		if(c_clk'event and c_clk = '1') then
			if ( c_counting_direction = '1' ) then
				if (actual_value = "1111") then
					actual_value <= "0000";
				else
					actual_value <= actual_value + 1;
				end if;
			else 
				if (actual_value = "0000") then
					actual_value <= "1111";
				else
					actual_value <= actual_value - 1;
				end if;
			end if;
		end if;
	end process;
	c_counter <= actual_value;
end Behavioral;
