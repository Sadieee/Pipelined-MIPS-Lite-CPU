# Pipelined-MIPS-Lite-CPU
使用Verilog設計一個Pipelined-MIPS-Lite-CPU，並包含以下16個指令:  
a) Integer Arithmetic: ad d, sub, and, or, sl l , slt , addiu  
b) Integer Memory Access: lw, sw  
c) Integer Branch: beq, j , jal  
d) Integer Multiply /Divide : multu  
e) Other Instructions : mfhi, mflo , nop  
### Datapath
![架構圖](https://github.com/Sadieee/Pipelined-MIPS-Lite-CPU/assets/85558758/03a31c55-8f2b-4218-a5d1-c6a443f1386b)  
### Method
1. ALU 
2. alu_ctl :由ALUOp、Funct決定ALUOperation，當ALUOp為00表示強加；為01表強減，為10時由Funct決定。
3. CtlUnit_pipelined : 依據輸入的指令代號(opcode)產生對應的控制訊號。
5. IF/ID: 在IF stage和ID stage間的暫存器，存放階段處理之數據以供後續stage使用，並在clock翹起時寫入新資料。
6. ID/EX: 在ID stage和EX stage間的暫存器，存放階段處理之數據以供後續stage使用，並在clock翹起時寫入新資料。
7. EX/MEM: 在EX stage和MEM stage間的暫存器，存放階段處理之數據以供後續stage使用，並在clock翹起時寫入新資料。
8. MEM/WB: 在MEM stage和WB stage間的暫存器，存放階段處理之數據以供後續stage使用，並在clock翹起時寫入新資料。


