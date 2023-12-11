library ieee;
use ieee.std_logic_1164.ALL;

entity sumador_complet is
   port(
	   a     : in std_logic;
		b     : in std_logic;
		cin   : in std_logic;
		f     : out std_logic;
		cout  : out std_logic);
end sumador_complet;

architecture behavioral of sumador_complet is 

begin 
   
	f <= a xor b xor cin;
	cout <= (a and b) or (cin and (a xor b));

end behavioral;