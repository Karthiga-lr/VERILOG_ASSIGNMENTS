module fourbitalu_tb;
  reg[3:0] A,B;
  reg[3:0] ALU_sel;
  wire [3:0] ALU_out;
  wire carryout;
  fourbitalu duv(A,B,ALU_sel,ALU_out,carryout);
  initial begin
    $dumpfile("test.vcd");
    $dumpvars(1);
    $monitor("time%0t A=%b B=%b ALU_sel=%b ALU_out=%b carryout=%b",$time,A,B,ALU_sel,ALU_out,carryout);
    A = 4'b1100;  B = 4'b1010;
    ALU_sel = 4'b0000; #50;
    ALU_sel = 4'b0001; #50;
    ALU_sel = 4'b0010; #50;
    ALU_sel = 4'b0011; #50;
    ALU_sel = 4'b0100; #50;
    ALU_sel = 4'b0101; #50;
    ALU_sel = 4'b0110; #50;
    ALU_sel = 4'b0111; #50;
    ALU_sel = 4'b1000; #50;
    ALU_sel = 4'b1001; #50;
    ALU_sel = 4'b1010; #50;
    ALU_sel = 4'b1011; #50;
    ALU_sel = 4'b1100; #50;
    ALU_sel = 4'b1101; #50;
    ALU_sel = 4'b1110; #50;
    ALU_sel = 4'b1111; #50;
  end
endmodule
    
  
