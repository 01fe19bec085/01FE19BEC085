module  position_registers(input clock, input reset, input illegal_move, input [8:0] PC_en, input [8:0] PL_en, output reg[1:0] pos1,pos2,pos3,pos4,pos5,pos6,pos7,pos8,pos9);
always @(posedge clock or posedge reset)
begin
if(reset)
pos1 <= 2'b00;
else begin
if(illegal_move==1'b1)
pos1 <= pos1;
else if(PC_en[0]==1'b1)
pos1 <=2'b10;
else if(PL_en[0]==1'b1)
pos1 <=2'b01;
else
pos1 <= pos1;
end
end
always @(posedge clock or posedge reset)
begin
if(reset)
pos2<=2'b00;
else begin
if(illegal_move==1'b1)
pos2<=pos2;
else if(PC_en[1]==1'b1)
pos2 <=2'b10;
else if(PL_en[1]==1'b1)
pos2 <=2'b01;
else
pos2 <= pos2;
end
end
always @(posedge clock or posedge reset)
begin
if(reset)
pos3<=2'b00;
else begin
if(illegal_move==1'b1)
pos3 <= pos3;
else if(PC_en[2]==1'b1)
pos3 <=2'b10;
else if(PL_en[2]==1'b1)
pos3 <=2'b01;
else
pos3 <= pos3;
end
end
always @(posedge clock or posedge reset)
begin
if(reset)
pos4<=2'b00;
else begin
if(illegal_move==1'b1)
pos4 <= pos4;
else if(PC_en[3]==1'b1)
pos4 <=2'b10;
else if(PL_en[3]==1'b1)
pos4 <=2'b01;
else
pos4 <= pos4;
end
end
always @(posedge clock or posedge reset)
begin
if(reset)
pos5<=2'b00;
else begin
if(illegal_move==1'b1)
pos5 <= pos5;
else if(PC_en[4]==1'b1)
pos5 <=2'b10;
else if(PL_en[4]==1'b1)
pos5 <=2'b01;
else
pos5 <= pos5;
end
end
always @(posedge clock or posedge reset)
begin
if(reset)
pos7<=2'b00;
else begin
if(illegal_move==1'b1)
pos7 <= pos7;
else if(PC_en[6]==1'b1)
pos7 <=2'b10;
else if(PL_en[6]==1'b1)
pos7 <=2'b01;
else
pos7 <= pos7;
end
end
always @(posedge clock or posedge reset)
begin
if(reset)
pos8 <=2'b00;
else begin
if(illegal_move==1'b1)
pos8 <= pos8;
else if(PC_en[7]==1'b1)
pos8 <=2'b10;
else if(PL_en[7]==1'b1)
pos8 <=2'b01;
else
pos8 <= pos8;
end
end
always @(posedge clock or posedge reset)
begin
if(reset)
pos9 <=2'b00;
else begin
if(illegal_move==1'b1)
pos9 <= pos9;
else if(PC_en[8]==1'b1)
pos9 <=2'b10;
else if(PL_en[8]==1'b1)
pos9 <=2'b01;
else
pos9 <= pos9;
end
end
endmodule

