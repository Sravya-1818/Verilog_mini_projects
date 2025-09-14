module comparator1_bit(g,e,l,a,b);
  output g,e,l;
  input a,b;
  wire w1,w2;
  xnor g1(e,a,b);
  not g2(w1,a);
  not g3(w2,b);
  and g4(l,w1,b);
  and g5(g,w2,a);
endmodule
  
