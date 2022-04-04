module fsm_controller(
input clock,
input reset,play,pc,illegal_move,no_space,win,
output reg computer_play,player_play);
parameter IDLE=2'b00;
parameter PLAYER=2'b01;
parameter COMPUTER=2'b10;
parameter GAME_DONE=2'b11;
reg[1:0] current_state, next_state;
always @(posedge clock or posedge reset)
begin
if(reset)
current_state <= IDLE;
else
current_state <= next_state;
end
always@(*)
begin
case(current_state)
IDLE: begin
if(reset==1'b0 && play==1'b1)
next_state <= PLAYER;
else
next_state <= IDLE;
player_play <= 1'b0;
computer_play <= 1'b0;
end
PLAYER: begin
player_play <= 1'b1;
computer_play <= 1'b0;
if(illegal_move==1'b0)
next_state <= COMPUTER;
else
next_state <= IDLE;
end
COMPUTER:begin
player_play <= 1'b0;
if(pc==1'b0) begin
next_state <= COMPUTER;
computer_play <= 1'b0;
end
else if(win==1'b0 && no_space ==1'b0)
begin
next_state <= IDLE;
computer_play <= 1'b1;
end
else if(no_space == 1 || win== 1'b1)
begin
next_state <= GAME_DONE;
computer_play <= 1'b1;
end
end
GAME_DONE:begin
player_play<=1'b0;
computer_play<=1'b0;
if(reset == 1'b1)
next_state <= IDLE;
else
next_state <= GAME_DONE;
end
default: next_state <= IDLE;
endcase
end
endmodule
