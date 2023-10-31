module tt_um_yannickreiss_stack
  (input  [7:0] ui_in,
   input  [7:0] uio_in,
   input  ena,
   input  clk,
   input  rst_n,
   output [7:0] uo_out,
   output [7:0] uio_out,
   output [7:0] uio_oe);
  reg push;
  reg pop;
  reg [7:0] stack_pointer;
  reg step;
  reg [7:0] oo_out;
  wire n12_o;
  wire [4:0] n13_o;
  wire [7:0] n21_o;
  wire [7:0] n22_o;
  wire [7:0] n24_o;
  wire [7:0] n25_o;
  wire [4:0] n26_o;
  wire [7:0] n32_o;
  wire [7:0] n33_o;
  wire n34_o;
  wire n37_o;
  wire [7:0] n38_o;
  localparam [7:0] n44_o = 8'b00000000;
  localparam [7:0] n45_o = 8'b00000000;
  wire n46_o;
  wire n47_o;
  reg [7:0] n49_q;
  reg n52_q;
  reg [7:0] n53_q;
  wire [7:0] n55_data; // mem_rd
  assign uo_out = oo_out;
  assign uio_out = n45_o;
  assign uio_oe = n44_o;
  /* src/tt_um_yannickreiss_stack.vhd:26:12  */
  always @*
    push = n46_o; // (isignal)
  initial
    push = 1'b0;
  /* src/tt_um_yannickreiss_stack.vhd:27:12  */
  always @*
    pop = n47_o; // (isignal)
  initial
    pop = 1'b0;
  /* src/tt_um_yannickreiss_stack.vhd:28:12  */
  always @*
    stack_pointer = n49_q; // (isignal)
  initial
    stack_pointer = 8'b00000000;
  /* src/tt_um_yannickreiss_stack.vhd:31:12  */
  always @*
    step = n52_q; // (isignal)
  initial
    step = 1'b0;
  /* src/tt_um_yannickreiss_stack.vhd:32:12  */
  always @*
    oo_out = n53_q; // (isignal)
  initial
    oo_out = 8'b00000000;
  /* src/tt_um_yannickreiss_stack.vhd:41:21  */
  assign n12_o = ~step;
  /* src/tt_um_yannickreiss_stack.vhd:45:60  */
  assign n13_o = stack_pointer[4:0];
  /* src/tt_um_yannickreiss_stack.vhd:50:79  */
  assign n21_o = stack_pointer - 8'b00000001;
  /* src/tt_um_yannickreiss_stack.vhd:49:17  */
  assign n22_o = pop ? n21_o : stack_pointer;
  /* src/tt_um_yannickreiss_stack.vhd:58:79  */
  assign n24_o = stack_pointer + 8'b00000001;
  /* src/tt_um_yannickreiss_stack.vhd:57:17  */
  assign n25_o = push ? n24_o : stack_pointer;
  /* src/tt_um_yannickreiss_stack.vhd:63:70  */
  assign n26_o = stack_pointer[4:0];
  /* src/tt_um_yannickreiss_stack.vhd:62:17  */
  assign n32_o = pop ? n55_data : oo_out;
  /* src/tt_um_yannickreiss_stack.vhd:41:13  */
  assign n33_o = n12_o ? n22_o : n25_o;
  /* src/tt_um_yannickreiss_stack.vhd:41:13  */
  assign n34_o = n12_o & push;
  /* src/tt_um_yannickreiss_stack.vhd:41:13  */
  assign n37_o = n12_o ? 1'b1 : 1'b0;
  /* src/tt_um_yannickreiss_stack.vhd:41:13  */
  assign n38_o = n12_o ? oo_out : n32_o;
  /* src/tt_um_yannickreiss_stack.vhd:80:23  */
  assign n46_o = uio_in[0];
  /* src/tt_um_yannickreiss_stack.vhd:81:23  */
  assign n47_o = uio_in[1];
  /* src/tt_um_yannickreiss_stack.vhd:40:9  */
  always @(posedge clk)
    n49_q <= n33_o;
  initial
    n49_q = 8'b00000000;
  /* src/tt_um_yannickreiss_stack.vhd:40:9  */
  always @(posedge clk)
    n52_q <= n37_o;
  initial
    n52_q = 1'b0;
  /* src/tt_um_yannickreiss_stack.vhd:40:9  */
  always @(posedge clk)
    n53_q <= n38_o;
  initial
    n53_q = 8'b00000000;
  /* src/tt_um_yannickreiss_stack.vhd:63:37  */
  reg [7:0] stack[31:0] ; // memory
  initial begin
    stack[31] = 8'b00000000;
    stack[30] = 8'b00000000;
    stack[29] = 8'b00000000;
    stack[28] = 8'b00000000;
    stack[27] = 8'b00000000;
    stack[26] = 8'b00000000;
    stack[25] = 8'b00000000;
    stack[24] = 8'b00000000;
    stack[23] = 8'b00000000;
    stack[22] = 8'b00000000;
    stack[21] = 8'b00000000;
    stack[20] = 8'b00000000;
    stack[19] = 8'b00000000;
    stack[18] = 8'b00000000;
    stack[17] = 8'b00000000;
    stack[16] = 8'b00000000;
    stack[15] = 8'b00000000;
    stack[14] = 8'b00000000;
    stack[13] = 8'b00000000;
    stack[12] = 8'b00000000;
    stack[11] = 8'b00000000;
    stack[10] = 8'b00000000;
    stack[9] = 8'b00000000;
    stack[8] = 8'b00000000;
    stack[7] = 8'b00000000;
    stack[6] = 8'b00000000;
    stack[5] = 8'b00000000;
    stack[4] = 8'b00000000;
    stack[3] = 8'b00000000;
    stack[2] = 8'b00000000;
    stack[1] = 8'b00000000;
    stack[0] = 8'b00000000;
    end
  assign n55_data = stack[n26_o];
  always @(posedge clk)
    if (n34_o)
      stack[n13_o] <= ui_in;
  /* src/tt_um_yannickreiss_stack.vhd:63:37  */
  /* src/tt_um_yannickreiss_stack.vhd:45:27  */
endmodule

