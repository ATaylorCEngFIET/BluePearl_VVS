library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

Library xpm;
use xpm.vcomponents.all;

entity xpm_bps is port(
 clk_1 : in std_logic;
 clk_2 : in std_logic;
 reset : in std_logic;
 
 start : in std_logic; -- signal on the clock domain 2 
 pulse : out std_logic); -- signal on the clock domain 1 
end entity; 

architecture rtl of xpm_bps is 

constant terminal_count : integer := 100;

signal counter : unsigned(15 downto 0); --clock 1 domain 
signal start_retimed : std_logic; --clock 1 domain 
signal reset_safe : std_logic; -- safe clock 1 domain 
signal start_reg : std_logic_vector(1 downto 0); -- clock 1 domain 

begin 

-- xpm_cdc_async_rst: Clock Domain Crossing Asynchronous Reset Synchronizer
-- Xilinx Parameterized Macro, Version 2016.1
xpm_cdc_async_rst_inst: xpm_cdc_async_rst
generic map (
-- Common module parameters
 DEST_SYNC_FF => 4, -- integer; range: 2-10
 RST_ACTIVE_HIGH => 1 -- integer; 0=active low reset, 1=active high reset
)
port map (
 src_arst => reset,
 dest_clk => clk_1,
 dest_arst => reset_safe
);

-- xpm_cdc_single: Clock Domain Crossing Single-bit Synchronizer
-- Xilinx Parameterized Macro, Version 2016.1
xpm_cdc_single_inst: xpm_cdc_single
generic map (
DEST_SYNC_FF => 4, -- integer; range: 2-10
SIM_ASSERT_CHK => 0, -- integer; 0=disable simulation messages, 1=enable simulation messages
SRC_INPUT_REG => 1 -- integer; 0=do not register input, 1=register input
)
port map (
src_clk => clk_2, -- optional; required when SRC_INPUT_REG = 1
src_in => start,
dest_clk => clk_1,
dest_out => start_retimed
);

process(reset_safe,clk_1)
begin 
 if reset_safe = '1' then 
  start_reg <= (others => '0');
 elsif rising_edge(clk_1) then 
  start_reg <= start_reg(start_reg'low) & start_retimed; 
 end if;
end process;

process(reset_safe,clk_1)
begin 

 if reset_safe = '1' then 
  counter <= (others => '0');
 elsif rising_edge(clk_1) then 
  pulse <= '0';
  if start_reg = "01" then -- rising edge detect start timer 
   counter <= (others =>'0');
  elsif counter = terminal_count then 
   pulse <= '1';
  else
   counter <= counter + 1;
  end if;
 end if;
end process;
end architecture;

