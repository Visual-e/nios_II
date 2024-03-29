
# (C) 2001-2016 Altera Corporation. All rights reserved.
# Your use of Altera Corporation's design tools, logic functions and 
# other software and tools, and its AMPP partner logic functions, and 
# any output files any of the foregoing (including device programming 
# or simulation files), and any associated documentation or information 
# are expressly subject to the terms and conditions of the Altera 
# Program License Subscription Agreement, Altera MegaCore Function 
# License Agreement, or other applicable license agreement, including, 
# without limitation, that your use is for the sole purpose of 
# programming logic devices manufactured by Altera and sold by Altera 
# or its authorized distributors. Please refer to the applicable 
# agreement for further details.

# ----------------------------------------
# Auto-generated simulation script msim_setup.tcl
# ----------------------------------------
# This script can be used to simulate the following IP:
#     nios_cpu
# To create a top-level simulation script which compiles other
# IP, and manages other system issues, copy the following template
# and adapt it to your needs:
# 
# # Start of template
# # If the copied and modified template file is "mentor.do", run it as:
# #   vsim -c -do mentor.do
# #
# # Source the generated sim script
# source msim_setup.tcl
# # Compile eda/sim_lib contents first
# dev_com
# # Override the top-level name (so that elab is useful)
# set TOP_LEVEL_NAME top
# # Compile the standalone IP.
# com
# # Compile the user top-level
# vlog -sv ../../top.sv
# # Elaborate the design.
# elab
# # Run the simulation
# run -a
# # Report success to the shell
# exit -code 0
# # End of template
# ----------------------------------------
# If nios_cpu is one of several IP cores in your
# Quartus project, you can generate a simulation script
# suitable for inclusion in your top-level simulation
# script by running the following command line:
# 
# ip-setup-simulation --quartus-project=<quartus project>
# 
# ip-setup-simulation will discover the Altera IP
# within the Quartus project, and generate a unified
# script which supports all the Altera IP within the design.
# ----------------------------------------
# ACDS 15.1 189 win32 2016.02.21.18:17:01

# ----------------------------------------
# Initialize variables
if ![info exists SYSTEM_INSTANCE_NAME] { 
  set SYSTEM_INSTANCE_NAME ""
} elseif { ![ string match "" $SYSTEM_INSTANCE_NAME ] } { 
  set SYSTEM_INSTANCE_NAME "/$SYSTEM_INSTANCE_NAME"
}

if ![info exists TOP_LEVEL_NAME] { 
  set TOP_LEVEL_NAME "nios_cpu"
}

if ![info exists QSYS_SIMDIR] { 
  set QSYS_SIMDIR "./../"
}

if ![info exists QUARTUS_INSTALL_DIR] { 
  set QUARTUS_INSTALL_DIR "D:/dev/altera/15.1/quartus/"
}

if ![info exists USER_DEFINED_COMPILE_OPTIONS] { 
  set USER_DEFINED_COMPILE_OPTIONS ""
}
if ![info exists USER_DEFINED_ELAB_OPTIONS] { 
  set USER_DEFINED_ELAB_OPTIONS ""
}

# ----------------------------------------
# Initialize simulation properties - DO NOT MODIFY!
set ELAB_OPTIONS ""
set SIM_OPTIONS ""
if ![ string match "*-64 vsim*" [ vsim -version ] ] {
} else {
}

