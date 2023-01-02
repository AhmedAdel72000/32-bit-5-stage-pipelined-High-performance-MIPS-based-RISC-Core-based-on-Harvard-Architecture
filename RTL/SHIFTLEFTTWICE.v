module SHIFTLEFTTWICE #(parameter WIDTHIN =32 , parameter WIDTHOUT = 32)
(INPUT , SHIFTEDOUTPUT);
input [WIDTHIN -1 :0] INPUT ;
output [WIDTHOUT -1 : 0] SHIFTEDOUTPUT ; 
assign SHIFTEDOUTPUT = INPUT << 2 ;
endmodule 
