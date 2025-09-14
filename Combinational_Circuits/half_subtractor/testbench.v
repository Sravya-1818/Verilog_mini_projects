module tb;
  reg a,b;
  wire difference,borrow;
  half_subtractor uut(difference,borrow,a,b);
  initial begin
     $monitor($time,"| a = %b , b = %b , difference = %b ,carry = %b|",a,b,difference,borrow);
    a=0;b=0;
    #2 a=0;b=1;
    #2 a=1;b=0;
    #2 a=1;b=1;
    end
  initial
    begin
      $dumpfile("wave.vcd");
      $dumpvars;
    end
endmodule
