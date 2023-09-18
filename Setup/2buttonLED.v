module 2Ledbutton(
    input wire BUTTON1, // First push button
    input wire BUTTON2, // Second push button
    output wire LED    // LED output
);

    assign LED = BUTTON1 | BUTTON2; // LED turns on if either BUTTON1 or BUTTON2 is pressed

endmodule
