module CSA_8 (
input logic [7:0] A, B,
output logic [7:0] sum,
output logic carry
);

logic [3:0] sum_low;
logic [3:0] sum_high0;
logic [3:0] sum_high1;
logic c1;
logic c2;
logic c3;

adder_4 u0(
.A(A[3:0]),
.B(B[3:0]),
.sum(sum_low),
.carry(c1)
);

adder_4 u1(
.A(A[7:4]),
.B(B[7:4]+4'b0001),
.sum(sum_high1),
.carry(c2)
);


adder_4 u2(
.A(A[7:4]),
.B(B[7:4]),
.sum(sum_high0),
.carry(c3)
);


assign sum[3:0]=sum_low;
always_comb begin
case (c1)

1'b1: begin
	sum[7:4]=sum_high1;
	carry=c2;
end
1'b0: begin
	sum[7:4]=sum_high0;
	carry=c3;
end
endcase 
end


endmodule
module adder_4 (
input logic [3:0] A, B,
output logic [3:0] sum,
output logic carry
);
assign {carry, sum} = A+B;
endmodule

