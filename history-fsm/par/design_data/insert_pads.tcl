######## CORNERS
create_cell {corner_lb} PCORNER_G
create_cell {corner_lt} PCORNER_G
create_cell {corner_rt} PCORNER_G
create_cell {corner_rb} PCORNER_G

######## WEST
#exists pad_clk
#exists pad_reset
#exists pad_a

######## NORTH
create_cell {pad_vsspst_n} PVSS2DGZ_V_G
create_cell {pad_vdd} PVDD1DGZ_V_G 
create_cell {pad_vddpst_n} PVDD2POC_V_G

######## SOUTH
create_cell {pad_vsspst_s} PVSS2DGZ_V_G
create_cell {pad_vss} PVSS1DGZ_V_G
create_cell {pad_vddpst_s} PVDD2DGZ_V_G

######## EAST
#exists pad_x
#exists pad_y
