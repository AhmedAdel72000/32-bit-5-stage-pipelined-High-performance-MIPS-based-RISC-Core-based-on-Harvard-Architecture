module SIGNEXTEND (
input [15:0] inst ,
output [31:0] extendedinst
);
assign extendedinst = (inst[15] == 1) ? {{(16){1'b1}} , inst} : {{(16){1'b0}} , inst} ;
endmodule 
