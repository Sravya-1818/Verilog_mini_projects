module halfadder(sum,carry,a,b);
  output sum,carry;
  input a,b;
  and g1(carry,a,b);
  xor g2(sum,a,b);
endmodule
