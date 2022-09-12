class environment;
  //declare the virtual interface
virtual intf vif;

//constructor
function new(virtual intf vif);
this.vif = vif;
endfunction

//run task
task run();
  //using the handle of virtual interface assign the value for the input of the DUT. instance_name.signal = value;

vif.a = 6;
vif.b =4;
$display("");
$display("//INPUT:\ninput a=%0d, input b=%0d", vif.a, vif.b);
$display("");
#5;
$display("//OUTPUT:\nMultiplication of a and b,\n output y=%0d\n\t",vif.y);
$display("");
#2;
 //using the handle of virtual interface assign the value for the input of the DUT. instance_name.signal = value;
vif.a = 5;
vif.b = 5;
$display("//INPUT:\n input a=%0d,input  b=%0d", vif.a, vif.b);
$display("");
#5;
$display("//OUTPUT:\n Multiplication of a and b, \n output y=%0d\n\t", vif.y);
$display("");
$finish;
endtask
endclass
