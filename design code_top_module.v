`include "adder"
`include "substractor"
`include "comparator"
`include "mux8x1"
module alu_1bit_top(A, B, Cin,Sel,y,Cout);         
  input A, B, Cin;    
  input [2:0] Sel;    
    output y;         
    output Cout;
  
  wire [7:0]results;
    wire w1,w2,w3;

   
    and  (results[0], A, B);     
    or   (results[1], A, B);      
    xor  (results[2], A, B);      
    xnor (results[3], A, B);     
    not  (results[7], A);        

  
  adder x1(A, B, Cin, results[4],w1);
  adder x2(~A,w3, 1'b1, results[5],w2);
  not x3(w3, B);
  comparator_1bit x4(A, B, results[6]);
  mux8x1 x5(results, Sel, y);
  assign Cout = (Sel == 3'b100) ? w1 : (Sel == 3'b101) ? w2 : 1'b0;
  
endmodule
