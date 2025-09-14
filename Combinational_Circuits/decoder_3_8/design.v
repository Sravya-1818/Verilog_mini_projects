module decoder3_8(q,i,en); 
output reg [7:0]q; 
input [2:0]i; 
input en; 
always@(*)begin 
if(en)begin
q=8'b00000000;
 q[i]=1;
 end
else
q=8'b00000000;
end
endmodule
