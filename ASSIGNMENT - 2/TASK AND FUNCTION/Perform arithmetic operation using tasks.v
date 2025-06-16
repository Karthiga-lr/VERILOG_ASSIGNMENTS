module arith_op;
  reg [7:0] a,b;
  reg [7:0] result;
  initial begin
    a=20;
    b=5;
    perform_arith(a,b,2'b00,result);
    $display("Addition:%d",result);
    perform_arith(a,b,2'b01,result);
    $display("Subtraction:%d",result);
    perform_arith(a,b,2'b10,result);
    $display("Multiplication:%d",result);
    perform_arith(a,b,2'b11,result);
    $display("Division:%d",result);
  end
   task perform_arith(input[7:0] x, input [7:0] y, input [1:0] ope_select,
                      output [7:0] result);
     begin
       case(ope_select)
         2'b00: result = x+y;
         2'b01: result = x-y;
         2'b10: result = x*y;
         2'b11: result = (y!=0)?(x/y):8'b0;
         default: result = 8'b0;
       endcase
       end
   endtask
 endmodule
