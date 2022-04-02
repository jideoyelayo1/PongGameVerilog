set_property SRC_FILE_INFO {cfile:c:/Users/JideO/Downloads/PongGame/lab5_1.gen/sources_1/ip/clk_wiz_0/clk_wiz_0.xdc rfile:../lab5_1.gen/sources_1/ip/clk_wiz_0/clk_wiz_0.xdc id:1 order:EARLY scoped_inst:inst/inst} [current_design]
set_property SRC_FILE_INFO {cfile:C:/Users/JideO/Downloads/lab4_0/lab4/lab4.srcs/constrs_1/new/1.xdc rfile:../../lab4_0/lab4/lab4.srcs/constrs_1/new/1.xdc id:2} [current_design]
current_instance inst/inst
set_property src_info {type:SCOPED_XDC file:1 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1]] 0.100
current_instance
set_property src_info {type:XDC file:2 line:32 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN H17   IOSTANDARD LVCMOS33 } [get_ports { led1_B }]; #IO_L18P_T2_A24_15 Sch=led[0]
set_property src_info {type:XDC file:2 line:33 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN K15   IOSTANDARD LVCMOS33 } [get_ports { led2_B }]; #IO_L24P_T3_RS1_15 Sch=led[1]
set_property src_info {type:XDC file:2 line:34 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN J13   IOSTANDARD LVCMOS33 } [get_ports { led1_R }]; #IO_L17N_T2_A25_15 Sch=led[2]
set_property src_info {type:XDC file:2 line:35 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN N14   IOSTANDARD LVCMOS33 } [get_ports { led2_R }]; #IO_L8P_T1_D11_14 Sch=led[3]
set_property src_info {type:XDC file:2 line:36 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN R18   IOSTANDARD LVCMOS33 } [get_ports { led1_G }]; #IO_L7P_T1_D09_14 Sch=led[4]
set_property src_info {type:XDC file:2 line:37 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN V17   IOSTANDARD LVCMOS33 } [get_ports { led2_G }]; #IO_L18N_T2_A11_D27_14 Sch=led[5]
set_property src_info {type:XDC file:2 line:59 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN T10   IOSTANDARD LVCMOS33 } [get_ports { a }]; #IO_L24N_T3_A00_D16_14 Sch=ca
set_property src_info {type:XDC file:2 line:60 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN R10   IOSTANDARD LVCMOS33 } [get_ports { b }]; #IO_25_14 Sch=cb
set_property src_info {type:XDC file:2 line:61 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN K16   IOSTANDARD LVCMOS33 } [get_ports { c }]; #IO_25_15 Sch=cc
set_property src_info {type:XDC file:2 line:62 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN K13   IOSTANDARD LVCMOS33 } [get_ports { d }]; #IO_L17P_T2_A26_15 Sch=cd
set_property src_info {type:XDC file:2 line:63 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN P15   IOSTANDARD LVCMOS33 } [get_ports { e }]; #IO_L13P_T2_MRCC_14 Sch=ce
set_property src_info {type:XDC file:2 line:64 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN T11   IOSTANDARD LVCMOS33 } [get_ports { f }]; #IO_L19P_T3_A10_D26_14 Sch=cf
set_property src_info {type:XDC file:2 line:65 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN L18   IOSTANDARD LVCMOS33 } [get_ports { g }]; #IO_L4P_T0_D04_14 Sch=cg
set_property src_info {type:XDC file:2 line:69 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN J17   IOSTANDARD LVCMOS33 } [get_ports { an[0] }]; #IO_L23P_T3_FOE_B_15 Sch=an[0]
set_property src_info {type:XDC file:2 line:70 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN J18   IOSTANDARD LVCMOS33 } [get_ports { an[1] }]; #IO_L23N_T3_FWE_B_15 Sch=an[1]
set_property src_info {type:XDC file:2 line:71 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN T9    IOSTANDARD LVCMOS33 } [get_ports { an[2] }]; #IO_L24P_T3_A01_D17_14 Sch=an[2]
set_property src_info {type:XDC file:2 line:72 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN J14   IOSTANDARD LVCMOS33 } [get_ports { an[3] }]; #IO_L19P_T3_A22_15 Sch=an[3]
set_property src_info {type:XDC file:2 line:73 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN P14   IOSTANDARD LVCMOS33 } [get_ports { an[4] }]; #IO_L8N_T1_D12_14 Sch=an[4]
set_property src_info {type:XDC file:2 line:74 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN T14   IOSTANDARD LVCMOS33 } [get_ports { an[5] }]; #IO_L14P_T2_SRCC_14 Sch=an[5]
set_property src_info {type:XDC file:2 line:75 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN K2    IOSTANDARD LVCMOS33 } [get_ports { an[6] }]; #IO_L23P_T3_35 Sch=an[6]
set_property src_info {type:XDC file:2 line:76 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN U13   IOSTANDARD LVCMOS33 } [get_ports { an[7] }]; #IO_L23N_T3_A02_D18_14 Sch=an[7]
