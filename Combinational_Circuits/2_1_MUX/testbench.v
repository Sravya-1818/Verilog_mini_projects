module tb;
  reg [1:0]i;
  reg s;
  wire y;
  mux2_1 uut(y,s,i);
  initial begin
    s=0;i=2'b00;
    #2 s=0;i=2'b01;
    #2 s=1;i=2'b10;
    #2 s=1;i=2'b11;
    
  end
  initial begin
    $dumpfile("waveform.vcd");
    $dumpvars(0,tb);
  end
  endmodule
    
