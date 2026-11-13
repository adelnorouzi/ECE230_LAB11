module t_ff (
    input clk,
    input reset,
    input en,       
    output reg q
);
    always @(posedge clk or posedge reset) begin
        if (reset)
            q <= 1'b0;
        else if (en)
            q <= ~q; 
    end
endmodule
