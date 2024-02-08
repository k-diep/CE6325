module elevator(
	input [63:0] requested_floor,	
	input [63:0] destination_floor_elevator1,
	input [63:0] destination_floor_elevator2,
	input [63:0] current_floor_elevator1,
	input [63:0] current_floor_elevator2,
	input clk,
	input reset_elevator1,
	//input overweight_elevator1,
	input in_emergency_elevator1,
	input reset_elevator2,
	//input overweight_elevator2,
	input in_emergency_elevator2,
	output reg [1:0] direction_elevator1,
	output reg [1:0] direction_elevator2,
	output reg request_taken,
	output reg elevator1_status,
	output reg elevator2_status,
	output reg arrived_elevator1,
	output reg arrived_elevator2,
	//output reg overweight_signal_elevator1,
	output reg emergency_signal_elevator1,
	//output reg overweight_signal_elevator2,
	output reg emergency_signal_elevator2,
	output reg [63:0] current_floor_output_elevator1,
	output reg [63:0] current_floor_output_elevator2,
	output reg [63:0] final_floor_elevator1,
	output reg [63:0] final_floor_elevator2
	);

always @ (posedge clk) begin
	
	// Case: Elevator 1 takes requested_floor if elevator 1 is not busy
	if(elevator1_status == 1'b0 && request_taken == 1'b0 && final_floor_elevator2 != requested_floor && current_floor_output_elevator1 == destination_floor_elevator1) begin
		final_floor_elevator1 = requested_floor; 
		request_taken = 1'b1;
	end
	
	// Case: Elevator 2 takes requested_floor if elevator 2 is not busy and elevator 1 is busy
	else if (elevator2_status == 1'b0 && request_taken == 1'b0 && final_floor_elevator1 != requested_floor && current_floor_output_elevator2 == destination_floor_elevator2) begin
		final_floor_elevator2 = requested_floor; 
		request_taken = 1'b1;
	end
	
	// Case: when reset_elevator1 is pressed, outputs for elevator 1 are initialized/reset
	if (reset_elevator1) begin
		direction_elevator1 = 2'b00;
		request_taken = 1'b0;
		arrived_elevator1 = 1'b0;
		elevator1_status = 1'b0;
		//overweight_signal_elevator1 = 1'b0;
		emergency_signal_elevator1 = 1'b0;
		current_floor_output_elevator1 = current_floor_elevator1;
		final_floor_elevator1 = destination_floor_elevator1;
	end

	//Case if Emergency stop
	/*else if (in_emergency_elevator1 == 1'b1) begin
		emergency_signal_elevator1 = 1'b1;
		arrived_elevator1 = 1'b0;
		direction_elevator1 = 2'b00;
	end*/

	//Case: Emergency button is pressed in elevator 1
	if (in_emergency_elevator1 == 1'b1) begin
		emergency_signal_elevator1 = 1'b1;
		arrived_elevator1 = 1'b1;
		direction_elevator1 = 2'b00;
	end
	
	// Case: Emergency button is released in elevator 1
	else if (in_emergency_elevator1 == 1'b0) begin
		emergency_signal_elevator1 = 1'b0;
	end

	// Case: Elevator 1 going up
	if ((final_floor_elevator1 > current_floor_output_elevator1) && !in_emergency_elevator1) begin
		//overweight_signal_elevator1 = 1'b0;
		emergency_signal_elevator1 = 1'b0;
		direction_elevator1 = 2'b01;
		current_floor_output_elevator1 = current_floor_output_elevator1 << 1;
		arrived_elevator1 = 1'b0;
		elevator1_status = 1'b1;
		//request_taken = 1'b0;
	end
	
	// Case: Elevator 1 going down
	else if ((final_floor_elevator1 < current_floor_output_elevator1) && !in_emergency_elevator1) begin
		//overweight_signal_elevator1 = 1'b0;
		emergency_signal_elevator1 = 1'b0;
		direction_elevator1 = 2'b10;
		current_floor_output_elevator1 = current_floor_output_elevator1 >> 1;
		arrived_elevator1 = 1'b0;
		elevator1_status = 1'b1;
		//request_taken = 1'b0;
	end
	
	// Case: Elevator 1 staying at current floor
	else if (final_floor_elevator1 == current_floor_output_elevator1) begin
		direction_elevator1 = 2'b00;
		arrived_elevator1 = 1'b1;
		elevator1_status = 1'b0;
		request_taken = 1'b0;
	end
	
	// Case: when reset_elevator2 is pressed, outputs for elevator 2 are initialized/reset
	if (reset_elevator2) begin
		direction_elevator2 = 2'b00;
		request_taken = 1'b0;
		arrived_elevator2 = 1'b0;
		//overweight_signal_elevator2 = 1'b0;
		elevator2_status = 1'b0;
		emergency_signal_elevator2 = 1'b0;
		current_floor_output_elevator2 = current_floor_elevator2;
		final_floor_elevator2 = destination_floor_elevator2;
	end

	//Case if Emergency stop
	/*else if (in_emergency_elevator2 == 1'b1) begin
		emergency_signal_elevator2 = 1'b1;
		arrived_elevator2 = 1'b0;
		direction_elevator2 = 2'b00;
	end*/

	// Case: Emergency button is pressed in elevator 2
	if (in_emergency_elevator2 == 1'b1) begin
		emergency_signal_elevator2 = 1'b1;
		arrived_elevator2 = 1'b1;
		direction_elevator2 = 2'b00;
	end
	
	// Case: Emergency button is released in elevator 2
	else if (in_emergency_elevator2 == 1'b0) begin
		emergency_signal_elevator2 = 1'b0;
	end

	// Case: Elevator 2 going up
	if ((final_floor_elevator2 > current_floor_output_elevator2) && !in_emergency_elevator2) begin
		//overweight_signal_elevator2 = 1'b0;
		emergency_signal_elevator2 = 1'b0;
		direction_elevator2 = 2'b01;
		current_floor_output_elevator2 = current_floor_output_elevator2 << 1;
		arrived_elevator2 = 1'b0;
		elevator2_status = 1'b1;
		//request_taken = 1'b0;
	end
	
	// Case: Elevator 2 going down
	else if ((final_floor_elevator2 < current_floor_output_elevator2) && !in_emergency_elevator2) begin
		//overweight_signal_elevator2 = 1'b0;
		emergency_signal_elevator2 = 1'b0;
		direction_elevator2 = 2'b10;
		current_floor_output_elevator2 = current_floor_output_elevator2 >> 1;
		arrived_elevator2 = 1'b0;
		elevator2_status = 1'b1;
		//request_taken = 1'b0;
	end
	
	//Case: Elevator 2 staying still
	else if (final_floor_elevator2 == current_floor_output_elevator2) begin
		direction_elevator2 = 2'b00;
		arrived_elevator2 = 1'b1;
		elevator2_status = 1'b0;
		request_taken = 1'b0;
	end

end

endmodule