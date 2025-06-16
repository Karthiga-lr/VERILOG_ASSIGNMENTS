module gen_even_numbers;
  integer i; 
  reg [7:0] even;
  
  function [7:0] get_even;
    input integer n;
    begin
      get_even = 2*n;
    end
  endfunction 
  initial begin
    $display("First 10 numbers:");
    for(i=0;i<=10;i++)
    even = get_even(i);
    $display("Even of[%0d]= %0d",i,even);
    end
endmodule
