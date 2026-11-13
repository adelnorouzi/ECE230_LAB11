
module d_ff (
    input clk,
    input reset,
    input d,
    output reg q
);

    initial q<=0;
    
    always @(posedge clk) begin
        if (reset)
            q <= 0;
        else
            q <= d;
    end
endmodule