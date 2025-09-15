module bin2bcd (
    input  logic [3:0] binary,
    output logic [3:0] bcd,
    output logic carry
);
always_comb begin
if (binary< 4'd10) begin
carry=1'd0;
bcd=binary;
end else begin
bcd=binary-4'd10;
carry=1'd1;
end
end
endmodule
	