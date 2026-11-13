module ripple (
    input clk,
    input reset,
    output [2:0] count
);

    t_ff tff0 (.clk(clk), .reset(reset), .en(1'b1), .q(count[0]));
   
    t_ff tff1 (.clk(~count[0]), .reset(reset), .en(1'b1), .q(count[1]));
   
    t_ff tff2 (.clk(~count[1]), .reset(reset), .en(1'b1), .q(count[2]));

endmodule
