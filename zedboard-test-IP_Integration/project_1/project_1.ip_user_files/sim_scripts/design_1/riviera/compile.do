transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xilinx_vip
vlib riviera/xpm
vlib riviera/neorv32
vlib riviera/xil_defaultlib
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_vip_v1_1_15
vlib riviera/processing_system7_vip_v1_0_17
vlib riviera/lib_cdc_v1_0_2
vlib riviera/proc_sys_reset_v5_0_14
vlib riviera/xlconstant_v1_1_8
vlib riviera/util_vector_logic_v2_0_3
vlib riviera/xlslice_v1_0_3
vlib riviera/xlconcat_v2_1_5
vlib riviera/generic_baseblocks_v2_1_1
vlib riviera/fifo_generator_v13_2_9
vlib riviera/axi_data_fifo_v2_1_28
vlib riviera/axi_register_slice_v2_1_29
vlib riviera/axi_protocol_converter_v2_1_29

vmap xilinx_vip riviera/xilinx_vip
vmap xpm riviera/xpm
vmap neorv32 riviera/neorv32
vmap xil_defaultlib riviera/xil_defaultlib
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_15 riviera/axi_vip_v1_1_15
vmap processing_system7_vip_v1_0_17 riviera/processing_system7_vip_v1_0_17
vmap lib_cdc_v1_0_2 riviera/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_14 riviera/proc_sys_reset_v5_0_14
vmap xlconstant_v1_1_8 riviera/xlconstant_v1_1_8
vmap util_vector_logic_v2_0_3 riviera/util_vector_logic_v2_0_3
vmap xlslice_v1_0_3 riviera/xlslice_v1_0_3
vmap xlconcat_v2_1_5 riviera/xlconcat_v2_1_5
vmap generic_baseblocks_v2_1_1 riviera/generic_baseblocks_v2_1_1
vmap fifo_generator_v13_2_9 riviera/fifo_generator_v13_2_9
vmap axi_data_fifo_v2_1_28 riviera/axi_data_fifo_v2_1_28
vmap axi_register_slice_v2_1_29 riviera/axi_register_slice_v2_1_29
vmap axi_protocol_converter_v2_1_29 riviera/axi_protocol_converter_v2_1_29

