module EQUALITY (OPERAND1 , OPERAND2 , OUT);
input [31:0] OPERAND1 , OPERAND2 ;
output reg OUT ;
always @ (*) begin
if (OPERAND1 == OPERAND2)
OUT <= 1'b1 ;
else 
OUT <= 1'b0 ;
end
endmodule 
