module sample_pipeline_test;

        //Data size 4, 4 data per sample, 4 samples
        logic [15: 0] s0, s1, s2, s3;
	logic [63: 0] data;

        assign data = {s3, s2, s1, s0};        

 	logic r0, r1, r2, r3, r4;
        logic [15:0] inp0,inp1,inp2,inp3,inp4, sampOut;
	logic val0,val1,val2,val3,val4,vOut;
        logic rec0, rec1, rec2, rec3, rec4;
	logic clk, rst, enable;

        sample_feeder #(4,4,4) feed(data, enable, inp0, val0, rec0, clk, rst);
        sample_pipeline_node #(4,4) node0(inp0, val0, rec1, rec0, 1'b1, r0 ,val1, inp1, clk, rst);
	sample_pipeline_node #(4,4) node1(inp1, val1, rec2, rec1, 1'b1, r1,val2, inp2, clk, rst);
	sample_pipeline_node #(4,4) node2(inp2, val2, rec3, rec2, 1'b1, r2,val3, inp3, clk, rst);
        sample_pipeline_node #(4,4) node3(inp3, val3, rec4, rec3, 1'b1, r3,val4, inp4, clk, rst);
 	sample_pipeline_node #(4,4) node4(inp4, val4, 1'b1, rec4, 1'b1, r4,vOut, sampOut, clk, rst);
	
	initial begin
	    clk = 0;
	    forever #5 clk = ~clk;
	end

	initial begin
	    s0 = 16'b0000111100111010;
	    s1 = 16'b1100110010000001;
	    s2 = 16'b0011101001011000;
	    s3 = 16'b1001011010010110; 
	    //$monitor("output: [%h], valid %b, nodestate: %b, can_invalid: %b, %b/%b : %b'%b : %b, %b", inp1, val1, node0.FSM.cs, node0.can_invalid, node0.bottomRec, node0.rightRec, node0.bRecFlag, node0.rRecFlag, node0.loadFlags, node0.clearFlags);
	    //$monitor("inp1: %x | valid1: %b | state: %b", inp1, val1, node0.FSM.cs);
	    $monitor($time,"\nLevel 0 : [%h] : %b\n Level1 : [%h]: %b \n Level2 : [%h]: %b \n Level3 : [%h]: %b \n Level4 : [%h]: %b \n out[%h]: %b",inp0,r0,inp1,r1,inp2,r2,inp3,r3,inp4,r4,sampOut, vOut);
	    enable = 1'b0;
	    rst = 1'b1;
	    #20;
  	    rst = 1'b0;
	    enable = 1'b1;
	    #5;
	    #1000000;
	    $finish;    
	end

endmodule : sample_pipeline_test
