interface dff(input clk);
  logic d;
  logic q;

  clocking cb @(posedge clk);
    default input #1ns output #5ns;
    output q;
    input d;
  endclocking

  modport dut(input d, input clk, output q);
  modport tb(clocking cb, input q, output d, input clk);


endinterface

