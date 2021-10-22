`timescale 1ns / 1ps

module tb_reg_mem;

    parameter DATA_WIDTH = 8; //8 bit wide data
    parameter ADDR_BITS = 5; //32 Addresses

    reg [ADDR_BITS-1:0] addr;
    reg [DATA_WIDTH-1:0] data_in;
    wire [DATA_WIDTH-1:0] data_out;
    reg wen, clk;

    //Note passing of parameters syntax
    reg_mem #(DATA_WIDTH,ADDR_BITS) RM (addr, data_in, wen, clk, data_out);

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(1, tb_reg_mem);
        
        clk = 1;
        wen = 1;
       
        //Write 10-42 to addresses 0-31 
      	for(int i=10;i<42;i=i+1) 
        begin
            data_in = i; 
         	addr = (i-10);
            $display("Write %d to address %d",data_in,addr);
            repeat (2) #1 clk = ~clk;
          	
        end
      	clk = 0;
      	#1;
        wen = 0;
        //Read 10-42 from addresses 0-31 
      	for(int i=0;i<32;i=i+1) 
        begin 
          	addr = i;
          	repeat (2) #1 clk = ~clk;
          	$display("Read %d from address %d",data_out,addr);
        end


        
    end
endmodule