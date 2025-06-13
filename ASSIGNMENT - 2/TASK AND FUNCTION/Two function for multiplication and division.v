module two_functions_example;
  reg [7:0] a, b;
  reg [15:0] result_mul;
  reg [7:0] result_div;

  // Function for multiplication
  function [15:0] multiply;
    input [7:0] x, y;
    begin
      multiply = x * y;
    end
  endfunction

  // Function for division
  function [7:0] divide;
    input [7:0] x, y;
    begin
      if (y != 0)
        divide = x / y;
      else
        divide = 0; 
    end
  endfunction

  initial begin
    a = 12;
    b = 4;
    result_mul = multiply(a, b);
    result_div = divide(a, b);
    
    $display("Multiplication:",a, b,result_mul);
    $display("Division:", a, b,result_div);
  end
endmodule