vlog -work xilinx_vip  -incr "+incdir+/cad/xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l neorv32 -l xil_defaultlib -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l xlconstant_v1_1_8 -l util_vector_logic_v2_0_3 -l xlslice_v1_0_3 -l xlconcat_v2_1_5 -l generic_baseblocks_v2_1_1 -l fifo_generator_v13_2_9 -l axi_data_fifo_v2_1_28 -l axi_register_slice_v2_1_29 -l axi_protocol_converter_v2_1_29 \
"/cad/xilinx/Vivado/2023.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/cad/xilinx/Vivado/2023.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/cad/xilinx/Vivado/2023.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/cad/xilinx/Vivado/2023.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/cad/xilinx/Vivado/2023.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/cad/xilinx/Vivado/2023.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/cad/xilinx/Vivado/2023.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/cad/xilinx/Vivado/2023.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/cad/xilinx/Vivado/2023.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -incr "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/6b2b/hdl" "+incdir+/cad/xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l neorv32 -l xil_defaultlib -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l xlconstant_v1_1_8 -l util_vector_logic_v2_0_3 -l xlslice_v1_0_3 -l xlconcat_v2_1_5 -l generic_baseblocks_v2_1_1 -l fifo_generator_v13_2_9 -l axi_data_fifo_v2_1_28 -l axi_register_slice_v2_1_29 -l axi_protocol_converter_v2_1_29 \
"/cad/xilinx/Vivado/2023.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/cad/xilinx/Vivado/2023.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  -incr \
"/cad-auto/xilinx/Vivado/2023.2/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work neorv32 -93  -incr \
"../../../bd/design_1/ipshared/2266/src/neorv32/neorv32_package.vhd" \
"../../../bd/design_1/ipshared/2266/src/neorv32/neorv32_application_image.vhd" \
"../../../bd/design_1/ipshared/2266/src/neorv32/neorv32_boot_rom.vhd" \
"../../../bd/design_1/ipshared/2266/src/neorv32/neorv32_bootloader_image.vhd" \
"../../../bd/design_1/ipshared/2266/src/neorv32/neorv32_intercon.vhd" \
"../../../bd/design_1/ipshared/2266/src/neorv32/neorv32_cache.vhd" \
"../../../bd/design_1/ipshared/2266/src/neorv32/neorv32_cfs.vhd" \
"../../../bd/design_1/ipshared/2266/src/neorv32/neorv32_clockgate.vhd" \
"../../../bd/design_1/ipshared/2266/src/neorv32/neorv32_fifo.vhd" \
"../../../bd/design_1/ipshared/2266/src/neorv32/neorv32_cpu_decompressor.vhd" \
"../../../bd/design_1/ipshared/2266/src/neorv32/neorv32_cpu_control.vhd" \
"../../../bd/design_1/ipshared/2266/src/neorv32/neorv32_cpu_regfile.vhd" \
"../../../bd/design_1/ipshared/2266/src/neorv32/neorv32_cpu_cp_shifter.vhd" \
"../../../bd/design_1/ipshared/2266/src/neorv32/neorv32_cpu_cp_muldiv.vhd" \
"../../../bd/design_1/ipshared/2266/src/neorv32/neorv32_cpu_cp_bitmanip.vhd" \
"../../../bd/design_1/ipshared/2266/src/neorv32/neorv32_cpu_cp_fpu.vhd" \
"../../../bd/design_1/ipshared/2266/src/neorv32/neorv32_cpu_cp_cfu.vhd" \
"../../../bd/design_1/ipshared/2266/src/neorv32/neorv32_cpu_cp_cond.vhd" \
"../../../bd/design_1/ipshared/2266/src/neorv32/neorv32_cpu_alu.vhd" \
"../../../bd/design_1/ipshared/2266/src/neorv32/neorv32_cpu_lsu.vhd" \
"../../../bd/design_1/ipshared/2266/src/neorv32/neorv32_cpu_pmp.vhd" \
"../../../bd/design_1/ipshared/2266/src/neorv32/neorv32_cpu.vhd" \
"../../../bd/design_1/ipshared/2266/src/neorv32/neorv32_crc.vhd" \
"../../../bd/design_1/ipshared/2266/src/neorv32/neorv32_debug_dm.vhd" \
"../../../bd/design_1/ipshared/2266/src/neorv32/neorv32_debug_dtm.vhd" \
"../../../bd/design_1/ipshared/2266/src/neorv32/neorv32_dma.vhd" \
"../../../bd/design_1/ipshared/2266/src/neorv32/neorv32_dmem.entity.vhd" \
"../../../bd/design_1/ipshared/2266/src/neorv32/neorv32_dmem.default.vhd" \
"../../../bd/design_1/ipshared/2266/src/neorv32/neorv32_gpio.vhd" \
"../../../bd/design_1/ipshared/2266/src/neorv32/neorv32_gptmr.vhd" \
"../../../bd/design_1/ipshared/2266/src/neorv32/neorv32_imem.entity.vhd" \
"../../../bd/design_1/ipshared/2266/src/neorv32/neorv32_imem.default.vhd" \
"../../../bd/design_1/ipshared/2266/src/neorv32/neorv32_mtime.vhd" \
"../../../bd/design_1/ipshared/2266/src/neorv32/neorv32_neoled.vhd" \
"../../../bd/design_1/ipshared/2266/src/neorv32/neorv32_onewire.vhd" \
"../../../bd/design_1/ipshared/2266/src/neorv32/neorv32_pwm.vhd" \
"../../../bd/design_1/ipshared/2266/src/neorv32/neorv32_sdi.vhd" \
"../../../bd/design_1/ipshared/2266/src/neorv32/neorv32_slink.vhd" \
"../../../bd/design_1/ipshared/2266/src/neorv32/neorv32_spi.vhd" \
"../../../bd/design_1/ipshared/2266/src/neorv32/neorv32_sysinfo.vhd" \
"../../../bd/design_1/ipshared/2266/src/neorv32/neorv32_xip.vhd" \
"../../../bd/design_1/ipshared/2266/src/neorv32/neorv32_xbus.vhd" \
"../../../bd/design_1/ipshared/2266/src/neorv32/neorv32_wdt.vhd" \
"../../../bd/design_1/ipshared/2266/src/neorv32/neorv32_uart.vhd" \
"../../../bd/design_1/ipshared/2266/src/neorv32/neorv32_twi.vhd" \
"../../../bd/design_1/ipshared/2266/src/neorv32/neorv32_trng.vhd" \
"../../../bd/design_1/ipshared/2266/src/neorv32/neorv32_xirq.vhd" \
"../../../bd/design_1/ipshared/2266/src/neorv32/neorv32_top.vhd" \
"../../../bd/design_1/ipshared/2266/src/neorv32/neorv32_vivado_ip.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/design_1/ip/design_1_neorv32_vivado_ip_0_0/sim/design_1_neorv32_vivado_ip_0_0.vhd" \

