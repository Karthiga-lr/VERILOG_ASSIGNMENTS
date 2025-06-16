
module gen_odd_or_even;
  integer i;
  reg [7:0] number;
  reg select;
  
  function [7:0] get_number;
   input integer n;
   input select_flag;
    begin
      if(select_flag==0)
        get_number= 2*n;//even function
      else
        get_number=2*n+1;//odd function
    end
  endfunction
  
  initial begin
    select =0;
    $display("First 20 numbers:");
    for(i=0;i<=20;i++)begin
      number=get_number(i,select);
      $display("even [%0d] = %0d",i,number);
    end
  end
      
  initial begin
    select =1;
    $display("First 20 numbers:");
    for(i=0;i<=20;i++)begin
      number=get_number(i,select);
      $display("odd [%0d] = %0d",i,number);
    end
  end
endmodule
   
      
    
