module twoto1mux(I, sel, y);

    input [1:0]I;
    input sel;
    output y;

    assign y = I[sel];

endmodule