module tree_mem
    #(parameter DEPTH = 3);
    

module rom_verilog_mif( 
input [3:0] addr_a,
input clk,
output reg [7:0] q_a);

	reg [7:0] rom[0:15];

	initial
	begin
	$readmemh("memory.mif", rom);
	end

	always @ (posedge clk)
	begin
	q_a <= rom[addr_a];
	end

endmodule
