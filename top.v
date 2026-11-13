module top (
    input btnU,        // Reset
    input btnC,        // Input Clock
    output [6:0] led   // LED outputs
);

  
    ripple my_ripple (
        .clk(btnC),
        .reset(btnU),
        .count(led[2:0])
    );


    modulo my_modulo (
        .clk(btnC),
        .reset(btnU),
        .state(led[5:3]),
        .mod_out(led[6])
    );

endmodule