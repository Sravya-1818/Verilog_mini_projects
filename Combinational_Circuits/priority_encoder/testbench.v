module tb;
  reg [3:0]i;
  wire [1:0]y;
  priority4_2 uut(y,i);
  initial begin
    $monitor("i=%b,y=%b",i,y);
    i=4'b0001;
    #2 i=4'b0010;
    #2 i=4'b0100;
    #2 i=4'b1000;
  end
  initial begin
    $dumpfile("waveform.vcd");
    $dumpvars(0);
  end
endmodule
