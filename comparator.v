module comparator_1bit(a,b,eq);
  input a, b;
  output eq;
    xnor x4(eq, a, b);
endmodule
