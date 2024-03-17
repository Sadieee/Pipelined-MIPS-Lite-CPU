/*
	Title:	ALU
	Author: Garfield (Computer System and Architecture Lab, ICE, CYCU)
	Input Port
		1. ctl: 由alu_ctl解碼完的控制訊號
		2. a:   inputA,第一筆要處理的資料
		3. b:   inputB,第二筆要處理的資料
	Output Port
		1. result: 最後處理完的結果
		2. zero:   branch指令所需要之輸出
*/
module alu( sel, a, b, result, zero);
	//clt用sel取代
	input  [2:0] sel ; 
    input [31:0] a, b;      // 32 bit
    output [31:0] result;   // SUM 32 bit
	output zero;
 
	wire [31:0] result;
	reg zero;
	
	wire [31:0] sumAdd, sumAnd, sumOr, sumSlt ;
    wire [31:0] c;          // 放carry
	wire inv, set ;         // 1減、0加
	
	parameter AND = 3'b000;
	parameter OR  = 3'b001;
	parameter ADD = 3'b010;
	parameter SUB = 3'b110;
	//parameter SLT = 3'b000;		

	assign inv = ( sel == SUB )? 1'b1 : 1'b0 ;
				// ( sel == SLT )? 1'b1 :
								
	assign set = sumAdd[31] ;
	
    ALUSlice slice0(.a(a[0]), .b(b[0]), .cin(inv), .inv(inv), .less(set), .sel(sel), .cout(c[0]), .sumAdd(sumAdd[0]), .sumAnd(sumAnd[0]), .sumOr(sumOr[0]), .sumSlt(sumSlt[0]));
    ALUSlice slice1(.a(a[1]), .b(b[1]), .cin(c[0]), .inv(inv), .less(1'b0), .sel(sel), .cout(c[1]), .sumAdd(sumAdd[1]), .sumAnd(sumAnd[1]), .sumOr(sumOr[1]), .sumSlt(sumSlt[1]));
	ALUSlice slice2(.a(a[2]), .b(b[2]), .cin(c[1]), .inv(inv), .less(1'b0), .sel(sel), .cout(c[2]), .sumAdd(sumAdd[2]), .sumAnd(sumAnd[2]), .sumOr(sumOr[2]), .sumSlt(sumSlt[2])); 
	ALUSlice slice3(.a(a[3]), .b(b[3]), .cin(c[2]), .inv(inv), .less(1'b0), .sel(sel), .cout(c[3]), .sumAdd(sumAdd[3]), .sumAnd(sumAnd[3]), .sumOr(sumOr[3]), .sumSlt(sumSlt[3]));
    ALUSlice slice4(.a(a[4]), .b(b[4]), .cin(c[3]), .inv(inv), .less(1'b0), .sel(sel), .cout(c[4]), .sumAdd(sumAdd[4]), .sumAnd(sumAnd[4]), .sumOr(sumOr[4]), .sumSlt(sumSlt[4]));
	ALUSlice slice5(.a(a[5]), .b(b[5]), .cin(c[4]), .inv(inv), .less(1'b0), .sel(sel), .cout(c[5]), .sumAdd(sumAdd[5]), .sumAnd(sumAnd[5]), .sumOr(sumOr[5]), .sumSlt(sumSlt[5]));
	ALUSlice slice6(.a(a[6]), .b(b[6]), .cin(c[5]), .inv(inv), .less(1'b0), .sel(sel), .cout(c[6]), .sumAdd(sumAdd[6]), .sumAnd(sumAnd[6]), .sumOr(sumOr[6]), .sumSlt(sumSlt[6]));
	ALUSlice slice7(.a(a[7]), .b(b[7]), .cin(c[6]), .inv(inv), .less(1'b0), .sel(sel), .cout(c[7]), .sumAdd(sumAdd[7]), .sumAnd(sumAnd[7]), .sumOr(sumOr[7]), .sumSlt(sumSlt[7]));   
	ALUSlice slice8(.a(a[8]), .b(b[8]), .cin(c[7]), .inv(inv), .less(1'b0), .sel(sel), .cout(c[8]), .sumAdd(sumAdd[8]), .sumAnd(sumAnd[8]), .sumOr(sumOr[8]), .sumSlt(sumSlt[8]));
	ALUSlice slice9(.a(a[9]), .b(b[9]), .cin(c[8]), .inv(inv), .less(1'b0), .sel(sel), .cout(c[9]), .sumAdd(sumAdd[9]), .sumAnd(sumAnd[9]), .sumOr(sumOr[9]), .sumSlt(sumSlt[9]));
    ALUSlice slice10(.a(a[10]), .b(b[10]), .cin(c[9]), .inv(inv), .less(1'b0), .sel(sel), .cout(c[10]), .sumAdd(sumAdd[10]), .sumAnd(sumAnd[10]), .sumOr(sumOr[10]), .sumSlt(sumSlt[10]));
    ALUSlice slice11(.a(a[11]), .b(b[11]), .cin(c[10]), .inv(inv), .less(1'b0), .sel(sel), .cout(c[11]), .sumAdd(sumAdd[11]), .sumAnd(sumAnd[11]), .sumOr(sumOr[11]), .sumSlt(sumSlt[11]));
    ALUSlice slice12(.a(a[12]), .b(b[12]), .cin(c[11]), .inv(inv), .less(1'b0), .sel(sel), .cout(c[12]), .sumAdd(sumAdd[12]), .sumAnd(sumAnd[12]), .sumOr(sumOr[12]), .sumSlt(sumSlt[12]));
    ALUSlice slice13(.a(a[13]), .b(b[13]), .cin(c[12]), .inv(inv), .less(1'b0), .sel(sel), .cout(c[13]), .sumAdd(sumAdd[13]), .sumAnd(sumAnd[13]), .sumOr(sumOr[13]), .sumSlt(sumSlt[13]));
    ALUSlice slice14(.a(a[14]), .b(b[14]), .cin(c[13]), .inv(inv), .less(1'b0), .sel(sel), .cout(c[14]), .sumAdd(sumAdd[14]), .sumAnd(sumAnd[14]), .sumOr(sumOr[14]), .sumSlt(sumSlt[14]));
	ALUSlice slice15(.a(a[15]), .b(b[15]), .cin(c[14]), .inv(inv), .less(1'b0), .sel(sel), .cout(c[15]), .sumAdd(sumAdd[15]), .sumAnd(sumAnd[15]), .sumOr(sumOr[15]), .sumSlt(sumSlt[15]));
	ALUSlice slice16(.a(a[16]), .b(b[16]), .cin(c[15]), .inv(inv), .less(1'b0), .sel(sel), .cout(c[16]), .sumAdd(sumAdd[16]), .sumAnd(sumAnd[16]), .sumOr(sumOr[16]), .sumSlt(sumSlt[16]));
	ALUSlice slice17(.a(a[17]), .b(b[17]), .cin(c[16]), .inv(inv), .less(1'b0), .sel(sel), .cout(c[17]), .sumAdd(sumAdd[17]), .sumAnd(sumAnd[17]), .sumOr(sumOr[17]), .sumSlt(sumSlt[17]));   
	ALUSlice slice18(.a(a[18]), .b(b[18]), .cin(c[17]), .inv(inv), .less(1'b0), .sel(sel), .cout(c[18]), .sumAdd(sumAdd[18]), .sumAnd(sumAnd[18]), .sumOr(sumOr[18]), .sumSlt(sumSlt[18]));    
	ALUSlice slice19(.a(a[19]), .b(b[19]), .cin(c[18]), .inv(inv), .less(1'b0), .sel(sel), .cout(c[19]), .sumAdd(sumAdd[19]), .sumAnd(sumAnd[19]), .sumOr(sumOr[19]), .sumSlt(sumSlt[19]));
    ALUSlice slice20(.a(a[20]), .b(b[20]), .cin(c[19]), .inv(inv), .less(1'b0), .sel(sel), .cout(c[20]), .sumAdd(sumAdd[20]), .sumAnd(sumAnd[20]), .sumOr(sumOr[20]), .sumSlt(sumSlt[20]));
    ALUSlice slice21(.a(a[21]), .b(b[21]), .cin(c[20]), .inv(inv), .less(1'b0), .sel(sel), .cout(c[21]), .sumAdd(sumAdd[21]), .sumAnd(sumAnd[21]), .sumOr(sumOr[21]), .sumSlt(sumSlt[21]));
    ALUSlice slice22(.a(a[22]), .b(b[22]), .cin(c[21]), .inv(inv), .less(1'b0), .sel(sel), .cout(c[22]), .sumAdd(sumAdd[22]), .sumAnd(sumAnd[22]), .sumOr(sumOr[22]), .sumSlt(sumSlt[22]));
    ALUSlice slice23(.a(a[23]), .b(b[23]), .cin(c[22]), .inv(inv), .less(1'b0), .sel(sel), .cout(c[23]), .sumAdd(sumAdd[23]), .sumAnd(sumAnd[23]), .sumOr(sumOr[23]), .sumSlt(sumSlt[23]));
    ALUSlice slice24(.a(a[24]), .b(b[24]), .cin(c[23]), .inv(inv), .less(1'b0), .sel(sel), .cout(c[24]), .sumAdd(sumAdd[24]), .sumAnd(sumAnd[24]), .sumOr(sumOr[24]), .sumSlt(sumSlt[24]));
	ALUSlice slice25(.a(a[25]), .b(b[25]), .cin(c[24]), .inv(inv), .less(1'b0), .sel(sel), .cout(c[25]), .sumAdd(sumAdd[25]), .sumAnd(sumAnd[25]), .sumOr(sumOr[25]), .sumSlt(sumSlt[25]));
	ALUSlice slice26(.a(a[26]), .b(b[26]), .cin(c[25]), .inv(inv), .less(1'b0), .sel(sel), .cout(c[26]), .sumAdd(sumAdd[26]), .sumAnd(sumAnd[26]), .sumOr(sumOr[26]), .sumSlt(sumSlt[26]));
	ALUSlice slice27(.a(a[27]), .b(b[27]), .cin(c[26]), .inv(inv), .less(1'b0), .sel(sel), .cout(c[27]), .sumAdd(sumAdd[27]), .sumAnd(sumAnd[27]), .sumOr(sumOr[27]), .sumSlt(sumSlt[27])); 
	ALUSlice slice28(.a(a[28]), .b(b[28]), .cin(c[27]), .inv(inv), .less(1'b0), .sel(sel), .cout(c[28]), .sumAdd(sumAdd[28]), .sumAnd(sumAnd[28]), .sumOr(sumOr[28]), .sumSlt(sumSlt[28]));    
	ALUSlice slice29(.a(a[29]), .b(b[29]), .cin(c[28]), .inv(inv), .less(1'b0), .sel(sel), .cout(c[29]), .sumAdd(sumAdd[29]), .sumAnd(sumAnd[29]), .sumOr(sumOr[29]), .sumSlt(sumSlt[29]));
    ALUSlice slice30(.a(a[30]), .b(b[30]), .cin(c[29]), .inv(inv), .less(1'b0), .sel(sel), .cout(c[30]), .sumAdd(sumAdd[30]), .sumAnd(sumAnd[30]), .sumOr(sumOr[30]), .sumSlt(sumSlt[30]));
    ALUSlice slice31(.a(a[31]), .b(b[31]), .cin(c[30]), .inv(inv), .less(1'b0), .sel(sel), .cout(cout), .sumAdd(sumAdd[31]), .sumAnd(sumAnd[31]), .sumOr(sumOr[31]), .sumSlt(sumSlt[31]));

	assign result = ( sel == AND ) ? sumAnd :
					( sel == OR )  ? sumOr  :
					( sel == ADD ) ? sumAdd :
					( sel == SUB ) ? sumAdd :32'b0 ;
					//( sel == SLT ) ? sumSlt : 

endmodule