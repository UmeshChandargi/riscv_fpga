set board "zedboard"

# Create and clear output directory
set outputdir work
file mkdir $outputdir

set files [glob -nocomplain "$outputdir/*"]
if {[llength $files] != 0} {
    puts "deleting contents of $outputdir"
    file delete -force {*}[glob -directory $outputdir *]; # clear folder contents
} else {
    puts "$outputdir is empty"
}

set a7part "xc7z020clg484-1"
set a7prj ${board}-test-setup

# Create project
create_project -part $a7part $a7prj $outputdir

set_property board_part digilentinc.com:zedboard:part0:1.1 [current_project]
set_property target_language VHDL [current_project]

# Define filesets

## Core: NEORV32
add_files [glob ./../../neorv32/rtl/core/*.vhd] ./../../neorv32/rtl/core/mem/neorv32_dmem.default.vhd ./../../neorv32/rtl/core/mem/neorv32_imem.default.vhd
set_property library neorv32 [get_files [glob ./../../neorv32/rtl/core/*.vhd]]
set_property library neorv32 [get_files [glob ./../../neorv32/rtl/core/mem/neorv32_*mem.default.vhd]]

## Design: processor subsystem template, and (optionally) BoardTop and/or other additional sources
set fileset_design ./../../neorv32/rtl/test_setups/neorv32_test_setup_bootloader.vhd

## Constraints
set fileset_constraints [glob ./*.xdc]

## Simulation-only sources
set fileset_sim [list ./../../neorv32/sim/simple/neorv32_tb.simple.vhd ./../../neorv32/sim/simple/uart_rx.simple.vhd]

# Add source files

## Design
add_files $fileset_design

## Constraints
add_files -fileset constrs_1 $fileset_constraints

## Simulation-only
add_files -fileset sim_1 $fileset_sim

## Change generic parameters of top design
set_property generic {MEM_INT_IMEM_SIZE=65536 MEM_INT_DMEM_SIZE=32768} [current_fileset]

# Run synthesis, implementation and bitstream generation
launch_runs impl_1 -to_step write_bitstream -jobs 4
wait_on_run impl_1
