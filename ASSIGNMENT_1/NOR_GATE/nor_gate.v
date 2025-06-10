module norgate(input a,b,output y);
  wire w;
  supply1 vdd;
  supply0 gnd;
  pmos p1(w,vdd,a);
  pmos p2(y,w,b);
  nmos n1(y,gnd,a);
  nmos n2(y,gnd,b);
endmodule

module nor_gate1(input a,b, output y);
  nor g1 (y,a,b);
endmodule
