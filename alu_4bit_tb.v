


module alu_4bit_tb;
reg [3:0] A,B;
reg [1:0] SEL;
wire [3:0] RESULT;
wire CARRY;
 alu_4bit uut (
 .A(A),
 .B(B),
 .SEL(SEL),
 .RESULT(RESULT),
 .CARRY(CARRY)
 );
 initial begin
  // Monitor values
  $monitor("Time=%0t | A=%b | B=%b | SEL=%b | RESULT=%b | CARRY=%b",
  $time,A,B,SEL,RESULT,CARRY);
  //Test ADD
  A = 4'b0101; B = 4'b0011; SEL = 2'b00; #10;
  // Test SUB 
   A = 4'b0101; B = 4'b0011; SEL = 2'b01; #10;
   // Test AND 
A = 4'b0101; B = 4'b0011; SEL = 2'b10; #10;
// Test OR
A = 4'b0101; B = 4'b0011; SEL = 2'b11; #10;
$stop;
end 
endmodule
   