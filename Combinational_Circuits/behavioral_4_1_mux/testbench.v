module tb;
  reg [3:0]i;
  reg [1:0]s;
  wire y;
  mux4_1 uut(y,i,s);
  initial begin
    $monitor("s=%b|i=%b|y=%b|",s,i,y);
    s=2'b00;i=4'b0000;
    #2 i=4'b0001;
    #2 i=4'b0010;
    #2 i=4'b0011;
    #2 s=2'b01;i=4'b0100;
    #2 i=4'b0101;
    #2  i=4'b0110;
    #2 i=4'b0111;
     #2 s=2'b10;i=4'b1000;
    #2 i=4'b1001;
    #2 i=4'b1010;
    #2 i=4'b1011;
    #2 s=2'b11;i=4'b1100;
    #2 i=4'b1101;
    #2 i=4'b1110;
    #2 i=4'b1111;
  end
endmodule
