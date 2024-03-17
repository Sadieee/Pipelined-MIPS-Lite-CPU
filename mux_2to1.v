`timescale 1ns/1ns
module mux_2to1( i1, i0, out, s );

	output out ;
	input i0, i1, s ;
	
	wire sbar, y1, y2 ;
	
	and ( y1, i1, s ), ( y2, i0, sbar );
	not ( sbar, s ) ;
	or  ( out, y1, y2 ) ;

endmodule