module CONTROLUNIT (
input [5:0] OPCODE , FUNCTION ,
output MEMTOREG , MEMWRITE , REGDST , REGWRITE , 
ALUSRC , BRANCH , JUMP , 
output [1:0] ALUCONTROLLER 
);
wire EQUALCHECK ;
wire CLR , PCSRC ;
wire [1:0] ALUOP ;
assign PCSRC = EQUALCHECK & BRANCH ;
assign CLR = PCSRC | JUMP ;

MAINDECODER UNIT1 (.OPCODE(OPCODE) , .ALUOP(ALUOP) , .MEMTOREG(MEMTOREG) , 
.MEMWRITE(MEMWRITE) , .REGDST(REGDST) , .REGWRITE(REGWRITE) ,
.ALUSRC(ALUSRC) , .BRANCH(BRANCH) , .JUMP(JUMP));


ALUDECODER UNIT2 (.FUNC(FUNCTION) , .ALUOP(ALUOP) , 
.ALUCONTROL(ALUCONTROLLER));

endmodule 
