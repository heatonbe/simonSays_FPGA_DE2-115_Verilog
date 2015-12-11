module RoundWinState(NumSeries, UserInput, LevelNumber, check, Win, display);
	input [2:0] NumSeries; 
	input [2:0] UserInput; 
	integer k; 
	output reg [6:0] display;
	output reg [1:0] check;
	output reg [2:0] LevelNumber;
	output reg Win;

// Initial State	
initial 
begin
	LevelNumber = 3'b001; 
	k = 1;
end

always @(NumSeries) begin

	if (UserInput == NumSeries)
		check <= 1'b1;
	else
		check <= 1'b0;
	end
always @(check) 
begin
	for (k = 1; k <=25; k = k+1)
	if ((check == 1'b01) && (1 == k <=5))
		LevelNumber = 3'b001; // level one
		else
		if ((check == 1'b01) && (6<=k<=10))
			LevelNumber = 3'b010; // level two
			else
			if ((check == 1'b01) && (11<=k<=15))
				LevelNumber = 3'b011; // level three
				else
				if ((check == 1'b01) && (16<=k<=20))
				LevelNumber = 3'b100; // level four
					else
					if ((check == 1'b01) && (21<=k<25))
					LevelNumber = 3'b101; // level five
						else
							if ((check == 1'b01) && (k == 25))
							Win = 1; // the game has been won			
case(LevelNumber) // display the level number
	3'b001: display = 7'b1001111;
	3'b010: display = 7'b0010010;
	3'b011: display = 7'b0000110;
	3'b100: display = 7'b1011100;
	3'b101: display = 7'b0100100;
endcase
end
endmodule 