library ieee;
use ieee.std_logic_1164.all;

entity d_type is port(
 clk : in std_logic;
 reset : in std_logic;
 d_in  : in std_logic;
 q_out : out std_logic);
end entity;

architecture rtl of d_type is 

begin 

process(clk,reset)
begin 
 if reset = '1' then q_out <= '0'; elsif rising_edge(clk) then q_out <= d_in; end if;
end process;

end architecture;