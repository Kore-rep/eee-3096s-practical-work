//Define the ALU testbench module
module ALU_tb();    
//inputs
reg clk;
reg[7:0] A,B;
reg[3:0] ALU_Sel;
// output
wire[7:0] ALU_Out;
string operation;

//Instantiate the design under test
ALU dut(
    .clk(clk),
    .A(A),
    .B(B),
    .ALU_Sel(ALU_Sel),
    .ALU_out(ALU_Out));

initial begin //Initial means this only happens once
  $monitor("%b		%b		%b		%b			%s",A,B,ALU_Sel, ALU_Out, operation);
  	$dumpfile("dump.vcd");
  	$dumpvars;
  $display("A			B			ALU_Sel		ALU_Out		Operation");
    clk = 1'b1;
    A = 8'b00001001;
    B = 8'b01000010;
  	
  		// ADD
        operation = "Add";
        ALU_Sel = 4'b0000;
    #5  
        clk=!clk;
  	
    #5
        clk=!clk;
  		// SUB
  		
  		operation = "Sub";
  		ALU_Sel = 4'b0001;
  	#5
  		clk=!clk;
  	#5
  		clk=!clk;
  		operation = "Mutliply";
  		//Multiply
  		ALU_Sel = 4'b0010;
  	#5
  		clk=!clk;
  	#5
  		clk=!clk;
  		// Divide
  		operation = "Divide";
  		ALU_Sel = 4'b0011;
  	#5
  		clk=!clk;
  	#5
  		clk=!clk;
  		// ADD A
  		operation = "Add A";
  		ALU_Sel = 4'b0100;
  	#5
  		clk=!clk;
  	#5
  		clk=!clk;
  		// Multiply A
  		operation = "Multiply A";
  		ALU_Sel = 4'b0101;
  	#5
  		clk=!clk;
  	#5
  		clk=!clk; 
  		// MAC
        
  		operation = "MAC";
  		ALU_Sel = 4'b0110;
  	#5
  		clk=!clk;
  	
  	#5
  		clk=!clk;
  		// Rotate Left
  		operation = "Rotate Left";
        ALU_Sel = 4'b0111;
    #5
        clk=!clk;
    #5
        clk=!clk;
  		// Rotate Right
  		operation = "Rotate Right";
        ALU_Sel = 4'b1000;
    #5
        clk=!clk;
    #5
        clk=!clk;
  		// And
  	
  		operation = "And";
  		ALU_Sel = 4'b1001;
  	#5
  		clk=!clk;
  	#5
  		clk=!clk;
  		// Or
  		operation = "Or";
  		ALU_Sel = 4'b1010;
  	#5
  		clk=!clk;
  	#5
  		clk=!clk;
  		// XOR
  		operation = "Xor";
  		ALU_Sel = 4'b1011;
  	#5
  		clk=!clk;
  	#5
  		clk=!clk;
  		// NAND
  		operation = "Nand";
  		ALU_Sel = 4'b1100;
  	#5
  		clk=!clk;
  	#5
  		clk=!clk;
  		// Equal
  		operation = "Equal";
  		ALU_Sel = 4'b1101;
  	#5
  		clk=!clk;
  	#5
  		clk=!clk;
  		// Greater Than
  		operation = "Greater Than";
        ALU_Sel = 4'b1110;
    #5
        clk = !clk;
  	#5
        clk=!clk; 
  	
  		// Less Than
  		operation = "Less Than";
        ALU_Sel = 4'b1111;
    #5
        clk = !clk;
    end
endmodule