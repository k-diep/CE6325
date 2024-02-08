`timescale 1 ns/ 1 ns
module elevator_tb;

  // Define constants
  reg [63:0] requested_floor;
  reg [63:0] destination_floor_elevator1;
  reg [63:0] destination_floor_elevator2;
  reg [63:0] current_floor_elevator1;
  reg [63:0] current_floor_elevator2;
  reg clk;
  reg reset_elevator1;
  //reg overweight_elevator1;
  reg in_emergency_elevator1;
  reg reset_elevator2;
  //reg overweight_elevator2;
  reg in_emergency_elevator2;

  // Instantiate the elevator module
  elevator uut (
    .requested_floor(requested_floor),
    .destination_floor_elevator1(destination_floor_elevator1),
    .destination_floor_elevator2(destination_floor_elevator2),
    .current_floor_elevator1(current_floor_elevator1),
    .current_floor_elevator2(current_floor_elevator2),
    .clk(clk),
    .reset_elevator1(reset_elevator1),
    //.overweight_elevator1(overweight_elevator1),
    .in_emergency_elevator1(in_emergency_elevator1),
    .reset_elevator2(reset_elevator2),
    //.overweight_elevator2(overweight_elevator2),
    .in_emergency_elevator2(in_emergency_elevator2),
    .direction_elevator1(),
    .direction_elevator2(),
    .request_taken(),
    .elevator1_status(),
    .elevator2_status(),
    .arrived_elevator1(),
    .arrived_elevator2(),
    //.overweight_signal_elevator1(),
    .emergency_signal_elevator1(),
    //.overweight_signal_elevator2(),
    .emergency_signal_elevator2(),
    .current_floor_output_elevator1(),
    .current_floor_output_elevator2(),
    .final_floor_elevator1(),
    .final_floor_elevator2()
  );

initial                                                
begin                                                                                        
$display("Running testbench");                       
end                                                    
always                                                 
// optional sensitivity list                           
// @(event1 or event2 or .... eventn)                  
begin                                                  
// Initial declaration of inputs                
#0 clk = 1'b0; 
// Both elevator start on floor 1
current_floor_elevator1 = 64'b0000000000000000000000000000000000000000000000000000000000000001;
current_floor_elevator2 = 64'b0000000000000000000000000000000000000000000000000000000000000001;
requested_floor = 64'b000000000000000000000000000000000000000000000000000000000000001;
destination_floor_elevator1 = 64'b0000000000000000000000000000000000000000000000000000000000000001;
destination_floor_elevator2 = 64'b0000000000000000000000000000000000000000000000000000000000000001;
reset_elevator1 = 1'b0; reset_elevator2 = 1'b0; in_emergency_elevator2 = 1'b0; in_emergency_elevator1 = 1'b0; 

// Reset is pressed and then released for both elevators
#50 reset_elevator1 = 1'b1; reset_elevator2 = 1'b1;
#50 reset_elevator1 = 1'b0; reset_elevator2 = 1'b0;

// First request from floor 10
#100 requested_floor = 64'b0000000000000000000000000000000000000000000000000000001000000000; 
#200;

// Second request from floor 5 (elevator 2 should take request since elevator 1 is busy)
#400 requested_floor = 64'b0000000000000000000000000000000000000000000000000000000000010000;

// Destination floor for elevator 1 is 7
#450 destination_floor_elevator1 = 64'b0000000000000000000000000000000000000000000000000000000001000000; current_floor_elevator1 = 64'b0000000000000000000000000000000000000000000000000000001000000000; reset_elevator1 = 1'b1;
#50 reset_elevator1 = 1'b0;

// Destination floor for elevator 2 is 8
#250 destination_floor_elevator2 = 64'b0000000000000000000000000000000000000000000000000000000010000000; current_floor_elevator2 = 64'b0000000000000000000000000000000000000000000000000000000000010000; reset_elevator2 = 1'b1;
#50 reset_elevator2 = 1'b0; 

// Third request is to floor 2
#400 requested_floor = 64'b0000000000000000000000000000000000000000000000000000000000000010; 

// Emergency is on for elevator 2
#100 in_emergency_elevator2 = 1'b1;
#100 in_emergency_elevator2 = 1'b0;

// Fourth request is to floor 12
#700 requested_floor = 64'b0000000000000000000000000000000000000000000000000000100000000000; reset_elevator2 = 1'b1; reset_elevator1 = 1'b1;
#100 reset_elevator1 = 1'b0; reset_elevator2 = 1'b0; 

// Emergency is on for elevator 1
#50 in_emergency_elevator1 = 1'b1;
#100 in_emergency_elevator1 = 1'b0;

// Testing rest feature
#3000;
$finish;

end
// Clock function (50ns clock cycle)
always #50 clk = ~clk;
                                                 
endmodule

