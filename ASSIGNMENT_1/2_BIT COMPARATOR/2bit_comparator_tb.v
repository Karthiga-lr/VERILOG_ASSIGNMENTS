module tb_twobitcomp;

  reg a1, a0, b1, b0;
  wire gt, ls, eq;

  twobitcomp uut (
    .a1(a1), .a0(a0),
    .b1(b1), .b0(b0),
    .gt(gt), .ls(ls), .eq(eq)
  );
  initial begin
    $display(" A  | B  || GT LS EQ");

    for (integer i = 0; i < 16; i = i + 1) begin
      {a1, a0} = i[3:2];
      {b1, b0} = i[1:0];
      #1; // wait for propagation
      $display(" %b%b | %b%b ||  %b  %b  %b", a1, a0, b1, b0, gt, ls, eq);
    end
    $finish;
  end
endmodule

  
