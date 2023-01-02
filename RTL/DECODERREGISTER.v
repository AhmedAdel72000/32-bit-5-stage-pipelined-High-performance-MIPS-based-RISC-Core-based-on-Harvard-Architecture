module DECODEREG (
input CLR , RST , CLK , ENABLE ,
input [31:0] RD , PCPLUS4F , 
output reg [31:0] INSTRUCTD , PCPLUS4D
);
always @ (posedge CLK or negedge RST) begin 
if (RST) begin 
INSTRUCTD <= 32'b0 ;  
PCPLUS4D <= 32'b0 ;
end
else if (CLR && !ENABLE) begin 
INSTRUCTD <= 32'b0 ;  
PCPLUS4D <= PCPLUS4F ;
end
else if (!ENABLE) begin
INSTRUCTD <= RD ;  
PCPLUS4D <= PCPLUS4F ;
end
end
endmodule 
