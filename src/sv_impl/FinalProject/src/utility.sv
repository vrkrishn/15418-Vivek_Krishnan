/* 
 * module: mux8to1 
 *
 * A pretty standard 8-to-1, parameterized MUX.  Based upon the select 
 * line, the proper input word becomes valid on the output.
 */
module mux8to1 #(parameter WIDTH = 16) (
   input  logic [WIDTH-1:0] inA, inB, inC, inD, inE, inF, inG, inH,
   output logic [WIDTH-1:0] out,
   input  logic [2:0] sel);
   
   always_comb
     case(sel)
       'b000: out = inA;
       'b001: out = inB;
       'b010: out = inC;
       'b011: out = inD;
       'b100: out = inE;
       'b101: out = inF;
       'b110: out = inG;
       'b111: out = inH;
       default: out = 'bx;
     endcase
     
endmodule : mux8to1

module mux4to1cool #(parameter WIDTH = 4) (
	input logic [WIDTH-1 : 0] i0, i1, i2, i3,
	output logic [WIDTH-1: 0] out,
	input logic [1:0] sel);
	
	always_comb
	  case (sel) 
	    2'b00: out=i0;
		 2'b01: out=i1;
		 2'b10: out=i2;
		 2'b11: out=i3;
	  endcase	 
	 
	
endmodule : mux4to1cool
	
module mux32to1 #(parameter WIDTH = 16) (
   input  logic [WIDTH-1:0] i0,i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,i11,i12,i13,i14,i15,i16,i17,i18,i19,i20,i21,i22,i23,i24,i25,i26,i27,i28,i29,i30,i31,
   output logic [WIDTH-1:0] out,
   input  logic [4:0] sel);
   
   logic [2:0] eightline;
   logic [1:0] fourline;

   assign eightline = sel[2:0];
   assign fourline = sel[4:3];

   logic[WIDTH-1:0] e0,e1,e2,e3;

   mux8to1 #(16) muxA(i0,i1,i2,i3,i4,i5,i6,i7, e0, eightline);
   mux8to1 #(16) muxB(i8,i9,i10,i11,i12,i13,i14,i15, e1, eightline);
   mux8to1 #(16) muxC(i16,i17,i18,i19,i20,i21,i22,i23, e2, eightline);
   mux8to1 #(16) muxD(i24,i25,i26,i27,i28,i29,i30,i31, e3, eightline);

   mux4to1cool #(16) muxE(e0, e1, e2, e3, out, fourline);    
 
endmodule : mux32to1



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

/*
* module : incrementor
* When enabled, will increment the value that is inputed in D
*/
module incrementor
  #(parameter N = 3)
  (input  logic en,
   output logic [$clog2(N) - 1 : 0] Q,
   input  logic clk, rst);
 
  logic [$clog2(N) - 1 : 0] countInp; 
  register #($clog2(N)) countReg(Q, countInp, en, clk, rst);

  assign countInp = Q + 1;

endmodule : incrementor

/*
 * Module : HEXtoSevenSegment
 * Converts a hex digit into the format that can be read on the FPGA segment display
 */
module HEXtoSevenSegment
  (input  logic [3:0] bcd,
   output logic [6:0] segment);
  
  always_comb
    unique case (bcd)
      4'h0: segment = 7'b1000000;
      4'h1: segment = 7'b1111001;
      4'h2: segment = 7'b0100100;
      4'h3: segment = 7'b0110000;
      4'h4: segment = 7'b0011001;
      4'h5: segment = 7'b0010010;
      4'h6: segment = 7'b0000010;
      4'h7: segment = 7'b1111000;
      4'h8: segment = 7'b0000000;
      4'h9: segment = 7'b0011000;
      4'hA: segment = 7'b0001000;
      4'hB: segment = 7'b0000011;
      4'hC: segment = 7'b1000110;
      4'hD: segment = 7'b0100001;
      4'hE: segment = 7'b0000110;
      4'hF: segment = 7'b0001110;
    endcase

endmodule: HEXtoSevenSegment

/*
 * Module : SevenSegmentDigit
 * a blankable hexadecimal display for the board
 */
module SevenSegmentDigit
  (input  logic [3:0] hex,
   output logic [6:0] segment,
   input  logic       blank);

  logic [6:0] decoded;

  HEXtoSevenSegment h2ss(hex, decoded);

  assign segment = (blank) ? 7'b1111111 : decoded;

endmodule: SevenSegmentDigit

module SevenSegmentControl
  (output logic [6:0] HEX7, HEX6, HEX5, HEX4, 
   output logic [6:0] HEX3, HEX2, HEX1, HEX0,
   input  logic [3:0] in7, in6, in5, in4,
   input  logic [3:0] in3, in2, in1, in0,
   input  logic [7:0] turn_on);

  SevenSegmentDigit ssd0(.hex(in0), .segment(HEX0), .blank(~turn_on[0]));
  SevenSegmentDigit ssd1(.hex(in1), .segment(HEX1), .blank(~turn_on[1]));
  SevenSegmentDigit ssd2(.hex(in2), .segment(HEX2), .blank(~turn_on[2]));
  SevenSegmentDigit ssd3(.hex(in3), .segment(HEX3), .blank(~turn_on[3]));
  SevenSegmentDigit ssd4(.hex(in4), .segment(HEX4), .blank(~turn_on[4]));
  SevenSegmentDigit ssd5(.hex(in5), .segment(HEX5), .blank(~turn_on[5]));
  SevenSegmentDigit ssd6(.hex(in6), .segment(HEX6), .blank(~turn_on[6]));
  SevenSegmentDigit ssd7(.hex(in7), .segment(HEX7), .blank(~turn_on[7]));


endmodule: SevenSegmentControl
