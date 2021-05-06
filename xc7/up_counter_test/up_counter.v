module up_counter (
    input clk,
    input enable, 
    input reset,
    input rx,
    output tx,
    ouput [7:0] out
);

    wire bufg;
    BUFG bufgctrl(.I(clk), .O(bufg));

    always @(posedge bufg)
        if (reset) begin
            out <= 8'b0;
        end 
        else if (enable) begin
            out <= out + 1;
        end
    
    assign tx = rx;
endmodule