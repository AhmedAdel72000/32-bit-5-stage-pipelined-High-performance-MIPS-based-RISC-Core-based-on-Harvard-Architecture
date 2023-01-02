module EXECUTIONREG (
input WRITEREGD , MEMTOREGD , MEMWRITED,
input [1:0] ALUCONTROLD,
input ALUSRCD , REGDSTD,
input [31:0] rd1D , rd2D,
input [4:0] rsD , rtD , rdD,
input [31:0] SIGNIMMD,
input CLR , RST , CLK,
output  reg WRITEREGE , MEMTOREGE , MEMWRITEE,
output reg [1:0] ALUCONTROLE,
output reg ALUSRCE , REGDSTE,
output reg [31:0] rd1E , rd2E,
output reg [4:0] rsE , rtE , rdE,
output reg [31:0] SIGNIMME
);
always @(posedge CLK or negedge RST) begin 
if (RST | CLR) begin
WRITEREGE <= 1'b0 ;
MEMTOREGE <= 1'b0 ;
MEMWRITEE <= 1'b0 ;
ALUCONTROLE <= 2'b0 ;
ALUSRCE <= 1'b0 ;
REGDSTE <= 1'b0 ; 
rd1E <= 32'b0 ;
rd2E <= 32'b0 ;
rsE <= 5'b0 ;
rtE <= 5'b0 ;
rdE <= 5'b0 ;
SIGNIMME <= 32'b0 ;
end 
else begin 
WRITEREGE <= WRITEREGD ;
MEMTOREGE <= MEMTOREGD ;
MEMWRITEE <= MEMWRITED ;
ALUCONTROLE <= ALUCONTROLD ;
ALUSRCE <= ALUSRCD ;
REGDSTE <= REGDSTD ; 
rd1E <= rd1D ;
rd2E <= rd2D ;
rsE <= rsD ;
rtE <= rtD ;
rdE <= rdD ;
SIGNIMME <= SIGNIMMD ;
end
end
endmodule 
