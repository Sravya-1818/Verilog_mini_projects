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
  
module mux4_1(y,s,i);
  output y;
  input [3:0]i;
  input [1:0]s;
  wire [2:1]w;
  mux2_1 m1(w[1],s[0],i[1:0]);
  mux2_1 m2(w[2],s[0],i[3:2]);
  mux2_1 m3(y,s[1],w);
endmodule
  
  
