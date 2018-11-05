vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xilinx_vip
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/xpm
vlib questa_lib/msim/fifo_generator_v13_2_2
vlib questa_lib/msim/axi_infrastructure_v1_1_0
vlib questa_lib/msim/smartconnect_v1_0
vlib questa_lib/msim/axi_protocol_checker_v2_0_2
vlib questa_lib/msim/axi_vip_v1_1_2
vlib questa_lib/msim/processing_system7_vip_v1_0_4
vlib questa_lib/msim/lib_cdc_v1_0_2
vlib questa_lib/msim/proc_sys_reset_v5_0_12
vlib questa_lib/msim/lib_pkg_v1_0_2
vlib questa_lib/msim/lib_fifo_v1_0_11
vlib questa_lib/msim/blk_mem_gen_v8_4_1
vlib questa_lib/msim/lib_bmg_v1_0_10
vlib questa_lib/msim/lib_srl_fifo_v1_0_2
vlib questa_lib/msim/axi_datamover_v5_1_18
vlib questa_lib/msim/axi_vdma_v6_3_4
vlib questa_lib/msim/generic_baseblocks_v2_1_0
vlib questa_lib/msim/axi_register_slice_v2_1_16
vlib questa_lib/msim/axi_data_fifo_v2_1_15
vlib questa_lib/msim/axi_crossbar_v2_1_17
vlib questa_lib/msim/axi_protocol_converter_v2_1_16
vlib questa_lib/msim/axi_clock_converter_v2_1_15

vmap xilinx_vip questa_lib/msim/xilinx_vip
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap xpm questa_lib/msim/xpm
vmap fifo_generator_v13_2_2 questa_lib/msim/fifo_generator_v13_2_2
vmap axi_infrastructure_v1_1_0 questa_lib/msim/axi_infrastructure_v1_1_0
vmap smartconnect_v1_0 questa_lib/msim/smartconnect_v1_0
vmap axi_protocol_checker_v2_0_2 questa_lib/msim/axi_protocol_checker_v2_0_2
vmap axi_vip_v1_1_2 questa_lib/msim/axi_vip_v1_1_2
vmap processing_system7_vip_v1_0_4 questa_lib/msim/processing_system7_vip_v1_0_4
vmap lib_cdc_v1_0_2 questa_lib/msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_12 questa_lib/msim/proc_sys_reset_v5_0_12
vmap lib_pkg_v1_0_2 questa_lib/msim/lib_pkg_v1_0_2
vmap lib_fifo_v1_0_11 questa_lib/msim/lib_fifo_v1_0_11
vmap blk_mem_gen_v8_4_1 questa_lib/msim/blk_mem_gen_v8_4_1
vmap lib_bmg_v1_0_10 questa_lib/msim/lib_bmg_v1_0_10
vmap lib_srl_fifo_v1_0_2 questa_lib/msim/lib_srl_fifo_v1_0_2
vmap axi_datamover_v5_1_18 questa_lib/msim/axi_datamover_v5_1_18
vmap axi_vdma_v6_3_4 questa_lib/msim/axi_vdma_v6_3_4
vmap generic_baseblocks_v2_1_0 questa_lib/msim/generic_baseblocks_v2_1_0
vmap axi_register_slice_v2_1_16 questa_lib/msim/axi_register_slice_v2_1_16
vmap axi_data_fifo_v2_1_15 questa_lib/msim/axi_data_fifo_v2_1_15
vmap axi_crossbar_v2_1_17 questa_lib/msim/axi_crossbar_v2_1_17
vmap axi_protocol_converter_v2_1_16 questa_lib/msim/axi_protocol_converter_v2_1_16
vmap axi_clock_converter_v2_1_15 questa_lib/msim/axi_clock_converter_v2_1_15

