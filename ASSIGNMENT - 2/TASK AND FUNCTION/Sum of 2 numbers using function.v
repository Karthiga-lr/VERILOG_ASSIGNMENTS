odule function_example;
  reg [9:0]a,b;
  reg [9:0]sum;
  function [9:0] calculate_sum;
    input [9:0] x,y;
    begin
      calculate_sum = x+y;
    end
  endfunction
  initial begin
    a=5;
    b=10;
    sum = calculate_sum(a,b);
    $display("sum:%d",sum);
  end 
endmodule
    
