
module MEMWB( clk, rst, en_reg, MEM_RD_in, WB_in, ALUout_in, WN_in, 
              MEM_RD_out, WB_out, ALUout_out, WN_out );
			 
			 
	input clk, rst, en_reg ;
	input[31:0] MEM_RD_in, ALUout_in;
	input[1:0] WB_in;
	input[4:0] WN_in;
	
	output[31:0] MEM_RD_out, ALUout_out;
	output[1:0] WB_out;
	output[4:0] WN_out;
	
	reg[31:0] MEM_RD_out, ALUout_out;
	reg[1:0] WB_out;
	reg[4:0] WN_out;


    always @( posedge clk ) begin
        if ( rst ) begin
			MEM_RD_out <= 32'b0;
			ALUout_out <= 32'b0;
			WB_out <= 2'b0;
			WN_out <= 5'b0;
		end
        else if ( en_reg ) begin
			MEM_RD_out <= MEM_RD_in;
			ALUout_out <= ALUout_in;
			WB_out <= WB_in;
			WN_out <= WN_in;
		end
 
    end
endmodule