vlog -work axi_infrastructure_v1_1_0  -incr -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/6b2b/hdl" "+incdir+/cad/xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l neorv32 -l xil_defaultlib -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l xlconstant_v1_1_8 -l util_vector_logic_v2_0_3 -l xlslice_v1_0_3 -l xlconcat_v2_1_5 -l generic_baseblocks_v2_1_1 -l fifo_generator_v13_2_9 -l axi_data_fifo_v2_1_28 -l axi_register_slice_v2_1_29 -l axi_protocol_converter_v2_1_29 \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_15  -incr "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/6b2b/hdl" "+incdir+/cad/xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l neorv32 -l xil_defaultlib -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l xlconstant_v1_1_8 -l util_vector_logic_v2_0_3 -l xlslice_v1_0_3 -l xlconcat_v2_1_5 -l generic_baseblocks_v2_1_1 -l fifo_generator_v13_2_9 -l axi_data_fifo_v2_1_28 -l axi_register_slice_v2_1_29 -l axi_protocol_converter_v2_1_29 \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/5753/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_17  -incr "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/6b2b/hdl" "+incdir+/cad/xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l neorv32 -l xil_defaultlib -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l xlconstant_v1_1_8 -l util_vector_logic_v2_0_3 -l xlslice_v1_0_3 -l xlconcat_v2_1_5 -l generic_baseblocks_v2_1_1 -l fifo_generator_v13_2_9 -l axi_data_fifo_v2_1_28 -l axi_register_slice_v2_1_29 -l axi_protocol_converter_v2_1_29 \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/6b2b/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/6b2b/hdl" "+incdir+/cad/xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l neorv32 -l xil_defaultlib -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l xlconstant_v1_1_8 -l util_vector_logic_v2_0_3 -l xlslice_v1_0_3 -l xlconcat_v2_1_5 -l generic_baseblocks_v2_1_1 -l fifo_generator_v13_2_9 -l axi_data_fifo_v2_1_28 -l axi_register_slice_v2_1_29 -l axi_protocol_converter_v2_1_29 \
"../../../bd/design_1/ip/design_1_processing_system7_0_0/sim/design_1_processing_system7_0_0.v" \

vcom -work lib_cdc_v1_0_2 -93  -incr \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_14 -93  -incr \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/408c/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/design_1/ip/design_1_rst_ps7_0_50M_0/sim/design_1_rst_ps7_0_50M_0.vhd" \

