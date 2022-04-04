module ram_3_tb;
reg[9:0]address;
wire[7:0]data_out;
reg[7:0]data_in;
reg write,select,read;
integer k,myspeed;
ram_3 RAM(data_out,data_in,address,write,select);
initial
  begin
   for(k=0;k<=1023;k=k+1)
    begin
      data_in=(k+k) % 256; read =0; write=1; select=0;
      #2 address=k; write=0; select=0;
      $display("address:%d",address); 
    end
     repeat (20) 
      begin      
     #2 address = $random(myspeed) % 1024; 
data_in=(address+address)%256; read =0; write=1; select=1;  
     write = 0 ; select =1;
     $display("address:%5d, data:%4d",address,data_in);
  end
 initial  myspeed=35;
endmodule

module ram_3(data_out,data_in,addr,wr,cs);
parameter addr_size=10,word_size=8,memory_size=1024;
input [addr_size-1:0] addr;
input [word_size-1:0] data_in;
input wr,cs;
output [memory_size-1:0] data_out;
reg  [word_size-1:0] mem [memory_size-1:0];
assign data_out=mem[addr];
always @(wr or cs)
if(wr) mem[addr] =data_in;
endmodule
