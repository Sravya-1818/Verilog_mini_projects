module tb;
  reg a,b;
  wire sum,carry;
  halfadder uut(sum,carry,a,b);
  initial begin
    $monitor("a=%b,b=%b,sum=%b,carry=%b",a,b,sum,carry);
    a=0;b=0;
    #2 a=0;b=1;
    #2 a=1;b=0;
    #2 a=1;b=1;
  end
endmodule
    
    
