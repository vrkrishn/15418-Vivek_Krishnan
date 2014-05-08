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
