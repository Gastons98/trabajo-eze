--Testbench de la parte A

library ieee;
use ieee.std_logic_1164.all;

entity ej_combinacional_tb is 
end ej_combinacional_tb;


architecture behavior of ej_combinacional_tb is

	component ej_combinacional
	port(
		sw1: in std_logic;
		sw2: in std_logic;
		led: out std_logic
		);
	end component;
	
	--Inputs
	signal sw1: std_logic :='0';
	signal sw2: std_logic :='0';
	--Outputs
	signal led: std_logic;

begin
	--Instanciacion (UUT o DUT)
	uut: ej_combinacional port map (
		sw1 => sw1,
		sw2 => sw2,
		led => led
		);
		
		--Proceso de estimulacion
		stim_proc: process
		begin
			--Estimulos
			sw1 <= '0'; sw2 <= '0; wait for 10ns;
			sw1 <= '0'; sw2 <= '1; wait for 10ns;
			sw1 <= '1'; sw2 <= '0; wait for 10ns;
			sw1 <= '1'; sw2 <= '1; wait for 10ns;
			wait;
		end process;
end;