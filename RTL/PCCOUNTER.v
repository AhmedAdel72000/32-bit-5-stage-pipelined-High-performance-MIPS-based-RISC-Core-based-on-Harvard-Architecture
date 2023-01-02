module PCCOUNTER (
input [31:0] PCOLD ,
output reg [31:0] PCNEW ,
input CLK , RST , ENABLE
);
 always @(posedge CLK or negedge RST) begin 
if (RST) begin
PCNEW <= {(32){1'b0}} ;
end
else if (!ENABLE) begin 
PCNEW <= PCOLD ;
end
end
endmodule 
