library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity tutorial is
port(
	input1, input2: in std_logic_vector(3 downto 0);
	sum: out std_logic_vector(3 downto 0);
	cout: out std_logic
);
end entity;

architecture arch of tutorial is
	signal output_signal: std_logic_vector(4 downto 0);
	begin
	process(input1, input2)
	begin
		output_signal <= ('0' & input1) + ('0' & input2);
	end process;
	
	process(output_signal)
	begin
		sum <= output_signal(3 downto 0);
		cout <= output_signal(4);
	end process;
end architecture;

