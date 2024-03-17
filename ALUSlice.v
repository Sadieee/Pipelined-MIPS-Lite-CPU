`timescale 1ns/1ns
module ALUSlice(a, b, cin, inv, less, cout, sel, sumAdd, sumAnd, sumOr, sumSlt ) ;

	input a, b, cin, inv, less ;
	input [2:0] sel ;
	output cout, sum, sumAdd, sumAnd, sumOr, sumSlt ;
	
	wire bi ;
	
	xor( bi, b, inv ) ;
	and( sumAnd, a, b ) ;
	or( sumOr, a, b ) ;
	FA fa (.a(a), .b(bi), .cin(cin), .cout(cout), .sum(sumAdd)) ;
	
	assign sumSlt = less?1'b1:1'b0 ;
	
endmodule