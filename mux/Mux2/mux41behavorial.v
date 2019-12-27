`timescale 1ns / 1ps

module mux41behavorial(input [1:0] sel, [3:0] I,
    output Y
    );
    
    wire [1:0]sel;
    wire [3:0]I;
    wire Y;
    
    assign Y = (sel == 0)?  I[0] : (sel == 1)? I[1] : (sel == 2)? I[2] : I[3];
    
endmodule
