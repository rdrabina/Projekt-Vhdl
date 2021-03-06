library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

entity divider is 
	port(
		d_clk : in std_logic;
		d_clk_divided : out std_logic
		);
end divider;

architecture Behavioral of divider is
	signal counter : integer :=0;
	signal clk_out : std_logic := '0';
begin
	process(d_clk)
	begin
		if (d_clk'event and d_clk = '1') then
			if (counter > 20000000) then
				counter <= 0;
				clk_out <= not clk_out;
			else
				counter <= counter + 1;
			end if;
		end if;
	end process;
	d_clk_divided<=clk_out;
end Behavioral;

