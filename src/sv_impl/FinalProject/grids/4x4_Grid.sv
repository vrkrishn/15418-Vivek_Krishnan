module Grid4x4 #(parameter DATA_SIZE = 4, parameter SAMPLE_SIZE = 4,
		 parameter NUM_SAMPLES = 4, parameter NUM_NODES = 4) (
    //Input pipeline
    input  logic [2 * DATA_SIZE * SAMPLE_SIZE - 1: 0]	samp00, samp10,
    input  logic [1:0]					sVal00, sVal10,
    input  logic [2 * $clog2(NUM_NODES) - 1: 0]		nIdx00, nIdx01,
    input  logic [1:0]					nVal00, nVal01,
    output logic [1:0]					rec00U, rec01U, rec00L, rec10L,
    //Output pipeline
    output logic [2 * DATA_SIZE * SAMPLE_SIZE - 1: 0]	samp02, samp12,
    output logic [1:0]					sVal02, sVal12,
    output logic [2 * $clog2(NUM_NODES) - 1: 0]		nIdx20, nIdx21,
    output logic [1:0]					nVal20, nVal21,
    input  logic [1:0]					rec20, rec21, rec02, rec12,
    //Memory
    input  logic [8 * DATA_SIZE - 1: 0]			memBus00, memBus01, memBus10, memBus11,
    output logic [4 * $clog2(NUM_NODES) - 1: 0]		memRec00, memRec01, memRec10, memRec11,	
    //util
    input  logic 					enable, memRdy,
    input  logic 					clk, rst );

    logic [2 * DATA_SIZE * SAMPLE_SIZE - 1: 0] 	samp01, samp11;
    logic [1:0]				   	sVal01, sVal11;
    logic [2 * $clog2(NUM_NODES) - 1: 0]	nIdx10, nIdx11;
    logic [1:0]					nVal10, nVal11;
    logic [1:0]					rec11;

    module Grid2x2 #(DATA_SIZE, SAMPLE_SIZE, NUM_SAMPLES, NUM_NODES)
		g00 (samp00[DATA_SIZE * SAMPLES_SIZE - 1 -: DATA_SIZE * SAMPLE_SIZE],
		     samp00[2 * DATA_SIZE * SAMPLES_SIZE - 1 -: DATA_SIZE * SAMPLE_SIZE],
	  	     sVal00[0], sVal00[1],
  		     nIdx00[$clog2(NUM_NODES) -1 -: $clog2(NUM_NODES)],
		     nIdx00[2 * $clog2(NUM_NODES) -1 -: $clog2(NUM_NODES)],
		     nVal00[0], nVal00[1],
		     rec00U[0],rec00U[1],rec00L[0],rec00L[1],
		     samp01[DATA_SIZE * SAMPLES_SIZE - 1 -: DATA_SIZE * SAMPLE_SIZE],
		     samp01[2 * DATA_SIZE * SAMPLES_SIZE - 1 -: DATA_SIZE * SAMPLE_SIZE],
		     nIdx10[$clog2(NUM_NODES) -1 -: $clog2(NUM_NODES)],
		     nIdx10[2 *$clog2(NUM_NODES) -1 -: $clog2(NUM_NODES)],
		     nVal10[0], nVal10[1],
		     rec10[0], rec10[1], rec01[0], rec01[1],
		     memBus00[2 * DATA_SIZE - 1 -: DATA_SIZE],
		     memBus00[4 * DATA_SIZE - 1 -: DATA_SIZE],
		     memBus00[6 * DATA_SIZE - 1 -: DATA_SIZE],
		     memBus00[8 * DATA_SIZE - 1 -: DATA_SIZE],
		     memRec00[1 * $clog2(NUM_NODES) - 1 -: $clog2(NUM_NODES)],
		     memRec00[2 * $clog2(NUM_NODES) - 1 -: $clog2(NUM_NODES)],
		     memRec00[3 * $clog2(NUM_NODES) - 1 -: $clog2(NUM_NODES)],
		     memRec00[4 * $clog2(NUM_NODES) - 1 -: $clog2(NUM_NODES)],
		     enable, memRdy, clk, rst);

     module Grid2x2 #(DATA_SIZE, SAMPLE_SIZE, NUM_SAMPLES, NUM_NODES)
		g01 (samp01[DATA_SIZE * SAMPLES_SIZE - 1 -: DATA_SIZE * SAMPLE_SIZE],
		     samp01[2 * DATA_SIZE * SAMPLES_SIZE - 1 -: DATA_SIZE * SAMPLE_SIZE],
	  	     sVal01[0], sVal01[1],
  		     nIdx01[$clog2(NUM_NODES) -1 -: $clog2(NUM_NODES)],
		     nIdx01[2 * $clog2(NUM_NODES) -1 -: $clog2(NUM_NODES)],
		     nVal01[0], nVal01[1],
		     rec01[0],rec01[1],rec01[0],rec01[1],
		     samp01[DATA_SIZE * SAMPLES_SIZE - 1 -: DATA_SIZE * SAMPLE_SIZE],
		     samp01[2 * DATA_SIZE * SAMPLES_SIZE - 1 -: DATA_SIZE * SAMPLE_SIZE],
		     nIdx10[$clog2(NUM_NODES) -1 -: $clog2(NUM_NODES)],
		     nIdx10[2 *$clog2(NUM_NODES) -1 -: $clog2(NUM_NODES)],
		     nVal10[0], nVal10[1],
		     rec10[0], rec10[1], rec01[0], rec01[1],
		     memBus00[2 * DATA_SIZE - 1 -: DATA_SIZE],
		     memBus00[4 * DATA_SIZE - 1 -: DATA_SIZE],
		     memBus00[6 * DATA_SIZE - 1 -: DATA_SIZE],
		     memBus00[8 * DATA_SIZE - 1 -: DATA_SIZE],
		     memRec00[1 * $clog2(NUM_NODES) - 1 -: $clog2(NUM_NODES)],
		     memRec00[2 * $clog2(NUM_NODES) - 1 -: $clog2(NUM_NODES)],
		     memRec00[3 * $clog2(NUM_NODES) - 1 -: $clog2(NUM_NODES)],
		     memRec00[4 * $clog2(NUM_NODES) - 1 -: $clog2(NUM_NODES)],
		     enable, memRdy, clk, rst);

       module Grid2x2 #(DATA_SIZE, SAMPLE_SIZE, NUM_SAMPLES, NUM_NODES)
		g11 (samp01[DATA_SIZE * SAMPLES_SIZE - 1 -: DATA_SIZE * SAMPLE_SIZE],
		     samp01[2 * DATA_SIZE * SAMPLES_SIZE - 1 -: DATA_SIZE * SAMPLE_SIZE],
	  	     sVal01[0], sVal01[1],
  		     nIdx01[$clog2(NUM_NODES) -1 -: $clog2(NUM_NODES)],
		     nIdx01[2 * $clog2(NUM_NODES) -1 -: $clog2(NUM_NODES)],
		     nVal01[0], nVal01[1],
		     rec01[0],rec01[1],rec01[0],rec01[1],
		     samp01[DATA_SIZE * SAMPLES_SIZE - 1 -: DATA_SIZE * SAMPLE_SIZE],
		     samp01[2 * DATA_SIZE * SAMPLES_SIZE - 1 -: DATA_SIZE * SAMPLE_SIZE],
		     nIdx10[$clog2(NUM_NODES) -1 -: $clog2(NUM_NODES)],
		     nIdx10[2 *$clog2(NUM_NODES) -1 -: $clog2(NUM_NODES)],
		     nVal10[0], nVal10[1],
		     rec10[0], rec10[1], rec01[0], rec01[1],
		     memBus00[2 * DATA_SIZE - 1 -: DATA_SIZE],
		     memBus00[4 * DATA_SIZE - 1 -: DATA_SIZE],
		     memBus00[6 * DATA_SIZE - 1 -: DATA_SIZE],
		     memBus00[8 * DATA_SIZE - 1 -: DATA_SIZE],
		     memRec00[1 * $clog2(NUM_NODES) - 1 -: $clog2(NUM_NODES)],
		     memRec00[2 * $clog2(NUM_NODES) - 1 -: $clog2(NUM_NODES)],
		     memRec00[3 * $clog2(NUM_NODES) - 1 -: $clog2(NUM_NODES)],
		     memRec00[4 * $clog2(NUM_NODES) - 1 -: $clog2(NUM_NODES)],
		     enable, memRdy, clk, rst);

     module Grid2x2 #(DATA_SIZE, SAMPLE_SIZE, NUM_SAMPLES, NUM_NODES)
		g11 (samp01[DATA_SIZE * SAMPLES_SIZE - 1 -: DATA_SIZE * SAMPLE_SIZE],
		     samp01[2 * DATA_SIZE * SAMPLES_SIZE - 1 -: DATA_SIZE * SAMPLE_SIZE],
	  	     sVal01[0], sVal01[1],
  		     nIdx01[$clog2(NUM_NODES) -1 -: $clog2(NUM_NODES)],
		     nIdx01[2 * $clog2(NUM_NODES) -1 -: $clog2(NUM_NODES)],
		     nVal01[0], nVal01[1],
		     rec01[0],rec01[1],rec01[0],rec01[1],
		     samp01[DATA_SIZE * SAMPLES_SIZE - 1 -: DATA_SIZE * SAMPLE_SIZE],
		     samp01[2 * DATA_SIZE * SAMPLES_SIZE - 1 -: DATA_SIZE * SAMPLE_SIZE],
		     nIdx10[$clog2(NUM_NODES) -1 -: $clog2(NUM_NODES)],
		     nIdx10[2 *$clog2(NUM_NODES) -1 -: $clog2(NUM_NODES)],
		     nVal10[0], nVal10[1],
		     rec10[0], rec10[1], rec01[0], rec01[1],
		     memBus00[2 * DATA_SIZE - 1 -: DATA_SIZE],
		     memBus00[4 * DATA_SIZE - 1 -: DATA_SIZE],
		     memBus00[6 * DATA_SIZE - 1 -: DATA_SIZE],
		     memBus00[8 * DATA_SIZE - 1 -: DATA_SIZE],
		     memRec00[1 * $clog2(NUM_NODES) - 1 -: $clog2(NUM_NODES)],
		     memRec00[2 * $clog2(NUM_NODES) - 1 -: $clog2(NUM_NODES)],
		     memRec00[3 * $clog2(NUM_NODES) - 1 -: $clog2(NUM_NODES)],
		     memRec00[4 * $clog2(NUM_NODES) - 1 -: $clog2(NUM_NODES)],
		     enable, memRdy, clk, rst);

endmodule : Grid4x4
