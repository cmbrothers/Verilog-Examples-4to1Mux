`timescale 1ns / 1ps

module mux4to1(
    input [6:0] sw,
    output [6:0] seg, [7:0] an, [7:0] led
    );
    
    assign led[6:0] = sw[6:0];

    assign an[7:1] = 1;

    assign an[0] = 0;
    
    mux mux41 (.Y(led[7]), .En(sw[0]), .sel(sw[2:1]), .I(sw[6:3]));
    
    decoder sevenseg (.B0(sw[1]), .B1(sw[2]), .B2(0), .B3(0), .sA(seg[0]), .sB(seg[1]), .sC(seg[2]), .sD(seg[3]), .sE(seg[4]), .sF(seg[5]), .sG(seg[6]));
    
endmodule
