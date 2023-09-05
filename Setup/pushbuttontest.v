// Create module
module Push_button (
  input wire clk,
  input wire push_button,
  output wire LEDArduino,
  output wire [7:0] LED
);

  reg [31:0] cnt;
  reg [7:0] count;

  initial begin
    cnt <= 32'h00000000;
  end
  
  always @(posedge push_button) begin
    cnt <= cnt + 1;
    count <= count + 1;
  end
  
  assign LED = count[7:0];
  
  assign LEDArduino = !push_button;
  
endmodule
