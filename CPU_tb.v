// file: CPU_tb.v
// author: @omar_nawawy
// Testbench for CPU
 
`timescale 1ns/1ns
`include "CPU.v"
 
module CPU_tb;
 
    //Inputs
    reg clk;
    reg rst;
 
 
    //Outputs
 
    always #10 clk = ~clk;
    //Instantiation of Unit Under Test
    CPU uut (
        .clk(clk),
        .rst(rst)
    );
 
    integer i;
    initial begin
    //Inputs initialization
        clk = 0;
        rst = 1;
	
	 for (i = 0; i < 32; i = i + 1)
	begin
		uut.r.regMemory[i] = 32'd0;
	end
    //Wait for the reset
        @(negedge clk);
        rst = 0;
    /*  @(negedge clk);
        rst = 1;
        @(negedge clk);
        rst = 0;*/
    end
   
    initial
    begin
               
 
    forever
    begin
        @(negedge clk);
         if ( uut.CU.state == 5'd16)  begin
                 $display("instr:%d", uut.instr);
                 for (i = 0; i < 32; i = i + 1)
                         begin
                             $display("Reg of %d, is, %h", i, uut.r.regMemory[i]);
                         end
			 if(uut.CU.state != 5'd17)
	 	$display("naw");
             	 
         end
 
        if($time == 560) begin
            $display("BOOOOOOOOOOOM ~~~~!!!!");
            $finish;
        end
    end        
       
    end
   
 
 
endmodule
