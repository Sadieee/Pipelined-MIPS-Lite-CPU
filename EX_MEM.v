
module EXMEM( clk, rst, en_reg, RD2_in, WB_in, MEM_in, ALUzero_in, ALU_in, WN_in, 
             RD2_out, WB_out, MEM_out, ALUzero_out, ALU_out, WN_out );
			 
			 
	input clk, rst, en_reg, ALUzero_in;
	input[31:0] RD2_in, ALU_in;
	input[1:0] WB_in, MEM_in;
	input[4:0] WN_in;
	output ALUzero_out;
	output[31:0] RD2_out, ALU_out;  //  Branch_tgt_addr ??
	output[1:0] WB_out, MEM_out;
	output[4:0] WN_out;
	
	reg[31:0] RD2_out, ALU_out;
	reg[1:0] WB_out, MEM_out;
	reg[4:0] WN_out;


    always @( posedge clk ) begin
        if ( rst ) 
		begin
			WB_out    <= 2'b0;
			MEM_out   <= 2'b0;
			ALU_out   <= 32'b0; 
			RD2_out   <= 32'b0; 
			WN_out    <= 5'b0; 
		end
        else if ( en_reg ) 
		begin
			WB_out    <=  WB_in;
			MEM_out   <=  MEM_in;
			ALU_out   <=  ALU_in; 
			RD2_out   <=  RD2_in; 
			WN_out    <=  WN_in; 
		end

    end
endmodule