vlog -work xlconstant_v1_1_8  -incr -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/6b2b/hdl" "+incdir+/cad/xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l neorv32 -l xil_defaultlib -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l xlconstant_v1_1_8 -l util_vector_logic_v2_0_3 -l xlslice_v1_0_3 -l xlconcat_v2_1_5 -l generic_baseblocks_v2_1_1 -l fifo_generator_v13_2_9 -l axi_data_fifo_v2_1_28 -l axi_register_slice_v2_1_29 -l axi_protocol_converter_v2_1_29 \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/d390/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/6b2b/hdl" "+incdir+/cad/xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l neorv32 -l xil_defaultlib -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l xlconstant_v1_1_8 -l util_vector_logic_v2_0_3 -l xlslice_v1_0_3 -l xlconcat_v2_1_5 -l generic_baseblocks_v2_1_1 -l fifo_generator_v13_2_9 -l axi_data_fifo_v2_1_28 -l axi_register_slice_v2_1_29 -l axi_protocol_converter_v2_1_29 \
"../../../bd/design_1/ip/design_1_xlconstant_0_0/sim/design_1_xlconstant_0_0.v" \

vlog -work util_vector_logic_v2_0_3  -incr -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/6b2b/hdl" "+incdir+/cad/xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l neorv32 -l xil_defaultlib -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l xlconstant_v1_1_8 -l util_vector_logic_v2_0_3 -l xlslice_v1_0_3 -l xlconcat_v2_1_5 -l generic_baseblocks_v2_1_1 -l fifo_generator_v13_2_9 -l axi_data_fifo_v2_1_28 -l axi_register_slice_v2_1_29 -l axi_protocol_converter_v2_1_29 \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/5e7b/hdl/util_vector_logic_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/6b2b/hdl" "+incdir+/cad/xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l neorv32 -l xil_defaultlib -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l xlconstant_v1_1_8 -l util_vector_logic_v2_0_3 -l xlslice_v1_0_3 -l xlconcat_v2_1_5 -l generic_baseblocks_v2_1_1 -l fifo_generator_v13_2_9 -l axi_data_fifo_v2_1_28 -l axi_register_slice_v2_1_29 -l axi_protocol_converter_v2_1_29 \
"../../../bd/design_1/ip/design_1_util_vector_logic_0_0/sim/design_1_util_vector_logic_0_0.v" \

vlog -work xlslice_v1_0_3  -incr -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/6b2b/hdl" "+incdir+/cad/xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l neorv32 -l xil_defaultlib -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l xlconstant_v1_1_8 -l util_vector_logic_v2_0_3 -l xlslice_v1_0_3 -l xlconcat_v2_1_5 -l generic_baseblocks_v2_1_1 -l fifo_generator_v13_2_9 -l axi_data_fifo_v2_1_28 -l axi_register_slice_v2_1_29 -l axi_protocol_converter_v2_1_29 \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/217a/hdl/xlslice_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/6b2b/hdl" "+incdir+/cad/xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l neorv32 -l xil_defaultlib -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l xlconstant_v1_1_8 -l util_vector_logic_v2_0_3 -l xlslice_v1_0_3 -l xlconcat_v2_1_5 -l generic_baseblocks_v2_1_1 -l fifo_generator_v13_2_9 -l axi_data_fifo_v2_1_28 -l axi_register_slice_v2_1_29 -l axi_protocol_converter_v2_1_29 \
"../../../bd/design_1/ip/design_1_xlslice_0_0/sim/design_1_xlslice_0_0.v" \

vlog -work xlconcat_v2_1_5  -incr -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/6b2b/hdl" "+incdir+/cad/xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l neorv32 -l xil_defaultlib -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l xlconstant_v1_1_8 -l util_vector_logic_v2_0_3 -l xlslice_v1_0_3 -l xlconcat_v2_1_5 -l generic_baseblocks_v2_1_1 -l fifo_generator_v13_2_9 -l axi_data_fifo_v2_1_28 -l axi_register_slice_v2_1_29 -l axi_protocol_converter_v2_1_29 \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/147b/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/6b2b/hdl" "+incdir+/cad/xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l neorv32 -l xil_defaultlib -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l xlconstant_v1_1_8 -l util_vector_logic_v2_0_3 -l xlslice_v1_0_3 -l xlconcat_v2_1_5 -l generic_baseblocks_v2_1_1 -l fifo_generator_v13_2_9 -l axi_data_fifo_v2_1_28 -l axi_register_slice_v2_1_29 -l axi_protocol_converter_v2_1_29 \
"../../../bd/design_1/ip/design_1_xlconcat_0_0/sim/design_1_xlconcat_0_0.v" \

