
module IDEX( clk, rst, en_reg, rs_in, rt_in, rd_in, shamt_in, funct_in, immed_in, RD1_in, RD2_in, WB_in, MEM_in, 
           EXE_in, rs_out, rt_out, rd_out, shamt_out, funct_out, immed_out, RD1_out, RD2_out, WB_out, MEM_out,
		   EXE_out );
		    
		   
	input clk, rst, en_reg;
	input[4:0] rs_in, rt_in, rd_in, shamt_in; 
	input[5:0] funct_in;
	input[31:0] immed_in, RD1_in, RD2_in;   // Add_in ??
	input[1:0] WB_in, MEM_in;
	input[3:0] EXE_in;
	
	output[4:0] rs_out, rt_out, rd_out, shamt_out;
	output[5:0] funct_out;
	output[31:0] immed_out, RD1_out, RD2_out;
	output[1:0] WB_out, MEM_out;
	output[3:0] EXE_out;
	 
	reg[4:0] rs_out, rt_out, rd_out, shamt_out;
	reg[5:0] funct_out;
	reg[31:0] immed_out, RD1_out, RD2_out;
	reg[1:0] WB_out, MEM_out;
	reg[3:0] EXE_out;

    always @( posedge clk ) begin
        if ( rst ) begin
		    rs_out <= 5'b0;
			rt_out <= 5'b0;
			rd_out <= 5'b0;
			shamt_out <= 5'b0;
			funct_out <= 5'b0;
			immed_out <= 5'b0;
			RD1_out <= 5'b0;
			RD2_out <= 5'b0;
			WB_out <= 5'b0;
			MEM_out <= 5'b0;
			EXE_out <= 5'b0;
		end
        else if ( en_reg ) begin
		    rs_out <= rs_in;
			rt_out <= rt_in;
			rd_out <= rd_in;
			shamt_out <= shamt_in;
			funct_out <= funct_in;
			immed_out <= immed_in;
			RD1_out <= RD1_in;
			RD2_out <= RD2_in;
			WB_out <= WB_in;
			MEM_out <= MEM_in;
			EXE_out <= EXE_in;
		end
	end	
endmodule	