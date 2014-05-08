/*
 * module: demux
 *  
 * A basic parameterized demultiplexer.
 * IN_WIDTH is the number of inputs and OUT_WIDTH is the number of outputs;
 * OUT_WIDTH should always be chosen to be a power of two and IN_WIDTH should
 * be equal to log_2(OUT_WIDTH).
 * DEFAULT is the value which will be sent to all of the non-selected outputs,
 * and should be either 1 or 0 only.
*/
module demux #(parameter OUT_WIDTH = 8, IN_WIDTH = 3, DEFAULT = 0)(
   input                      in,
   input [IN_WIDTH-1:0]       sel,
   output logic [OUT_WIDTH-1:0] out);

   always_comb begin
      out = (DEFAULT==0)?'b0:(~('b0));
      out[sel] = in;
   end

endmodule

/* 
 * module: register
 *
 * A positive-edge clocked parameterized register with (active low) load enable
 * and asynchronous reset. The parameter is the bit-width of the register.
 */
module register #(parameter WIDTH = 16) (
   output logic [WIDTH-1:0] out,
   input [WIDTH-1:0]      in,
   input                  load,
   input                  clock,
   input                  reset);

   always_ff @ (posedge clock, posedge reset) begin
      if(reset)
         out <= 'h0000;
      else if (load)
         out <= in;
   end

endmodule

module counter
  #(parameter N = 3)
  (input  logic en,
   input  logic [$clog2(N) : 0] D,
   output logic [$clog2(N) : 0] Q,
   input  logic clk, rst);

  always_ff @(posedge rst, posedge clk)
      if (rst)
	Q <= 0;
      else if(en)
	Q <= D;
      else
	Q <= D+1;

endmodule : counter
