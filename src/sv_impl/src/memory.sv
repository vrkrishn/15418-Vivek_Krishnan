module stage_mem_controller
  #(parameter NUM_NODES = 4, parameter DEPTH = 4,
    parameter DATA_SIZE = 4) (
   output logic [DATA_SIZE * 3 - 1: 0]		dataBusOut,
   output logic					memReady,
   input  logic [$clog2(NUM_NODES) - 1: 0]	nodeIdx,
   input  logic 				recReady,
   input  logic					memRdy,
   //Memory Controller
   output logic					we, re,
   output logic [DEPTH - 1 :0]			address,
   input  logic [DATA_SIZE * 3 - 1 :0]		dataBus,
   //util
   input  logic					clk, rst);

   logic [$clog2(NUM_NODES)-1 :0] 		idx;
   assign idx = nodeIdx - (1<<DEPTH);
   assign address = idx;
   assign re = recReady;
   assign we = 1'b0;

   assign dataBusOut = dataBus;
   assign memReady = recReady;

endmodule : stage_mem_controller

module stage_memory
  #(parameter DEPTH = 2, parameter DATA_SIZE = 4)
  (input  logic          clock, enable,
   input  logic we,
   input  logic re,
   inout  [DATA_SIZE-1 :0]   data,
   input  logic  [DEPTH - 1 :0]   address);
   
   logic [3 * DATA_SIZE - 1 : 0] mem [(1<<DEPTH) - 1 : 0];
  
   assign data = (enable & re) ? mem[address] : 16'bz;

   always_ff @(posedge clock)
     if (enable & we)
       mem[address] <= data;
      
endmodule : stage_memory
