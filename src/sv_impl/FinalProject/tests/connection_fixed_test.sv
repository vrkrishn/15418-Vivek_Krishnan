module connection_fixed_test;
	//Data size 4, 4 data per sample, 4 samples
        logic [15: 0] s0, s1, s2, s3;
	logic [63: 0] data;
	logic [255: 0] data2;
	logic [1023: 0] data3; 

        assign data = {s3, s2, s1, s0};
	assign data2 = {data, data, data, data};
	assign data3 = {data2,data2,data2,data2};

 	logic r0, r1, r2;
        logic [15:0] pipe0, pipe1, pipe2, sampFeed;
	logic [15:0] samp00, samp01, samp02, samp10, samp11, samp12, samp20, samp21, samp22;
	logic [3:0] nodeIdx00, nodeIdx01, nodeIdx02, nodeIdx10, nodeIdx11, nodeIdx12, nodeIdx20, nodeIdx21, nodeIdx22;
	logic [3:0] nodeIdxOut0, nodeIdxOut1, nodeIdxOut2; 
	logic nValOut0, nValOut1, nValOut2;

	logic pVal0, pVal1, pVal2;

	logic clk, rst, enable, memRdy;

        logic sVal00, sVal01, sVal02, sVal10, sVal11, sVal12, sVal20, sVal21, sVal22;
	logic nVal00, nVal01, nVal02, nVal10, nVal11, nVal12, nVal20, nVal21, nVal22;
	logic rec00, rec01, rec02, rec10, rec11, rec12, rec20, rec21, rec22;

        sample_feeder #(64,4,4) feed(data3, enable, sampFeed, pVal0, pRec0, clk, rst);
        sample_pipeline_node #(4,4) node0(sampFeed, pVal0, pRec1, pRec0, rec00, sVal00, pVal1, pipe0, clk, rst);
	sample_pipeline_node #(4,4) node1(pipe0, pVal1, pRec2, pRec1, rec10, sVal10, pVal2, pipe1, clk, rst);
	sample_pipeline_node #(4,4) node2(pipe1, pVal2, 1'b1, pRec2, rec20, sVal20, pVal3, pipe2, clk, rst);
 
        //Row 0
	internal_branch_stage_fixed #(4,16,4) b00(memRdy, 1'b1, sVal00, rec00, nVal10, sVal01, 
					   rec10, rec01,pipe0,samp01, 4'b0001, nodeIdx10,
					   {4'b0000, 4'b0110}, , clk, rst);
	
	internal_branch_stage_fixed #(4,16,4) b01(memRdy, 1'b1, sVal01, rec01, nVal11, sVal02, 
					   rec11, rec02, samp01,samp02, 4'b0001, nodeIdx11,
					   {4'b0000, 4'b0110}, , clk, rst);

	internal_branch_stage_fixed #(4,16,4) b02(memRdy, 1'b1, sVal02, rec02, nVal12, , 
					   rec12, 1'b1, samp02, , 4'b0001, nodeIdx12,
					   {4'b0000, 4'b0110}, , clk, rst);

	//Row 1
	internal_branch_stage_fixed #(4,16,4) b10(memRdy, nVal10, sVal10, rec10, nVal20, sVal11, 
					   rec20, rec11,pipe1,samp11, nodeIdx10, nodeIdx20,
					   {4'b0001, 4'b0110}, , clk, rst);
	
	internal_branch_stage_fixed #(4,16,4) b11(memRdy, nVal11, sVal11, rec11, nVal21, sVal12, 
					   rec21, rec12, samp11,samp12, nodeIdx11, nodeIdx21,
					   {4'b0001, 4'b0110}, , clk, rst);

	internal_branch_stage_fixed #(4,16,4) b12(memRdy, nVal12, sVal12, rec12, nVal22, , 
					   rec22, 1'b1, samp12, , nodeIdx12, nodeIdx22,
					   {4'b0001, 4'b0110}, ,clk, rst);

	//Row 2
	internal_branch_stage_fixed #(4,16,4) b20(memRdy, nVal20, sVal20, rec20, nValOut0, sVal21, 
					   1'b1, rec21,pipe2,samp21, nodeIdx20, nodeIdxOut0,
					   {4'b0010, 4'b0110}, ,clk, rst);
	
	internal_branch_stage_fixed #(4,16,4) b21(memRdy, nVal21, sVal21, rec21, nValOut1, sVal22, 
					   1'b1, rec22, samp21,samp22, nodeIdx21, nodeIdxOut1,
					   {4'b0011, 4'b0110}, ,clk, rst);

	internal_branch_stage_fixed #(4,16,4) b22(memRdy, nVal22, sVal22, rec22, nValOut2, , 
					   1'b1, 1'b1, samp22, , nodeIdx22, nodeIdxOut2,
					   {4'b0010, 4'b0110}, ,clk, rst);
	
       //Tree Summer
       // logic unitDone;
	//logic [$clog2(4 * 4) + 4 - 1: 0] dataOut;
	//tree_summer_fixed #(4,4,16) treeSum({nodeIdxOut0, nodeIdxOut1, nodeIdxOut2},{nValOut0, nValOut1, nValOut2}, dataOut, unitDone, clk, rst); 

	initial begin
	    clk = 0;
	    forever #5 clk = ~clk;
	end

	initial begin
	    s0 = 16'b0000111100111010;
	    s1 = 16'b1100110010000001;
	    s2 = 16'b0011101001011000;
	    s3 = 16'b1001011010010110;
	    memRdy = 1'b1; 
	    //$monitor("b20 flags %b/%b, %b",b20.bRecFlag, b20.rRecFlag, b20.can_invalid);
	    //$monitor("b20 Out: %d, val: %b",nodeIdxOut0,nValOut0);
	    //$monitor($time, ":Idx/Node/Valid - [0, %d, %b], [1, %d, %b], [2, %d, %b], (%b,%b,%b), %b%b, pipe2V : %b", nodeIdxOut0, nValOut0, nodeIdxOut1, nValOut1, nodeIdxOut2, nValOut2, b20.FSM.cs, b21.FSM.cs, b22.FSM.cs, b20.validSamp, b20.validIdx, pVal3 );
	    //$monitor("[%h] %b,[%h] %b, [%h] %b, [%h] %b: %b %b %b : %b",sampFeed, pVal0, pipe0, pVal1, pipe1, pVal2, pipe2,pVal3, b00.FSM.cs, b10.FSM.cs, b20.FSM.cs, nValOut0);
	    $monitor($time,"[%d] %b, [%d] %b, [%d] %b", nodeIdxOut0,nValOut0,nodeIdxOut1,nValOut1,nodeIdxOut2,nValOut2);
            //$monitor("[%d] %b, [%d] %b, [%d] %b\n[%d] %b, [%d] %b, [%d] %b\n[%d] %b, [%d] %b, [%d] %b\n------------------------", nodeIdx10, nVal10, nodeIdx11, nVal11, nodeIdx12, nVal12, nodeIdx20, nVal20, nodeIdx21, nVal21, nodeIdx22, nVal22, nodeIdxOut0,nValOut0,nodeIdxOut1,nValOut1,nodeIdxOut2,nValOut2);	
	    //$monitor("state: %b, loadInput: %b nodeIn: %d, sample: %h, threshold: %h, nodeOut: %b isValid: %b",b10.FSM.cs, b10.loadInputs, b10.currentIdx, b10.curSample, b10.threshold, b10.nodeIdxOut, b10.validBottom);
	    enable = 1'b0;
	    rst = 1'b1;
	    #20;
  	    rst = 1'b0;
	    enable = 1'b1;
	    $display($time,"Enabled\n");
	    #5;
	    #1000000;
	    $finish;    
	end
endmodule : connection_fixed_test
