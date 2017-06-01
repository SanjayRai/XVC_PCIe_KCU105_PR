# Created : 16:59:35, Fri May 20, 2017 : Sanjay Rai

.PHONY: all

all: build_all

build_all:
	cd ./src/PR_module_sine_wave/build;vivado -mode batch -source vivado_batch.tcl 
	cd vivado_batch;vivado -mode batch -source vivado_batch.tcl 
clean:
	cd ./src/PR_module_sine_wave/build; ./mk_clean.bat
	cd vivado_batch;./mk_clean.bat
