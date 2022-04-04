module srff_tb();
reg s=0,r=0,clk=0;
wire q, qbar;
srff dut(s,r,clk,q,qbar);
initial begin
$monitor($time,"s=%b r=%b clk=%b q=%b qbar=%b",s,r,clk,q,qbar);
s=1'b0;
r=1'b1;
#10
s=1'b0;
r=1'b0;
#10

s=1'b1;
r=1'b0;
#10;$finish;
 end 
always #5 clk <=~clk;
endmodule



