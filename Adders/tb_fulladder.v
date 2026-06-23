`timescale 1ns/1ps

module tb_full_adder;

    reg A, B, Cin;
    wire S, Cout;

    fulladder1 DUT(.a(A), .b(B), .cin(Cin), .s(S), .cout(Cout));

    initial begin
        $dumpfile("fulladderwave.vcd");
        $dumpvars(0,tb_full_adder);
    end

    initial begin
        $display ("Full Adder Test");
        $monitor ("A = %b, B = %b, Cin = %b, S = %b, Cout = %b", A,B,Cin,S,Cout);

        A = 0; B = 0; Cin = 0; #10;
        A = 0; B = 0; Cin = 1; #10;
        A = 0; B = 1; Cin = 0; #10;
        A = 0; B = 1; Cin = 1; #10;
        A = 1; B = 1; Cin = 1; #10;

        $finish;
    end

endmodule