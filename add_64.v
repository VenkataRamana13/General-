`include "fullAdder.v"

module add_64 (x, y, z);

input [63:0] x, y;
output [63:0] z;

wire c = 0; 

always @(*) begin
    
integer i;

for (i = 0; i < 64; i = i + 1) begin
    fullAdder (
        .a(x[i]),
        .b(y[i]),
        .sum(z[i]), 
        .c_out(c)
    );
end
end


endmodule