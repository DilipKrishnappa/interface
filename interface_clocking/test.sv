module test(dff intf);

task drv;

  repeat(10)
begin
//  @(intf.cb)

/*  intf.d <= 0;

 intf.d <= 1;

 intf.d <= 0;

 intf.d <= 1;

 intf.d <= 1;*/
@(posedge intf)
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

                                                  
endmodule 

