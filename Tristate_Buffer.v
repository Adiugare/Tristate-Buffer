module driver(
	input [7:0] data_in,
	input data_en,
	output [7:0] data_out
);
assign data_out =data_en ? data_in :8'bz;
endmodule
