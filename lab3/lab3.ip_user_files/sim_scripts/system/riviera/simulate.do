onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+system -pli "D:/vivado/Vivado/2016.1/lib/win64.o/libxil_vsim.dll" -L unisims_ver -L unimacro_ver -L secureip -L processing_system7_bfm_v2_0_5 -L xil_defaultlib -O5 xil_defaultlib.system xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {system.udo}

run -all

endsim

quit -force
