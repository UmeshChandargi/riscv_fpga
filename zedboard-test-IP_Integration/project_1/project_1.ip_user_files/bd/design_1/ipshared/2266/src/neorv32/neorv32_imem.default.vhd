-- ================================================================================ --
-- NEORV32 SoC - Processor-Internal instruction memory (IMEM)                       --
-- -------------------------------------------------------------------------------- --
-- Default architecture style.                                                      --
-- Optionally, this memory implemented as ROM already containing a memory image.    --
-- -------------------------------------------------------------------------------- --
-- The NEORV32 RISC-V Processor - https://github.com/stnolting/neorv32              --
-- Copyright (c) NEORV32 contributors.                                              --
-- Copyright (c) 2020 - 2024 Stephan Nolting. All rights reserved.                  --
-- Licensed under the BSD-3-Clause license, see LICENSE for details.                --
-- SPDX-License-Identifier: BSD-3-Clause                                            --
-- ================================================================================ --

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library neorv32;
use neorv32.neorv32_package.all;
use neorv32.neorv32_application_image.all; -- this file is generated by the image generator

architecture neorv32_imem_rtl of neorv32_imem is

  -- local signals --
  signal rdata : std_ulogic_vector(31 downto 0);
  signal rden  : std_ulogic;
  signal addr  : std_ulogic_vector(index_size_f(IMEM_SIZE/4)-1 downto 0);

  -- --------------------------- --
  -- IMEM as pre-initialized ROM --
  -- --------------------------- --

  -- application (image) size in bytes --
  constant imem_app_size_c : natural := (application_init_image'length)*4;

  -- ROM - initialized with executable code --
  constant mem_rom_c : mem32_t(0 to IMEM_SIZE/4-1) := mem32_init_f(application_init_image, IMEM_SIZE/4);

  -- The memory (RAM) is built from 4 individual byte-wide memories because some synthesis
  -- tools have issues inferring 32-bit memories that provide dedicated byte-enable signals
  -- and/or with multi-dimensional arrays. [NOTE] Read-during-write behavior is irrelevant
  -- as read and write accesses are mutually exclusive.
  signal mem_ram_b0, mem_ram_b1, mem_ram_b2, mem_ram_b3 : mem8_t(0 to IMEM_SIZE/4-1);

begin

  -- Sanity Checks --------------------------------------------------------------------------
  -- -------------------------------------------------------------------------------------------
  assert false report
    "[NEORV32] Implementing DEFAULT processor-internal IMEM as " &
    cond_sel_string_f(IMEM_AS_IROM, "pre-initialized ROM.", "blank RAM.") severity note;

  assert not ((IMEM_AS_IROM = true) and (imem_app_size_c > IMEM_SIZE)) report
    "[NEORV32] Application (image = " & natural'image(imem_app_size_c) &
    " bytes) does not fit into processor-internal IMEM (ROM = " & natural'image(IMEM_SIZE) & " bytes)!" severity error;


  -- Implement IMEM as pre-initialized ROM --------------------------------------------------
  -- -------------------------------------------------------------------------------------------
  imem_rom:
  if (IMEM_AS_IROM = true) generate
    mem_access: process(clk_i)
    begin
      if rising_edge(clk_i) then -- no reset to infer block RAM
        rdata <= mem_rom_c(to_integer(unsigned(addr)));
      end if;
    end process mem_access;
  end generate;

  -- word aligned access --
  addr <= bus_req_i.addr(index_size_f(IMEM_SIZE/4)+1 downto 2);


  -- Implement IMEM as non-initialized RAM --------------------------------------------------
  -- -------------------------------------------------------------------------------------------
  imem_ram:
  if (IMEM_AS_IROM = false) generate
    mem_access: process(clk_i)
    begin
      if rising_edge(clk_i) then -- no reset to infer block RAM
        if (bus_req_i.stb = '1') and (bus_req_i.rw = '1') then
          if (bus_req_i.ben(0) = '1') then -- byte 0
            mem_ram_b0(to_integer(unsigned(addr))) <= bus_req_i.data(07 downto 00);
          end if;
          if (bus_req_i.ben(1) = '1') then -- byte 1
            mem_ram_b1(to_integer(unsigned(addr))) <= bus_req_i.data(15 downto 08);
          end if;
          if (bus_req_i.ben(2) = '1') then -- byte 2
            mem_ram_b2(to_integer(unsigned(addr))) <= bus_req_i.data(23 downto 16);
          end if;
          if (bus_req_i.ben(3) = '1') then -- byte 3
            mem_ram_b3(to_integer(unsigned(addr))) <= bus_req_i.data(31 downto 24);
          end if;
        end if;
        rdata(07 downto 00) <= mem_ram_b0(to_integer(unsigned(addr)));
        rdata(15 downto 08) <= mem_ram_b1(to_integer(unsigned(addr)));
        rdata(23 downto 16) <= mem_ram_b2(to_integer(unsigned(addr)));
        rdata(31 downto 24) <= mem_ram_b3(to_integer(unsigned(addr)));
      end if;
    end process mem_access;
  end generate;


  -- Bus Feedback ---------------------------------------------------------------------------
  -- -------------------------------------------------------------------------------------------
  bus_feedback: process(rstn_i, clk_i)
  begin
    if (rstn_i = '0') then
      rden          <= '0';
      bus_rsp_o.ack <= '0';
    elsif rising_edge(clk_i) then
      rden <= bus_req_i.stb and (not bus_req_i.rw);
      if (IMEM_AS_IROM = true) then
        bus_rsp_o.ack <= bus_req_i.stb and (not bus_req_i.rw); -- read-only!
      else
        bus_rsp_o.ack <= bus_req_i.stb;
      end if;
    end if;
  end process bus_feedback;

  bus_rsp_o.data <= rdata when (rden = '1') else (others => '0'); -- output gate
  bus_rsp_o.err  <= '0'; -- no access error possible


end neorv32_imem_rtl;
