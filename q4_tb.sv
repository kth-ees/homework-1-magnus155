module count_1_tb;

  // Inputs
  logic [3:0] a;

  // Outputs
  logic [2:0] out;

count_1 dut(
.a(a),
.out(out)
);

integer i;
initial begin
for (i=0; i<16; i++) begin
	a=i;
#10;
$display("%0t | i=%04b | a=%0d | out=%0d", $time, $unsigned(i), $unsigned(a), $unsigned(out));
 

end 
$finish;
end

endmodule