# ----------------------------------------
# Copy ROM/RAM files to simulation directory
alias file_copy {
  echo "\[exec\] file_copy"
  file copy -force $QSYS_SIMDIR/submodules/nios_cpu_onchip_memory2_0.hex ./
  file copy -force $QSYS_SIMDIR/submodules/nios_cpu_nios2_qsys_0_ociram_default_contents.dat ./
  file copy -force $QSYS_SIMDIR/submodules/nios_cpu_nios2_qsys_0_ociram_default_contents.hex ./
  file copy -force $QSYS_SIMDIR/submodules/nios_cpu_nios2_qsys_0_ociram_default_contents.mif ./
  file copy -force $QSYS_SIMDIR/submodules/nios_cpu_nios2_qsys_0_rf_ram_a.dat ./
  file copy -force $QSYS_SIMDIR/submodules/nios_cpu_nios2_qsys_0_rf_ram_a.hex ./
  file copy -force $QSYS_SIMDIR/submodules/nios_cpu_nios2_qsys_0_rf_ram_a.mif ./
  file copy -force $QSYS_SIMDIR/submodules/nios_cpu_nios2_qsys_0_rf_ram_b.dat ./
  file copy -force $QSYS_SIMDIR/submodules/nios_cpu_nios2_qsys_0_rf_ram_b.hex ./
  file copy -force $QSYS_SIMDIR/submodules/nios_cpu_nios2_qsys_0_rf_ram_b.mif ./
}

# ----------------------------------------
# Create compilation libraries
proc ensure_lib { lib } { if ![file isdirectory $lib] { vlib $lib } }
ensure_lib          ./libraries/     
ensure_lib          ./libraries/work/
vmap       work     ./libraries/work/
vmap       work_lib ./libraries/work/
if ![ string match "*ModelSim ALTERA*" [ vsim -version ] ] {
  ensure_lib                  ./libraries/altera_ver/      
  vmap       altera_ver       ./libraries/altera_ver/      
  ensure_lib                  ./libraries/lpm_ver/         
  vmap       lpm_ver          ./libraries/lpm_ver/         
  ensure_lib                  ./libraries/sgate_ver/       
  vmap       sgate_ver        ./libraries/sgate_ver/       
  ensure_lib                  ./libraries/altera_mf_ver/   
  vmap       altera_mf_ver    ./libraries/altera_mf_ver/   
  ensure_lib                  ./libraries/altera_lnsim_ver/
  vmap       altera_lnsim_ver ./libraries/altera_lnsim_ver/
  ensure_lib                  ./libraries/cycloneive_ver/  
  vmap       cycloneive_ver   ./libraries/cycloneive_ver/  
}
ensure_lib                                               ./libraries/error_adapter_0/                              
vmap       error_adapter_0                               ./libraries/error_adapter_0/                              
ensure_lib                                               ./libraries/avalon_st_adapter/                            
vmap       avalon_st_adapter                             ./libraries/avalon_st_adapter/                            
ensure_lib                                               ./libraries/rsp_mux/                                      
vmap       rsp_mux                                       ./libraries/rsp_mux/                                      
ensure_lib                                               ./libraries/rsp_demux/                                    
vmap       rsp_demux                                     ./libraries/rsp_demux/                                    
ensure_lib                                               ./libraries/cmd_mux/                                      
vmap       cmd_mux                                       ./libraries/cmd_mux/                                      
ensure_lib                                               ./libraries/cmd_demux/                                    
vmap       cmd_demux                                     ./libraries/cmd_demux/                                    
ensure_lib                                               ./libraries/router_002/                                   
vmap       router_002                                    ./libraries/router_002/                                   
ensure_lib                                               ./libraries/router/                                       
vmap       router                                        ./libraries/router/                                       
ensure_lib                                               ./libraries/nios2_qsys_0_jtag_debug_module_agent_rsp_fifo/
vmap       nios2_qsys_0_jtag_debug_module_agent_rsp_fifo ./libraries/nios2_qsys_0_jtag_debug_module_agent_rsp_fifo/
ensure_lib                                               ./libraries/nios2_qsys_0_jtag_debug_module_agent/         
vmap       nios2_qsys_0_jtag_debug_module_agent          ./libraries/nios2_qsys_0_jtag_debug_module_agent/         
ensure_lib                                               ./libraries/nios2_qsys_0_data_master_agent/               
vmap       nios2_qsys_0_data_master_agent                ./libraries/nios2_qsys_0_data_master_agent/               
ensure_lib                                               ./libraries/nios2_qsys_0_jtag_debug_module_translator/    
vmap       nios2_qsys_0_jtag_debug_module_translator     ./libraries/nios2_qsys_0_jtag_debug_module_translator/    
ensure_lib                                               ./libraries/nios2_qsys_0_data_master_translator/          
vmap       nios2_qsys_0_data_master_translator           ./libraries/nios2_qsys_0_data_master_translator/          
ensure_lib                                               ./libraries/rst_controller/                               
vmap       rst_controller                                ./libraries/rst_controller/                               
ensure_lib                                               ./libraries/irq_mapper/                                   
vmap       irq_mapper                                    ./libraries/irq_mapper/                                   
ensure_lib                                               ./libraries/mm_interconnect_0/                            
vmap       mm_interconnect_0                             ./libraries/mm_interconnect_0/                            
ensure_lib                                               ./libraries/pio_0/                                        
vmap       pio_0                                         ./libraries/pio_0/                                        
ensure_lib                                               ./libraries/onchip_memory2_0/                             
vmap       onchip_memory2_0                              ./libraries/onchip_memory2_0/                             
ensure_lib                                               ./libraries/nios2_qsys_0/                                 
vmap       nios2_qsys_0                                  ./libraries/nios2_qsys_0/                                 

