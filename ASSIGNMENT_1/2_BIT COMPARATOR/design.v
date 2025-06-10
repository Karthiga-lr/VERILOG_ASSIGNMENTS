module twobitcomp(input a1,b1,a0,b0, output gt,ls,eq);
  wire w1,w2,w3,w4,w5,w6,w7,w8,w9,w10,w11;
  not g1(w1,a0);
  not g2(w2,b1);
  not g3(w3,a0);
  not g4(w4,b0);
  and g5(w5,w1,b1);
  and g6(w6,a0,b1,w2);
  and g7(w7,w1,w3,b1);
  or g8(ls,w5,w6,w7);
  and g9(w8,a1,w2);
  and g10(w9,a0,b0,w4);
  and g11(w10,a1,a0,w4);
  or g12(gt,w8,w9,w10);
  or g13(w11,ls,gt);
  or g14(eq,w11);
endmodule
