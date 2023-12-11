library ieee;
use ieee.std_logic_1164.all;

entity sumador_completo_ffD is
	port(
		in_a, in_b, in_cin,clk: in std_logic;
		out_suma, out_cout: out std_logic
		);
end sumador_completo_ffD;

architecture behavioral of sumador_completo_ffD is

--Declaro el componente
	component ff_d
		port(
			d,clk: in std_logic;
			q: out std_logic
			);
	end component;
	
	--Creo las señales
	signal a,b,cin,cout,suma: std_logic;
	
begin
	suma <= a xor b xor cin;
	cout <= (a and b) or (cin and (a xor b));
	
	--Instanciacion
	d1: ff_d port map (in_a,clk,a);
	d2: ff_d port map (in_b,clk,b);
	d3: ff_d port map (in_cin,clk,cin);
	d4: ff_d port map (cout,clk,out_cout);
	d5: ff_d port map (suma,clk,out_suma);

end behavioral;