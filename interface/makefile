
compile:
	vlib work;
	vlog -sv multiplier.sv interface.sv test.sv environment.sv top.sv

simulate:
	vsim top -l top.log -c -do "run -all; exit;"

all:
	make compile && make simulate


