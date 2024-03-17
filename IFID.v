
module IFID( clk, rst, en_reg, pc_in, ins_in, pc_out, ins_out );

	input clk, rst, en_reg;
	input[31:0] pc_in, ins_in;
	
	output[31:0] pc_out, ins_out;
	reg[31:0] pc_out, ins_out;



    always @( posedge clk ) begin
        if ( rst ) begin
		    pc_out <= 32'b0;   // PC+4
			ins_out <= 32'b0;  
		end
        else if ( en_reg ) begin
		    pc_out <= pc_in;
			ins_out <= ins_in;
		end
    end
endmodule
