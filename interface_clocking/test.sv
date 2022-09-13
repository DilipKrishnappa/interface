/*module test(dff.tb intf);

task drv;

  repeat(10)
begin
  @(intf.cb)
  intf.d <= $random;

  $display("[%0t]d:%d",$time,intf.d);
  $display("[%0t]q:%d",$time, intf.q);


end
$finish;
endtask
initial
begin
  drv();
end

                                                  
endmodule */

