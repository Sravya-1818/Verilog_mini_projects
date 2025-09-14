module full_subtractor(d,bout,a,b,bin);
  output d,bout;
  input a,b,bin;
  wire w1,w2,w3,w4,w5;
  not g1(w1,a);
  xor g2(w2,a,b);
  not g3(w3,w2);
  and g4(w4,w1,b);
  and g5(w5,w3,bin);
  xor g6(d,w2,bin);
  or g7(bout,w4,w5);
endmodule
  
