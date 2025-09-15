module bin2bcd_tb;

  // Testbench signals
  logic [3:0] binary;
  logic [3:0] bcd;
  logic carry;



bin2bcd uut(
.binary(binary),
.bcd(bcd),
.carry(carry)
);



initial begin 
$display("Time/binary/bcd/carry"); 
for (int i = 0; i < 16; i = i + 1) begin
binary=i;
#10;
$display("%4t | %b | %b | %b", $time, binary, bcd, carry);
end
$finish;
end

endmodule
	