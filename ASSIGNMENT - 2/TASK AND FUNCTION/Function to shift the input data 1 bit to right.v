module shift;
  reg [7:0] data_in;
  reg [7:0] data_out;

  // Function to perform right shift
  function [7:0] right_shift;
    input [7:0] data;
    begin
      right_shift = data >> 1;
    end
  endfunction

  initial begin
    data_in = 8'b10100001;
    data_out = right_shift(data_in);

    $display("Input Data  : %b", data_in);
    $display("Right Shifted Data: %b", data_out);
  end
endmodule
