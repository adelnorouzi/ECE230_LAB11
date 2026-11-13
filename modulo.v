module modulo (
    input clk,
    input reset,
    output [2:0] state,   // The current count
    output mod_out        // The toggled output
);

    //wire [2:0] added_count;
    //wire target_reached;
    //wire c_reset;
    //wire next_mod_out;

  
    assign target_reached = (state[2] & ~state[1] & state[0]);
    assign c_reset = target_reached | reset;
    assign next_mod_out = target_reached ^ mod_out;

    d_ff count_ff0 (.clk(clk), .reset(c_reset),  .q(state[0]));
    d_ff count_ff1 (.clk(clk), .reset(c_reset), .q(state[1]));
    d_ff count_ff2 (.clk(clk), .reset(c_reset), .q(state[2]));
    
     full_adder add_inst(
    .A(count_ff0.q),
    .B(1'b0),
    .cin(1'b1),
    .Y(count_ff0.d)
    );
    
full_adder add_inst1(
    .A(count_ff1.q),
    .B(1'b0),
    .cin(add_inst.cout),
    .Y(count_ff1.d)
    );
    
full_adder add_inst2(
    .A(count_ff2.q),
    .B(1'b0),
    .cin(add_inst1.cout),
    .Y(count_ff2.d)
    );
    
    d_ff output_ff (.clk(clk), .reset(reset), .d(next_mod_out), .q(mod_out));
    
    
    


endmodule