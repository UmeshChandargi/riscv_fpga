# NEORV32

## Overview

The NEORV32 is an open-source RISC-V compatible processor system intended as a ready-to-go auxiliary processor within larger SoC designs or as a stand-alone customizable microcontroller.

For more information about the NEORV32, see the following websites:

- [The NEORV32 RISC-V Processor GitHub](https://github.com/stnolting/neorv32)
- [The NEORV32 RISC-V Processor Datasheet](https://stnolting.github.io/neorv32/#datasheet)
- [The NEORV32 RISC-V Processor User Guide](https://stnolting.github.io/neorv32/)

The currently supported version is 1.8.6.

## Supported Features

The `neorv32` board configuration can be used as a generic definition for NEORV32-based boards. Customization to fit custom NEORV32 implementations can be done using [devicetree overlays](https://docs.zephyrproject.org/latest/guides/dts/usage.html#use-dt-overlays).

Zephyr currently supports the following hardware features of the NEORV32 Processor (SoC):

| Interface | Controller | Driver/Component                    |
|-----------|------------|-------------------------------------|
| INTC      | on-chip    | interrupt controller                |
| MTIME     | on-chip    | system timer                        |
| GPIO      | on-chip    | gpio, non-interrupt                 |
| UART      | on-chip    | serial port-polling; serial port-interrupt |
| TRNG      | on-chip    | entropy                             |

The default board configuration for the NEORV32 Processor (SoC) can be found in the defconfig file: `boards/riscv/neorv32/neorv32_defconfig`.

## System Clock

The default board configuration assumes a system clock of 100 MHz. The clock frequency can be overridden by changing the `clock-frequency` property of the `cpu0` devicetree node.

## CPU

The default board configuration assumes the NEORV32 CPU implementation has the following RISC-V ISA extensions enabled:

- C (Compressed Instructions)
- M (Integer Multiplication and Division)
- Zicsr (Control and Status Register (CSR) Instructions)

## Internal Instruction Memory

The default board configuration assumes the NEORV32 SoC implementation has a 256k byte internal instruction memory (IMEM) for code execution. The size of the instruction memory can be overridden by changing the `reg` property of the `imem` devicetree node.

## Internal Data Memory

The default board configuration assumes the NEORV32 SoC implementation has a 64k byte internal data memory (DMEM). The size of the data memory can be overridden by changing the `reg` property of the `dmem` devicetree node.

## Serial Port

The default configuration assumes the NEORV32 SoC implements UART0 for use as the system console.

> **Note:** The default configuration uses a baud rate of 19200 to match that of the standard NEORV32 bootloader. The baud rate can be changed by modifying the `current-speed` property of the `uart0` devicetree node.

## True Random-Number Generator

The True Random-Number Generator (TRNG) of the NEORV32 is supported but disabled by default. For NEORV32 SoC implementations supporting the TRNG, support can be enabled by setting the `status` property of the `trng` devicetree node to `okay`.

## Programming and Debugging

First, configure the FPGA with the NEORV32 bitstream as described in the NEORV32 user guide.

Next, build and flash applications as usual (see [Building and Running an Application](https://docs.zephyrproject.org/latest/getting_started/index.html) for more details).

## Configuring a Console

Use the following settings with your serial terminal of choice (minicom, putty, etc.):

- Speed: 19200
- Data: 8 bits
- Parity: None
- Stop bits: 1

## Flashing via JTAG

Here is an example for building and flashing the [Hello World](https://docs.zephyrproject.org/latest/samples/hello_world/README.html) application for the NEORV32 via JTAG. Flashing via JTAG requires a NEORV32 SoC implementation with the On-Chip Debugger (OCD) and bootloader enabled.

> **Note:** If the bootloader is not enabled, the internal instruction memory (IMEM) is configured as ROM which cannot be modified via JTAG.
Here we use the ATMEL SAM-ICE Jlink JTAG adapter

Installing Openocd can be followed by the instructions in this [REPO](https://github.com/riscv-collab/riscv-openocd)

Following the three steps: 

    ./bootstrap (when building from the git repository)   

    ./configure --enable-jlink 

      make 
      sudo make install 

 

Then install openocd. 

``` sudo apt install openocd 
```
 

Then run openocd for my device. 


```openocd -f GIT_repo/neorv32-setups/neorv32/sw/openocd/openocd_neorv32.cfg 

Open On-Chip Debugger 0.12.0+dev-00634-g23c33e1d3 (2024-07-12-12:09)
Licensed under GNU GPL v2
For bug reports, read
	http://openocd.org/doc/doxygen/bugs.html
Info : J-Link ARM V8 compiled Sep 22 2014 23:26:43
Info : Hardware version: 8.00
Info : VTarget = 3.345 V
Info : clock speed 100 kHz
Info : JTAG tap: neorv32.cpu tap/device found: 0x00000001 (mfg: 0x000 (<invalid>), part: 0x0000, ver: 0x0)
Info : datacount=1 progbufsize=2
Info : Disabling abstract command reads from CSRs.
Info : Examined RISC-V core; found 1 harts
Info :  hart 0: XLEN=32, misa=0x40801104
Info : [neorv32.cpu.0] Examination succeed
Info : [neorv32.cpu.0] starting gdb server on 3333
Info : Listening on port 3333 for gdb connections
Target HALTED. Ready for remote connections.
Info : Listening on port 6666 for tcl connections
Info : Listening on port 4444 for telnet connections
```

Now start gdb. Install [gdb riscv](https://github.com/riscv-collab/riscv-gnu-toolchain) from the below steps

```
git clone https://github.com/riscv/riscv-gnu-toolchain

sudo apt-get install autoconf automake autotools-dev curl python3 libmpc-dev libmpfr-dev libgmp-dev gawk build-essential bison flex texinfo gperf libtool patchutils bc zlib1g-dev libexpat-dev ninja-build

./configure --prefix=/opt/riscv --with-arch=rv32gc --with-abi=ilp32d

make linux


```
And then add `/opt/riscv/bin` to your `PATH`

Start gdb

```
riscv32-unknown-linux-gnu-gdb
GNU gdb (GDB) 14.2
Copyright (C) 2023 Free Software Foundation, Inc.
License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.
Type "show copying" and "show warranty" for details.
This GDB was configured as "--host=x86_64-pc-linux-gnu --target=riscv32-unknown-linux-gnu".
Type "show configuration" for configuration details.
For bug reporting instructions, please see:
<https://www.gnu.org/software/gdb/bugs/>.
Find the GDB manual and other documentation resources online at:
    <http://www.gnu.org/software/gdb/documentation/>.

For help, type "help".
Type "apropos word" to search for commands related to "word".


(gdb) target extended-remote localhost:3333
Remote debugging using localhost:3333
warning: No executable has been specified and target does not support
determining executable automatically.  Try using the "file" command.
0xffffc3f8 in ?? ()

(gdb) file build3/zephyr/zephyr.elf 
A program is being debugged already.
Are you sure you want to change the file? (y or n) y
Reading symbols from build3/zephyr/zephyr.elf...
(gdb) y

(gdb) load
Loading section rom_start, size 0x1a lma 0x0
Loading section reset, size 0x6a lma 0x1c
Loading section exceptions, size 0x146 lma 0x88
Loading section text, size 0x1b212 lma 0x1d0
Loading section initlevel, size 0x80 lma 0x1b3e4
Loading section device_area, size 0x8c lma 0x1b464
Loading section sw_isr_table, size 0x200 lma 0x1b4f0
Loading section log_const_area, size 0xf8 lma 0x1b6f0
Loading section log_backend_area, size 0x10 lma 0x1b7e8
Loading section shell_area, size 0x30 lma 0x1b7f8
Loading section shell_root_cmds_area, size 0x2c lma 0x1b828
Loading section shell_subcmds_area, size 0x244 lma 0x1b854
Loading section shell_dynamic_subcmds_area, size 0x8 lma 0x1ba98
Loading section rodata, size 0x6124 lma 0x1baa0
Loading section datas, size 0x1b8 lma 0x21bc4
Loading section device_states, size 0xe lma 0x21d7c
Loading section log_mpsc_pbuf_area, size 0x40 lma 0x21d8c
Loading section log_msg_ptr_area, size 0x4 lma 0x21dcc
Loading section log_dynamic_area, size 0x7c lma 0x21dd0
Loading section k_mem_slab_area, size 0x38 lma 0x21e4c
Loading section k_mutex_area, size 0x78 lma 0x21e84
Loading section k_msgq_area, size 0x30 lma 0x21efc
Loading section k_sem_area, size 0x30 lma 0x21f2c
Loading section net_buf_pool_area, size 0x58 lma 0x21f5c
Loading section net_if_area, size 0x90 lma 0x21fb4
Loading section net_if_dev_area, size 0x1c lma 0x22044
Loading section net_l2_area, size 0x10 lma 0x22060
Loading section .last_section, size 0x4 lma 0x22070
Start address 0x00000000, load size 139370
Transfer rate: 5 KB/sec, 3982 bytes/write.

(gdb) c
Continuing.

```
After flashing, you should see a message similar to the following in the terminal:

```
*** Booting Zephyr OS build zephyr-vn.n.nn  ***
Hello World! neorv32

```
## Uploading via UART
If the `CONFIG_BUILD_OUTPUT_BIN` option is enabled and the NEORV32 `image_gen` binary is available, the build system will automatically generate a `zephyr_exe.bin` file suitable for uploading to the NEORV32 via the built-in bootloader as described in the NEORV32 user guide.

## Debugging via JTAG
Debugging can be done using gdb commands

```
(gdb) set $pc=0

(gdb) break main

(gdb) tui enable

(gdb) step

(gdb) n

(gdb) info registers

```
