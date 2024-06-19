visit - > https://edaplayground.com/x/RidU


module tb;
 
// Declare a 4-bit register 'a' with an initial value of 0
reg [3:0] a = 4'h0;
 
 
initial begin
  a = 4'b1001; // Set 'a' to binary 1001
  #10; // Wait for 10 time units
  a = 4'b0001; // Set 'a' to binary 0001
  $display("Value of a_d : %0d @ %0t",a, $time); // Display the value of 'a' in decimal format, along with the current time
  #10; // Wait for 10 time units
  a = 4'b1010; // Set 'a' to binary 1010
  $display("Value of a_d : %0d @ %0t",a, $time); // Display the value of 'a' in decimal format, along with the current time
  #10; // Wait for 10 time units
  a = 4'b1010; // Set 'a' to binary 1010
  $display("Value of a_d : %0d @ %0t",a, $time); // Display the value of 'a' in decimal format, along with the current time
end
 
// Monitor the value of 'a' and display it along with the current time
initial begin
  $monitor("Value of a_m :%0d @ %0t", a, $time); // Display the value of 'a' in decimal format, along with the current time
end
 
endmodule

