module MUX3x1 (
input [31:0] input1 ,
input [31:0] input2 ,
input [31:0] input3 ,
output reg [31:0] outputmux ,
input [1:0] SELECT
);
 always @(*) begin
case (SELECT)
2'b00 : outputmux = input1 ;
2'b01 : outputmux = input2 ;
2'b10 : outputmux = input3 ;
default : outputmux = {(32){1'b0}} ;
endcase
end
endmodule
