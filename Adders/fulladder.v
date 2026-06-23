module fulladder1 (a, b, cin, s, cout);

    input a, b, cin;
    output s, cout;
    wire t1, t2, t3;

    halfadder1 dut(.a(a), .b(b), .cout(t1), .s(t2));
    halfadder1 dut2(.a(t2), .b(cin), .cout(t3), .s(s));

    assign cout = t1 | t3;

endmodule