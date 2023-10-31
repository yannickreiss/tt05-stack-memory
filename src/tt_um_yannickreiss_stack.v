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
  wire [7:0] n20_o;
  wire [7:0] n21_o;
  wire [7:0] n23_o;
  wire [7:0] n24_o;
  wire [7:0] n30_o;
  wire [7:0] n31_o;
  wire n32_o;
  wire n35_o;
  wire [7:0] n36_o;
  localparam [7:0] n42_o = 8'b00000000;
  localparam [7:0] n43_o = 8'b00000000;
  wire n44_o;
  wire n45_o;
  reg [7:0] n47_q;
  reg n50_q;
  reg [7:0] n51_q;
  wire [7:0] n53_data; // mem_rd
  assign uo_out = oo_out;
  assign uio_out = n43_o;
  assign uio_oe = n42_o;
  /* src/tt_um_yannickreiss_stack.vhd:26:12  */
  always @*
    push = n44_o; // (isignal)
  initial
    push = 1'b0;
  /* src/tt_um_yannickreiss_stack.vhd:27:12  */
  always @*
    pop = n45_o; // (isignal)
  initial
    pop = 1'b0;
  /* src/tt_um_yannickreiss_stack.vhd:28:12  */
  always @*
    stack_pointer = n47_q; // (isignal)
  initial
    stack_pointer = 8'b00000000;
  /* src/tt_um_yannickreiss_stack.vhd:31:12  */
  always @*
    step = n50_q; // (isignal)
  initial
    step = 1'b0;
  /* src/tt_um_yannickreiss_stack.vhd:32:12  */
  always @*
    oo_out = n51_q; // (isignal)
  initial
    oo_out = 8'b00000000;
  /* src/tt_um_yannickreiss_stack.vhd:41:21  */
  assign n12_o = ~step;
  /* src/tt_um_yannickreiss_stack.vhd:50:79  */
  assign n20_o = stack_pointer - 8'b00000001;
  /* src/tt_um_yannickreiss_stack.vhd:49:17  */
  assign n21_o = pop ? n20_o : stack_pointer;
  /* src/tt_um_yannickreiss_stack.vhd:58:79  */
  assign n23_o = stack_pointer + 8'b00000001;
  /* src/tt_um_yannickreiss_stack.vhd:57:17  */
  assign n24_o = push ? n23_o : stack_pointer;
  /* src/tt_um_yannickreiss_stack.vhd:62:17  */
  assign n30_o = pop ? n53_data : oo_out;
  /* src/tt_um_yannickreiss_stack.vhd:41:13  */
  assign n31_o = n12_o ? n21_o : n24_o;
  /* src/tt_um_yannickreiss_stack.vhd:41:13  */
  assign n32_o = n12_o & push;
  /* src/tt_um_yannickreiss_stack.vhd:41:13  */
  assign n35_o = n12_o ? 1'b1 : 1'b0;
  /* src/tt_um_yannickreiss_stack.vhd:41:13  */
  assign n36_o = n12_o ? oo_out : n30_o;
  /* src/tt_um_yannickreiss_stack.vhd:80:23  */
  assign n44_o = uio_in[0];
  /* src/tt_um_yannickreiss_stack.vhd:81:23  */
  assign n45_o = uio_in[1];
  /* src/tt_um_yannickreiss_stack.vhd:40:9  */
  always @(posedge clk)
    n47_q <= n31_o;
  initial
    n47_q = 8'b00000000;
  /* src/tt_um_yannickreiss_stack.vhd:40:9  */
  always @(posedge clk)
    n50_q <= n35_o;
  initial
    n50_q = 1'b0;
  /* src/tt_um_yannickreiss_stack.vhd:40:9  */
  always @(posedge clk)
    n51_q <= n36_o;
  initial
    n51_q = 8'b00000000;
  /* src/tt_um_yannickreiss_stack.vhd:63:37  */
  reg [7:0] stack[255:0] ; // memory
  initial begin
    stack[255] = 8'b00000000;
    stack[254] = 8'b00000000;
    stack[253] = 8'b00000000;
    stack[252] = 8'b00000000;
    stack[251] = 8'b00000000;
    stack[250] = 8'b00000000;
    stack[249] = 8'b00000000;
    stack[248] = 8'b00000000;
    stack[247] = 8'b00000000;
    stack[246] = 8'b00000000;
    stack[245] = 8'b00000000;
    stack[244] = 8'b00000000;
    stack[243] = 8'b00000000;
    stack[242] = 8'b00000000;
    stack[241] = 8'b00000000;
    stack[240] = 8'b00000000;
    stack[239] = 8'b00000000;
    stack[238] = 8'b00000000;
    stack[237] = 8'b00000000;
    stack[236] = 8'b00000000;
    stack[235] = 8'b00000000;
    stack[234] = 8'b00000000;
    stack[233] = 8'b00000000;
    stack[232] = 8'b00000000;
    stack[231] = 8'b00000000;
    stack[230] = 8'b00000000;
    stack[229] = 8'b00000000;
    stack[228] = 8'b00000000;
    stack[227] = 8'b00000000;
    stack[226] = 8'b00000000;
    stack[225] = 8'b00000000;
    stack[224] = 8'b00000000;
    stack[223] = 8'b00000000;
    stack[222] = 8'b00000000;
    stack[221] = 8'b00000000;
    stack[220] = 8'b00000000;
    stack[219] = 8'b00000000;
    stack[218] = 8'b00000000;
    stack[217] = 8'b00000000;
    stack[216] = 8'b00000000;
    stack[215] = 8'b00000000;
    stack[214] = 8'b00000000;
    stack[213] = 8'b00000000;
    stack[212] = 8'b00000000;
    stack[211] = 8'b00000000;
    stack[210] = 8'b00000000;
    stack[209] = 8'b00000000;
    stack[208] = 8'b00000000;
    stack[207] = 8'b00000000;
    stack[206] = 8'b00000000;
    stack[205] = 8'b00000000;
    stack[204] = 8'b00000000;
    stack[203] = 8'b00000000;
    stack[202] = 8'b00000000;
    stack[201] = 8'b00000000;
    stack[200] = 8'b00000000;
    stack[199] = 8'b00000000;
    stack[198] = 8'b00000000;
    stack[197] = 8'b00000000;
    stack[196] = 8'b00000000;
    stack[195] = 8'b00000000;
    stack[194] = 8'b00000000;
    stack[193] = 8'b00000000;
    stack[192] = 8'b00000000;
    stack[191] = 8'b00000000;
    stack[190] = 8'b00000000;
    stack[189] = 8'b00000000;
    stack[188] = 8'b00000000;
    stack[187] = 8'b00000000;
    stack[186] = 8'b00000000;
    stack[185] = 8'b00000000;
    stack[184] = 8'b00000000;
    stack[183] = 8'b00000000;
    stack[182] = 8'b00000000;
    stack[181] = 8'b00000000;
    stack[180] = 8'b00000000;
    stack[179] = 8'b00000000;
    stack[178] = 8'b00000000;
    stack[177] = 8'b00000000;
    stack[176] = 8'b00000000;
    stack[175] = 8'b00000000;
    stack[174] = 8'b00000000;
    stack[173] = 8'b00000000;
    stack[172] = 8'b00000000;
    stack[171] = 8'b00000000;
    stack[170] = 8'b00000000;
    stack[169] = 8'b00000000;
    stack[168] = 8'b00000000;
    stack[167] = 8'b00000000;
    stack[166] = 8'b00000000;
    stack[165] = 8'b00000000;
    stack[164] = 8'b00000000;
    stack[163] = 8'b00000000;
    stack[162] = 8'b00000000;
    stack[161] = 8'b00000000;
    stack[160] = 8'b00000000;
    stack[159] = 8'b00000000;
    stack[158] = 8'b00000000;
    stack[157] = 8'b00000000;
    stack[156] = 8'b00000000;
    stack[155] = 8'b00000000;
    stack[154] = 8'b00000000;
    stack[153] = 8'b00000000;
    stack[152] = 8'b00000000;
    stack[151] = 8'b00000000;
    stack[150] = 8'b00000000;
    stack[149] = 8'b00000000;
    stack[148] = 8'b00000000;
    stack[147] = 8'b00000000;
    stack[146] = 8'b00000000;
    stack[145] = 8'b00000000;
    stack[144] = 8'b00000000;
    stack[143] = 8'b00000000;
    stack[142] = 8'b00000000;
    stack[141] = 8'b00000000;
    stack[140] = 8'b00000000;
    stack[139] = 8'b00000000;
    stack[138] = 8'b00000000;
    stack[137] = 8'b00000000;
    stack[136] = 8'b00000000;
    stack[135] = 8'b00000000;
    stack[134] = 8'b00000000;
    stack[133] = 8'b00000000;
    stack[132] = 8'b00000000;
    stack[131] = 8'b00000000;
    stack[130] = 8'b00000000;
    stack[129] = 8'b00000000;
    stack[128] = 8'b00000000;
    stack[127] = 8'b00000000;
    stack[126] = 8'b00000000;
    stack[125] = 8'b00000000;
    stack[124] = 8'b00000000;
    stack[123] = 8'b00000000;
    stack[122] = 8'b00000000;
    stack[121] = 8'b00000000;
    stack[120] = 8'b00000000;
    stack[119] = 8'b00000000;
    stack[118] = 8'b00000000;
    stack[117] = 8'b00000000;
    stack[116] = 8'b00000000;
    stack[115] = 8'b00000000;
    stack[114] = 8'b00000000;
    stack[113] = 8'b00000000;
    stack[112] = 8'b00000000;
    stack[111] = 8'b00000000;
    stack[110] = 8'b00000000;
    stack[109] = 8'b00000000;
    stack[108] = 8'b00000000;
    stack[107] = 8'b00000000;
    stack[106] = 8'b00000000;
    stack[105] = 8'b00000000;
    stack[104] = 8'b00000000;
    stack[103] = 8'b00000000;
    stack[102] = 8'b00000000;
    stack[101] = 8'b00000000;
    stack[100] = 8'b00000000;
    stack[99] = 8'b00000000;
    stack[98] = 8'b00000000;
    stack[97] = 8'b00000000;
    stack[96] = 8'b00000000;
    stack[95] = 8'b00000000;
    stack[94] = 8'b00000000;
    stack[93] = 8'b00000000;
    stack[92] = 8'b00000000;
    stack[91] = 8'b00000000;
    stack[90] = 8'b00000000;
    stack[89] = 8'b00000000;
    stack[88] = 8'b00000000;
    stack[87] = 8'b00000000;
    stack[86] = 8'b00000000;
    stack[85] = 8'b00000000;
    stack[84] = 8'b00000000;
    stack[83] = 8'b00000000;
    stack[82] = 8'b00000000;
    stack[81] = 8'b00000000;
    stack[80] = 8'b00000000;
    stack[79] = 8'b00000000;
    stack[78] = 8'b00000000;
    stack[77] = 8'b00000000;
    stack[76] = 8'b00000000;
    stack[75] = 8'b00000000;
    stack[74] = 8'b00000000;
    stack[73] = 8'b00000000;
    stack[72] = 8'b00000000;
    stack[71] = 8'b00000000;
    stack[70] = 8'b00000000;
    stack[69] = 8'b00000000;
    stack[68] = 8'b00000000;
    stack[67] = 8'b00000000;
    stack[66] = 8'b00000000;
    stack[65] = 8'b00000000;
    stack[64] = 8'b00000000;
    stack[63] = 8'b00000000;
    stack[62] = 8'b00000000;
    stack[61] = 8'b00000000;
    stack[60] = 8'b00000000;
    stack[59] = 8'b00000000;
    stack[58] = 8'b00000000;
    stack[57] = 8'b00000000;
    stack[56] = 8'b00000000;
    stack[55] = 8'b00000000;
    stack[54] = 8'b00000000;
    stack[53] = 8'b00000000;
    stack[52] = 8'b00000000;
    stack[51] = 8'b00000000;
    stack[50] = 8'b00000000;
    stack[49] = 8'b00000000;
    stack[48] = 8'b00000000;
    stack[47] = 8'b00000000;
    stack[46] = 8'b00000000;
    stack[45] = 8'b00000000;
    stack[44] = 8'b00000000;
    stack[43] = 8'b00000000;
    stack[42] = 8'b00000000;
    stack[41] = 8'b00000000;
    stack[40] = 8'b00000000;
    stack[39] = 8'b00000000;
    stack[38] = 8'b00000000;
    stack[37] = 8'b00000000;
    stack[36] = 8'b00000000;
    stack[35] = 8'b00000000;
    stack[34] = 8'b00000000;
    stack[33] = 8'b00000000;
    stack[32] = 8'b00000000;
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
  assign n53_data = stack[stack_pointer];
  always @(posedge clk)
    if (n32_o)
      stack[stack_pointer] <= ui_in;
  /* src/tt_um_yannickreiss_stack.vhd:63:37  */
  /* src/tt_um_yannickreiss_stack.vhd:45:27  */
endmodule

