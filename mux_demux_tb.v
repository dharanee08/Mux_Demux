module mux_demux_tb;

reg [3:0] I;
reg [1:0] S;
wire Y;

reg din;
wire [3:0] dout;

mux_4to1 mux(I, S, Y);
demux_1to4 demux(din, S, dout);

initial begin
    I = 4'b1010;
    din = 1;

    S = 2'b00; #10;
    S = 2'b01; #10;
    S = 2'b10; #10;
    S = 2'b11; #10;

    $stop;
end

endmodule
