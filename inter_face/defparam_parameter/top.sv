
//`include "interface.sv"
//`include "test.sv"
//Declaring top module
module top();
//parameterised interface
count_if inf();

//up_counter u1(.counter(2));
//-------------------------------------------------------
// defparam keyword used to change the value of N
// during compilation time.
//-------------------------------------------------------
defparam u1.N=1;
//design code of up_counter
up_counter u1(.clk(inf.clk), .reset(inf.reset), .counter(inf.counter));

//testbench for up_counter
upcounter_testbench u2(inf);

endmodule:top
