module arithmetic_right_shifter #(parameter N) (
  input logic [N-1:0] input_data,
  input logic [1:0] control,
  output logic [N-1:0] shifted_result
);
integer i;
logic [N-1:0] middle;
integer a;
always_comb begin
case(control)
	2'b00:a=0;
	2'b01:a=1;
	2'b10:a=2;
	2'b11:a=3;

endcase

if (a>0) begin
shifted_result=middle;
end
	for(i=0;i<N;i++) begin
	if (i+a<N) 
	middle[i]=input_data[i+a];
	
	 else 
	middle[i]=input_data[N-1];
	
	end
shifted_result=middle;
end



endmodule
