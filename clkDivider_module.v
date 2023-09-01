module clkDivider #(parameter n = 250000) (rst, clk, outClk);
input clk,rst;
output reg outClk;
wire [31:0] count;
counterN #(32, n) cnt(clk, rst, 1, count);
always @(posedge clk)
if(rst == 1)outClk<=0;
else begin
if(count == n-1)outClk<=~outClk;
end
endmodule
