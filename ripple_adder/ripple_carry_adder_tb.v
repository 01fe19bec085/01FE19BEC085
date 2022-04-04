module ripple_adder_tb();
reg[3:0]a,b;
wire[3:0]sum;
wire cout;
ripple_adder DUT(.a(a),.b(b),.sum(sum),.cout(cout));
initial begin
$monitor($time,"a=%b b=%b sum=%b cout=%b",a,b,sum,cout);
a=4'b0000;
b=4'b0000;
#10
a=4'b1100;
b=4'b0100;
#10
a=4'b1000;
b=4'b0010;
#10
a=4'b1001;
b=4'b0110;
#10;
end
endmodule

module ripple_adder(a,b,sum,cout);
input[3:0]a,b;
output[3:0]sum;
output cout;
wire w1,w2,w3;
full_adder u1(a[0],b[0],1'b0,sum[0],w1);
full_adder u2(a[1],b[1],w1,sum[1],w2);
full_adder u3(a[2],b[2],w2,sum[2],w3);
full_adder u4(a[3],b[3],w3,sum[3],cout);

endmodule
