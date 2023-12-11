library ieee;
use ieee.std_logic_1164.all;

entity sumador_completo_partec is
	port(
		a,b,cin: in std_logic;--Deberian ser vectores de 4 bits?
	f,cout: out std_logic
	);
end sumador_completo_partec;

architecture behavioral of sumador_completo_partec is
begin
	f <= a xor b xor cin;
	cout <= (a and b) or (cin and (a xor b));
end behavioral;