
module task_calls;
  reg [7:0] a,b;
  wire [7:0] result;
  
  function [7:0] add;
    input [7:0] x,y;
    begin
      add = x+y;
    end
  endfunction
  
  task display_result;
  input [7:0] value;
  begin
    $display("Result = %d",value);
  end 
  endtask
  
  task process_values;// Task calls both function and call
    input [7:0] u,v;
    reg [7:0] temp;
    begin
      temp = add(u,v); //calls Function
      display_result(temp); //calls task
    end
  endtask
 //intial block to run the tasks
 initial begin
   a=10;
   b=15;
   process_values(a,b);
 end
endmodule

