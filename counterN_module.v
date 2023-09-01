module counterN(clk, rst, en, count);
parameter x = 2;
parameter n =4;
input clk, rst, en;
output reg [x-1:0] count;
always @(posedge clk)
begin
  if(rst == 1)count<=0;
  else
    begin
    if(en==1)
      begin
        if(count==n-1)count<=0;
        else count<=count+1;
      end
    end
end
endmodule
