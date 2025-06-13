module function_example;
  reg [9:0]a,b;
  reg [9:0]sum;
  task calculate_sum;
    input [9:0] x,y;
    output [9:0]calculate_sum; 
    begin
      calculate_sum = x+y;
    end
  endtask
  initial begin
    a=5;
    b=10;
    calculate_sum(a,b,sum);
    $display("sum:%d",sum);
  end 
endmodule
