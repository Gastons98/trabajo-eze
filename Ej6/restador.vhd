--Ejercicio 6 de la guia 5
--Realizar la descripcion de un restador completo de 1 bit
--Funciona con las dos sentencia que probé, IF y CASE.

library ieee;
use ieee.std_logic_1164.all;

entity restador is
	port(
		a: in std_logic;
		b: in std_logic;
		borrow: out std_logic;
		r: out std_logic
		);
end restador;

architecture behavioral of restador is 
begin
	process (a,b) begin
		if b > a then
			borrow <= '1';
			r <= '1';
		elsif
			a > b then
			borrow <= '0';
			r <= '1';
		else
			borrow <= '0';
			r <= '0';
		end if;
	end process;
end behavioral;
			

--FUNCIONA con los dos CASE
-- Hice 2 CASE xq no sé si se pueden concatenar
-- mas de una sentencia en la misma linea
-- x ej: when "00" => borrow "y" r <= '0'	


--entity restador is
--	port(
--		ab: in std_logic_vector (1 downto 0);
--		borrow: out std_logic;
--		r: out std_logic
--		);
--end restador;
--	process(ab) begin
--		case ab is
--			when "00" => borrow <= '0';
--			when "01" => borrow <= '1';
--			when "10" => borrow <= '0';
--			when others => borrow <= '0';--when "11"
--		end case;
--		
--		case ab is
--			when "00" => r <= '0';
--			when "01" => r <= '1';
--			when "10" => r <= '1';
--			when others => r <= '0';--when "11"
--		end case;		
--	end process;
--end behavioral;