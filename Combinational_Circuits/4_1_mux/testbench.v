module tb;
  reg [3:0]i;
  reg [1:0]s;
  wire y;
  mux4_1 uut(y,s,i);
  initial begin
   
    i=4'b1010;
     $monitor($time,"i=%b,s0=%b,s1=%b,y=%b",i,s[0],s[1],y);
    s=2'b00;
   
    #5 s=2'b01;
    #5 s=2'b10;
    #5 s=2'b11;

  end
  /*initial begin
    $dumpfile("waveform.vcd");
    $dumpvars(0,uut);
  end*/
endmodule
