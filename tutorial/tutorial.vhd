library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity tutorial is
port(
	input1: in std_logic_vector(3 downto 0);
	input2: in std_logic_vector(3 downto 0);
	output: out std_logic_vector(3 downto 0);
	overflow: out std_logic
);
end entity;

architecture arch of tutorial is
	begin
	process(input1, input2)
	begin
		output <= input1 + input2;
		if(input1(3) = '1') and (input2(3) = '1') then
			overflow <= '1';
		else
			overflow <= '0';
		end if;
	end process;
end architecture;

