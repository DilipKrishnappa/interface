
//include the files interface.sv & test.sv
`include "interface.sv"
`include "test.sv"
//module:top
module top();
//creating the instance of interface
intf intf_1();

//creating the instance of test
test t1(intf_1);

//DUT instance, interface signal is connected to the DUT ports
multiplier dut(.a(intf_1.a), .b(intf_1.b), .y(intf_1.y));

endmodule:top

