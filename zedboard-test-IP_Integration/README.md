# NEORV32 Test Setup for the Zedboard

This setup is done for the ethernet driver of the zynq700 controlled by neorv32. The workspace is a part of the bigger git repo 
[`neorv32-setups`](https://github.com/stnolting/neorv32-setups/tree/main) 
This new [`zedboard-test-IP_Integration`] test setup should be added to the following location [`neorv32-setups/vivado/`](https://github.com/stnolting/neorv32-setups/tree/main/vivado) 
top entity that provides a minimalistic interface (clock, reset, UART, 4 LED, external JTAG for the neorv, ethernet driver of the PS zynq7000).

* FPGA Board: :books: [Zedboard](https://files.digilent.com/resources/programmable-logic/zedboard/ZedBoard_HW_UG_v2_2.pdf)
* FPGA: Xilinx-IC SOC CORTEX-A9 ARTIX-7 484BGA `xc7z020clg484-1`
* Toolchain: Xilinx Vivado (tested with Vivado 2024.1)


## NEORV32 Configuration

:information_source: See the Block design [`project_1/project_1.srcs/sources_1/bd/design_1/design_1.bd` ](https://github.com/UmeshChandargi/riscv_fpga/blob/main/zedboard-test-IP_Integration/project_1/project_1.srcs/sources_1/bd/design_1/design_1.bd) for
configuration and entity details and [`project_1/project_1.srcs/constrs_1/new/design_1.xdc`](https://github.com/UmeshChandargi/riscv_fpga/blob/main/zedboard-test-IP_Integration/project_1/project_1.srcs/constrs_1/new/design_1.xdc)
for the according FPGA pin mapping.

* CPU: `RISCV- C , Zicsr and M ISA extension` 
  * C (Compresses Instructions)
  * M (Integer Multiplication and Division)
  * Zicsr (Control and Status Register (CSR) Instructions)
* Memory: 256kB instruction memory (internal IMEM), 64kB data memory (internal DMEM), bootloader ROM
* Peripherals: `GPIO`, `External JTAG`, `UART0`, `ETHERNET`
* Clock: 100MHz from on-board oscillator
* Reset: Via dedicated on-board "RESET" button
* GPIO output port `gpio_o`. Connected to 8 LEDs
* UART0 signals `uart0_txd_o` and `uart0_rxd_i` are connected to the PMODs and further connected to an external USB-UART chip
* JTAG signals `jtag_trst_i`, `jtag_tck_i`, `jtag_tdi_i`, `jtag_tms_i` and `jtag_tdo_o` are connected to PMODs which are further connected to an external JTAG `ATMEL SAM-ICE JLink` adapter


