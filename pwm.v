module pwm(clk, reset, duty_cycle, saida);

	input clk;
	input reset;
	input [7:0] duty_cycle;
	output saida;
	
	reg [7:0] contador; // de 0 a 2^N
	
	
	always @ (posedge clk)
	begin
		if (~reset)
			contador <= contador + 1;
		else
			contador <= 'b0;
	end
	
	assign saida = (contador < duty_cycle);

endmodule
