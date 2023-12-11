transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/User/Documents/Proyectos Quartus/TyDD2_Guias/Guia5/Parte A/ej_combinacional.vhd}

