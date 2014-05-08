/* File: internal_stage.sv 
   Modules Contained: internal_stage_FSM, internal_branch_stage, internal_leaf_stage

   These modules represent the logic needed to process data in the pipelind classifier
   of the sample data

*/


/*
    MemRdy Line activated when system is in the compute state

    FSM - Initial (No data processing occurring)
	- Requesting Memory
        - Computing Result
        - Ready (No data processing occurring)
*/
module internal_stage_FSM(
    input  logic	memRdy,
    input  logic	validIdx, validSamp, can_invalid, dataRdy,	
    output logic	validOutput, received, recRdy,
    output logic	inProgress, loadInputs, loadMem, loadFlags, clearFlags,
    input  logic	clk, rst);

    enum logic [1:0] {INITIAL = 2'b00, REQUEST = 2'b01, COMPUTE = 2'b10, PROCEED = 2'b11} cs, ns;
   
    always_comb begin
	case (cs)
    	    INITIAL : begin
			ns = (~memRdy) ? INITIAL : (validIdx & validSamp) ? REQUEST : INITIAL;
			clearFlags = 1'b1;
			loadFlags = 1'b0;
  			loadInputs = (validIdx & validSamp);
			loadMem = 1'b0;
			validOutput = 1'b0;
			received = (validIdx & validSamp);
			recRdy = (validIdx & validSamp);
			inProgress = 1'b0;
		      end
	    REQUEST : begin
			ns = (~memRdy) ? INITIAL : (dataRdy) ? COMPUTE : REQUEST;
			clearFlags = 1'b0;
			loadFlags = 1'b0;
  			loadInputs = 1'b0;
			loadMem = (dataRdy);
			validOutput = 1'b0;
			received = 1'b0;
  			recRdy = ~(dataRdy);
			inProgress = dataRdy;
		      end
	    COMPUTE : begin
			ns = (~memRdy) ? INITIAL : PROCEED;
			clearFlags = 1'b0; 
			loadFlags = 1'b0;
			loadInputs = 1'b0;
			loadMem = 1'b0;
			validOutput = 1'b0;
			received = 1'b0;
			recRdy = 1'b0;
			inProgress = 1'b1;
		      end
	    PROCEED : begin
			ns = (~memRdy) ? INITIAL : (can_invalid) ? INITIAL : PROCEED;
			clearFlags = 1'b0;
			loadFlags = 1'b1;
			loadInputs = 1'b0;
			loadMem = 1'b0;
    		        validOutput = ~(can_invalid);
			received = 1'b0;
			recRdy = 1'b0;
			inProgress = ~(can_invalid);
		      end 
	endcase
    end
  
    always_ff @(posedge clk, posedge rst)
        if (rst)
            cs <= INITIAL;
	else
	    cs <= ns;

endmodule : internal_stage_FSM

/* Module : internal_branch_stage
   Represents the branch node of RF classifier
*/
module internal_branch_stage
    #(parameter SAMPLE_SIZE = 1, parameter NUM_NODES = 1,
      parameter DATA_SIZE = 8)
    //-------------Control Signals ---------------//
    (input  logic					memRdy,
    // Input control logic
    input  logic					validIdx,
    input  logic					validSamp,
    output logic					received,
    // Output control logic
    output logic					validBottom,
    output logic					validRight,
    input  logic					bottomRec,
    input  logic					rightRec,
    //------------Left to Right Pipeline ----------//
    input  logic [SAMPLE_SIZE * DATA_SIZE - 1: 0]	samplesIn,
    output logic [SAMPLE_SIZE * DATA_SIZE - 1: 0] 	samplesOut,
    //------------Top to Bottom Pipeline ----------//
    input  logic [$clog2(NUM_NODES) - 1: 0] 		nodeIdxIn,
    output logic [$clog2(NUM_NODES) - 1: 0]		nodeIdxOut,
    //------------Memory Control System -----------//
    input  logic [(2 * DATA_SIZE) - 1: 0]		memBusIn,
    input  logic					dataRdy,
    output logic [$clog2(NUM_NODES) - 1: 0]		memReqOut,
    output logic 					reqRdy,
    input  logic					clk, rst);

    logic inProgress, loadInputs, loadMem, can_invalid, validOutput;

    internal_stage_FSM FSM(memRdy, validIdx, validSamp, can_invalid, dataRdy, validOutput, 
		       received, reqRdy, inProgress, loadInputs, loadMem, loadFlags, clrFlags, clk, rst); 

    logic bRecFlag, rRecFlag;
    register #(1) botRecReg(bRecFlag, bottomRec, bottomRec & loadFlags, clk, rst | clrFlags);
    register #(1) rgtRecReg(rRecFlag, rightRec, rightRec & loadFlags, clk, rst | clrFlags);

    assign can_invalid = bRecFlag & rRecFlag;
    assign validRight = validOutput & ~rRecFlag;
    assign validBottom = validOutput & ~bRecFlag;
     
    //Sample Data Pipeline
    register #(SAMPLE_SIZE * DATA_SIZE) sampReg(samplesOut, samplesIn, loadInputs, clk, rst);
    
    //Sample Data Pipeline
    logic [($clog2(NUM_NODES)) - 1: 0] currentIdx;
    register #($clog2(NUM_NODES)) idxReg(currentIdx, nodeIdxIn, loadInputs, clk, rst);

    //Memory Stage pf Datapath
    assign memReqOut = currentIdx;

    logic [DATA_SIZE - 1: 0] sampIdx, threshold;
    register #(DATA_SIZE) sampIdxReg(sampIdx, memBusIn[2 * DATA_SIZE - 1 -: DATA_SIZE], loadMem, clk, rst);
    register #(DATA_SIZE) threshReg(threshold, memBusIn[DATA_SIZE - 1 -: DATA_SIZE], loadMem, clk, rst);
    
    //Compute Unit
    logic [DATA_SIZE - 1: 0] curSample;
    assign curSample = samplesOut[DATA_SIZE * (sampIdx + 1) - 1 -: DATA_SIZE];

    assign nodeIdxOut = (curSample > threshold) ? (currentIdx << 1) + 1 : (currentIdx << 1);

