module priority4_2(y,i);
  output [1:0]y;
  input [3:0]i;
  wire w1,w2;
  not g1(w1,i[2]);
  and g3(w2,w1,i[1]);
  or g2(y[1],i[3],i[2]);
 
  or g4(y[0],w2,i[3]);
endmodule
