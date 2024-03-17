`timescale 1ns/1ns
module MUX( ALUOut, HiOut, LoOut, Shifter, sel, dataOut );
	input [31:0] ALUOut ;
	input [31:0] HiOut ;
	input [31:0] LoOut ;
	input [31:0] Shifter ;
	input [5:0] sel ;
	output [31:0] dataOut ;

	reg [31:0] temp ;

	parameter AND = 6'b100100;
	parameter OR  = 6'b100101;
	parameter ADD = 6'b100000;	
	parameter SUB = 6'b100010;
	parameter SLT = 6'b101010;
	parameter SLL = 6'b000000;
	parameter MULTU = 6'b011001;
	parameter MFHI= 6'b010000;
	parameter MFLO= 6'b010010;

	always@( ALUOut or HiOut or LoOut or Shifter or sel )
	begin

		case ( sel )
		AND:
		begin
			temp = ALUOut ;
		end
		OR:
		begin
			temp = ALUOut ;
		end
		ADD:
		begin
			temp = ALUOut ;
		end
		SUB:
		begin
			temp = ALUOut ;
		end
		SLT:
		begin
			temp = ALUOut ;
		end
		MFHI:
		begin
			temp = HiOut ;
		end
		MFLO:
		begin
			temp = LoOut ;
		end

		SLL:
		begin
			temp = Shifter ;
		end
		default: temp = 32'b0 ;	
	
		endcase

	end
	assign dataOut = temp ;

endmodule