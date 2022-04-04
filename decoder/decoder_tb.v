module decoder_tb();
reg[2:0]in;
wire [7:0]out2;
decoder DUT(.out2(out2),.in(in));
initial begin
$monitor($time,"in=%b out=%b",in,out2);
in=3'b000;
#5
in=3'b001;
#5
in=3'b010;
#5
in=3'b011;
#5
in=3'b100;
#5
in=3'b101;
#5
in=3'b110;
#5
in=3'b111;
#5;
end
endmodule

module decoder(out2,in);
input [2:0]in;
output reg [7:0]out2;
always @(in) begin
case(in)
3'b000: begin out2=8'b00000001; end
3'b001: begin out2=8'b00000010; end
3'b010: begin out2=8'b00000100; end
3'b011: begin out2=8'b00001000; end
3'b100: begin out2=8'b00010000; end
3'b101: begin out2=8'b00100000; end
3'b110: begin out2=8'b01000000; end
3'b111: begin out2=8'b10000000; end
endcase
end
endmodule



