`timescale 1ns / 1ps

module behavemux4to1( input [5:0] sw,
    output [6:0] led
    );

    assign led [5:0] = sw [5:0];

    mux41behavorial mux0 (.Y(led[6]), .sel(sw[1:0]), .I(sw[5:2]));

endmodule
