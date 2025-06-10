//switch Level 
module nandgate(input a,b, output y);
  wire w;
  supply1 vdd;
  supply0 gnd;
  pmos p1(y,vdd,a);
  pmos p2(y,vdd,b);
  nmos n1(y,w,a);
  nmos n2(w,gnd,b);
endmodule

//gate level
module nandgate_1 (input a,b, output y);
  nand g1(y,a,b);
endmodule
