`timescale 1ns/1ps

module decoder_tb;

    // Testbench signals
    logic [3:0] binary;
    logic [15:0] one_hot;

    // Instantiate the decoder module
    decoder uut (
        .binary(binary),
        .one_hot(one_hot)
    );

    initial begin
        $display("Time | binary | one_hot");
        $display("---------------------------");

        // Loop through all 16 input combinations
        for (int i = 0; i < 16; i++) begin
            binary = i;
            #0.01;
            $display("%4t | %b | %b", $time, binary, one_hot);
        end

        $finish; // End simulation
    end

endmodule

