visit -> https://edaplayground.com/x/T9Fp

module tb;
  
  union{int a;int b;}un1;
  initial begin
    
    un1.a = 10;
    un1.b = 20;
    
    $display("%0d",un1.a);
  end
  
  
endmodule
