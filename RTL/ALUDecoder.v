module ALUDECODER (ALUOP , FUNC , ALUCONTROL);
input [1:0] ALUOP ;
input [5:0] FUNC ;
output reg [2:0] ALUCONTROL;
always @(*) begin 
case (ALUOP)
2'b00 : ALUCONTROL = 3'b010 ;
2'b01 : ALUCONTROL = 3'b110 ;
2'b10 : begin 
if (FUNC == 6'b100000)
ALUCONTROL = 3'b010 ;
else if (FUNC == 6'b100010)
begin 
ALUCONTROL = 3'b110 ;
end
else if (FUNC == 6'b100100)
begin 
ALUCONTROL = 3'b000 ;
end
else if (FUNC == 6'b100101)
begin 
ALUCONTROL = 3'b001 ;
end
else if (FUNC == 6'b101010)
begin 
ALUCONTROL = 3'b111 ;
end
end
default : ALUCONTROL = 3'b010 ;

endcase
end

endmodule
