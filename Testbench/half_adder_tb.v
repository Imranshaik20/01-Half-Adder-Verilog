`timescale 1ns/1ps

module half_adder_tb;

reg A;
reg B;

wire Sum;
wire Carry;

half_adder uut (

    .A(A),
    .B(B),
    .Sum(Sum),
    .Carry(Carry)

);

initial
begin

    $dumpfile("waveform.vcd");
    $dumpvars(0, half_adder_tb);

    $display(" A B | Sum Carry");

    A = 0; B = 0; #10;
    $display(" %b %b |  %b    %b", A, B, Sum, Carry);

    A = 0; B = 1; #10;
    $display(" %b %b |  %b    %b", A, B, Sum, Carry);

    A = 1; B = 0; #10;
    $display(" %b %b |  %b    %b", A, B, Sum, Carry);

    A = 1; B = 1; #10;
    $display(" %b %b |  %b    %b", A, B, Sum, Carry);

    #10;
    $finish;

end

endmodule