module internal_stage_test;

logic validIdx, validSample, bottomRdy, rightRdy, bottomRec, rightRec, memRdy, dataRdy;
logic unitRdy, received, reqRdy, clk, rst, validBottom, validRight;

logic [4 * 2 - 1: 0] samplesOut;
logic [2 : 0] nodeIdxOut;

logic [2 : 0] memReqOut;

initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

internal_branch_stage #(2,8,4) test(memRdy, validIdx, validSample, received, validBottom, validRight,
				    bottomRec, rightRec, {4'b0101,4'b1111}, 
				    samplesOut, 3'b001, nodeIdxOut, {4'b0001,4'b1000}, dataRdy,
				    memReqOut, reqRdy, clk, rst); 

initial begin
    memRdy = 1'b0;
    validIdx = 1'b0;
    validSample = 1'b0;
    bottomRec = 1'b0;
    rightRec = 1'b0;
    dataRdy = 1'b0;
    rst = 1'b1;
    #10;
    rst = 1'b0;
    $monitor("received %b, samples %x, nodeIdx %d, validB/R %b/%b, memReqOut %d, state %b, idx %d, thesh %b, cur %b, inval %b", received, samplesOut, nodeIdxOut, validBottom,validRight, memReqOut, test.FSM.cs, test.sampIdx, test.threshold, test.curSample, test.can_invalid);
    #20;
    memRdy = 1'b1;
    validSample = 1'b1;
    validIdx = 1'b1;
    #20;
    validSample = 1'b0;
    validIdx = 1'b0;
    dataRdy = 1'b1;
    #20;
    bottomRec = 1'b0; 
    rightRec = 1'b1;
    #20;
    bottomRec = 1'b1;
    rightRec = 1'b0;
    #100;
    $finish;    
end

endmodule : internal_stage_test
