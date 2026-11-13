module full_adder(

input A,B,cin,
output Y,
output cout
);


assign Y=A^B^cin;
assign cout=(B&cin) | (A&cin) | (A&B);


endmodule 