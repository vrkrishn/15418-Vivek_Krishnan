/* 
 * module : tree_summer
 * Sums the values that result from a tree and output a signal once
 * computation is finished
 */
module tree_summer #(parameter NUM_SAMPLES = 2, parameter DATA_SIZE = 4) (
    output logic [$clog2(NUM_SAMPLES) + DATA_SIZE - 1 : 0]	sum,
    output logic						finished,
    input  logic						validInput,
    input  logic [DATA_SIZE - 1 : 0]				dataInput,
    input  logic						clk, rst);

    logic [$clog2(NUM_SAMPLES) + DATA_SIZE - 1 : 0] added;
    assign added = sum + dataInput;

    logic [$clog2(NUM_SAMPLES) : 0] count, countIn;
    assign countIn = (NUM_SAMPLES < count + 1) ? 1 : count+1;
    assign finished = (countIn == finished);
    
    register #($clog2(NUM_SAMPLES) + 1) numReg(count, countIn, validInput, clk, rst);
    register #($clog2(NUM_SAMPLES) + DATA_SIZE) outputReg(sum, added, validInput, clk, rst); 

endmodule : tree_summer

module tree_summer_fixed #(parameter NUM_TREES = 4, parameter NUM_SAMPLES = 2, parameter DATA_SIZE = 4) (
    input  logic [NUM_TREES * DATA_SIZE - 1 : 0] 			dataBuses,
    input  logic [NUM_TREES - 1: 0]					validLines,
    output logic [$clog2(NUM_TREES * NUM_SAMPLES) + DATA_SIZE - 1: 0]	dataOut,
    output logic							unitDone,
    input  logic							clk, rst);

    logic [$clog2(NUM_TREES) : 0] inpCount;
    logic [$clog2(NUM_TREES) -1 : 0] outCount;
    logic [$clog2(NUM_TREES * NUM_SAMPLES) + DATA_SIZE - 1: 0]	dataIn;

    assign inpCount = (outCount + 1 == NUM_TREES) ? 0 : outCount + 1;
    assign treeDone = (outCount + 1 == NUM_TREES);
    register #($clog2(NUM_TREES) + 1) treeReg(outCount, inpCount, validLines[outCount], clk, rst); 
    
    logic [$clog2(NUM_SAMPLES) : 0] sampCIn;
    logic [$clog2(NUM_SAMPLES) -1 : 0] sampCount;
    
    assign sampCIn = (sampCount + 1 == NUM_SAMPLES) ? 0 : sampCount + 1;
    assign unitDone = (sampCount + 1 == NUM_SAMPLES);

    register #($clog2(NUM_SAMPLES) + 1) sampReg(sampCount, sampCIn, treeDone, clk, rst);

    assign dataIn = dataOut + dataBuses[DATA_SIZE * outCount - 1 -: DATA_SIZE];
    register #($clog2(NUM_TREES * NUM_SAMPLES) + DATA_SIZE) sumReg(dataOut, dataIn, validLines[outCount], clk, rst);
 
endmodule : tree_summer_fixed
