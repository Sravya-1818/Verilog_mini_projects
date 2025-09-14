module tb;
  reg s,i1,i2;
  wire y;
  mux2_1 uut(y,s,i1,i2);
  initial begin
    $monitor("i1=%b,i2=%b,y=%b,s=%b",i1,i2,y,s);
    s=0;i1=0;i2=0;
    #2 i1=1;i2=0;
    #2 i1=0;i2=1;
    #2 i1=1;i2=1;
    #2 s=1;i1=0;i2=0;
    #2 i1=1;i2=0;
    #2 i1=0;i2=1;
    #2 i1=1;i2=1;
  end
endmodule
