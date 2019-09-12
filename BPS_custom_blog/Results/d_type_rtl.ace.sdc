# Automatically created by Blue Pearl Visual Verification Suite Version 2019.1.53518 06/15/2019 18:45. Windows (64-bit). on Thu Sep 12 10:15:22 2019
# SDC formatting set by user options
#   Split Vectors: no
#   Add _reg To Register Names: yes
#   Generate Exceptions containing get_nets: yes
#   Expand Vector based Q ports: no
#   Generate Exceptions containing through constraints: yes
#   Comment out set_hierarchy_separator: no
#   Generate set_clock_groups: yes
#   Use Source Clock in create_generated_clock command: yes
#   Generate TCL Variable for buses: no
#   Insert newlines for readability into TCL: no
#   Combine Constraints when possible: no

set_hierarchy_separator "."

# Templates for create_clock commands.
# Please enter the correct clock period in the create_clock commands.
create_clock -period 20.0 -name clk [get_ports clk]

# Templates for set_input_delay/set_output_delay commands.
set_input_delay 0.0 -max -clock clk [get_ports d_in]
set_output_delay 0.0 -max -clock clk [get_ports q_out]
