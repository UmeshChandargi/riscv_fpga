/*
 * Copyright (c) 2016 Jean-Paul Etienne <fractalclone@gmail.com>
 *
 * SPDX-License-Identifier: Apache-2.0
 */

/**
 * @file
 * @brief Full C support initialization
 *
 *
 * Initialization of full C support: zero the .bss and call z_cstart().
 *
 * Stack is available in this module, but not the global data/bss until their
 * initialization is performed.
 */

#include <stddef.h>
#include <zephyr/toolchain.h>
#include <zephyr/kernel_structs.h>
#include <kernel_internal.h>

#if defined(CONFIG_RISCV_SOC_INTERRUPT_INIT)
void soc_interrupt_init(void);
#endif

/**
 *
 * @brief Prepare to and run C code
 *
 * This routine prepares for the execution of and runs C code.
 */

void z_prep_c(void)
{

	#ifdef CONFIG_NEORV_ZEDBOARD_GEM_OCM_CFG
        uint32_t sclr_base = 0xf8000000;
	/*Unlock SCLR write protection */
        sys_write32(0x0000df0d, sclr_base + 0x008);
	/*Configure all RAM blocks of the zynq7000 OCM to High address */
        sys_write32(0x0000001f, sclr_base + 0x910);
	#endif

	z_bss_zero();
	z_data_copy();
#if defined(CONFIG_RISCV_SOC_INTERRUPT_INIT)
	soc_interrupt_init();
#endif
	z_cstart();
	CODE_UNREACHABLE;
}
