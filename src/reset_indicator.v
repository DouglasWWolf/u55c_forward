//
// This module, when it detects resetn being asserted, drives the "reset_indicator"
// signal high for approximately 1 second.   This is long enough to be visible as
// a brief flash on an LED
//

module reset_indicator
(
    input clk, resetn,

    output reset_indicator
);

reg[28:0] timer;

always @(posedge clk) begin
    if (resetn == 0)
        timer <= 320000000;
    else if (timer)
        timer <= timer - 1;
end

assign reset_indicator = (timer != 0);

endmodule
