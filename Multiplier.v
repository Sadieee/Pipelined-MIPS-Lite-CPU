`timescale 1ns/1ns
module Multiplier( clk, A, B, sel, MULTUAns, reset );

	input clk, reset ;
	input [31:0] A, B ;
	input sel ;    
	output [63:0] MULTUAns ;

	reg [63:0] product ;
	reg [31:0] multilpicand ;
	reg lsb ;
	reg situation;
	reg [7:0]  counter;
	reg [63:0] MULTUAns ;
	
	always@( posedge clk or reset )
	begin
	    // 歸零
        if ( reset ) 
        begin
			product[63:32] = 32'b00000000000000000000000000000000 ;
		    product[31:0]  = B ;
			multilpicand =  A ;
		end
		
        else
        begin

			if( sel )
			begin
				product[63:32] <= 32'b00000000000000000000000000000000 ;
				product[31:0]  <= B ;
				multilpicand =  A ;
				counter <= 8'b0;
				situation <= 1'b1;		
			end
			if ( situation == 1'b1 )
			begin
				if ( counter == 8'd32 )
				begin
					MULTUAns <= product;
					situation <= 1'b0;
				end
				else if ( counter < 8'd32 )
				begin
					if( product[0] )
						product[63:32] = product[63:32] + multilpicand ;
					product = product >> 1;
				end
				counter = counter + 1;
			end
         end
	end
	
endmodule