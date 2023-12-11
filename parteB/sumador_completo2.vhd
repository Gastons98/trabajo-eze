library ieee;
use ieee.std_logic_1164.all;

entity sumador_completo2 is
	port(
		in_a,in_b,in_cin: in std_logic;
	out_f,out_cout: out std_logic
	);
end sumador_completo2;

architecture behavioral of sumador_completo2 is

	component ff_d
		port
			(d,clk: in std_logic;
			q: out std_logic
			);
	end component;
	
	signal a,b,cin,cout,f: std_logic;
	
begin
	f <= a xor b xor cin;
	cout <= (a and b) or (cin and (a xor b));
	
	D1: ff_d port map (in_a,clk,a);
	D2: ff_d port map (in_b,clk,b);
	D3: ff_d port map (in_cin,clk,cin);
	D4: ff_d port map (cout,clk,out_cout);
	D5: ff_d port map (f,clk,out_f);
	
end behavioral;