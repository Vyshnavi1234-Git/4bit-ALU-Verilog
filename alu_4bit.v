

module alu_4bit(
 input [3:0] A,
 input [3:0] B,
 input [1:0] SEL,
 output reg [3:0] RESULT,
 output reg CARRY
 );
 always @(*) begin
 case (SEL)
 2'b00: {CARRY,RESULT} = A+B;
 2'b01: {CARRY,RESULT} = A-B;
 2'b10: {CARRY,RESULT} = {1'b0,(A&B)};
 2'b11: {CARRY,RESULT} = {1'b0,(A | B)};
 default: {CARRY,RESULT} = 5'b00000;
 endcase
 end
endmodule
