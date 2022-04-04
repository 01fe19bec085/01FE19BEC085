module moore_melay_test;
reg sequence_in;
reg clock;
reg reset;
wire detector_out;
initial begin
clock=0;
forever #5 clock=-clock;
end
initial begin
sequence_in=0;
reset=1;
#30;
reset=0;
#40;
sequence_in=1;
#10;
sequence_in=0;
#10;
sequence_in=1;
#20;
sequence_in=0;
#20;
sequence_in=1;
#20;
sequence_in=0;
end
endmodule

module more_melay(sequence_in,clock,reset,detector_out);
input clock;
input reset;
input sequence_in;
output reg detector_out;
parameter zero=3'b000,
     one=3'b001,
     onezero=3'b011,
     onezeroone=3'b010,
     onezerooneone=3'b110;
reg[2:0] current_state,next_state;
always @(posedge clock,posedge reset)
begin
if(reset==1)
current_state <=zero;
else
current_state <=next_state;
end
always @(current)state,sequence_in)
begin
case(current_state)
zero:begin
if(sequence_in==1)
next_state=one;
else
next_state=zero;
end
one:begin
if(sequence_in==0)
next_state=onezero;
else
next_state=one;
end
onezero:begin
if(sequence_in==0)
next_state=zero;
else
next_state=onezeroone;
end
onezeroone:begin
if(sequence_in==0)
next_state=onezero;
else
next_state=onezerooneone;
end
onezerooneone:begin
if(sequence_in==0)
next_state=onezero;
else
next_state=one;
end 
default: detector_out=0;
endcase
end
endmodule
                                                                                                                                                                                                                                          

