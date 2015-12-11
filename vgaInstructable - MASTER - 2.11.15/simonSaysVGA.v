/*
Title: Simon Says on DE2-115 FPGA - ECE 287
Created: 12.10.15
Authors: Barret Heaton
			Lauren Parmley
			
Credit:	Brandon Hill
			Keely Edwards
			Ainslee Heim
			Evan Kerr
			Samual Rohatynsky

Honorable Mention: Connar Blandford (For picking his brain)
*/

module simonSaysVGA(clk, rst, color, tutorial,
				hsync, vsync, vga_R, vga_G, vga_B,  vga_blank, vga_clk
);
	//--------VGA----------------------
	input wire clk, rst;
	input [3:0] color;
	output hsync, vsync;
	output reg [7:0] vga_R, vga_G, vga_B;
	output vga_blank;
	output vga_clk;
	reg [3:0] colorS;
	
	//--------------"R"LSFR-------------------
	
	input wire tutorial;
	//wire feedback3, feedback2, feedback1, feedback0;
	reg [3:0] pattern3;
	//initial pattern3 = 4'b1000; //rI
	//assign feedback3 = ~(pattern3[3] ^ pattern3[1]);
	
	reg [3:0] pattern2;
	//initial pattern2 = 4'b0100; //yI
	//assign feedback2 = ~(pattern2[3] ^ pattern2[1]);
	
	reg [3:0] pattern1;
	//initial pattern1 = 4'b0010; //gI
	//assign feedback1 = ~(pattern1[3] ^ pattern1[1]);
	
	reg [3:0] pattern0;
	//initial pattern0 = 4'b0001; //bI
	//assign feedback0 = ~(pattern0[3] ^ pattern0[1]);
	
	//-------------------------------------
	
	//--------------FSM------------------
	reg [4:0] NS, S; // for simon/player FSM
	reg [30:0] c; // counter for time
	reg [30:0] cc; // 1st counter for colorStore swap
	reg [30:0] ccc; // 2nd counter for colorStore swap
	reg [2:0] level;
	reg [1:0] state;
	reg match, win;
	reg [3:0]colorStore; // stores last pressed color button
 
	//----------------------------------
	
	wire [7:0] gvga_R, gvga_G, gvga_B, tvga_R, tvga_G, tvga_B;
	reg [9:0] pixel_x;
	reg [8:0] pixel_y;
	
//------Initialize VGA------//
	reg vga_HS, vga_VS;
	reg clock25;
	
	wire CounterXmaxed = (pixel_x==799); //799 full width of field including front and back porches and sync
	wire CounterYmaxed = (pixel_y==525); //525 full length of field including front and back porches and sync
 
//-----25 MHz clock-----//
	always @(posedge clk)
		if(clock25)
			begin
				clock25 = 0;
			end
		else
			begin
				clock25 = 1;
			end
//----- end clock -----//

//-----Synchronize VGA Output-----//
	assign vga_clk = clock25;
	assign vga_blank = vsync & hsync;
		
	always @(posedge clock25)
		if(CounterXmaxed && ~CounterYmaxed)
			begin
			pixel_x <= 0;
			pixel_y <= pixel_y + 1'b1;
			end 
		else if (~CounterXmaxed)
			pixel_x <= pixel_x + 1'b1;
		else if (CounterXmaxed && CounterYmaxed)
			begin
			pixel_y <= 0;
			pixel_x <= 0;
			end
//	
	always @(posedge clock25)
		begin
			vga_HS <= (pixel_x <= 96);   // active for 16 clocks
			vga_VS <= (pixel_y <= 2);   // active for 800 clocks
		end 

	assign hsync = ~vga_HS;
	assign vsync = ~vga_VS;
//----- end synchronization -----//

//----------------------------------------------------------------------------------------
initial colorStore = 4'b0000;

//stores last button pressed on the negedge of KEY[3:0]
always@(negedge color[3], negedge color[2], negedge color[1], negedge color[0])
begin
		if (color[3] == 0)
			colorStore <= 4'b1000;
		else if(color[2] == 0)
			colorStore <= 4'b0100;
		else if(color[1] == 0)
			colorStore <= 4'b0010;
		else if(color[0] == 0)
			colorStore <= 4'b0001;
		else
			colorStore <= 4'b0001;
