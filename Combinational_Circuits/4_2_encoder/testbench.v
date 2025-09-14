module tb;
  reg [3:0]i;
  wire [1:0]y;
  encoder4_2 uut(y,i);
  initial begin
    $monitor($time,"|i=%b,y=%b|",i,y);
    i=4'b0001;
    #3 i=4'b0010;
    #3 i=4'b0100;
    #3 i=4'b1000;
  end
   initial
    begin
      $dumpfile("wave.vcd");
      $dumpvars;
    end
endmodule
