VISIT -> https://edaplayground.com/x/diDE

module threads();
  initial begin
    fork
      for(int h1_pointer=0;h1_pointer<2;h1_pointer++)
      begin
        #1;
        $display( "%t %d",$time,h1_pointer);
      end
      for(int d1_channel =2;d1_channel>0;d1_channel--)
      begin
        #1;
        $display( "%t %d",$time,d1_channel);
      end
      join
    $display("%t",$time); // we will get 2 here as the for join is ending after 2
    #3; $finish;     // the simlutaon will end after 3 sec
  	 end
endmodule
