module sample_pipeline_FSM (
    input  logic validIn, can_invalid,
    output logic loadInput, validOutput, loadFlags, clearFlags, received,
    input  logic clk, rst);

    enum logic {INPUT = 1'b0, OUTPUT = 1'b1} cs, ns;
    
    always_comb begin
	case(cs)
    	    INPUT : begin
			ns = (validIn) ? OUTPUT : INPUT;
			loadInput = 1'b1;
			clearFlags = 1'b1;
			loadFlags = 1'b0;
			received = validIn;
			validOutput = 1'b0;
		    end
 	    OUTPUT : begin
			ns = (can_invalid) ? INPUT : OUTPUT;
			loadInput = can_invalid;
			received = 1'b0;
			clearFlags = 1'b0;
			loadFlags = ~(can_invalid);
			validOutput = 1'b1;
		     end
	endcase
    end

    always_ff @(posedge clk, posedge rst)
	if (rst)
	    cs <= INPUT;
	else
	    cs <= ns;

endmodule : sample_pipeline_FSM

module sample_pipeline_node
    #(parameter SAMPLE_SIZE = 1, parameter DATA_SIZE = 8) (
    // Top to bottom pipeline
    input  logic [SAMPLE_SIZE * DATA_SIZE - 1: 0]	samplesIn,
    input  logic					validIn,
    input  logic					bottomRec,
    output logic					received,
    // Right pipeline
    input  logic					rightRec,
    //output
    output logic					validRight,
    output logic					validBottom,
    output logic [SAMPLE_SIZE * DATA_SIZE - 1: 0]       samplesOut,
    //standard
    input  logic					clk, rst);

    sample_pipeline_FSM FSM(validIn, can_invalid,
			    loadInput, validOutput, loadFlags, clearFlags, received,
			    clk, rst);

    logic bRecFlag, rRecFlag;
    register #(1) botRecReg(bRecFlag, bottomRec, bottomRec & loadFlags, clk, rst | clearFlags);
    register #(1) rgtRecReg(rRecFlag, rightRec, rightRec & loadFlags, clk, rst | clearFlags);

    assign can_invalid = bRecFlag & rRecFlag;
    assign validRight = validOutput & ~rRecFlag;
    assign validBottom = validOutput & ~bRecFlag;

    register #(SAMPLE_SIZE * DATA_SIZE) outReg(samplesOut, samplesIn, loadInput, clk, rst); 

endmodule : sample_pipeline_node
