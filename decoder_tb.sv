
module decoder_tb;

logic [3:0] binary;
logic [15:0] one_hot;

decoder uut (
.binary(binary),
.one_hot(one_hot)
);

initial begin
$display("Time | binary | one_hot");
$display("---------------------------");


for (int i = 0; i < 16; i++) begin
binary = i;
#10
$display("%4t | %b | %b", $time, binary, one_hot);
end


end

endmodule

