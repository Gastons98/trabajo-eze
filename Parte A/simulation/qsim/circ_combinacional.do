onerror {quit -f}
vlib work
vlog -work work circ_combinacional.vo
vlog -work work circ_combinacional.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.ej_combinacional_vlg_vec_tst
vcd file -direction circ_combinacional.msim.vcd
vcd add -internal ej_combinacional_vlg_vec_tst/*
vcd add -internal ej_combinacional_vlg_vec_tst/i1/*
add wave /*
run -all
