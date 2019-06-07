set_host_options -max_cores 2

set user_name $::env(USER)
set design_name history_fsm_chip

set rtl_dir /home/msbnn/digital/$design_name/rtl
set syn_dir /sim/$user_name/digital/$design_name/syn
set par_dir /sim/$user_name/digital/$design_name/par

file mkdir $par_dir

source ./01_design_setup.tcl
source ./02_design_planning.tcl
source ./03_placement.tcl
source ./04_cts.tcl
source ./05_route.tcl
source ./06_dfm.tcl
source ./07_streamout.tcl
