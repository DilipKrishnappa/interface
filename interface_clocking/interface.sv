interface dff(input clk);
  logic d;
  logic q;

  clocking cd @(posedge clk);
    
    default input #2 output #4;
    input d;
    output q;
  endclocking

  modport dut(clocking cd, input clk);
  modport tb(input q, clk, output d);


endinterface

