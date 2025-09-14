module half_subtractor(difference,borrow,a,b);
  output difference,borrow;
  input a,b;
  wire w;
  not g1(w,a);
  xor g2(difference,a,b);
  and g3(borrow,w,b);
endmodule
  
