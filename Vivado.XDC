# Clock Constraint
# Define a clock with a 10ns period (100 MHz)
create_clock -period 10 [get_ports clk]

# Input Pin Constraints
# Assign pins for inputs A, B, and C (replace with actual pin numbers)
set_property PACKAGE_PIN A3 [get_ports A]  # Assign input A to pin A3
set_property IOSTANDARD LVCMOS33 [get_ports A]

set_property PACKAGE_PIN B4 [get_ports B]  # Assign input B to pin B4
set_property IOSTANDARD LVCMOS33 [get_ports B]

set_property PACKAGE_PIN C5 [get_ports C]  # Assign input C to pin C5
set_property IOSTANDARD LVCMOS33 [get_ports C]

# Output Pin Constraints
# Assign pins for outputs F1 and F2 (replace with actual pin numbers)
set_property PACKAGE_PIN D6 [get_ports F1]  # Assign output F1 to pin D6
set_property IOSTANDARD LVCMOS33 [get_ports F1]

set_property PACKAGE_PIN E7 [get_ports F2]  # Assign output F2 to pin E7
set_property IOSTANDARD LVCMOS33 [get_ports F2]

# Timing Constraints
# Define input delay relative to the clock
set_input_delay -max 2 [get_ports {A B C}] -clock clk
set_input_delay -min 1 [get_ports {A B C}] -clock clk

# Define output delay relative to the clock
set_output_delay -max 2 [get_ports {F1 F2}] -clock clk
set_output_delay -min 1 [get_ports {F1 F2}] -clock clk