vlog -work xilinx_vip -64 -sv -L smartconnect_v1_0 -L axi_protocol_checker_v2_0_2 -L axi_vip_v1_1_2 -L processing_system7_vip_v1_0_4 -L xilinx_vip "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/a10f/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/4903" "+incdir+D:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" "+incdir+D:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" \
"D:/Xilinx/Vivado/2018.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"D:/Xilinx/Vivado/2018.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"D:/Xilinx/Vivado/2018.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"D:/Xilinx/Vivado/2018.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"D:/Xilinx/Vivado/2018.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"D:/Xilinx/Vivado/2018.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"D:/Xilinx/Vivado/2018.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"D:/Xilinx/Vivado/2018.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"D:/Xilinx/Vivado/2018.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xil_defaultlib -64 -sv -L smartconnect_v1_0 -L axi_protocol_checker_v2_0_2 -L axi_vip_v1_1_2 -L processing_system7_vip_v1_0_4 -L xilinx_vip "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/a10f/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/4903" "+incdir+D:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/a10f/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/4903" "+incdir+D:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" \
"D:/Xilinx/Vivado/2018.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Xilinx/Vivado/2018.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"D:/Xilinx/Vivado/2018.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"D:/Xilinx/Vivado/2018.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work fifo_generator_v13_2_2 -64 "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/a10f/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/4903" "+incdir+D:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/a10f/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/4903" "+incdir+D:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" \
"../../../../project_v2.srcs/sources_1/bd/system/ipshared/7aff/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_2 -64 -93 \
"../../../../project_v2.srcs/sources_1/bd/system/ipshared/7aff/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_2 -64 "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/a10f/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/4903" "+incdir+D:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/a10f/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/4903" "+incdir+D:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" \
"../../../../project_v2.srcs/sources_1/bd/system/ipshared/7aff/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/a10f/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/4903" "+incdir+D:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/a10f/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/4903" "+incdir+D:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_fifo_mm2s_0/sim/system_fifo_mm2s_0.v" \
"../../../bd/system/ip/system_fifo_s2mm_0/sim/system_fifo_s2mm_0.v" \
"../../../../project_v2.srcs/sources_1/bd/system/ipshared/63fc/hdl/ov7670_stream_v1_0_S00_AXI.v" \
"../../../../project_v2.srcs/sources_1/bd/system/ipshared/63fc/src/ov7670_capture.v" \
"../../../../project_v2.srcs/sources_1/bd/system/ipshared/63fc/hdl/ov7670_stream_v1_0.v" \
"../../../bd/system/ip/system_ov7670_decode_stream_0_0/sim/system_ov7670_decode_stream_0_0.v" \

vlog -work axi_infrastructure_v1_1_0 -64 "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/a10f/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/4903" "+incdir+D:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/a10f/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/4903" "+incdir+D:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" \
"../../../../project_v2.srcs/sources_1/bd/system/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work smartconnect_v1_0 -64 -sv -L smartconnect_v1_0 -L axi_protocol_checker_v2_0_2 -L axi_vip_v1_1_2 -L processing_system7_vip_v1_0_4 -L xilinx_vip "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/a10f/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/4903" "+incdir+D:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/a10f/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/4903" "+incdir+D:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" \
"../../../../project_v2.srcs/sources_1/bd/system/ipshared/02c8/hdl/sc_util_v1_0_vl_rfs.sv" \

vlog -work axi_protocol_checker_v2_0_2 -64 -sv -L smartconnect_v1_0 -L axi_protocol_checker_v2_0_2 -L axi_vip_v1_1_2 -L processing_system7_vip_v1_0_4 -L xilinx_vip "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/a10f/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/4903" "+incdir+D:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/a10f/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/4903" "+incdir+D:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" \
"../../../../project_v2.srcs/sources_1/bd/system/ipshared/3755/hdl/axi_protocol_checker_v2_0_vl_rfs.sv" \

vlog -work axi_vip_v1_1_2 -64 -sv -L smartconnect_v1_0 -L axi_protocol_checker_v2_0_2 -L axi_vip_v1_1_2 -L processing_system7_vip_v1_0_4 -L xilinx_vip "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/a10f/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/4903" "+incdir+D:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/a10f/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/4903" "+incdir+D:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" \
"../../../../project_v2.srcs/sources_1/bd/system/ipshared/725c/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_4 -64 -sv -L smartconnect_v1_0 -L axi_protocol_checker_v2_0_2 -L axi_vip_v1_1_2 -L processing_system7_vip_v1_0_4 -L xilinx_vip "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/a10f/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/4903" "+incdir+D:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/a10f/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/4903" "+incdir+D:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" \
"../../../../project_v2.srcs/sources_1/bd/system/ipshared/b193/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/a10f/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/4903" "+incdir+D:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/a10f/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/4903" "+incdir+D:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_processing_system7_0_0/sim/system_processing_system7_0_0.v" \

vcom -work lib_cdc_v1_0_2 -64 -93 \
"../../../../project_v2.srcs/sources_1/bd/system/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_12 -64 -93 \
"../../../../project_v2.srcs/sources_1/bd/system/ipshared/f86a/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/system/ip/system_rst_ov7670_pclk_0/sim/system_rst_ov7670_pclk_0.vhd" \
"../../../bd/system/ip/system_rst_processing_system7_0_100M_0/sim/system_rst_processing_system7_0_100M_0.vhd" \
"../../../bd/system/ip/system_rst_vga_clk25_0/sim/system_rst_vga_clk25_0.vhd" \

vlog -work xil_defaultlib -64 "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/a10f/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/4903" "+incdir+D:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/a10f/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/4903" "+incdir+D:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" \
"../../../../project_v2.srcs/sources_1/bd/system/ipshared/0fb7/vga640x480.v" \
"../../../bd/system/ip/system_stream_to_vga_0_0/sim/system_stream_to_vga_0_0.v" \

vcom -work lib_pkg_v1_0_2 -64 -93 \
"../../../../project_v2.srcs/sources_1/bd/system/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work lib_fifo_v1_0_11 -64 -93 \
"../../../../project_v2.srcs/sources_1/bd/system/ipshared/6078/hdl/lib_fifo_v1_0_rfs.vhd" \

