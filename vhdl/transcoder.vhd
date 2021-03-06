library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

entity transcoder is
	port(
		t_counter : in std_logic_vector (3 downto 0);
		a_out,b_out,c_out,d_out,e_out,f_out,g_out,a2_out,b2_out,c2_out,d2_out,e2_out,f2_out,g2_out  : out std_logic
		);
end transcoder;

architecture Behavioral of transcoder is
	signal segment : std_logic_vector (13 downto 0);
begin 
	process(t_counter)
	begin
		case t_counter(3 downto 0) is
			when "0000" => segment <= "00000010000001";
			when "0001" => segment <= "00000011001111";
			when "0010" => segment <= "00000010010010";
			when "0011" => segment <= "00000010000110";
			when "0100" => segment <= "00000011001100";
			when "0101" => segment <= "00000010100100";
			when "0110" => segment <= "00000010100000";
			when "0111" => segment <= "00000010001111";
			when "1000" => segment <= "00000010000000";
			when "1001" => segment <= "00000010000100";
			when "1010" => segment <= "10011110000001";
			when "1011" => segment <= "10011111001111";
			when "1100" => segment <= "10011110010010";
			when "1101" => segment <= "10011110000110";
			when "1110" => segment <= "10011111001100";
			when "1111" => segment <= "10011110100100";
			
		end case;                          
	end process;
	
	a_out <= segment(13);
	b_out <= segment(12);
	c_out <= segment(11);
	d_out <= segment(10);
	e_out <= segment(9);
	f_out <= segment(8);
	g_out <= segment(7);
	a2_out <=segment(6);
	b2_out <=segment(5);
	c2_out <=segment(4);
	d2_out <=segment(3);
	e2_out <=segment(2);
	f2_out <=segment(1);
	g2_out <=segment(0);
	
	
end Behavioral;