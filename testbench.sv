module test;
  reg [3:0]A,B;
  reg  M;    // Inputs
  wire [3:0]S;
  wire C;       // Outputs

  adder_subtractor uut(S, C, A, B, M);  // Instantiate the Unit Under Test (UUT)

	initial 
      begin
		$dumpfile("dump.vcd");  $dumpvars(1, test);      // display the inputs and outputs
        $monitor( "A + B =%b +%b = C S = %b %b M = %b", A, B, M, S, C);

	  // Initialize Inputs
        M = 0;
      	   A = 0; B = 0;
      #10  A = 0; B = 1;
      #10  A = 0; B = 2; 
      #10  A = 0; B = 3; 
      #10  A = 1; B = 0; 
      #10  A = 1; B = 1; 
      #10  A = 1; B = 2; 
      #10  A = 1; B = 3;
      #10  A = 2; B = 0; 
      #10  A = 2; B = 1; 
      #10  A = 2; B = 2;
      #10  A = 2; B = 3;  
      #10  A = 3; B = 0;  
      #10  A = 3; B = 1;
      #10  A = 3; B = 2; 
      #10  A = 3; B = 3; 

      #10 $finish;
      end
endmodule   