vlog -work blk_mem_gen_v8_4_1 -64 "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/a10f/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/4903" "+incdir+D:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/a10f/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/4903" "+incdir+D:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" \
"../../../../project_v2.srcs/sources_1/bd/system/ipshared/67d8/simulation/blk_mem_gen_v8_4.v" \

vcom -work lib_bmg_v1_0_10 -64 -93 \
"../../../../project_v2.srcs/sources_1/bd/system/ipshared/9340/hdl/lib_bmg_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -64 -93 \
"../../../../project_v2.srcs/sources_1/bd/system/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work axi_datamover_v5_1_18 -64 -93 \
"../../../../project_v2.srcs/sources_1/bd/system/ipshared/1150/hdl/axi_datamover_v5_1_vh_rfs.vhd" \

vlog -work axi_vdma_v6_3_4 -64 "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/a10f/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/4903" "+incdir+D:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/a10f/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/4903" "+incdir+D:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" \
"../../../../project_v2.srcs/sources_1/bd/system/ipshared/a10f/hdl/axi_vdma_v6_3_rfs.v" \

vcom -work axi_vdma_v6_3_4 -64 -93 \
"../../../../project_v2.srcs/sources_1/bd/system/ipshared/a10f/hdl/axi_vdma_v6_3_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/system/ip/system_vdma_mm2s_0/sim/system_vdma_mm2s_0.vhd" \
"../../../bd/system/ip/system_vdma_s2mm_0/sim/system_vdma_s2mm_0.vhd" \

vlog -work generic_baseblocks_v2_1_0 -64 "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/a10f/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/4903" "+incdir+D:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/a10f/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/4903" "+incdir+D:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" \
"../../../../project_v2.srcs/sources_1/bd/system/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_16 -64 "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/a10f/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/4903" "+incdir+D:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/a10f/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/4903" "+incdir+D:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" \
"../../../../project_v2.srcs/sources_1/bd/system/ipshared/0cde/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_data_fifo_v2_1_15 -64 "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/a10f/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/4903" "+incdir+D:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/a10f/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/4903" "+incdir+D:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" \
"../../../../project_v2.srcs/sources_1/bd/system/ipshared/d114/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_17 -64 "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/a10f/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/4903" "+incdir+D:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/a10f/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/4903" "+incdir+D:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" \
"../../../../project_v2.srcs/sources_1/bd/system/ipshared/d293/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/a10f/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/4903" "+incdir+D:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/a10f/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/4903" "+incdir+D:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_xbar_0/sim/system_xbar_0.v" \
"../../../bd/system/sim/system.v" \
"../../../bd/system/ip/system_ov7670_controller_0_0/sim/system_ov7670_controller_0_0.v" \
"../../../bd/system/ip/system_debounce_0_0/sim/system_debounce_0_0.v" \
"../../../bd/system/ip/system_clk_wiz_0_0/system_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/system/ip/system_clk_wiz_0_0/system_clk_wiz_0_0.v" \
"../../../bd/system/ipshared/954c/hdl/overlay_circles_v1_0_S00_AXI.v" \
"../../../bd/system/ipshared/954c/hdl/overlay_circles_v1_0.v" \
"../../../bd/system/ip/system_overlay_circles_0_5/sim/system_overlay_circles_0_5.v" \
"../../../bd/system/ip/system_blk_mem_gen_0_0/sim/system_blk_mem_gen_0_0.v" \
"../../../bd/system/ipshared/7a84/hdl/color_detector_v1_0_S00_AXI.v" \
"../../../bd/system/ipshared/7a84/hdl/color_detector_v1_0.v" \
"../../../bd/system/ip/system_color_detector_0_2/sim/system_color_detector_0_2.v" \

vlog -work axi_protocol_converter_v2_1_16 -64 "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/a10f/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/4903" "+incdir+D:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/a10f/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/4903" "+incdir+D:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" \
"../../../../project_v2.srcs/sources_1/bd/system/ipshared/1229/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/a10f/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/4903" "+incdir+D:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/a10f/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/4903" "+incdir+D:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_auto_pc_2/sim/system_auto_pc_2.v" \
"../../../bd/system/ip/system_auto_pc_1/sim/system_auto_pc_1.v" \

vlog -work axi_clock_converter_v2_1_15 -64 "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/a10f/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/4903" "+incdir+D:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/a10f/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/4903" "+incdir+D:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" \
"../../../../project_v2.srcs/sources_1/bd/system/ipshared/d371/hdl/axi_clock_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/a10f/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/4903" "+incdir+D:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/a10f/hdl" "+incdir+../../../../project_v2.srcs/sources_1/bd/system/ipshared/4903" "+incdir+D:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_auto_cc_0/sim/system_auto_cc_0.v" \
"../../../bd/system/ip/system_auto_pc_0/sim/system_auto_pc_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

