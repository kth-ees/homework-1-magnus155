module csa_8_tb;

  // Inputs
  logic [7:0] a;
  logic [7:0] b;
  logic [7:0] sum;
  logic carry;

CSA_8 dut(
.A(a),
.B(b),
.sum(sum),
.carry(carry)
);
integer i; 
initial begin 
$display("Time/ A / B / Sum /Carry");

for(i=0;i<6;i++) begin
a = $urandom_range(0, 255);
b= $urandom_range(0, 255);
#10;
      $display("%0t | %0d    | %0d    | %0d     | %b",
               $time, $unsigned(a), $unsigned(b), $unsigned({carry, sum}), carry);
end 

$finish;




end 
  
endmodule
