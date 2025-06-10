module halfadder(a,b,sum,carry);
  input a,b;
  output sum,carry;
  assign sum=a^b;
  assign carry=a&b;
endmodule
module fulladder(a,b,cin,sum,carry);
  input a,b,cin;
  output sum,carry;
  wire w1,w2,w3;
  halfadder ha1(.a(a),.b(b),.sum(w1),.carry(w2));
  halfadder ha2(.a(w1),.b(cin),.sum(sum),.carry(w3));
  or(carry,w3,w2);
endmodule
