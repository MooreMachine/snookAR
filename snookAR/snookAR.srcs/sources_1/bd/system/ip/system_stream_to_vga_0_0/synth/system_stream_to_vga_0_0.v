// (c) Copyright 1995-2018 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: user.org:user:stream_to_vga:1.0
// IP Revision: 1

(* X_CORE_INFO = "vga640x480,Vivado 2018.1" *)
(* CHECK_LICENSE_TYPE = "system_stream_to_vga_0_0,vga640x480,{}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module system_stream_to_vga_0_0 (
  clk25,
  aresetn,
  hsync,
  vsync,
  red,
  green,
  blue,
  tdata,
  tvalid,
  tready,
  fsync,
  hcounter,
  vcounter
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF rgb_in, FREQ_HZ 25000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
input wire clk25;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *)
input wire aresetn;
output wire hsync;
output wire vsync;
output wire [3 : 0] red;
output wire [3 : 0] green;
output wire [3 : 0] blue;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 rgb_in TDATA" *)
input wire [15 : 0] tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 rgb_in TVALID" *)
input wire tvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rgb_in, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 25000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 rgb_in TREADY" *)
output wire tready;
output wire fsync;
output wire [9 : 0] hcounter;
output wire [9 : 0] vcounter;

  vga640x480 #(
    .hActiveArea(640),
    .hFrontPorch(16),
    .hSyncPulse(96),
    .hBackPorch(48),
    .vActiveArea(480),
    .vFrontPorch(11),
    .vSyncPulse(2),
    .vBackPorch(31)
  ) inst (
    .clk25(clk25),
    .aresetn(aresetn),
    .hsync(hsync),
    .vsync(vsync),
    .red(red),
    .green(green),
    .blue(blue),
    .tdata(tdata),
    .tvalid(tvalid),
    .tready(tready),
    .fsync(fsync),
    .hcounter(hcounter),
    .vcounter(vcounter)
  );
endmodule
