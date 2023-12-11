--SUmador cmopleto realizado con procesos (probando)

library ieee;
use ieee.std_logic_1164.all;

entity sumador_completo is
	port(
		abcin: in std_logic_vector(2 downto 0);
		coutsuma: out std_logic_vector(1 downto 0)
		);
end sumador_completo;

architecture behavioral of sumador_completo is 
begin
	process(abcin) begin
		case abcin is 
			when "000" => coutsuma <= "00";
			when "001" => coutsuma <= "01";
			when "010" => coutsuma <= "01";
			when "011" => coutsuma <= "10";
			when "100" => coutsuma <= "01";
			when "101" => coutsuma <= "10";
			when "110" => coutsuma <= "10";
			when others => coutsuma <= "11";
		end case;
	end process;
end behavioral;
 

