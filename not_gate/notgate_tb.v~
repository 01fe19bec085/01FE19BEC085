module tb;
reg a;
wire y;
notgate uut(y,a);

initial 
begin 
a=1'b0;
#100;
a=1'b1;
#100;
a=1'b0;
end
endmodule 

module notgate(y,a);
output y;
input a;
assign y=~a;
endmodule 
