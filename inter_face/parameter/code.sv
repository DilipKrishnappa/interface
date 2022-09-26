//Design code for up counter
module up_counter #(parameter N)(clk,reset,counter);
input clk, reset;
output [N:0] counter;
reg [N:0] counter_up;
//up counter
always @(posedge clk or posedge reset)
begin
//if reset=0 count will be incremented
if(reset)
counter_up <= 3'd0;
else
counter_up <= counter_up + 3'd1;
end 
assign counter = counter_up;
endmodule:up_counter
