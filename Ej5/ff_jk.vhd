--Ejercicocio 5 Guia 5
--Realizar la descripcion en VHDL de un FF JK

library ieee;
use ieee.std_logic_1164.all;

entity ff_jk is
	port(
		jk: in std_logic_vector(1 downto 0);
		clk: in std_logic;
--		set, reset: in std_logic; Para cuando agregue set y reset
		q: out std_logic
	);
end ff_jk;

architecture behavioral of ff_jk is
begin
	process(clk) begin
		if (rising_edge(clk)) then
			with jk select
				q <=  q when "00",--Pero q es una salida..???
						'0' when "01",
						'1' when "10",
						not q when others;--when "11"
		end if;
	end process;
end behavioral;
			
				
		
		
	
	
	
	