`timescale 1ns/1ns
module Shifter( A, B, sel, cout, reset );       

  input reset ;
  input [31:0] A, B;  // 位移數、移動位數
  input [5:0] sel;
  output [31:0] cout; 
  
  wire [31:0] out ;
  wire [31:0] ST1, ST2, ST3, ST4; // intermediate lines 

			mux_2to1 m0 (1'b0, A[0], ST1[0], B[0]); 
			mux_2to1 m1 (A[0], A[1], ST1[1], B[0]); 
			mux_2to1 m2 (A[1], A[2], ST1[2], B[0]); 
			mux_2to1 m3 (A[2], A[3], ST1[3], B[0]); 
			mux_2to1 m4 (A[3], A[4], ST1[4], B[0]); 
			mux_2to1 m5 (A[4], A[5], ST1[5], B[0]); 
			mux_2to1 m6 (A[5], A[6], ST1[6], B[0]); 
			mux_2to1 m7 (A[6], A[7], ST1[7], B[0]); 
			mux_2to1 m8 (A[7], A[8], ST1[8], B[0]); 
			mux_2to1 m9 (A[8], A[9], ST1[9], B[0]); 
			mux_2to1 m10 (A[9], A[10], ST1[10], B[0]); 
			mux_2to1 m11 (A[10], A[11], ST1[11], B[0]); 
			mux_2to1 m12 (A[11], A[12], ST1[12], B[0]); 
			mux_2to1 m13 (A[12], A[13], ST1[13], B[0]); 
			mux_2to1 m14 (A[13], A[14], ST1[14], B[0]);  
			mux_2to1 m15 (A[14], A[15], ST1[15], B[0]); 
			mux_2to1 m16 (A[15], A[16], ST1[16], B[0]); 
			mux_2to1 m17 (A[16], A[17], ST1[17], B[0]); 
			mux_2to1 m18 (A[17], A[18], ST1[18], B[0]); 
			mux_2to1 m19 (A[18], A[19], ST1[19], B[0]); 
			mux_2to1 m20 (A[19], A[20], ST1[20], B[0]); 
			mux_2to1 m21 (A[20], A[21], ST1[21], B[0]); 
			mux_2to1 m22 (A[21], A[22], ST1[22], B[0]);  
			mux_2to1 m23 (A[22], A[23], ST1[23], B[0]); 
			mux_2to1 m24 (A[23], A[24], ST1[24], B[0]); 
			mux_2to1 m25 (A[24], A[25], ST1[25], B[0]); 
			mux_2to1 m26 (A[25], A[26], ST1[26], B[0]); 
			mux_2to1 m27 (A[26], A[27], ST1[27], B[0]); 
			mux_2to1 m28 (A[27], A[28], ST1[28], B[0]); 
			mux_2to1 m29 (A[28], A[29], ST1[29], B[0]); 
			mux_2to1 m30 (A[29], A[30], ST1[30], B[0]); 
			mux_2to1 m31 (A[30], A[31], ST1[31], B[0]);  
  
			mux_2to1 m00 (1'b0, ST1[0], ST2[0], B[1]); 
			mux_2to1 m01 (1'b0, ST1[1], ST2[1], B[1]);  
			mux_2to1 m02 (ST1[0], ST1[2], ST2[2], B[1]);  
			mux_2to1 m03 (ST1[1], ST1[3], ST2[3], B[1]); 
			mux_2to1 m04 (ST1[2], ST1[4], ST2[4], B[1]);  
			mux_2to1 m05 (ST1[3], ST1[5], ST2[5], B[1]); 
			mux_2to1 m06 (ST1[4], ST1[6], ST2[6], B[1]);  
			mux_2to1 m07 (ST1[5], ST1[7], ST2[7], B[1]); 
			mux_2to1 m08 (ST1[6], ST1[8], ST2[8], B[1]);  
			mux_2to1 m09 (ST1[7], ST1[9], ST2[9], B[1]); 
			mux_2to1 m010 (ST1[8], ST1[10], ST2[10], B[1]);  
			mux_2to1 m011 (ST1[9], ST1[11], ST2[11], B[1]); 
			mux_2to1 m012 (ST1[10], ST1[12], ST2[12], B[1]); 
			mux_2to1 m013 (ST1[11], ST1[13], ST2[13], B[1]); 
			mux_2to1 m014 (ST1[12], ST1[14], ST2[14], B[1]); 
			mux_2to1 m015 (ST1[13], ST1[15], ST2[15], B[1]); 
			mux_2to1 m016 (ST1[14], ST1[16], ST2[16], B[1]);  
			mux_2to1 m017 (ST1[15], ST1[17], ST2[17], B[1]); 
			mux_2to1 m018 (ST1[16], ST1[18], ST2[18], B[1]); 
			mux_2to1 m019 (ST1[17], ST1[19], ST2[19], B[1]); 
			mux_2to1 m020 (ST1[18], ST1[20], ST2[20], B[1]);  
			mux_2to1 m021 (ST1[19], ST1[21], ST2[21], B[1]);  
			mux_2to1 m022 (ST1[20], ST1[22], ST2[22], B[1]); 
			mux_2to1 m023 (ST1[21], ST1[23], ST2[23], B[1]); 
			mux_2to1 m024 (ST1[22], ST1[24], ST2[24], B[1]); 
			mux_2to1 m025 (ST1[23], ST1[25], ST2[25], B[1]); 
			mux_2to1 m026 (ST1[24], ST1[26], ST2[26], B[1]); 
			mux_2to1 m027 (ST1[25], ST1[27], ST2[27], B[1]); 
			mux_2to1 m028 (ST1[26], ST1[28], ST2[28], B[1]);  
			mux_2to1 m029 (ST1[27], ST1[29], ST2[29], B[1]); 
			mux_2to1 m030 (ST1[28], ST1[30], ST2[30], B[1]);  
			mux_2to1 m031 (ST1[29], ST1[31], ST2[31], B[1]); 
  
			mux_2to1 m000 (1'b0, ST2[0], ST3[0], B[2]); 
			mux_2to1 m001 (1'b0, ST2[1], ST3[1], B[2]); 
			mux_2to1 m002 (1'b0, ST2[2], ST3[2], B[2]); 
			mux_2to1 m003 (1'b0, ST2[3], ST3[3], B[2]); 
			mux_2to1 m004 (ST2[0], ST2[4], ST3[4], B[2]); 
			mux_2to1 m005 (ST2[1], ST2[5], ST3[5], B[2]);  
			mux_2to1 m006 (ST2[2], ST2[6], ST3[6], B[2]); 
			mux_2to1 m007 (ST2[3], ST2[7], ST3[7], B[2]);  
			mux_2to1 m008 (ST2[4], ST2[8], ST3[8], B[2]); 
			mux_2to1 m009 (ST2[5], ST2[9], ST3[9], B[2]);  
			mux_2to1 m0010 (ST2[6], ST2[10], ST3[10], B[2]);  
			mux_2to1 m0011 (ST2[7], ST2[11], ST3[11], B[2]); 
			mux_2to1 m0012 (ST2[8], ST2[12], ST3[12], B[2]); 
			mux_2to1 m0013 (ST2[9], ST2[13], ST3[13], B[2]); 
			mux_2to1 m0014 (ST2[10], ST2[14], ST3[14], B[2]);  
			mux_2to1 m0015 (ST2[11], ST2[15], ST3[15], B[2]);    
			mux_2to1 m0016 (ST2[12], ST2[16], ST3[16], B[2]); 
			mux_2to1 m0017 (ST2[13], ST2[17], ST3[17], B[2]); 
			mux_2to1 m0018 (ST2[14], ST2[18], ST3[18], B[2]); 
			mux_2to1 m0019 (ST2[15], ST2[19], ST3[19], B[2]); 
			mux_2to1 m0020 (ST2[16], ST2[20], ST3[20], B[2]); 
			mux_2to1 m0021 (ST2[17], ST2[21], ST3[21], B[2]); 
			mux_2to1 m0022 (ST2[18], ST2[22], ST3[22], B[2]); 
			mux_2to1 m0023 (ST2[19], ST2[23], ST3[23], B[2]);
			mux_2to1 m0024 (ST2[20], ST2[24], ST3[24], B[2]); 
			mux_2to1 m0025 (ST2[21], ST2[25], ST3[25], B[2]); 
			mux_2to1 m0026 (ST2[22], ST2[26], ST3[26], B[2]); 
			mux_2to1 m0027 (ST2[23], ST2[27], ST3[27], B[2]); 
			mux_2to1 m0028 (ST2[24], ST2[28], ST3[28], B[2]);  
			mux_2to1 m0029 (ST2[25], ST2[29], ST3[29], B[2]);  
			mux_2to1 m0030 (ST2[26], ST2[30], ST3[30], B[2]);  
			mux_2to1 m0031 (ST2[27], ST2[31], ST3[31], B[2]); 
  
			mux_2to1 m0000 (1'b0, ST3[0], ST4[0], B[3]); 
			mux_2to1 m0001 (1'b0, ST3[1], ST4[1], B[3]); 
			mux_2to1 m0002 (1'b0, ST3[2], ST4[2], B[3]); 
			mux_2to1 m0003 (1'b0, ST3[3], ST4[3], B[3]); 
			mux_2to1 m0004 (1'b0, ST3[4], ST4[4], B[3]); 
			mux_2to1 m0005 (1'b0, ST3[5], ST4[5], B[3]); 
			mux_2to1 m0006 (1'b0, ST3[6], ST4[6], B[3]);  
			mux_2to1 m0007 (1'b0, ST3[7], ST4[7], B[3]); 
			mux_2to1 m0008 (ST3[0], ST3[8], ST4[8], B[3]); 
			mux_2to1 m0009 (ST3[1], ST3[9], ST4[9], B[3]); 
			mux_2to1 m00010 (ST3[2], ST3[10], ST4[10], B[3]); 
			mux_2to1 m00011 (ST3[3], ST3[11], ST4[11], B[3]); 
			mux_2to1 m00012 (ST3[4], ST3[12], ST4[12], B[3]);  
			mux_2to1 m00013 (ST3[5], ST3[13], ST4[13], B[3]); 
			mux_2to1 m00014 (ST3[6], ST3[14], ST4[14], B[3]); 
			mux_2to1 m00015 (ST3[7], ST3[15], ST4[15], B[3]);  
			mux_2to1 m00016 (ST3[8], ST3[16], ST4[16], B[3]); 
			mux_2to1 m00017 (ST3[9], ST3[17], ST4[17], B[3]); 
			mux_2to1 m00018 (ST3[10], ST3[18], ST4[18], B[3]); 
			mux_2to1 m00019 (ST3[11], ST3[19], ST4[19], B[3]); 
			mux_2to1 m00020 (ST3[12], ST3[20], ST4[20], B[3]); 
			mux_2to1 m00021 (ST3[13], ST3[21], ST4[21], B[3]); 
			mux_2to1 m00022 (ST3[14], ST3[22], ST4[22], B[3]);  
			mux_2to1 m00023 (ST3[15], ST3[23], ST4[23], B[3]); 
			mux_2to1 m00024 (ST3[16], ST3[24], ST4[24], B[3]); 
			mux_2to1 m00025 (ST3[17], ST3[25], ST4[25], B[3]); 
			mux_2to1 m00026 (ST3[18], ST3[26], ST4[26], B[3]); 
			mux_2to1 m00027 (ST3[19], ST3[27], ST4[27], B[3]); 
			mux_2to1 m00028 (ST3[20], ST3[28], ST4[28], B[3]); 
			mux_2to1 m00029 (ST3[21], ST3[29], ST4[29], B[3]); 
			mux_2to1 m00030 (ST3[22], ST3[30], ST4[30], B[3]); 
			mux_2to1 m00031 (ST3[23], ST3[31], ST4[31], B[3]); 
  
 			mux_2to1 m00000 (1'b0, ST4[0], out[0], B[4]); 
			mux_2to1 m00001 (1'b0, ST4[1], out[1], B[4]); 
			mux_2to1 m00002 (1'b0, ST4[2], out[2], B[4]); 
			mux_2to1 m00003 (1'b0, ST4[3], out[3], B[4]);  
			mux_2to1 m00004 (1'b0, ST4[4], out[4], B[4]); 
			mux_2to1 m00005 (1'b0, ST4[5], out[5], B[4]); 
			mux_2to1 m00006 (1'b0, ST4[6], out[6], B[4]);  
			mux_2to1 m00007 (1'b0, ST4[7], out[7], B[4]); 
			mux_2to1 m00008 (1'b0, ST4[8], out[8], B[4]); 
			mux_2to1 m00009 (1'b0, ST4[9], out[9], B[4]); 
			mux_2to1 m000010 (1'b0, ST4[10], out[10], B[4]); 
			mux_2to1 m000011 (1'b0, ST4[11], out[11], B[4]);  
			mux_2to1 m000012 (1'b0, ST4[12], out[12], B[4]); 
			mux_2to1 m000013 (1'b0, ST4[13], out[13], B[4]); 
			mux_2to1 m000014 (1'b0, ST4[14], out[14], B[4]);  
			mux_2to1 m000015 (1'b0, ST4[15], out[15], B[4]);
			mux_2to1 m000016 (ST4[0], ST4[16], out[16], B[4]); 
			mux_2to1 m000017 (ST4[1], ST4[17], out[17], B[4]);  
			mux_2to1 m000018 (ST4[2], ST4[18], out[18], B[4]); 
			mux_2to1 m000019 (ST4[3], ST4[19], out[19], B[4]);
			mux_2to1 m000020 (ST4[4], ST4[20], out[20], B[4]); 
			mux_2to1 m000021 (ST4[5], ST4[21], out[21], B[4]); 
			mux_2to1 m000022 (ST4[6], ST4[22], out[22], B[4]); 
			mux_2to1 m000023 (ST4[7], ST4[23], out[23], B[4]); 
			mux_2to1 m000024 (ST4[8], ST4[24], out[24], B[4]); 
			mux_2to1 m000025 (ST4[9], ST4[25], out[25], B[4]); 
			mux_2to1 m000026 (ST4[10], ST4[26], out[26], B[4]); 
			mux_2to1 m000027 (ST4[11], ST4[27], out[27], B[4]); 
			mux_2to1 m000028 (ST4[12], ST4[28], out[28], B[4]); 
			mux_2to1 m000029 (ST4[13], ST4[29], out[29], B[4]); 
			mux_2to1 m000030 (ST4[14], ST4[30], out[30], B[4]);  
			mux_2to1 m000031 (ST4[15], ST4[31], out[31], B[4]); 			
	
	assign cout = (reset)?32'b0:out ;

endmodule