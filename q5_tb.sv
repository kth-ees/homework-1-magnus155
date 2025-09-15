module bin2gray_tb;

  // Inputs
  logic [3:0] binary;

  // Outputs
  logic [3:0] gray;

integer i;

bin2gray dut(
.binary(binary),
.gray(gray)
);
  initial begin
$display("Time|binary|gray");  
for(i=0;i<16;i++) begin
binary=i;
#10;
$display("%0t | binary=%4b | gray=%4b", $time, binary,gray);
end
$finish;	
end

  // complete
endmodule
