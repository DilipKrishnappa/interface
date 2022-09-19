module d_flipflop(dff.dut intf);

always @(posedge intf.cd.d)
  intf.cd.q <= intf.cd.d;

endmodule
