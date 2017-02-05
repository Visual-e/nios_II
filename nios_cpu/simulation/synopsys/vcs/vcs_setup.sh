
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

# ACDS 15.1 189 win32 2016.02.21.18:17:01

# ----------------------------------------
# vcs - auto-generated simulation script

# ----------------------------------------
# This script can be used to simulate the following IP:
#     nios_cpu
# To create a top-level simulation script which compiles other
# IP, and manages other system issues, copy the following template
# and adapt it to your needs:
# 
# # Start of template
# # If the copied and modified template file is "vcs_sim.sh", run it as:
# #   ./vcs_sim.sh
# #
# # Override the top-level name
# # specify a command file containing elaboration options 
# # (system verilog extension, and compile the top-level).
# # Override the user-defined sim options, so the simulation 
# # runs forever (until $finish()).
# source vcs_setup.sh \
# TOP_LEVEL_NAME=top \
# USER_DEFINED_ELAB_OPTIONS="'-f ../../../synopsys_vcs.f'" \
# USER_DEFINED_SIM_OPTIONS=""
# 
# # helper file: synopsys_vcs.f
# +systemverilogext+.sv
# ../../../top.sv
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
# initialize variables
TOP_LEVEL_NAME="nios_cpu"
QSYS_SIMDIR="./../../"
QUARTUS_INSTALL_DIR="D:/dev/altera/15.1/quartus/"
SKIP_FILE_COPY=0
SKIP_ELAB=0
SKIP_SIM=0
USER_DEFINED_ELAB_OPTIONS=""
USER_DEFINED_SIM_OPTIONS="+vcs+finish+100"
# ----------------------------------------
# overwrite variables - DO NOT MODIFY!
# This block evaluates each command line argument, typically used for 
# overwriting variables. An example usage:
#   sh <simulator>_setup.sh SKIP_ELAB=1 SKIP_SIM=1
for expression in "$@"; do
  eval $expression
  if [ $? -ne 0 ]; then
    echo "Error: This command line argument, \"$expression\", is/has an invalid expression." >&2
    exit $?
  fi
done

# ----------------------------------------
# initialize simulation properties - DO NOT MODIFY!
ELAB_OPTIONS=""
SIM_OPTIONS=""
if [[ `vcs -platform` != *"amd64"* ]]; then
  :
else
  :
fi

# ----------------------------------------
# copy RAM/ROM files to simulation directory
if [ $SKIP_FILE_COPY -eq 0 ]; then
  cp -f $QSYS_SIMDIR/submodules/nios_cpu_onchip_memory2_0.hex ./
  cp -f $QSYS_SIMDIR/submodules/nios_cpu_nios2_qsys_0_ociram_default_contents.dat ./
  cp -f $QSYS_SIMDIR/submodules/nios_cpu_nios2_qsys_0_ociram_default_contents.hex ./
  cp -f $QSYS_SIMDIR/submodules/nios_cpu_nios2_qsys_0_ociram_default_contents.mif ./
  cp -f $QSYS_SIMDIR/submodules/nios_cpu_nios2_qsys_0_rf_ram_a.dat ./
  cp -f $QSYS_SIMDIR/submodules/nios_cpu_nios2_qsys_0_rf_ram_a.hex ./
  cp -f $QSYS_SIMDIR/submodules/nios_cpu_nios2_qsys_0_rf_ram_a.mif ./
  cp -f $QSYS_SIMDIR/submodules/nios_cpu_nios2_qsys_0_rf_ram_b.dat ./
  cp -f $QSYS_SIMDIR/submodules/nios_cpu_nios2_qsys_0_rf_ram_b.hex ./
  cp -f $QSYS_SIMDIR/submodules/nios_cpu_nios2_qsys_0_rf_ram_b.mif ./
fi

vcs -lca -timescale=1ps/1ps -sverilog +verilog2001ext+.v -ntb_opts dtm $ELAB_OPTIONS $USER_DEFINED_ELAB_OPTIONS \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives.v \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/220model.v \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/sgate.v \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf.v \
  $QUARTUS_INSTALL_DIR/eda/sim_lib/altera_lnsim.sv \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/cycloneive_atoms.v \
  $QSYS_SIMDIR/submodules/nios_cpu_mm_interconnect_0_avalon_st_adapter_error_adapter_0.sv \
  $QSYS_SIMDIR/submodules/nios_cpu_mm_interconnect_0_avalon_st_adapter.v \
  $QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv \
  $QSYS_SIMDIR/submodules/nios_cpu_mm_interconnect_0_rsp_mux.sv \
  $QSYS_SIMDIR/submodules/nios_cpu_mm_interconnect_0_rsp_demux.sv \
  $QSYS_SIMDIR/submodules/nios_cpu_mm_interconnect_0_cmd_mux.sv \
  $QSYS_SIMDIR/submodules/nios_cpu_mm_interconnect_0_cmd_demux.sv \
  $QSYS_SIMDIR/submodules/nios_cpu_mm_interconnect_0_router_002.sv \
  $QSYS_SIMDIR/submodules/nios_cpu_mm_interconnect_0_router.sv \
  $QSYS_SIMDIR/submodules/altera_avalon_sc_fifo.v \
  $QSYS_SIMDIR/submodules/altera_merlin_slave_agent.sv \
  $QSYS_SIMDIR/submodules/altera_merlin_burst_uncompressor.sv \
  $QSYS_SIMDIR/submodules/altera_merlin_master_agent.sv \
  $QSYS_SIMDIR/submodules/altera_merlin_slave_translator.sv \
  $QSYS_SIMDIR/submodules/altera_merlin_master_translator.sv \
  $QSYS_SIMDIR/submodules/altera_reset_controller.v \
  $QSYS_SIMDIR/submodules/altera_reset_synchronizer.v \
  $QSYS_SIMDIR/submodules/nios_cpu_irq_mapper.sv \
  $QSYS_SIMDIR/submodules/nios_cpu_mm_interconnect_0.v \
  $QSYS_SIMDIR/submodules/nios_cpu_pio_0.v \
  $QSYS_SIMDIR/submodules/nios_cpu_onchip_memory2_0.v \
  $QSYS_SIMDIR/submodules/nios_cpu_nios2_qsys_0.v \
  $QSYS_SIMDIR/submodules/nios_cpu_nios2_qsys_0_jtag_debug_module_sysclk.v \
  $QSYS_SIMDIR/submodules/nios_cpu_nios2_qsys_0_jtag_debug_module_tck.v \
  $QSYS_SIMDIR/submodules/nios_cpu_nios2_qsys_0_jtag_debug_module_wrapper.v \
  $QSYS_SIMDIR/submodules/nios_cpu_nios2_qsys_0_oci_test_bench.v \
  $QSYS_SIMDIR/submodules/nios_cpu_nios2_qsys_0_test_bench.v \
  $QSYS_SIMDIR/nios_cpu.v \
  -top $TOP_LEVEL_NAME
# ----------------------------------------
# simulate
if [ $SKIP_SIM -eq 0 ]; then
  ./simv $SIM_OPTIONS $USER_DEFINED_SIM_OPTIONS
fi
