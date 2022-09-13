
compile:
	vlib work;
	vlog -sv d_ff.sv interface.sv testbench.sv 

simulate:
	
	vsim top -l top.log -c -do "log -r /*; add wave -r /*; run -all;" \
			-wlf waveform.wlf

all:
	make compile && make simulate
