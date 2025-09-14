module encoder4_2(y,i);
  output [1:0]y;
  input [3:0]i;
  or g1(y[1],i[2],i[3]);
  or g2(y[0],i[1],i[3]);
endmodule
