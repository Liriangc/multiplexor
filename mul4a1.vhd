
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mul4a1 is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : in  STD_LOGIC;
           d : in  STD_LOGIC;
           sel : in  STD_LOGIC_VECTOR (1 downto 0);
           F : out  STD_LOGIC);
end mul4a1;

architecture archmul of mul4a1 is

begin
  with sel select
      F <= a when "00",
           b when "01",
			  c when "10",
           d when others;
end archmul;

