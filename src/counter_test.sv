module counter_6bit (
    input  wire clk,
    input  wire rst,
    output reg [5:0] count
);

  always @(posedge clk or posedge rst) 
  
  begin
    if (rst)
        count <= 6'd0;
    else
        count <= count + 1'b1;
  end

endmodule