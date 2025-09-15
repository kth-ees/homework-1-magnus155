module bin2gray (
  input logic [3:0] binary,
  output logic [3:0] gray
);
  // …
always_comb begin
gray[3]=binary[3];
gray[2]=binary[2]^binary[3];
gray[1]=binary[1]^binary[2];
gray[0]=binary[0]^binary[1];




end 
endmodule