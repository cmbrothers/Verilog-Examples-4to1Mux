`timescale 1ns / 1ps

module mux(
    input En, [1:0] sel, [3:0] I, 
    output Y
    );
    
    assign Y = (!sel[1]&!sel[0]&I[0]&En)+(!sel[1]&sel[0]&I[1]&En)+
                   (sel[1]&!sel[0]&I[2]&En)+(sel[1]&sel[0]&I[3]&En);
    
endmodule