vlog -work generic_baseblocks_v2_1_1  -incr -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/6b2b/hdl" "+incdir+/cad/xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l neorv32 -l xil_defaultlib -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l xlconstant_v1_1_8 -l util_vector_logic_v2_0_3 -l xlslice_v1_0_3 -l xlconcat_v2_1_5 -l generic_baseblocks_v2_1_1 -l fifo_generator_v13_2_9 -l axi_data_fifo_v2_1_28 -l axi_register_slice_v2_1_29 -l axi_protocol_converter_v2_1_29 \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/10ab/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_9  -incr -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/6b2b/hdl" "+incdir+/cad/xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l neorv32 -l xil_defaultlib -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l xlconstant_v1_1_8 -l util_vector_logic_v2_0_3 -l xlslice_v1_0_3 -l xlconcat_v2_1_5 -l generic_baseblocks_v2_1_1 -l fifo_generator_v13_2_9 -l axi_data_fifo_v2_1_28 -l axi_register_slice_v2_1_29 -l axi_protocol_converter_v2_1_29 \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/ac72/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_9 -93  -incr \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/ac72/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_9  -incr -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/6b2b/hdl" "+incdir+/cad/xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l neorv32 -l xil_defaultlib -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l xlconstant_v1_1_8 -l util_vector_logic_v2_0_3 -l xlslice_v1_0_3 -l xlconcat_v2_1_5 -l generic_baseblocks_v2_1_1 -l fifo_generator_v13_2_9 -l axi_data_fifo_v2_1_28 -l axi_register_slice_v2_1_29 -l axi_protocol_converter_v2_1_29 \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/ac72/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_28  -incr -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/6b2b/hdl" "+incdir+/cad/xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l neorv32 -l xil_defaultlib -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l xlconstant_v1_1_8 -l util_vector_logic_v2_0_3 -l xlslice_v1_0_3 -l xlconcat_v2_1_5 -l generic_baseblocks_v2_1_1 -l fifo_generator_v13_2_9 -l axi_data_fifo_v2_1_28 -l axi_register_slice_v2_1_29 -l axi_protocol_converter_v2_1_29 \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/279e/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_29  -incr -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/6b2b/hdl" "+incdir+/cad/xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l neorv32 -l xil_defaultlib -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l xlconstant_v1_1_8 -l util_vector_logic_v2_0_3 -l xlslice_v1_0_3 -l xlconcat_v2_1_5 -l generic_baseblocks_v2_1_1 -l fifo_generator_v13_2_9 -l axi_data_fifo_v2_1_28 -l axi_register_slice_v2_1_29 -l axi_protocol_converter_v2_1_29 \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/ff9f/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_protocol_converter_v2_1_29  -incr -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/6b2b/hdl" "+incdir+/cad/xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l neorv32 -l xil_defaultlib -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l xlconstant_v1_1_8 -l util_vector_logic_v2_0_3 -l xlslice_v1_0_3 -l xlconcat_v2_1_5 -l generic_baseblocks_v2_1_1 -l fifo_generator_v13_2_9 -l axi_data_fifo_v2_1_28 -l axi_register_slice_v2_1_29 -l axi_protocol_converter_v2_1_29 \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/a63f/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/6b2b/hdl" "+incdir+/cad/xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l neorv32 -l xil_defaultlib -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l xlconstant_v1_1_8 -l util_vector_logic_v2_0_3 -l xlslice_v1_0_3 -l xlconcat_v2_1_5 -l generic_baseblocks_v2_1_1 -l fifo_generator_v13_2_9 -l axi_data_fifo_v2_1_28 -l axi_register_slice_v2_1_29 -l axi_protocol_converter_v2_1_29 \
"../../../bd/design_1/ip/design_1_auto_pc_0/sim/design_1_auto_pc_0.v" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/design_1/sim/design_1.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

