module Ledbutton(
    LED,  // these are the connections to the module that we expose externally
    BUTTON
);

    output LED;   // LED D1 is an output from the module
    input BUTTON; // button is an input signal
    reg LED;      // a register to output LED
    wire BUTTON;  // input button is a wire

    always @ (BUTTON) // start of the action section
    begin
        LED = BUTTON; // Set reg LED to the value of wire button

        // Other states are:
        // 1'b1 HIGH
        // 1'b0 LOW
        // 1'bz HiZ (input)
    end

endmodule
