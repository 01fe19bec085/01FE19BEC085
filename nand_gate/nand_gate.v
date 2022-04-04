module nand_gate(a,b,y);
input a,b;
output c;
assign c = !(a&b);
end
endmodule
