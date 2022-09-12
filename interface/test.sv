//include the environment.sv file
`include "environment.sv"
//module:test(interface_name interface_handle)
module test(intf intf_1);
//declaring the environment instance
environment  envrn;
initial
begin
//creating environment
envrn =  new(intf_1);

//calling the run of env
envrn.run();
  
end
endmodule : test
