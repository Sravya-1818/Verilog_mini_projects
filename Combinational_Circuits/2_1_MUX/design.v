module mux2_1(y,s,i);
  output y;
  input [1:0]i;
  input s;
  wire w1,w2,w3;
  not g1(w1,s);
  and g2(w2,w1,i[0]);
  and g3(w3,s,i[1]);
  or g4(y,w2,w3);
  endmodule
  
