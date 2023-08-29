# 
# Synthesis run script generated by Vivado
# 

proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
set_param tcl.collectionResultDisplayLimit 0
set_param xicom.use_bs_reader 1
set_msg_config -id {Common 17-41} -limit 10000000
set_param project.vivado.isBlockSynthRun true
set_msg_config -msgmgr_mode ooc_run
create_project -in_memory -part xc7k325tffg900-2

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir D:/FPGA_HDMI/08_4_hdmi_loop/hdmi_loop.cache/wt [current_project]
set_property parent.project_path D:/FPGA_HDMI/08_4_hdmi_loop/hdmi_loop.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_cache_permissions disable [current_project]
read_ip -quiet D:/FPGA_HDMI/08_4_hdmi_loop/hdmi_loop.srcs/sources_1/ip/sys_pll_1/sys_pll.xci
set_property used_in_implementation false [get_files -all d:/FPGA_HDMI/08_4_hdmi_loop/hdmi_loop.srcs/sources_1/ip/sys_pll_1/sys_pll_board.xdc]
set_property used_in_implementation false [get_files -all d:/FPGA_HDMI/08_4_hdmi_loop/hdmi_loop.srcs/sources_1/ip/sys_pll_1/sys_pll.xdc]
set_property used_in_implementation false [get_files -all d:/FPGA_HDMI/08_4_hdmi_loop/hdmi_loop.srcs/sources_1/ip/sys_pll_1/sys_pll_ooc.xdc]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]

synth_design -top sys_pll -part xc7k325tffg900-2 -mode out_of_context

rename_ref -prefix_all sys_pll_

# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef sys_pll.dcp
create_report "sys_pll_synth_1_synth_report_utilization_0" "report_utilization -file sys_pll_utilization_synth.rpt -pb sys_pll_utilization_synth.pb"

if { [catch {
  write_verilog -force -mode synth_stub D:/FPGA_HDMI/08_4_hdmi_loop/hdmi_loop.runs/sys_pll_synth_1/sys_pll_stub.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a Verilog synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  write_vhdl -force -mode synth_stub D:/FPGA_HDMI/08_4_hdmi_loop/hdmi_loop.runs/sys_pll_synth_1/sys_pll_stub.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a VHDL synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  write_verilog -force -mode funcsim D:/FPGA_HDMI/08_4_hdmi_loop/hdmi_loop.runs/sys_pll_synth_1/sys_pll_sim_netlist.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the Verilog functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

if { [catch {
  write_vhdl -force -mode funcsim D:/FPGA_HDMI/08_4_hdmi_loop/hdmi_loop.runs/sys_pll_synth_1/sys_pll_sim_netlist.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the VHDL functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

add_files D:/FPGA_HDMI/08_4_hdmi_loop/hdmi_loop.runs/sys_pll_synth_1/sys_pll_stub.v -of_objects [get_files D:/FPGA_HDMI/08_4_hdmi_loop/hdmi_loop.srcs/sources_1/ip/sys_pll_1/sys_pll.xci]

add_files D:/FPGA_HDMI/08_4_hdmi_loop/hdmi_loop.runs/sys_pll_synth_1/sys_pll_stub.vhdl -of_objects [get_files D:/FPGA_HDMI/08_4_hdmi_loop/hdmi_loop.srcs/sources_1/ip/sys_pll_1/sys_pll.xci]

add_files D:/FPGA_HDMI/08_4_hdmi_loop/hdmi_loop.runs/sys_pll_synth_1/sys_pll_sim_netlist.v -of_objects [get_files D:/FPGA_HDMI/08_4_hdmi_loop/hdmi_loop.srcs/sources_1/ip/sys_pll_1/sys_pll.xci]

add_files D:/FPGA_HDMI/08_4_hdmi_loop/hdmi_loop.runs/sys_pll_synth_1/sys_pll_sim_netlist.vhdl -of_objects [get_files D:/FPGA_HDMI/08_4_hdmi_loop/hdmi_loop.srcs/sources_1/ip/sys_pll_1/sys_pll.xci]

add_files D:/FPGA_HDMI/08_4_hdmi_loop/hdmi_loop.runs/sys_pll_synth_1/sys_pll.dcp -of_objects [get_files D:/FPGA_HDMI/08_4_hdmi_loop/hdmi_loop.srcs/sources_1/ip/sys_pll_1/sys_pll.xci]

if {[file isdir D:/FPGA_HDMI/08_4_hdmi_loop/hdmi_loop.ip_user_files/ip/sys_pll]} {
  catch { 
    file copy -force D:/FPGA_HDMI/08_4_hdmi_loop/hdmi_loop.runs/sys_pll_synth_1/sys_pll_sim_netlist.v D:/FPGA_HDMI/08_4_hdmi_loop/hdmi_loop.ip_user_files/ip/sys_pll
  }
}

if {[file isdir D:/FPGA_HDMI/08_4_hdmi_loop/hdmi_loop.ip_user_files/ip/sys_pll]} {
  catch { 
    file copy -force D:/FPGA_HDMI/08_4_hdmi_loop/hdmi_loop.runs/sys_pll_synth_1/sys_pll_sim_netlist.vhdl D:/FPGA_HDMI/08_4_hdmi_loop/hdmi_loop.ip_user_files/ip/sys_pll
  }
}

if {[file isdir D:/FPGA_HDMI/08_4_hdmi_loop/hdmi_loop.ip_user_files/ip/sys_pll]} {
  catch { 
    file copy -force D:/FPGA_HDMI/08_4_hdmi_loop/hdmi_loop.runs/sys_pll_synth_1/sys_pll_stub.v D:/FPGA_HDMI/08_4_hdmi_loop/hdmi_loop.ip_user_files/ip/sys_pll
  }
}

if {[file isdir D:/FPGA_HDMI/08_4_hdmi_loop/hdmi_loop.ip_user_files/ip/sys_pll]} {
  catch { 
    file copy -force D:/FPGA_HDMI/08_4_hdmi_loop/hdmi_loop.runs/sys_pll_synth_1/sys_pll_stub.vhdl D:/FPGA_HDMI/08_4_hdmi_loop/hdmi_loop.ip_user_files/ip/sys_pll
  }
}
