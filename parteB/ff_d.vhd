library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity ff_d is
	port(
		d,clk: in std_logic;
		q: out std_logic
		);
end ff_d;

architecture behavioral of ff_d is
begin
	process(clk) begin
		if (clk='1' and clk'event) then
			q <= d;
		end if;
	end process;
end behavioral;