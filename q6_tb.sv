module arithmetic_right_shifter_tb;

  localparam N = 8;
logic [N-1:0] input_data;
logic [1:0] control;
logic [N-1:0] shifted_result;

arithmetic_right_shifter #(N) dut(
.input_data(input_data),
.control(control),
.shifted_result(shifted_result)
);

initial begin
$display("Time / control / input / output");
for(int i=0; i<5; i++) begin 
input_data=$urandom_range((2**N)-1,0);
control=$urandom_range(3,0);
#10
$display("%0t / %2b/ %8b / %8b", $time, control , input_data, shifted_result);
end
$finish;



end


endmodule
