module arith_oper;
reg [7:0] a, b;
reg [7:0] result_add, result_sub, result_mul, result_div;
    
  initial begin
    a = 20;
    b = 5;

    // Call tasks
    addition(a, b, result_add);
    subtraction(a, b, result_sub);
    multiplication(a, b, result_mul);
    division(a, b, result_div);

    // Display results
    $display("a = %d, b = %d", a, b);
    $display("Addition      : %d", result_add);
    $display("Subtraction   : %d", result_sub);
    $display("Multiplication: %d", result_mul);
    $display("Division      : %d", result_div);
  end

  task addition(input [7:0] x, y, output [7:0] sum);
    begin
      sum = x + y;
    end
  endtask

  task subtraction(input [7:0] x, y, output [7:0] diff);
    begin
      diff = x - y;
    end
  endtask
 
  task multiplication(input [7:0] x, y, output [7:0] prod);
    begin
      prod = x * y;
    end
  endtask
  task division(input [7:0] x, y, output [7:0] quotient);
    begin
      if (y != 0)
        quotient = x / y;
      else
        quotient = 0;  
    end
  endtask
endmodule
