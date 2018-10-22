# Simple synthesis script to use FreePDK/45nm libraries

file mkdir reports
file mkdir netlist

remove_design -all

define_design_lib DESIGN -path "DESIGN"

#####################
# Config Variables
#####################
# The clock input signal name.
set CLK  "clk"
# The reset input signal name.
set RST  "rst"

set DRIVER_CELL "INV_X1"
set DR_CELL_OUT "ZN"

#####################
# Path Variables
#####################
set SYN  /cad/synopsys/syn/M-2017.06-SP3/libraries/syn/
set OPENCELL_45 ../tech/NangateOpenCellLibrary_PDKv1_3_v2010_12/

#####################
# Set Design Library
#####################

# OpenCell 45nm Library
set link_library [list NangateOpenCellLibrary.db dw_foundation.sldb]
set target_library [list NangateOpenCellLibrary.db]

set synthetic_library [list  dw_foundation.sldb]
set dw_lib     $SYN
set sym_lib    $OPENCELL_45
set target_lib $OPENCELL_45

set search_path [list ./ ../rtl/  $dw_lib $target_lib $sym_lib]

###################
# Read Design
###################

analyze -library RAST -format sverilog [glob ${RUNDIR}/genesis_synth/*.v]
elaborate ${DESIGN_TARGET} -architecture verilog -library RAST

##################################
# Design Optimization Constraints
##################################

# create clock
create_clock $CLK -period $CLK_PERIOD

# set output delay and load
set_fanout_load 4 [get_ports "*" -filter {@port_direction == out} ]
set_output_delay [ expr $CLK_PERIOD*3/4 ] -clock $CLK  [get_ports "*" -filter {@port_direction == out} ]

set_wire_load_model -name 1K_hvratio_1_4
set_wire_load_mode top

set_max_fanout 4.0 [get_ports "*" -filter {@port_direction != out} ]

# set input delay on all input ports except 'clk' and 'rst'
set all_inputs_wo_rst_clk [remove_from_collection [remove_from_collection [all_inputs] [get_port $CLK]] [get_port $RST]]
set_input_delay -clock $CLK [ expr $CLK_PERIOD*3/4 ] $all_inputs_wo_rst_clk
set_driving_cell -lib_cell $DRIVER_CELL -pin $DR_CELL_OUT [ get_ports "*" -filter {@port_direction == in} ]

# set target die area
set_max_area $TARGET_AREA

# set DC don't touch reset network
remove_driving_cell $RST
set_drive 0 $RST
set_dont_touch_network $RST

##########################################
# Synthesize Design (Optimize for Timing)
##########################################
compile_ultra -timing_high_effort_script

##########################
# Analyze Design 
##########################
redirect "reports/design_report" { report_design }
check_design
redirect "reports/design_check" {check_design }
report_area 
redirect "reports/area_report" { report_area }
#redirect "reports/area_hier_report" { report_area -hier }
report_power
redirect "reports/power_report" { report_power -analysis_effort hi }
#redirect "reports/power_hier_report" { report_power -hier }
#report_timing -path full -delay max -max_paths 10
#redirect "report/timing_report_max" { report_timing -path full -delay max -max_paths 200 }
#report_timing -path full -delay min -max_paths 10
report_timing
redirect "reports/timing_report_maxsm" { report_timing -significant_digits 4 }
#redirect "reports/timing_report_min" { report_timing -path full -delay min -max_paths 50 }
#report_timing_requirements
#redirect "reports/timing_requirements_report" { report_timing_requirements }
report_qor
redirect "reports/qor_report" { report_qor }
check_error
redirect "reports/error_checking_report" { check_error }

###################################
# Save the Design DataBase
###################################
write_sdf -version 2.1 "netlist/sdf_dut"
write -hierarchy -format verilog -output "netlist/dut.gv"
write -format verilog -hier -o "netlist/dut.psv"
write -format ddc -hierarchy -output "dut.mapped.ddc"

#Concise Results in a singular file
echo $CLK_PERIOD >> results.txt
sh cat reports/error_checking_report >> results.txt
sh grep -i slack reports/timing_report_maxsm >> results.txt
sh cat reports/power_report | grep Total >> results.txt
sh cat reports/power_report | grep Cell | grep Leakage >> results.txt
sh cat reports/area_report | grep Total | grep cell >> results.txt

exit 
