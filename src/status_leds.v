module status_leds
(
    input qsfp0_up, qsfp1_up,

    input reset_ind0, reset_ind1,

    output[2:0] qsfp0_led, qsfp1_led
);

assign qsfp0_led = {~qsfp0_up, qsfp0_up, reset_ind0};
assign qsfp1_led = {~qsfp1_up, qsfp1_up, reset_ind1};

endmodule