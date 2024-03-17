transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+F:/cuarto/LSDP/ampliacion/procesador_2/db {F:/cuarto/LSDP/ampliacion/procesador_2/db/clkout_altpll.v}
vcom -93 -work work {F:/cuarto/LSDP/ampliacion/mem_fifo.vhd}
vcom -93 -work work {F:/cuarto/LSDP/ampliacion/procesador_2/uc_spi_out.vhd}
vcom -93 -work work {F:/cuarto/LSDP/ampliacion/procesador_2/spi_dac.vhd}
vcom -93 -work work {F:/cuarto/LSDP/ampliacion/procesador_2/spi_adc.vhd}
vcom -93 -work work {F:/cuarto/LSDP/ampliacion/procesador_2/reg_des.vhd}
vcom -93 -work work {F:/cuarto/LSDP/ampliacion/procesador_2/impulso_ini.vhd}
vcom -93 -work work {F:/cuarto/LSDP/ampliacion/procesador_2/divisor_reloj.vhd}
vcom -93 -work work {F:/cuarto/LSDP/ampliacion/procesador_2/contador.vhd}
vcom -93 -work work {F:/cuarto/LSDP/ampliacion/procesador_2/clkout.vhd}
vcom -93 -work work {F:/cuarto/LSDP/ampliacion/procesador_2/procesador_2.vhd}

