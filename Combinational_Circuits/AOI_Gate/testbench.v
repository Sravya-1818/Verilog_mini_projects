module tb;
  reg a1,a2,b1,b2;
  wire o;
  aoi_gate gg(o,a1,a2,b1,b2);
  initial
    begin 
       a1=0;a2=0;b1=0;b2=0;
    #3 a1=0;a2=1;b1=0;b2=1;
    #3 a1=1;a2=0;b1=1;b2=0;
    #3 a1=1;a2=1;b1=1;b2=1;
    end
  initial#100 $stop;
  initial begin $monitor($time,"o=%b,a1=%b,a2=%b,b1=%b,b2=%b",o,a1,a2,b1,b2);
  end
  initial begin
    $dumpfile("waveform.vcd");
    $dumpvars(0,a1,a2,b1,b2,o);
  end
endmodule
  
