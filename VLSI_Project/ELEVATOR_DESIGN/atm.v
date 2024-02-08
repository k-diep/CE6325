`define READ_CARD			3'b000
`define READ_PIN			3'b001
`define CHOOSE_TRANSACTION	3'b010
`define SHOW_BALANCE		3'b011
`define WITHDRAW			3'b100
`define DEPOSIT				3'b101
`define WIRE_MONEY			3'b110
`define FIND_CARD			1'b0
`define AUTH_PIN			1'b1

module authentication(
	input [11:0] cardNumber,
	input [7:0] pinNumber,
	input isCredit, // 0 = debit, 1 = credit
	input findCardOrPin, // 0 = find card, 1 = auth pin
	output reg foundNumber, //if true then we can move to next state
	output reg [4:0] db_index
);
	reg [11:0] cardNumber_db [0:19];
	reg [7:0]  pinNumber_db [0:19];
	reg isCredit_db [0:19];
	
	initial begin
		// example accounts and pins and if that card is credit or not
		cardNumber_db[0]  = 12'd1281; pinNumber_db[0] = 8'b11001101; isCredit_db[0] = 1'b0;
		cardNumber_db[1]  = 12'd3698; pinNumber_db[1] = 8'b11011011; isCredit_db[1] = 1'b1;
		cardNumber_db[2]  = 12'd2133; pinNumber_db[2] = 8'b11000010; isCredit_db[2] = 1'b0;
		cardNumber_db[3]  = 12'd1146; pinNumber_db[3] = 8'b00110100; isCredit_db[3] = 1'b1;
		cardNumber_db[4]  = 12'd1988; pinNumber_db[4] = 8'b00100100; isCredit_db[4] = 1'b0;
		cardNumber_db[5]  = 12'd0278; pinNumber_db[5] = 8'b11100001; isCredit_db[5] = 1'b1;
		cardNumber_db[6]  = 12'd1873; pinNumber_db[6] = 8'b01001111; isCredit_db[6] = 1'b0;
		cardNumber_db[7]  = 12'd3602; pinNumber_db[7] = 8'b01101101; isCredit_db[7] = 1'b1;
		cardNumber_db[8]  = 12'd2149; pinNumber_db[8] = 8'b11111101; isCredit_db[8] = 1'b0;
		cardNumber_db[9]  = 12'd2234; pinNumber_db[9] = 8'b00101000; isCredit_db[9] = 1'b1;
		cardNumber_db[10] = 12'd1430; pinNumber_db[0] = 8'b10011101; isCredit_db[10] = 1'b0;
		cardNumber_db[11] = 12'd1697; pinNumber_db[1] = 8'b10111111; isCredit_db[11] = 1'b1;
		cardNumber_db[12] = 12'd3133; pinNumber_db[2] = 8'b10100001; isCredit_db[12] = 1'b0;
		cardNumber_db[13] = 12'd1845; pinNumber_db[3] = 8'b01001000; isCredit_db[13] = 1'b1;
		cardNumber_db[14] = 12'd2785; pinNumber_db[4] = 8'b11111000; isCredit_db[14] = 1'b0;
		cardNumber_db[15] = 12'd1323; pinNumber_db[5] = 8'b01110111; isCredit_db[15] = 1'b1;
		cardNumber_db[16] = 12'd2513; pinNumber_db[6] = 8'b10001001; isCredit_db[16] = 1'b0;
		cardNumber_db[17] = 12'd9602; pinNumber_db[7] = 8'b10111111; isCredit_db[17] = 1'b1;
		cardNumber_db[18] = 12'd3992; pinNumber_db[8] = 8'b00101010; isCredit_db[18] = 1'b0;
		cardNumber_db[19] = 12'd2736; pinNumber_db[9] = 8'b11001001; isCredit_db[19] = 1'b1;
	end

	integer i;
	always @(cardNumber or pinNumber)  	//if card is inserted or pin number is inputed 
		foundNumber = 1'b0; 			// initial value of foundNumber is 0 (false) since not found yet
		db_index = 0;
		
		
		
module atm (
	input [11:0] cardNumber,
	input [11:0] wiredAccount,
	input [7:0] pinNumber,
	input [9:0] dollars,
	input isCredit, 
	input transaction_option
	input clk,
	input reset,
	output [15:0] balance
);

reg [2:0] current_state = `READ_CARD;
alway@ (posedge clk)
	begin
	
	if(reset == 1'b1)
		begin
			current_state = `READ_CARD;
		end
	
	else case(current_state)
		
		
	end