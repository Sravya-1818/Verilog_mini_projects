module mux4_1(y,i,s);
  output reg y;
  input [3:0]i;
  input [1:0]s;
  always@(*) 
    case({s[1],s[0]})
    2'd0: y=i[0];
    2'd1: y=i[1];
    2'd2: y=i[2];
    2'd3:y=i[3];
  endcase
    
endmodule
