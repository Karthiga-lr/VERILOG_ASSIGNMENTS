module norgate_tb;
  reg a,b;
  wire y;
  norgate duv(.*);
  initial begin 
    $dumpfile("test.vcd");
    $dumpvars;
    a=0;b=0;#5;
    a=0;b=1;#5;
    a=1;b=0;#5;
    a=1;b=1;#5;
  end
  initial begin
    $monitor("time=%0t a=%b b=%b y=%b",$time,a,b,y);
  end
endmodule
