## Clock signal
set_property -dict {PACKAGE_PIN Y9 IOSTANDARD LVCMOS33} [get_ports clk_i]
create_clock -period 10.000 -name clk_i [get_ports clk_i]

## LEDs
set_property -dict {PACKAGE_PIN T22 IOSTANDARD LVCMOS33} [get_ports {gpio_o[0]}]
set_property -dict {PACKAGE_PIN T21 IOSTANDARD LVCMOS33} [get_ports {gpio_o[1]}]
set_property -dict {PACKAGE_PIN U22 IOSTANDARD LVCMOS33} [get_ports {gpio_o[2]}]
set_property -dict {PACKAGE_PIN U21 IOSTANDARD LVCMOS33} [get_ports {gpio_o[3]}]

## Pmod Header JA (unused GPIO outputs)
set_property -dict {PACKAGE_PIN V22 IOSTANDARD LVCMOS33} [get_ports {gpio_o[4]}]
set_property -dict {PACKAGE_PIN W22 IOSTANDARD LVCMOS33} [get_ports {gpio_o[5]}]
set_property -dict {PACKAGE_PIN U19 IOSTANDARD LVCMOS33} [get_ports {gpio_o[6]}]
set_property -dict {PACKAGE_PIN U14 IOSTANDARD LVCMOS33} [get_ports {gpio_o[7]}]

## USB-UART Interface
set_property PACKAGE_PIN V10 [get_ports uart0_txd_o]
set_property IOSTANDARD LVCMOS33 [get_ports uart0_txd_o]
set_property PULLTYPE PULLUP [get_ports uart0_txd_o]
set_property PACKAGE_PIN W11 [get_ports uart0_rxd_i]
set_property IOSTANDARD LVCMOS33 [get_ports uart0_rxd_i]
set_property PULLTYPE PULLUP [get_ports uart0_rxd_i]

## External JTAG Interface
set_property -dict {PACKAGE_PIN AA9 IOSTANDARD LVCMOS33 PULLTYPE PULLUP } [get_ports jtag_trst_i]
set_property -dict {PACKAGE_PIN Y11 IOSTANDARD LVCMOS33 PULLTYPE PULLUP } [get_ports jtag_tck_i]
set_property -dict {PACKAGE_PIN Y10 IOSTANDARD LVCMOS33 PULLTYPE PULLUP } [get_ports jtag_tdi_i]
set_property -dict {PACKAGE_PIN AA11 IOSTANDARD LVCMOS33 PULLTYPE PULLUP } [get_ports jtag_tms_i]
set_property -dict {PACKAGE_PIN AB11 IOSTANDARD LVCMOS33 PULLTYPE PULLUP } [get_ports jtag_tdo_o]

## Misc.
set_property -dict {PACKAGE_PIN T18 IOSTANDARD LVCMOS33} [get_ports rstn_i]
