module sqfunc;
  reg [3:0]num;
  reg [7:0] result;
  
  function [7:0] square;
    input [3:0] x;
    begin
      square = x*x;
    end
  endfunction
  
  function [7:0] double_square;
    input [3:0] y;
    begin
      double_square = 2*square(y);
    end
  endfunction
  
  initial begin
    num =8;
    result = double_square(num);
    $display ("Double of square = %d",result);
  end
endmodule
  
