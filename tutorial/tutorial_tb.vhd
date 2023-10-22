library ieee;
use ieee.std_logic_1164.all;
use std.env.all;

entity tutorial_testbench is
end entity;

architecture tut_testbench_arch of tutorial_testbench is

component tutorial is
	port(
		input1, input2: in std_logic_vector(3 downto 0);
		sum: out std_logic_vector(3 downto 0);
		cout: out std_logic
	);
end component;

signal input1, input2, sum: std_logic_vector(3 downto 0);
signal cout: std_logic;

begin
uut: tutorial
	port map(
		input1 => input1,
		input2 => input2,
		sum => sum,
		cout => cout
	);
	
	process
	begin
		input1 <= "1010";
		input2 <= "0011";
		wait for 5 ns;
		
		input1 <= "1000";
		input2 <= "1000";
		wait for 5 ns;
		
		input1 <= "1100";
		input2 <= "0011";
		wait for 5 ns;
		
		input1 <= "1111";
		input2 <= "0001";
		wait for 5 ns;
		
		stop(0);
		
	end process;

end architecture;