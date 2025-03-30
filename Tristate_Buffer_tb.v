module driver_tb;
	reg [7:0] data_in;
	reg data_en;
	wire [7:0] data_out;

	driver uut(
		.data_in(data_in),
		.data_en(data_en),
		.data_out(data_out)
	);
	
	initial begin
		$monitor("Time =%0t | data_in=%b | data_en =%b | data_out = %b", $time, data_in,data_en,data_out);
		
		data_in = 8'b10101010;
		data_en=0;
		#10;

		data_en=1;
		#10;

		data_in=8'b11001100;
		#10;

		data_en=0;
		#10;

		$finish;
	end
endmodule
