onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc"  -L xilinx_vip -L xpm -L neorv32 -L xil_defaultlib -L axi_infrastructure_v1_1_0 -L axi_vip_v1_1_15 -L processing_system7_vip_v1_0_17 -L lib_cdc_v1_0_2 -L proc_sys_reset_v5_0_14 -L xlconstant_v1_1_8 -L util_vector_logic_v2_0_3 -L xlslice_v1_0_3 -L xlconcat_v2_1_5 -L generic_baseblocks_v2_1_1 -L fifo_generator_v13_2_9 -L axi_data_fifo_v2_1_28 -L axi_register_slice_v2_1_29 -L axi_protocol_converter_v2_1_29 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.design_1 xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {design_1.udo}

run 1000ns

quit -force
