module mux2to1 (
input [31:0] I0,
input [31:0] I1,
input s,
output [31:0] y
);
assign y = (s) ? I1 : I0 ;
endmodule