endmodule : internal_branch_stage

/* Module : internal_leaf_stage
   Represents the leaf node of RF classifier
*/
module internal_leaf_stage
    #(parameter SAMPLE_SIZE = 1, parameter NUM_NODES = 1,
      parameter DATA_SIZE = 8)
    //-------------Control Signals ---------------//
    (input  logic					memRdy,
    // Input control logic
    input  logic					validIdx,
    input  logic					validSamp,
    output logic					received,
    // Output control logic
    output logic					validBottom,
    output logic					validRight,
    input  logic					bottomRec,
    input  logic					rightRec,
    //------------Left to Right Pipeline ----------//
    input  logic [SAMPLE_SIZE * DATA_SIZE - 1: 0]	samplesIn,
    output logic [SAMPLE_SIZE * DATA_SIZE - 1: 0] 	samplesOut,
    //------------Top to Bottom Pipeline ----------//
    input  logic [$clog2(NUM_NODES) - 1: 0] 		nodeIdxIn,
    output logic [DATA_SIZE - 1: 0]			dataOut,
    //------------Memory Control System -----------//
    input  logic [(3 * DATA_SIZE) - 1: 0]		memBusIn,
    input  logic					dataRdy,
    output logic [$clog2(NUM_NODES) - 1: 0]		memReqOut,
    output logic 					reqRdy,
    input  logic					clk, rst);

    logic inProgress, loadInputs, loadMem, can_invalid, validOutput;

    internal_stage_FSM FSM(memRdy, validIdx, validSamp, can_invalid, dataRdy, validOutput,
		       received, reqRdy, inProgress, loadInputs, loadMem, loadFlags, clrFlags, clk, rst); 

    logic bRecFlag, rRecFlag;
    register #(1) botRecReg(bRecFlag, bottomRec, bRecFlag & loadFlags, clk, rst | clrFlags);
    register #(1) rgtRecReg(rRecFlag, rightRec, rRecFlag & loadFlags, clk, rst | clrFlags);

    assign can_invalid = bRecFlag & rRecFlag;
    assign validRight = validOutput & ~rRecFlag;
    assign validBottom = validOutput & ~bRecFlag;
 
    //Sample Data Pipeline
    register #(SAMPLE_SIZE * DATA_SIZE) sampReg(samplesOut, samplesIn, loadInputs, clk, rst);
    
    //Sample Data Pipeline
    logic [($clog2(NUM_NODES)) - 1: 0] currentIdx;
    register #($clog2(NUM_NODES)) idxReg(currentIdx, nodeIdxIn, loadInputs, clk, rst);

    //Memory Stage pf Datapath
    assign memReqOut = currentIdx;

    logic [DATA_SIZE - 1: 0] sampIdx, weight, offset;
    register #(DATA_SIZE) sampIdxReg(sampIdx, memBusIn[3 * (DATA_SIZE) - 1 -: DATA_SIZE], loadMem, clk, rst);
    register #(DATA_SIZE) weightReg(weight, memBusIn[2 * (DATA_SIZE) - 1 -: DATA_SIZE], loadMem, clk, rst);
    register #(DATA_SIZE) offsetReg(offset, memBusIn[DATA_SIZE - 1 -: DATA_SIZE], loadMem, clk, rst);
    
    //Compute Unit
    logic [DATA_SIZE - 1: 0] curSample;
    assign curSample = samplesOut[DATA_SIZE * (sampIdx + 1) -: DATA_SIZE];
    
    assign dataOut = curSample * weight + offset;

endmodule : internal_leaf_stage

