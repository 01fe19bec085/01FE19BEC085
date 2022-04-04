module tic_tac_toe_game(input clock,input reset,input play,input pc,input [3:0]computer_position,player_position,output wire [1:0] pos1,pos2,pos3,pos4,pos5,pos6,pos7,pos8,pos9, 
output wire[1:0]who);
wire [15:0] PC_en;
wire [15:0] PL_en;
wire illegal_move;
wire win;
wire computer_play;
wire player_play;
wire no_space;
position_registers position_reg_unit(clock,reset,illegal_move,PC_en[8:0],PL_en[8:0],pos1,pos2,pos3,pos4,pos5,pos6,pos7,pos8,pos9);
winner_detector win_detect_unit(pos1,pos2,pos3,pos4,pos5,pos6,pos7,pos8,pos9,win,who);
position_decoder pd1(computer_position,computer_play,PC_en);
position_decoder pd2(player_position,player_play,PL_en);
illegal_move_detector imd_unit(pos1,pos2,pos3,pos4,pos5,pos6,pos7,pos8,pos9,PC_en[8:0],PL_en[8:0],illegal_move);
nospace_detector nsd_unit(pos1,pos2,pos3,pos4,pos5,pos6,pos7,pos8,pos9,no_space);
fsm_controller tic_tac_toe_controller(clock,reset,play,pc,illegal_move,no_space,win,computer_play,player_play);
endmodule


