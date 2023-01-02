module ALUUNIT (OPERANDA , OPERANDB , OP , ALUOUTPUT);
input [31:0] OPERANDA , OPERANDB ;
input [2:0] OP ;
output reg [31:0] ALUOUTPUT;
always @(*) begin
case (OP)
3'b000 : ALUOUTPUT = OPERANDA & OPERANDB ;
3'b001 : ALUOUTPUT = OPERANDA | OPERANDB ;
3'b010 : ALUOUTPUT = OPERANDA + OPERANDB ;
3'b100 : ALUOUTPUT = OPERANDA & (~OPERANDB) ;
3'b101 : ALUOUTPUT = OPERANDA | (~OPERANDB) ;
3'b110 : ALUOUTPUT = OPERANDA - OPERANDB ;
3'b111 : ALUOUTPUT = OPERANDA < OPERANDB ;
default : ALUOUTPUT = 0 ;
endcase 
end
endmodule

module ALUTESTBENCH ;
 reg [31:0] A ;
 reg [31:0] B ;
 reg [2:0] CONTROL ;
 wire [31:0] ALUOUT ;
initial
begin
$monitor("stime=%g,A=%B,B=%B,S=%B,CONTROL=%B",$time,A,B,CONTROL,ALUOUT);
end
ALUUNIT UUT (.OPERANDA(A), .OPERANDB(B), .OP(CONTROL), .ALUOUTPUT(ALUOUT));

initial
begin
CONTROL = 3'b001;
A = 1;
B =0;
end
endmodule 