# ----------------------------------------
# Compile device library files
alias dev_com {
  echo "\[exec\] dev_com"
  if ![ string match "*ModelSim ALTERA*" [ vsim -version ] ] {
    eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives.v" -work altera_ver      
    eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/220model.v"          -work lpm_ver         
    eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate.v"             -work sgate_ver       
    eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf.v"         -work altera_mf_ver   
    eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_lnsim.sv"     -work altera_lnsim_ver
    eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/cycloneive_atoms.v"  -work cycloneive_ver  
  }
}

# ----------------------------------------
# Compile the design files in correct order
alias com {
  echo "\[exec\] com"
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/nios_cpu_mm_interconnect_0_avalon_st_adapter_error_adapter_0.sv" -work error_adapter_0                              
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/nios_cpu_mm_interconnect_0_avalon_st_adapter.v"                  -work avalon_st_adapter                            
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                     -work rsp_mux                                      
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/nios_cpu_mm_interconnect_0_rsp_mux.sv"                           -work rsp_mux                                      
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/nios_cpu_mm_interconnect_0_rsp_demux.sv"                         -work rsp_demux                                    
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                     -work cmd_mux                                      
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/nios_cpu_mm_interconnect_0_cmd_mux.sv"                           -work cmd_mux                                      
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/nios_cpu_mm_interconnect_0_cmd_demux.sv"                         -work cmd_demux                                    
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/nios_cpu_mm_interconnect_0_router_002.sv"                        -work router_002                                   
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/nios_cpu_mm_interconnect_0_router.sv"                            -work router                                       
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/altera_avalon_sc_fifo.v"                                         -work nios2_qsys_0_jtag_debug_module_agent_rsp_fifo
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_slave_agent.sv"                                    -work nios2_qsys_0_jtag_debug_module_agent         
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_burst_uncompressor.sv"                             -work nios2_qsys_0_jtag_debug_module_agent         
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_master_agent.sv"                                   -work nios2_qsys_0_data_master_agent               
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_slave_translator.sv"                               -work nios2_qsys_0_jtag_debug_module_translator    
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_master_translator.sv"                              -work nios2_qsys_0_data_master_translator          
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/altera_reset_controller.v"                                       -work rst_controller                               
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/altera_reset_synchronizer.v"                                     -work rst_controller                               
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/nios_cpu_irq_mapper.sv"                                          -work irq_mapper                                   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/nios_cpu_mm_interconnect_0.v"                                    -work mm_interconnect_0                            
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/nios_cpu_pio_0.v"                                                -work pio_0                                        
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/nios_cpu_onchip_memory2_0.v"                                     -work onchip_memory2_0                             
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/nios_cpu_nios2_qsys_0.v"                                         -work nios2_qsys_0                                 
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/nios_cpu_nios2_qsys_0_jtag_debug_module_sysclk.v"                -work nios2_qsys_0                                 
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/nios_cpu_nios2_qsys_0_jtag_debug_module_tck.v"                   -work nios2_qsys_0                                 
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/nios_cpu_nios2_qsys_0_jtag_debug_module_wrapper.v"               -work nios2_qsys_0                                 
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/nios_cpu_nios2_qsys_0_oci_test_bench.v"                          -work nios2_qsys_0                                 
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/nios_cpu_nios2_qsys_0_test_bench.v"                              -work nios2_qsys_0                                 
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/nios_cpu.v"                                                                                                                    
}

