module gen_odd_numbers;
  integer i; 
  reg [7:0] odd;
  
  function [7:0] get_odd;
    input integer n;
    begin
      get_odd = 2*n+1;
    end
  endfunction 
  initial begin
    $display("First 10 numbers:");
    for(i=0;i<10;i=i+1)begin
    odd = get_odd(i);
      $display("Even [%0d]= %0d",i,odd);
    end
  end
endmodule
