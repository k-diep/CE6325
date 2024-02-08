module proj1_tb();

	reg clk, reset;
	reg [11:0] cardNumber;
	reg [7:0] pinNumber;
	reg [11:0] wiredAccount; // destination account number
	reg [1:0] transaction_option; //menu option 2:0
	reg [9:0] dollars;
	wire error;
	wire [9:0] balance;

	atm atmModule (clk, reset, pinNumber, wiredAccount, transaction_option, dollars, erro, balance);

	initial begin
		clk = 1'b0;
	end

	always @(error) begin
		if(error = 'true)
			$display("Error. Invalid Operation.")
	end	

	intial begin
		//invalid pin	
		cardNumber = 12'd2133;
		pinNumber = 8'b01010101;
		#50
		//valid account
		cardNumber = 12'd1873;
		pinNumber = 8'b01001111;
		#50
		//withdraw money and show balance after
		dollars = 250;
		transaction_option =  //withdraw
		clk = ~clk;
		#5
		clk = ~clk;
		#50
		//withdraw more money than account and show balance as not changed from 49750
		cardNumber = 12'd1988;
		pinNumber = 8'b00100100;
		dollars = 1000;
		transaction_option = //withdraw
		clk = ~clk;
		#5
		clk = ~clk;
		#50
		
		//transaction to transfer more than 1023 dollars which causes error and doesnt change
		cardNumber = 12'd1873;
		pinNumber = 8'b01001111;
		dollars = 1000;
		wiredAccount = 1988;
		transaction_option = //transfer
		clk = ~clk;
		#5
		clk = ~clk;
		#50





	end

endmodule