
//Parameters can be used in interfaces to make vector
//sizes and other declarations within the interface
//reconfigurable using Verilog’s parameter redefinition construct.

//Parameter interface
interface count_if #(parameter N) ;
logic reset,clk;
logic [N:0] counter;
endinterface:count_if
  
