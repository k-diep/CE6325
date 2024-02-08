	reg [11:0] cardNumber_db [0:19];
	reg [3:0] pinNumber_db [0:19];
	reg [15:0] balance_db [0:19];


initial begin
	acc_database[0] = 12'd1281; pin_database[0] = 8'b11001101; balance_database[0] = 16'd500;
    	acc_database[1] = 12'd3698; pin_database[1] = 8'b11011011; balance_database[1] = 16'd12500;
    	acc_database[2] = 12'd2133; pin_database[2] = 8'b11000010; balance_database[2] = 16'd75;
    	acc_database[3] = 12'd1146; pin_database[3] = 8'b00110100; balance_database[3] = 16'd50;
    	acc_database[4] = 12'd1988; pin_database[4] = 8'b00100100; balance_database[4] = 16'd25;
    	acc_database[5] = 12'd0278; pin_database[5] = 8'b11100001; balance_database[5] = 16'd1500;
    	acc_database[6] = 12'd1873; pin_database[6] = 8'b01001111; balance_database[6] = 16'd50000;
    	acc_database[7] = 12'd3602; pin_database[7] = 8'b01101101; balance_database[7] = 16'd1234;
    	acc_database[8] = 12'd2149; pin_database[8] = 8'b11111101; balance_database[8] = 16'd54321;
    	acc_database[9] = 12'd2234; pin_database[9] = 8'b00101000; balance_database[9] = 16'd7654;
	acc_database[10] = 12'd1430; pin_database[0] = 8'b10011101; balance_database[10] = 16'd7355;
    	acc_database[11] = 12'd1697; pin_database[1] = 8'b10111111; balance_database[11] = 16'd9564;
    	acc_database[12] = 12'd3133; pin_database[2] = 8'b10100001; balance_database[12] = 16'd35432;
    	acc_database[13] = 12'd1845; pin_database[3] = 8'b01001000; balance_database[13] = 16'd13544;
    	acc_database[14] = 12'd2785; pin_database[4] = 8'b11111000; balance_database[14] = 16'd14321;
    	acc_database[15] = 12'd1323; pin_database[5] = 8'b01110111; balance_database[15] = 16'd34253;
    	acc_database[16] = 12'd2513; pin_database[6] = 8'b10001001; balance_database[16] = 16'd27345;
    	acc_database[17] = 12'd9602; pin_database[7] = 8'b10111111; balance_database[17] = 16'd25000;
    	acc_database[18] = 12'd3992; pin_database[8] = 8'b00101010; balance_database[18] = 16'd35900;
    	acc_database[19] = 12'd2736; pin_database[9] = 8'b11001001; balance_database[19 = 16'd45000;
    	end