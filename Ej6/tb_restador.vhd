--Ej 7 Guia 5
-- Realizar la descripcion del TESTBENCH del restador anterior

library ieee;
use ieee.std_logic_1164.all;

entity tb_restador is end tb_restador;

architecture tb_behavior of tb_restador is
	component restador
		port(
		a: in std_logic;
		b: in std_logic;
		borrow: out std_logic;
		r: out std_logic
		);
	end component;
	
	--Inputs
	signal a: std_logic := '0';
	signal b: std_logic := '0';
	--Outputs
	signal borrow: std_logic;
	signal r: std_logic;
	
begin
	--Instanciacion (UUT o DUT)
	uut: restador port map(
		a => a,
		b => b,
		borrow => borrow,
		r => r
		);
		
	--Proceso de estimulacion
	stim_proc: process
	begin	
		a <= '0'; b <= '0'; wait for 2ns;
		a <= '0'; b <= '1'; wait for 2ns;
		a <= '1'; b <= '0'; wait for 2ns;
		a <= '1'; b <= '1'; wait for 2ns;
		wait;
	end process;
end;