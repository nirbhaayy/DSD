`timescale 1ns / 1ps   // time unit / time precision 
// ns is base unit of time for the simulation
// ps is the smallest time step 
// All time values will be rounded to the nearest picosecond (ps).
 
module tb;
 
///reg + integer
///time realtime real
 
reg [7:0] var1 = 8'hff;
integer var2 = -23;
real var3 = 12.56;
time t1 = 0;  // for integer datatype
realtime t2 = 0; // for floating / real vlaue datatype
 
 
initial begin
$display("Value of var1 : %0d", var1);
$display("Value of var2 : %0d", var2);
$display("Value of var3 : %0f", var3);
#10.45;
t1 = $time;
  $display("Value of t1 : %0t", t1); // if 10.5 se chota toh 10ns if bada to 11ns
t2 = $realtime;
  $display("Value of t2 : %0t", t2);
 
end
 
 
endmodule
