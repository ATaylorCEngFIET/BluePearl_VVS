library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_xpm_bps is 
end entity;

architecture tb of tb_xpm_bps is

component xpm_bps is port(
 clk_1 : in std_logic;
 clk_2 : in std_logic;
 reset : in std_logic;
 
 start : in std_logic; -- signal on the clock domain 2 
 pulse : out std_logic); -- signal on the clock domain 1 
end component; 

signal clk_1 :  std_logic:='0';
signal clk_2 :  std_logic:='1';
signal reset :  std_logic:='0';
 
signal start :  std_logic:='0'; -- signal on the clock domain 2 
signal pulse :  std_logic; -- signal on the clock domain 1 

constant clk_1_period : time := 10 ns;
constant clk_2_period : time := 100 ns;

begin 

clk_1 <= not clk_1 after(clk_1_period/2);
clk_2 <= not clk_2 after(clk_2_period/2);

uut: xpm_bps port map (clk_1,clk_2,reset,start,pulse);

stim:process 
begin 
 reset <= '0';
 wait for 300 ns;
 reset <= '1';
 wait for 72 ns;
 reset <= '0';
 wait for 300 ns;
 wait until rising_edge(clk_2);
 start <= '1';
 wait until rising_edge(clk_2);
 start <= '0';
 wait until rising_edge(pulse);
 wait for (10 * clk_1_period);
 report "simulation complete" severity failure;
end process;

end architecture;