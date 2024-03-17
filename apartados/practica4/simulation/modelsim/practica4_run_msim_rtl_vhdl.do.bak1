transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/eloyc/OneDrive/Documentos/4UNI/LSDP/practica4/db {C:/Users/eloyc/OneDrive/Documentos/4UNI/LSDP/practica4/db/clkout_altpll.v}
vcom -93 -work work {C:/Users/eloyc/OneDrive/Documentos/4UNI/LSDP/practica4/spi_adc.vhd}
vcom -93 -work work {C:/Users/eloyc/OneDrive/Documentos/4UNI/LSDP/practica4/clkout.vhd}