end 


//------------------------------------Simon Sequence and Player Matching FSM ---------------------------------

parameter RESET = 5'b00000,
			START = 5'b00001,
			L1S = 5'b00010,
			L1PR = 5'b00011,
			L1PY = 5'b00100,
			L1PG = 5'b00101,
			L1PB = 5'b00110,
			L2S = 5'b00111,
			L2PR = 5'b01000,
			L2PY = 5'b01001,
			L2PG = 5'b01010,
			L2PB = 5'b01011,
			L3S = 5'b01100,
			L3PR = 5'b01101,
			L3PY = 5'b01110,
			L3PG = 5'b01111,
			L3PB = 5'b10000,
			WIN = 5'b10001;
			
always@(posedge clk or negedge rst) //reset state transition
begin	
	if(rst == 1'b0)
		S <= RESET;
	else
		S <= NS;
end

always@(*) //state transition 
begin
	case(S) 
		RESET:
		begin
			NS = START;
		end	
		START:
		begin
			if(colorStore == 4'b1000)
				NS = L1S;
			else
				NS = START;
		end
		L1S: 
		begin
			if(c >= 31'd150000000)
				NS = L1PR;
			else
				NS = L1S;
		end
		L1PR:
		begin
			if (cc >= 31'd50000000)
			begin
				if(colorStore == pattern3)
					NS = L1PY;
				else
					NS = L1PR;
			end
			else	
				NS = L1PR;
		end 
		L1PY:
		begin
			if (ccc >= 31'd50000000)
			begin
				if(colorStore == pattern2)
					NS = L1PG;
				else
					NS = L1PY;
			end
			else	
				NS = L1PY;
		end 
		L1PG:
		begin
			if (cc >= 31'd50000000)
			begin
				if(colorStore == pattern1)
					NS = L1PB;
				else
					NS = L1PG;
			end
			else	
				NS = L1PG;
		end 
		L1PB:
		begin
			if (ccc >= 31'd50000000)
			begin
				if(colorStore == pattern0)
				begin
					NS = L2S;
				end
				else
					NS = L1PB;
			end
			else	
				NS = L1PB;
		end
		//------------------------------------------------------------------------------------------------------
		L2S: 
		begin
			if(c >= 31'd150000000)
				NS = L2PR;
			else
				NS = L2S;
		end
		L2PR:
		begin
			if (cc >= 31'd50000000)
			begin
				if(colorStore == pattern3)
					NS = L2PY;
				else
					NS = L2PR;
			end
			else	
				NS = L2PR;
		end 
		L2PY:
		begin
			if (ccc >= 31'd50000000)
			begin
				if(colorStore == pattern2)
					NS = L2PG;
				else
					NS = L2PY;
			end
			else	
				NS = L2PY;
		end 
		L2PG:
		begin
			if (cc >= 31'd50000000)
			begin
				if(colorStore == pattern3)
					NS = L2PB;
				else
					NS = L2PG;
			end
			else	
				NS = L2PG;
		end 
		L2PB:
		begin
			if (ccc >= 31'd50000000)
			begin
				if(colorStore == pattern0)
					NS = L3S;
				else
					NS = L2PB;
			end
			else	
				NS = L2PB;
		end
		//-----------------------------------------------------------------------------------
		L3S: 
		begin
			if(c >= 31'd150000000)
				NS = L3PR;
			else
				NS = L3S;
		end
		L3PR:
		begin
			if (cc >= 31'd50000000)
			begin
				if(colorStore == pattern3)
					NS = L3PY;
				else
					NS = L3PR;
			end
			else	
				NS = L3PR;
		end 
		L3PY:
		begin
			if (ccc >= 31'd50000000)
			begin
				if(colorStore == pattern2)
					NS = L3PG;
				else
					NS = L3PY;
			end
			else	
				NS = L3PY;
		end 
		L3PG:
		begin
			if (cc >= 31'd50000000)
			begin
				if(colorStore == pattern3)
					NS = L3PB;
				else
					NS = L3PG;
			end
			else	
				NS = L3PG;
		end 
		L3PB:
		begin
			if (ccc >= 31'd50000000)
			begin
				if(colorStore == pattern0)
					NS = WIN;	
				else
					NS = L3PB;
			end
			else	
				NS = L3PB;
		end
		//------------------------------------------------------------------------------------------------------
		default:
		begin
			NS = S;
		end
	endcase
end		

always@(posedge clk or negedge rst) //assign state dependent values
begin
	if (rst == 1'b0)
	begin
		colorS <= 4'b0000;	
		c <= 31'd0;
		match <= 1'b0;
		state <= 2'b00;
		level <= 3'b000;
		win <= 1'b0;
		pattern3 = 4'b1000; //rI
		pattern2 = 4'b0100; //yI
		pattern1 = 4'b0010; //gI
		pattern0 = 4'b0001; //bI
	end
	else
	begin
		case(S)
			RESET:
			begin
				c <= 31'd0;
				match <= 1'b0;
				state <= 2'b00;
				level <= 3'b000;
				win <= 1'b0;
			end
			START:
			begin
				//colorS <= 4'b0000;	
				match <= 1'b0;
				state <= 2'b11;
				win <= 1'b0;
				level <= 3'b001;
			end
			L1S:
			begin
				c <= c + 31'd1;
					
				match <= 1'b0;
				state <= 2'b01;
				level <= 3'b001;
				win <= 1'b0;
		
				if(c >= 31'd25000000 && c <= 31'd50000000)
				begin
					colorS <= pattern3;
				end
				else if(c >= 31'd50000000 && c <= 31'd75000000)
				begin
					colorS <= pattern2;
				end
				else if(c >= 31'd75000000 && c <= 31'd100000000)
				begin
					colorS <= pattern1;
				end
				else if(c >= 31'd100000000 && c <= 31'd125000000)
				begin
					colorS <= pattern0;
				end
				else if(c >= 31'd125000000 && c <= 31'd150000000)
				begin
					colorS <= 4'b0000;
				end
			end
			L1PR:
			begin
				c <= 31'd0;
				cc <= cc + 31'd1;
				match <= 1'b0;
				state <= 2'b10;
				level <= 3'b001;
				win <= 1'b0;
			end
			L1PY:
			begin
					cc <= 31'd0;
					ccc <= ccc + 31'd1;
					
				match <= 1'b0;
				state <= 2'b10;
				level <= 3'b001;
				win <= 1'b0;
			
			end
			L1PG:
			begin
				ccc <= 31'd0;
				cc <= cc + 31'd1;
				match <= 1'b0;
				state <= 2'b10;
				level <= 3'b001;
				win <= 1'b0;
				
			end
			L1PB:
			begin
				cc <= 0;
				ccc <= ccc + 31'd1;
				
					
				match <= 1'b0;
				state <= 2'b10;
				level <= 3'b001;
				win <= 1'b0;
			end 
			//-------------------------------------------------------------------------------
			L2S:
			begin
				if(tutorial == 1'b0)
				begin
					pattern3 <= 4'b0100;
					pattern2 <= 4'b0001;
					pattern1 <= 4'b1000;
					pattern0 <= 4'b0010;
				end
				
				c <= c + 31'd1;
				state <= 2'b01;
				level <= 3'b010;
				win <= 1'b0;
				if(c >= 31'd25000000 && c <= 31'd50000000)
				begin
					colorS <= pattern3;
				end
				else if(c >= 31'd50000000 && c <= 31'd75000000)
				begin
					colorS <= pattern2;
				end
				else if(c >= 31'd75000000 && c <= 31'd100000000)
				begin
					colorS <= pattern1;
				end
				else if(c >= 31'd100000000 && c <= 31'd125000000)
				begin
					colorS <= pattern0;
				end
				else if(c >= 31'd125000000 && c <= 31'd150000000)
				begin
					colorS <= 4'b0000;
				end
			end
			L2PR:
			begin	
				c <= 31'd0;
				ccc <= 31'd0;
				cc <= cc + 31'd1;
				match <= 1'b0;
				state <= 2'b10;
				level <= 3'b010;
				win <= 1'b0;
			end
			L2PY:
			begin
					cc <= 31'd0;
					ccc <= ccc + 31'd1;
					
				match <= 1'b0;
				state <= 2'b10;
				level <= 3'b010;
				win <= 1'b0;
			end
			L2PG:
			begin
				ccc <= 31'd0;
				cc <= cc + 31'd1;
				match <= 1'b0;
				state <= 2'b10;
				level <= 3'b010;
				win <= 1'b0;
			end
			L2PB:
			begin
				cc <= 0;
				ccc <= ccc + 31'd1;
				
					
				match <= 1'b0;
				state <= 2'b10;
				level <= 3'b010;
				win <= 1'b0;
				
			end
			//-----------------------------------------------------------------------------------
			L3S:
			begin
				if(tutorial == 1'b0)
				begin
					pattern3 <= 4'b0001;
					pattern2 <= 4'b0010;
					pattern1 <= 4'b0001;
					pattern0 <= 4'b1000;
				end
				
				c <= c + 31'd1;
				state <= 2'b01;
				level <= 3'b011;
				win <= 1'b0;
				if(c >= 31'd25000000 && c <= 31'd50000000)
				begin
					colorS <= pattern3;
				end
				else if(c >= 31'd50000000 && c <= 31'd75000000)
				begin
					colorS <= pattern2;
				end
				else if(c >= 31'd75000000 && c <= 31'd100000000)
				begin
					colorS <= pattern1;
				end
				else if(c >= 31'd100000000 && c <= 31'd125000000)
				begin
					colorS <= pattern0;
				end
				else if(c >= 31'd125000000 && c <= 31'd150000000)
				begin
					colorS <= 4'b0000;
				end
			end
			L3PR:
			begin	
				c <= 31'd0;
				ccc <= 31'd0;
				cc <= cc + 31'd1;
				match <= 1'b0;
				state <= 2'b10;
				level <= 3'b011;
				win <= 1'b0;
			end
			L3PY:
			begin
					cc <= 31'd0;
					ccc <= ccc + 31'd1;
					
				match <= 1'b0;
				state <= 2'b10;
				level <= 3'b011;
				win <= 1'b0;
			end
			L3PG:
			begin
				ccc <= 31'd0;
				cc <= cc + 31'd1;
				match <= 1'b0;
				state <= 2'b10;
				level <= 3'b011;
				win <= 1'b0;
			end
			L3PB:
			begin
				cc <= 0;
				ccc <= ccc + 31'd1;
				
					
				match <= 1'b0;
				state <= 2'b10;
				level <= 3'b011;
				win <= 1'b0;
				
			end
			//-------------------------------------------------------------------------------
			WIN:
			begin
				cc <= 31'd0;
				ccc <= 31'd0;
				match <= 1'b1;
				win <= 1'b1;
				state <= 2'b11;
			end	
			default:
			begin
				match <= 1'b1;
				state <= 2'b00;
				level <= 3'b000;
				win <= 1'b0;
			end
		endcase
	end
end

	
//------------------------------------------------------------------------------------------------------------		
// -- GUI Parameters declaration and mapping
	
	//constant declaration
	localparam Max_X = 788;
	localparam Max_Y = 490;
	
	//Square Buttons
	localparam button_spacing = 25;
	localparam button_size = 50;
	localparam RED_X_L = 315;
	localparam RED_X_R = RED_X_L + button_size;
	localparam RED_Y_T = 250;
	localparam RED_Y_B = RED_Y_T + button_size;
	localparam YEL_X_L = RED_X_R + button_spacing;
	localparam YEL_X_R = YEL_X_L + button_size;
	localparam YEL_Y_T = 250;
	localparam YEL_Y_B = YEL_Y_T + button_size;
	localparam GRN_X_L = YEL_X_R + button_spacing;
	localparam GRN_X_R = GRN_X_L + button_size;
	localparam GRN_Y_T = 250;
	localparam GRN_Y_B = GRN_Y_T + button_size;
	localparam BLU_X_L = GRN_X_R + button_spacing;
	localparam BLU_X_R = BLU_X_L + button_size;
	localparam BLU_Y_T = 250;
	localparam BLU_Y_B = BLU_Y_T + button_size;

	//status signals
	wire redB_on, yelB_on, grnB_on, bluB_on, bounding_box;
	reg bright;
	//pixel in red button
	assign redB_on = ((RED_X_L <= pixel_x) && (pixel_x <= RED_X_R) &&
							(RED_Y_T <= pixel_y) && (pixel_y <= RED_Y_B));

	//pixel in yellow button
	assign yelB_on = ((YEL_X_L <= pixel_x) && (pixel_x <= YEL_X_R) &&
							(YEL_Y_T <= pixel_y) && (pixel_y <= YEL_Y_B));
						
	//pixel in green button
	assign grnB_on = ((GRN_X_L <= pixel_x) && (pixel_x <= GRN_X_R) &&
							(GRN_Y_T <= pixel_y) && (pixel_y <= GRN_Y_B));
						
	//pixel in blue button
	assign bluB_on = ((BLU_X_L <= pixel_x) && (pixel_x <= BLU_X_R) &&
							(BLU_Y_T <= pixel_y) && (pixel_y <= BLU_Y_B));

							
	//pixel is in bounding box
	assign bounding_box = (pixel_x == 250 && pixel_y <= 450 && 100 <= pixel_y) | 
									(pixel_x == 650 && pixel_y <= 450 && 100 <= pixel_y) | 
										(pixel_y == 100 && pixel_x <= 650 && 250 <= pixel_x) |
											(pixel_y == 450 && pixel_x <= 650 && 250 <= pixel_x);
	

//-------------Display the Letter L for level--------------//
wire [2:0] L_addr, L_col;
reg [7:0] L_data;
wire L_bit;
wire L_on;

always@*
		case (L_addr)
		3'b000: L_data = 8'b00000000; //
		3'b001: L_data = 8'b01000000; // *
		3'b010: L_data = 8'b01000000; // *
		3'b011: L_data = 8'b01000000; // *
		3'b100: L_data = 8'b01000000; // *
		3'b101: L_data = 8'b01000000; // *
		3'b110: L_data = 8'b01111111; // *******
		3'b111: L_data = 8'b00000000; //
		endcase
//-------------------------------------//

	assign L_addr = pixel_y[3:1];
	assign L_col = pixel_x[3:1];
	assign L_bit = L_data[~L_col];
	
	assign L_on = (256<=pixel_x && pixel_x<=271 && 112<= pixel_y && pixel_y <= 127 && L_bit);	

//-------------Display the Letter S to indicate that Simon Says--------------//
reg [2:0] S_addr, S_col;
reg [7:0] S_data;
reg S_bit;
reg S_on;

always@*
		case (S_addr)
		3'b000: S_data = 8'b00000000; //
		3'b001: S_data = 8'b00111110; //  *****
		3'b010: S_data = 8'b01000000; // *
		3'b011: S_data = 8'b00111110; //  *****
		3'b100: S_data = 8'b00000001; //       *
		3'b101: S_data = 8'b01000001; // *     *
		3'b110: S_data = 8'b00111110; //  *****
		3'b111: S_data = 8'b00000000; //
		endcase
//-------------------------------------//
always@(*)
begin
 S_addr = pixel_y[4:2];
 S_col = pixel_x[4:2];
 S_bit = S_data[~S_col]; 
	
 S_on = (416<=pixel_x && pixel_x<=447 && 192<= pixel_y && pixel_y <= 224 && S_bit && state == 2'b01);		// ## changed state from 1 to 0 , state of board is 1 and 2!
end


//-------------Display the Letter P to indicate it is the player's turn--------------//
reg [2:0] P_addr, P_col;
reg [7:0] P_data;
reg P_bit;
reg P_on;

always@*
		case (P_addr)
		3'b000: P_data = 8'b00000000; //
		3'b001: P_data = 8'b01111110; // *****
		3'b010: P_data = 8'b01000001; // *    *
		3'b011: P_data = 8'b01111110; // *****
		3'b100: P_data = 8'b01000000; // *
		3'b101: P_data = 8'b01000000; // *
		3'b110: P_data = 8'b01000000; // *
		3'b111: P_data = 8'b00000000; //
		endcase
//-------------------------------------//

always@(*)
begin
	P_addr = pixel_y[4:2];
	P_col = pixel_x[4:2];
	P_bit = P_data[~P_col];
	
	P_on = (480<=pixel_x && pixel_x<=511 && 192<= pixel_y && pixel_y <= 224 && P_bit && state== 2'b10);
end

//-------------Display the Check Mark to indicate a match--------------//
reg [2:0] match_addr, match_col;
reg [7:0] match_data;
reg match_bit;
reg match_on;

always@*
		case (match_addr)
		3'b000: match_data = 8'b00000000; //       
		3'b001: match_data = 8'b00000001; //       *
		3'b010: match_data = 8'b00000010; //      *
		3'b011: match_data = 8'b00000100; //     *
		3'b100: match_data = 8'b10001000; //*   *
		3'b101: match_data = 8'b01010000; // * *
		3'b110: match_data = 8'b00100000; //  *
		3'b111: match_data = 8'b00000000; //
		endcase
//-------------------------------------//

always@(*)
begin
 match_addr = pixel_y[4:2];
 match_col = pixel_x[4:2];
 match_bit = match_data[~match_col];
	
 match_on = (544<=pixel_x && pixel_x<=575 && 192<= pixel_y && pixel_y <= 224 && match_bit && match==1); //match --> match==1
end

//----- Level Numbers -----//

wire [2:0] num_addr, num_col;
reg [7:0] num_data;
wire num_bit;
wire num_on;

always@*
	if (level == 1)
		case (num_addr)
		3'b000: num_data = 8'b00000000; //
		3'b001: num_data = 8'b00011000; //   **
		3'b010: num_data = 8'b00101000; //  * *
		3'b011: num_data = 8'b00001000; //    *
		3'b100: num_data = 8'b00001000; //    *
		3'b101: num_data = 8'b00001000; //    *
		3'b110: num_data = 8'b00111110; //  *****
		3'b111: num_data = 8'b00000000; //
		endcase	
	else if (level == 2)
		case (num_addr)
		3'b000: num_data = 8'b00000000; //
		3'b001: num_data = 8'b00111100; //  ****
		3'b010: num_data = 8'b01000010; // *    *
		3'b011: num_data = 8'b00000100; //     *
		3'b100: num_data = 8'b00001000; //    *
		3'b101: num_data = 8'b00010000; //   *
		3'b110: num_data = 8'b01111110; // ******
		3'b111: num_data = 8'b00000000; //
		endcase
	else if (level ==3)
		case (num_addr)
		3'b000: num_data = 8'b00000000; //
		3'b001: num_data = 8'b00111100; //  ****
		3'b010: num_data = 8'b01000010; // *    *
		3'b011: num_data = 8'b00001100; //    **
		3'b100: num_data = 8'b00000010; //      *
		3'b101: num_data = 8'b01000010; // *    *
		3'b110: num_data = 8'b00111100; //  ****
		3'b111: num_data = 8'b00000000; //
		endcase
	else if (level ==4)
		case (num_addr)
		3'b000: num_data = 8'b00000000; //
		3'b001: num_data = 8'b01000010; // *    *
		3'b010: num_data = 8'b01000010; // *    *
		3'b011: num_data = 8'b01111110; // ******
		3'b100: num_data = 8'b00000010; //      *
		3'b101: num_data = 8'b00000010; //      *
		3'b110: num_data = 8'b00000010; //      *
		3'b111: num_data = 8'b00000000; //
		endcase
	else if (level ==5)
		case (num_addr)
		3'b000: num_data = 8'b00000000; //
		3'b001: num_data = 8'b01111110; // ******
		3'b010: num_data = 8'b01000000; // *    
		3'b011: num_data = 8'b01111100; // *****
		3'b100: num_data = 8'b00000010; //      *
		3'b101: num_data = 8'b01000010; // *    *
		3'b110: num_data = 8'b00111100; //  ****
		3'b111: num_data = 8'b00000000; //
		endcase	
	else
		case (num_addr)
		3'b000: num_data = 8'b00000000; //
		3'b001: num_data = 8'b00000000; //
		3'b010: num_data = 8'b00000000; //
		3'b011: num_data = 8'b00000000; //
		3'b100: num_data = 8'b00000000; //
		3'b101: num_data = 8'b00000000; //
		3'b110: num_data = 8'b00000000; //
		3'b111: num_data = 8'b00000000; //
		endcase
		
	assign num_addr = pixel_y[3:1];
	assign num_col = pixel_x[3:1];
	assign num_bit = num_data[~num_col];
	
	assign num_on = (272<=pixel_x && pixel_x<=287 && 112<= pixel_y && pixel_y <= 127 && num_bit);
		
//----- color Selection MUX -----//	
	//check if there is input - indicates need for a bright signal 
	always@(state)
		if (state[0] || state[1])
			bright = 1;
		else
			bright = 0; 
			
	//Produce color when the pixel is in the range of the button.
	always@*
	begin 
		if (bounding_box)
		begin
			vga_R = 8'b11111111; // this is white boundary line
			vga_G = 8'b11111111;
			vga_B = 8'b11111111;
			end 
			// based on input verus rest: assign lit versus unlit color to each button.
		else if (redB_on)
		begin
			vga_G = 8'b00000000;
			vga_B = 8'b00000000;
			if (bright && colorS[3])
				vga_R = 8'b01100000;
			else if(bright && color[3])
				vga_R = 8'b11111111; 
			else
				vga_R = 8'b01100000; 
		end	
		else if (yelB_on)
		begin
			if (bright && colorS[2])
			begin
				vga_R = 8'b01111111;
				vga_G = 8'b01111111;
				vga_B = 8'b00110000;
			end
			else if(bright && color[2])
			begin
				vga_R = 8'b11111111;
				vga_G = 8'b11111111;
				vga_B = 8'b00000000;
			end
			else
			begin
				vga_R = 8'b01111111;
				vga_G = 8'b01111111;
				vga_B = 8'b00110000;
			end
		end		
		else if (grnB_on)
		begin
			vga_R = 8'b00000000;
			vga_B = 8'b00000000;
			if (bright && colorS[1])
				vga_G = 8'b01100000;
			else if(bright && color[1])
				vga_G = 8'b11111111; 
			else
				vga_G = 8'b01100000; 
		end		
		else if (bluB_on)
		begin
			vga_R = 8'b00000000;
			vga_G = 8'b00000000;
			if (bright && colorS[0])
				vga_B = 8'b01100000;
			else if(bright && color[0])
				vga_B = 8'b11111111; 
			else
				vga_B = 8'b01100000; 
		end
		else if (L_on || S_on || P_on || match_on || num_on)
		begin
		if (num_on && win)		//shows the number 5 in green if the player wins
			begin
			vga_R = 8'b00000000;
			vga_G = 8'b11111111;
			vga_B = 8'b00000000;
			end
		else
			begin
			vga_R = 8'b11111111;
			vga_G = 8'b11111111;
			vga_B = 8'b11111111;
			end
		if(L_on && win)
			begin
			vga_R = 8'b00000000;
			vga_G = 8'b11111111;
			vga_B = 8'b00000000;
			end
		else
			begin
			vga_R = 8'b11111111;
			vga_G = 8'b11111111;
			vga_B = 8'b11111111;
			end
		if(match_on && win)
			begin
			vga_R = 8'b00000000;
			vga_G = 8'b11111111;
			vga_B = 8'b00000000;
			end
		else
			begin
			vga_R = 8'b11111111;
			vga_G = 8'b11111111;
			vga_B = 8'b11111111;
			end
		end
		else
		begin
			vga_R = 8'b00000000;  // paints background
			vga_G = 8'b00000000;
			vga_B = 8'b00000000;
		end
	end
endmodule
