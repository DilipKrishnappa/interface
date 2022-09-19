 `include "test.sv"
`include "interface.sv"

module top;
bit clk;


/*task drv;

  repeat(10)
begin
  #4 intf.d <= $random;

  $display("[%0t]d:%d",$time,intf.d);
  $display("[%0t]q:%d",$time, intf.q);


end
$finish;
endtask
initial
begin
  drv();
end */
initial
  forever #5 clk = ~clk;


  dff intf(clk);
  d_flipflop t1(intf);
  test t2(intf);
  endmodule

