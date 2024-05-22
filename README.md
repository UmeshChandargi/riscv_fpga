# riscv_fpga
I will be working on implementing riscv core on fpga board.
An open source riscv is available called neorv32 which is based on riscv.
The documentaion and repository can be obtained here. (https://github.com/stnolting/neorv32)

I have choosen Xilinx Zedboard as the fpga for my implementation. (https://www.avnet.com/wps/portal/us/products/avnet-boards/avnet-board-families/zedboard)

Initial steps would be to have a test setup for Zedboard fpga implementing neorv softcore. The admin has created test setups for many fpga boards. I chose arty-a7-test-setup (https://github.com/stnolting/neorv32-setups/tree/main/vivado/arty-a7-test-setup)
and tweaked it for the Zedboard. The corresponding test setup is seen in this repository.
