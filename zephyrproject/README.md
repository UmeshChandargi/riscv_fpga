# Zephyr OS workspace for NEORV32 on the Xilinx Zedboard FPGA Board

This repository is obtained by making changes to the [`original repo`](https://github.com/zephyrproject-rtos/zephyr/tree/main) by cloning it. These changes are done to support the neorv32 softcore processor on the zedboard.

The device tree config for the neorv board  provides a minimalistic interface (UART, LEDs, Shell with memory read write, Network, Logging features and finally DHCPv4 protocol).

* Zephyr version: 3.6.99
* Board: neorv32, Revision: 1.9.8
* FPGA: Xilinx Artix-7 `xc7z020clg484-1`
* Toolchain:
	* West version: 1.2.0
	* CMake version: 3.21.1
	* Python3: 3.12.3
	* zephyr-sdk-0.16.8


## Device Tree Configuration

:information_source: See the dts file [`zephyrproject/zephyr/boards/others/neorv32/neorv32.dts`](https://github.com/) for
configuration of the board and its interfaces. The detailed explaination can be found in [`here`]()

