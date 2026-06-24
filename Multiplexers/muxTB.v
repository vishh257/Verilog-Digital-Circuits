`timescale 10ns/100ps

module mux_test_bench;

reg [3:0]input1;
reg [1:0]select;
wire x;

fourto1mux DUT(.in(input1[3:0]), .sel(select[1:0]), .y(x));


initial begin
$display("4to1 Multiplexer Test Bench");
$monitor(" input1 = %b, select = %b, x = %b", input1, select, x);

input1 = 4'b0001; select = 2'b00; #10
input1 = 4'b0100; select = 2'b10; #10

$finish;

end
endmodule