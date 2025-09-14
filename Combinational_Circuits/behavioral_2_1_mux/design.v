module mux2_1(y,s,i1,i2);
  output reg y;
  input s,i1,i2;
  always@(*)
    begin
      if (s==1'b0) begin
        y=i1;
         end
      else 
        begin
        y=i2;
      end
    end
endmodule
