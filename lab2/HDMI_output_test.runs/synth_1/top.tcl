# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7z020clg400-2

set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir F:/AX7020/vivado_project/02_HDMI_output_test/HDMI_output_test.cache/wt [current_project]
set_property parent.project_path F:/AX7020/vivado_project/02_HDMI_output_test/HDMI_output_test.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property vhdl_version vhdl_2k [current_fileset]
add_files -quiet F:/AX7020/vivado_project/02_HDMI_output_test/HDMI_output_test.runs/video_pll_synth_1/video_pll.dcp
set_property used_in_implementation false [get_files F:/AX7020/vivado_project/02_HDMI_output_test/HDMI_output_test.runs/video_pll_synth_1/video_pll.dcp]
read_verilog -library xil_defaultlib {
  F:/AX7020/vivado_project/02_HDMI_output_test/HDMI_output_test.srcs/sources_1/imports/sources_1/color_bar.v
  F:/AX7020/vivado_project/02_HDMI_output_test/HDMI_output_test.srcs/sources_1/imports/sources_1/top.v
}
read_vhdl -library xil_defaultlib {
  F:/AX7020/vivado_project/02_HDMI_output_test/HDMI_output_test.srcs/sources_1/imports/src/SyncAsync.vhd
  F:/AX7020/vivado_project/02_HDMI_output_test/HDMI_output_test.srcs/sources_1/imports/src/SyncAsyncReset.vhd
  F:/AX7020/vivado_project/02_HDMI_output_test/HDMI_output_test.srcs/sources_1/imports/src/DVI_Constants.vhd
  F:/AX7020/vivado_project/02_HDMI_output_test/HDMI_output_test.srcs/sources_1/imports/src/TMDS_Encoder.vhd
  F:/AX7020/vivado_project/02_HDMI_output_test/HDMI_output_test.srcs/sources_1/imports/src/OutputSERDES.vhd
  F:/AX7020/vivado_project/02_HDMI_output_test/HDMI_output_test.srcs/sources_1/imports/src/ClockGen.vhd
  F:/AX7020/vivado_project/02_HDMI_output_test/HDMI_output_test.srcs/sources_1/imports/src/rgb2dvi.vhd
}
read_xdc F:/AX7020/vivado_project/02_HDMI_output_test/HDMI_output_test.srcs/constrs_1/new/top.xdc
set_property used_in_implementation false [get_files F:/AX7020/vivado_project/02_HDMI_output_test/HDMI_output_test.srcs/constrs_1/new/top.xdc]

synth_design -top top -part xc7z020clg400-2
write_checkpoint -noxdef top.dcp
catch { report_utilization -file top_utilization_synth.rpt -pb top_utilization_synth.pb }
