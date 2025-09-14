module tb;
  reg a,b;
  wire l,e,g;
  comparator1_bit uut(g,e,l,a,b);
  initial begin
    $monitor($time,"|a = %b,b = %b,e = %b,g = %b;l = %b|",a,b,e,g,l);
      a=0;b=0;
    #3 a=0;b=1;
    #3 a=1;b=0;
    #3 a=1;b=1;
  end
endmodule
