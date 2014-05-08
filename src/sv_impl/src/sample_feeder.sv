module sample_feeder_FSM (
    input  logic received, enable, finished,
    output logic incr, isValid, clearReg,
    input  logic clk, rst);

    enum logic [1:0] {WAIT = 2'b00, OUTPUT = 2'b01, INCR = 2'b10} cs, ns;
    
    always_comb begin
	case(cs)
	    WAIT : begin
		      ns = (enable & ~finished) ? OUTPUT : WAIT;
  		      isValid = 1'b0;
		      incr = 1'b0;
		      clearReg = (enable & ~finished);
		   end
	    OUTPUT : begin
		        ns = (received) ? INCR : OUTPUT;
		        isValid = 1'b1;
			incr = (received);
			clearReg = 1'b0;
		    end
	    INCR : begin
		       ns = (~enable | finished) ? WAIT : OUTPUT;
                       isValid = 1'b0;
		       incr = 1'b0;
		       clearReg = 1'b0;
		   end
	endcase
    end

    always_ff @(posedge clk, posedge rst)
	if (rst)
	    cs <= WAIT;
	else
	    cs <= ns;

endmodule : sample_feeder_FSM

module sample_feeder
    #(parameter NUM_SAMPLES = 1, parameter SAMPLE_SIZE = 4,
      parameter DATA_SIZE = 4) (
    input  logic [NUM_SAMPLES * SAMPLE_SIZE * DATA_SIZE - 1: 0]	samples,
    input  logic						enable,
    output logic [SAMPLE_SIZE * DATA_SIZE]			currentSample,
    output logic						isValid,
    input  logic						received,
    input  logic						clk, rst);

    logic incr, clearReg;
    sample_feeder_FSM FSM(received, enable, finished, incr, isValid, clearRegs, clk, rst);
   
    logic [$clog2(NUM_SAMPLES) : 0] sampleIndex, sampIn;

    assign finished = (sampleIndex == NUM_SAMPLES); 
    assign sampIn = sampleIndex + 1; 

    register #($clog2(NUM_SAMPLES) + 1) indexReg(sampleIndex, sampIn, incr, clk, rst | clearRegs);
    
    assign currentSample = samples[((sampleIndex[$clog2(NUM_SAMPLES) -1 : 0]) + 1) * SAMPLE_SIZE * DATA_SIZE - 1 -: SAMPLE_SIZE * DATA_SIZE];

endmodule : sample_feeder
