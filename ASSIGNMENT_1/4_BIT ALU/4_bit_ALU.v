module fourbitalu( input [3:0]A,B, input [3:0] ALU_sel, output [3:0] ALU_out, output carryout);
  reg [3:0] ALU_result;
  wire [4:0] tmp;
  assign ALU_out = ALU_result;
  assign tmp={1'b0,A}+{1'b0,B};
  assign carryout = tmp[4];
  always@(*)
        begin
          case(ALU_sel)
            4'b0000: 
              ALU_result = A+B;
            4'b0001:
              ALU_result = A-B;
            4'b0010:
              ALU_result = A*B;
            4'b0011:
              ALU_result = A/B;
            4'b0100:
              ALU_result = A<<1;
            4'b0101:
              ALU_result = A>>1;
            4'b0110:
              ALU_result = {A[2:0],A[3]};
            4'b0111:
              ALU_result = {A[0],A[3:1]};
            4'b1000:
              ALU_result = A & B;
            4'b1001: 
              ALU_result = A | B;
            4'b1010:
              ALU_result = A ^ B;
            4'b1011:
              ALU_result = ~(A|B);
            4'b1100:
              ALU_result = ~(A & B);
            4'b1101:
              ALU_result = ~(A ^ B);
            4'b1110:
              ALU_result = ~(A>B)?4'd1:4'd0;
            4'b1111:
              ALU_result =(A==B)?4'd1:4'd0;
            default:ALU_result = A+B;
          endcase
        end
endmodule
            
              
