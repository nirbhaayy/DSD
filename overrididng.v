//VISIT -> https://edaplayground.com/x/WJJy

module overriding();

  class parent_trans;
    task send();
      $display("Good");
    endtask
  endclass

  class error_trans extends parent_trans;
    task send();  			//It overrides the send method to print "odd".
      $display("Odd");
    endtask
  endclass

  parent_trans h1; 
  error_trans h2;

  initial begin
    h1 = new();  // parent trans prints good
    h2 = new();  //error trans prints odd
    h1.send();   
    h2.send();
    h1 = h2;	//assings h2 object to h1 referance
    h1.send();
  end

endmodule
