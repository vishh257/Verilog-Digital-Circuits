module fourto1mux(in, sel, y);

    input [3:0]in;
    input [1:0]sel;
    output y;
    wire t1, t2;

    twoto1mux mux1(.I(in[1:0]), .sel(sel[0]), .y(t1));
    twoto1mux mux2(.I(in[3:2]), .sel(sel[0]), .y(t2));
    twoto1mux mux3(.I({t2, t1}), .sel(sel[1]), .y(y));
    
endmodule