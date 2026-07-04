module mux8x1(I,sel,y);
  input[7:0] I;
  input [2:0] sel;
   output y;
    assign y = I[sel];
endmodule
