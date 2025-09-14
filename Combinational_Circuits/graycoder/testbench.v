module tb;
  reg [3:0]a;
  wire [3:0]y;
  gray_code uut(y,a);
  initial begin
     $monitor("| a = %b , y =  %b |",a,y);
    a=4'b0000;
    #2 a=4'b0001;
    #2 a=4'b0010;
    #2 a=4'b0011;
    #2 a=4'b0100;
    #2 a=4'b0101;
    #2 a=4'b0110;
    #2 a=4'b0111;
    #2 a=4'b1000;
    #2 a=4'b1001;
    #2 a=4'b1010;
    #2 a=4'b1011;
    #2 a=4'b1100;
    #2 a=4'b1101;
    #2 a=4'b1100;
    #2 a=4'b1110;
    #2 a=4'b1111;
   
  end
  initial begin
    $dumpfile("waveform.vcd");
    $dumpvars(0,uut);
  end
endmodule
    
