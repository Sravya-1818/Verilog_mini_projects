// Code your testbench here
// or browse Examples
module tb;
  reg [2:0]i;
  reg en;
  wire [7:0]q;
  decoder3_8 uut(q,i,en);
  initial begin 
    #5 en=0;
    #5 en=1;
    i=3'b000;
    #5i=3'b001;
   #5i=3'b010;
    #5i=3'b011;
    #5i=3'b100;
   end
 initial
   begin
     $monitor($time,"i=%d;q=%b",i,q);
   end
endmodule
  
