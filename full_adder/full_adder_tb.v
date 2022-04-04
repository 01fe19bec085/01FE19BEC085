module full_adder_tb();
reg a,b,c;
wire sum,carry;
full_adder DUT( .a(a), .b(b) , .c(c), .sum(sum), .carry(carry));
initial begin
$monitor("a=%c b=%c c=%c sum=%c carry=%c",a,b,c,sum,carry);
a = 0;
b = 0; 
c = 0;
#10
a = 0;
b = 0; 
c = 1;
#10
a = 0;
b = 1; 
c = 0;
#10
a = 0;
b = 1; 
c = 1;
#10
a = 1;
b = 0; 
c = 0;
#10
a = 1;
b = 0; 
c = 1;
#10
a = 1;
b = 1; 
c = 0;
#10
a = 1;
b = 1; 
c = 1;
#10;
end
endmodule



module full_adder(a,b,c,sum,carry);
input a,b,c;
output sum,carry;
assign sum = a^b^c;
assign carry = (a&b)|(b&c)|(c&a);
endmodule

