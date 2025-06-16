module shift_rgt;
  reg [7:0] data_in;
  reg [7:0] data_out;
  
  function [7:0] right_op;
    input [7:0] data_in;
    begin
      right_op = data_in>>1;
    end
    endfunction
  initial begin
    data_in = 8'b10101011;
    data_out = right_op(data_in);
    
    $display("Input_data: %b",data_in);
    $display("right shift: %b",data_out);
  end
endmodule
