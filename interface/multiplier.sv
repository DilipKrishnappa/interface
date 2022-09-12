

//start of module:multiplier
module multiplier(
  a,
  b,
  y);

  //Declaring the input 
input [3:0]a,b;

//Declaring the output
output [6:0]y;

//continuous assignment statement
assign y = a*b;

endmodule:multiplier