# ----------------------------------------
# Elaborate top level design
alias elab {
  echo "\[exec\] elab"
  eval vsim -t ps $ELAB_OPTIONS $USER_DEFINED_ELAB_OPTIONS -L work -L work_lib -L error_adapter_0 -L avalon_st_adapter -L rsp_mux -L rsp_demux -L cmd_mux -L cmd_demux -L router_002 -L router -L nios2_qsys_0_jtag_debug_module_agent_rsp_fifo -L nios2_qsys_0_jtag_debug_module_agent -L nios2_qsys_0_data_master_agent -L nios2_qsys_0_jtag_debug_module_translator -L nios2_qsys_0_data_master_translator -L rst_controller -L irq_mapper -L mm_interconnect_0 -L pio_0 -L onchip_memory2_0 -L nios2_qsys_0 -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver $TOP_LEVEL_NAME
}

# ----------------------------------------
# Elaborate the top level design with novopt option
alias elab_debug {
  echo "\[exec\] elab_debug"
  eval vsim -novopt -t ps $ELAB_OPTIONS $USER_DEFINED_ELAB_OPTIONS -L work -L work_lib -L error_adapter_0 -L avalon_st_adapter -L rsp_mux -L rsp_demux -L cmd_mux -L cmd_demux -L router_002 -L router -L nios2_qsys_0_jtag_debug_module_agent_rsp_fifo -L nios2_qsys_0_jtag_debug_module_agent -L nios2_qsys_0_data_master_agent -L nios2_qsys_0_jtag_debug_module_translator -L nios2_qsys_0_data_master_translator -L rst_controller -L irq_mapper -L mm_interconnect_0 -L pio_0 -L onchip_memory2_0 -L nios2_qsys_0 -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver $TOP_LEVEL_NAME
}

# ----------------------------------------
# Compile all the design files and elaborate the top level design
alias ld "
  dev_com
  com
  elab
"

# ----------------------------------------
# Compile all the design files and elaborate the top level design with -novopt
alias ld_debug "
  dev_com
  com
  elab_debug
"

# ----------------------------------------
# Print out user commmand line aliases
alias h {
  echo "List Of Command Line Aliases"
  echo
  echo "file_copy                     -- Copy ROM/RAM files to simulation directory"
  echo
  echo "dev_com                       -- Compile device library files"
  echo
  echo "com                           -- Compile the design files in correct order"
  echo
  echo "elab                          -- Elaborate top level design"
  echo
  echo "elab_debug                    -- Elaborate the top level design with novopt option"
  echo
  echo "ld                            -- Compile all the design files and elaborate the top level design"
  echo
  echo "ld_debug                      -- Compile all the design files and elaborate the top level design with -novopt"
  echo
  echo 
  echo
  echo "List Of Variables"
  echo
  echo "TOP_LEVEL_NAME                -- Top level module name."
  echo "                                 For most designs, this should be overridden"
  echo "                                 to enable the elab/elab_debug aliases."
  echo
  echo "SYSTEM_INSTANCE_NAME          -- Instantiated system module name inside top level module."
  echo
  echo "QSYS_SIMDIR                   -- Qsys base simulation directory."
  echo
  echo "QUARTUS_INSTALL_DIR           -- Quartus installation directory."
  echo
  echo "USER_DEFINED_COMPILE_OPTIONS  -- User-defined compile options, added to com/dev_com aliases."
  echo
  echo "USER_DEFINED_ELAB_OPTIONS     -- User-defined elaboration options, added to elab/elab_debug aliases."
}
file_copy
h
