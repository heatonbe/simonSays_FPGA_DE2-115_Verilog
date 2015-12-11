//----- Begin text display module -----//
module textDisplay (clk, level, state, match, pix_x, pix_y, text_on, tvga_R, tvga_G, tvga_B);
	input clk;
	input match;
	input [2:0] level, state;
	input [9:0] pix_x, pix_y;
	output wire text_on;
	output reg [7:0] tvga_R, tvga_G, tvga_B;

	
	//signal declaration
	reg [2:0]level_addr;
	wire [7:0] rom_addr;
	reg [4:0] char_addr, char_addr_l, char_addr_r, char_addr_g, char_addr_u, char_addr_m;
	wire [2:0] row_addr;
	wire [2:0] row_addr_l, row_addr_r, row_addr_g, row_addr_u,
					row_addr_m;
	wire [2:0] bit_addr;
	wire [2:0] bit_addr_l, bit_addr_r, bit_addr_g, bit_addr_u,
					bit_addr_m;
	wire [7:0] font_word;
	wire font_bit, level_on, ready_on, game_on, user_on, match_on;
	
	//assign level address
	always@(level)
		case(level)
			3'b000: level_addr = 3'o01;
			3'b001: level_addr = 3'o02;
			3'b010: level_addr = 3'o03;
			3'b011: level_addr = 3'o04;
			3'b100: level_addr = 3'o05;
			3'b101: level_addr = 3'o06;
			default: level_addr= 3'o00;
		endcase
		
	font_rom font_unit(.clk(clk), .addr(rom_addr), .data(font_word));
	
	//show level
	assign level_on = (104<=pix_y ) && (pix_y<=119) && (256 <= pix_x) && (pix_x <= 335 );
	assign row_addr = pix_y[3:1];
	assign bit_addr = pix_x[3:1];
	always @*
		case (pix_x[8:4])
			3'd000: char_addr = 3'o15; //L
			3'd001: char_addr = 3'o25; //V
			3'd002: char_addr = 3'o15; //L
			3'd003: char_addr = 3'o31; //:
			3'd004: char_addr = level_addr; //level num
		endcase
		
	// show "Ready?"
	assign ready_on = ((pix_y[9:7]==1) && (2 <= pix_y[9:6]) && (pix_x[9:6] <= 6) && state==0);
	assign row_addr_r = pix_y[5:3];
	assign bit_addr_r = pix_x[5:3]; 
	always @*
		case (pix_x[8:6])
			3'o3: char_addr_r = 3'o21 ; //R
			3'o4: char_addr_r = 3'o31 ; //E
			3'o5: char_addr_r = 3'o13 ; //A
			3'o6: char_addr_r = 3'o33 ; //D
			3'o7: char_addr_r = 3'o34 ; //Y
			default : char_addr_r = 3'o30 ; //?
		endcase
	
	//show "Simon Says:"
	assign game_on = ((pix_y[9:6]==1) && (2 <= pix_y[9:6]) && (pix_x[9:6] <= 6) && (state== 1));
	assign row_addr_g = pix_y[3:1];
	assign bit_addr_g = pix_x[3:1];
	always@*
		case (pix_x[8:7])
			2'o03: char_addr_g = 3'o22; //S
			2'o04: char_addr_g = 3'o14; //I
			2'o05: char_addr_g = 3'o16; //M
			2'o06: char_addr_g = 3'o20; //O
			2'o07: char_addr_g = 3'o17; //N
			2'o10: char_addr_g = 3'o00; //space
			2'o11: char_addr_g = 3'o22; //S
			2'o12: char_addr_g = 3'o13; //A
			2'o13: char_addr_g = 3'o34; //Y
			2'o14: char_addr_g = 3'o22; //S
			default: char_addr_g = 3'o31; //:
		endcase
		
	//show "Your Turn:"
	assign user_on = ((pix_y[9:6] ==1) && (2 <= pix_y[9:6]) && (pix_x[9:6] <= 6) && (state==2));
	assign row_addr_u = pix_y[3:1];
	assign bit_addr_u = pix_x[3:1];
	always@*
		case (pix_x[8:7])
			2'o03: char_addr_u = 3'o34 ; //Y
			2'o04: char_addr_u = 3'o20; //O
			2'o05: char_addr_u = 3'o24; //U
			2'o06: char_addr_u = 3'o21; //R
			2'o07: char_addr_u = 3'o00; //space
			2'o10: char_addr_u = 3'o23; //T
			2'o11: char_addr_u = 3'o24; //U
			2'o12: char_addr_u = 3'o21; //R
			2'o13: char_addr_u = 3'o17; //N
			2'o14: char_addr_u = 3'o31; //:
		endcase
		
	//show match
	assign match_on = ((pix_y[9:6] ==1) && (2 <= pix_y[9:6]) && (pix_x[9:6] <= 6));
	assign row_addr_m = pix_y[3:1];
	assign bit_addr_m = pix_x[3:1];
	always@*
		if (match)
			char_addr_m = 3'o23; // check mark
		else
			char_addr_m = 3'o22; // x
	
	//mux for font ROM addresses and font colour		
	always@*
	begin
		tvga_R = 8'b00000000;
		tvga_G = 8'b00000000;
		tvga_B = 8'b00000000;
		
		if (level_on)
			begin
//				char_addr = char_addr_l;
//				row_addr = row_addr_l;
//				bit_addr = bit_addr_l;
				if (font_bit)
				begin
					tvga_R = 8'b11111111;
					tvga_G = 8'b11111111;
					tvga_B = 8'b11111111;
				end
			end
		/*
		else if (game_on)
			begin
				char_addr = char_addr_g;
				row_addr = row_addr_g;
				bit_addr = bit_addr_g;
				if (font_bit)
				begin
					tvga_R = 8'b11111111;
					tvga_G = 8'b11111111;
					tvga_B = 8'b11111111;
				end
			end
		else if (user_on)
			begin
				char_addr = char_addr_u;
				row_addr = row_addr_u;
				bit_addr = bit_addr_u;
				if (font_bit)
				begin
					tvga_R = 8'b11111111;
					tvga_G = 8'b11111111;
					tvga_B = 8'b11111111;
				end
			end
		else if (ready_on)
			begin
				char_addr = char_addr_r;
				row_addr = row_addr_r;
				bit_addr = bit_addr_r;
				if (font_bit)
				begin
					tvga_R = 8'b11111111;
					tvga_G = 8'b11111111;
					tvga_B = 8'b11111111;
				end
			end
		else if (match_on)
			begin
				char_addr = char_addr_m;
				row_addr = row_addr_m;
				bit_addr = bit_addr_m;
				if (font_bit)
				begin
					tvga_R = 8'b11111111;
					tvga_G = 8'b11111111;
					tvga_B = 8'b11111111;
				end
			end	*/
		end
		
		
		assign text_on = level_on;
		assign rom_addr = {char_addr, row_addr};
		assign font_bit = font_word[~bit_addr];
endmodule

module font_rom(clk, addr, data);
	input clk;
	input [7:0] addr;
	output reg [7:0] data;
	
	reg [7:0] addr_reg;
	
	always@(posedge clk)
		addr_reg <= addr;
		
	always@*
		case(addr_reg)
		//code x00 blank
		3'o000: data = 8'b00000000;
		3'o001: data = 8'b00000000;
		3'o002: data = 8'b00000000;
		3'o003: data = 8'b00000000;
		3'o004: data = 8'b00000000;
		3'o005: data = 8'b00000000;
		3'o006: data = 8'b00000000;
		3'o007: data = 8'b00000000;
		
		//code x01 0
		3'o010: data = 8'b00000000; //
		3'o011: data = 8'b00111100; //  ****
		3'o012: data = 8'b01000010; // *    *
		3'o013: data = 8'b01000010; // *    *
		3'o014: data = 8'b01000010; // *    *
		3'o015: data = 8'b01000010; // *    *
		3'o016: data = 8'b00111100; //  ****
		3'o017: data = 8'b00000000; //
		
		//code x02 1
		3'o020: data = 8'b00000000; //
		3'o021: data = 8'b00011000; //   **
		3'o022: data = 8'b00101000; //  * *
		3'o023: data = 8'b00001000; //    *
		3'o024: data = 8'b00001000; //    *
		3'o025: data = 8'b00001000; //    *
		3'o026: data = 8'b00111100; //  ****
		3'o027: data = 8'b00000000; //
		
		//code x03 2
		3'o030: data = 8'b00000000; //
		3'o031: data = 8'b00111100; //  ****
		3'o032: data = 8'b01000010; // *    *
		3'o033: data = 8'b00000100; //     *
		3'o034: data = 8'b00001000; //    * 
		3'o035: data = 8'b00010000; //   *
		3'o036: data = 8'b01111110; // ******
		3'o037: data = 8'b00000000; //
		
		//code x04 3
		3'o040: data = 8'b00000000; //
		3'o041: data = 8'b00111100; //  ****
		3'o042: data = 8'b01000010; // *    *
		3'o043: data = 8'b00001100; //    **
		3'o044: data = 8'b00000010; //      *
		3'o045: data = 8'b01000010; // *    *
		3'o046: data = 8'b00111100; //  ****
		3'o047: data = 8'b00000000; //
		
		//code x05 4
		3'o050: data = 8'b00000000; //
		3'o051: data = 8'b01000100; // *    *
		3'o052: data = 8'b01000100; // *    *
		3'o053: data = 8'b01111110; // *******
 		3'o054: data = 8'b00000100; //      *
		3'o055: data = 8'b00000100; //      *
		3'o056: data = 8'b00000100; //      *
		3'o057: data = 8'b00000000; //
		
		//code x06 5
		3'o060: data = 8'b00000000; //
		3'o061: data = 8'b01111110; // ******
		3'o062: data = 8'b01000000; // *
		3'o063: data = 8'b01111100; // *****
		3'o064: data = 8'b00000010; //      *
		3'o065: data = 8'b00000010; //      *
		3'o066: data = 8'b01111100; // *****
		3'o067: data = 8'b00000000; //
		
		//code x07 6
		3'o070: data = 8'b00000000; //
		3'o071: data = 8'b00010000; //   *
		3'o072: data = 8'b00100000; //  *    
		3'o073: data = 8'b00111100; //  ****
		3'o074: data = 8'b01000010; // *    *
		3'o075: data = 8'b01000010; // *    *
		3'o076: data = 8'b00111100; //  **** 
		3'o077: data = 8'b00000000; //
		
		//code x08 7
		3'o100: data = 8'b00000000; //
		3'o101: data = 8'b01111110; // ******
		3'o102: data = 8'b00000010; //      *
		3'o103: data = 8'b00000100; //     *
		3'o104: data = 8'b00001000; //    *  
		3'o105: data = 8'b00010000; //   *
		3'o106: data = 8'b00100000; //  *
		3'o107: data = 8'b00000000; //
		
		//code x09 8
		3'o110: data = 8'b00000000; //
		3'o111: data = 8'b00111100; //  ****
		3'o112: data = 8'b01000010; // *    *
		3'o113: data = 8'b00111100; //  ****
		3'o114: data = 8'b01000010; // *    *
		3'o115: data = 8'b01000010; // *    *
		3'o116: data = 8'b00111100; //  ****
		3'o117: data = 8'b00000000; //
		
		//code x10 9
		3'o120: data = 8'b00000000; //
		3'o121: data = 8'b00111100; //  ****
		3'o122: data = 8'b01000010; // *    *
		3'o123: data = 8'b01000010; // *    *
		3'o124: data = 8'b00111100; //  ****
		3'o125: data = 8'b00001000; //    *
		3'o126: data = 8'b00010000; //   *
		3'o127: data = 8'b00000000; //
		
		//code x11 A
		3'o130: data = 8'b00000000; //
		3'o131: data = 8'b00011100; //   ***
		3'o132: data = 8'b00100010; //  *   *
		3'o133: data = 8'b01000001; // *     *
		3'o134: data = 8'b01111111; // *******
		3'o135: data = 8'b01000001; // *     *
		3'o136: data = 8'b01000001; // *     *
		3'o137: data = 8'b00000000; //
		
		//code x12 I
		3'o140: data = 8'b00000000; //
		3'o141: data = 8'b01111111; // *******
		3'o142: data = 8'b00001000; //    *
		3'o143: data = 8'b00001000; //    *
		3'o144: data = 8'b00001000; //    *
		3'o145: data = 8'b00001000; //    *
		3'o146: data = 8'b01111111; // *******
		3'o147: data = 8'b00000000; //
		
		//code x13 L
		3'o150: data = 8'b00000000; //
		3'o151: data = 8'b01000000; // *
		3'o152: data = 8'b01000000; // *
		3'o153: data = 8'b01000000; // *
		3'o154: data = 8'b01000000; // *
		3'o155: data = 8'b01000000; // *
		3'o156: data = 8'b01111111; // *******
		3'o157: data = 8'b00000000; //
		
		//code x14 M
		3'o160: data = 8'b00000000; //
		3'o161: data = 8'b01000001; // *     *
		3'o162: data = 8'b01010101; // * * * * 
		3'o163: data = 8'b01001001; // *  *  *
		3'o164: data = 8'b01000001; // *     *
		3'o165: data = 8'b01000001; // *     *
		3'o166: data = 8'b01000001; // *     *
		3'o167: data = 8'b00000000; //
		
		//code x15 N
		3'o170: data = 8'b00000000; //
		3'o171: data = 8'b01000001; // *     *
		3'o172: data = 8'b01100001; // **    *
		3'o173: data = 8'b01010001; // * *   *
		3'o174: data = 8'b01001001; // *  *  *
		3'o175: data = 8'b01000101; // *   * *
		3'o176: data = 8'b01000001; // *     *
		3'o177: data = 8'b00000000; //
		
		//code x16 O
		3'o200: data = 8'b00000000; //
		3'o201: data = 8'b00111110; //  *****
		3'o202: data = 8'b01000001; // *     *
		3'o203: data = 8'b01000001; // *     *
		3'o204: data = 8'b01000001; // *     *
		3'o205: data = 8'b01000001; // *     *
		3'o206: data = 8'b00111110; //  *****
		3'o207: data = 8'b00000000; //
		
		//code x17 R
		3'o210: data = 8'b00000000; //
		3'o211: data = 8'b01111110; // ******
		3'o212: data = 8'b01000001; // *     *
		3'o213: data = 8'b01111110; // ******
		3'o214: data = 8'b01000100; // *   *
		3'o215: data = 8'b01000010; // *    *
		3'o216: data = 8'b01000001; // *     *
		3'o217: data = 8'b00000000; //

		//code x18 S
		3'o220: data = 8'b00000000; //
		3'o221: data = 8'b00111110; //  *****
		3'o222: data = 8'b01000000; // *     
		3'o223: data = 8'b00111110; //  *****
		3'o224: data = 8'b00000001; //       *
		3'o225: data = 8'b01000001; // *     *
		3'o226: data = 8'b00111110; //  *****
		3'o227: data = 8'b00000000; //
		
		//code x19 T
		3'o230: data = 8'b00000000; // *******
		3'o231: data = 8'b01111111; //    *
		3'o232: data = 8'b00001000; //    *
		3'o233: data = 8'b00001000; //    *
		3'o234: data = 8'b00001000; //    *
		3'o235: data = 8'b00001000; //    *
		3'o236: data = 8'b00001000; //    *
		3'o237: data = 8'b00000000; //
		
		//code x20 U
		3'o240: data = 8'b00000000; //
		3'o241: data = 8'b01000001; // *     *
		3'o242: data = 8'b01000001; // *     *
		3'o243: data = 8'b01000001; // *     *
		3'o244: data = 8'b01000001; // *     *
		3'o245: data = 8'b01000001; // *     *
		3'o246: data = 8'b00111110; //  *****
		3'o247: data = 8'b00000000; //
		
		//code x21 V
		3'o250: data = 8'b00000000; //
		3'o251: data = 8'b01000001; // *     * 
		3'o252: data = 8'b01000001; // *     *
		3'o253: data = 8'b01000001; // *     *
		3'o254: data = 8'b00100010; //  *   *
		3'o255: data = 8'b00010100; //   * *
		3'o256: data = 8'b00001000; //    *
		3'o257: data = 8'b00000000; //
		
		//code x22 X
		3'o260: data = 8'b00000000; // 
		3'o261: data = 8'b01000001; // *     *
		3'o262: data = 8'b00100010; //  *   *
		3'o263: data = 8'b00001000; //    *
		3'o264: data = 8'b00010100; //   * *
		3'o265: data = 8'b00100010; //  *   * 
		3'o266: data = 8'b01000001; // *     *
		3'o267: data = 8'b00000000; //
		
		//code x23 ok
		3'o270: data = 8'b00000000; // 
		3'o271: data = 8'b00000001; //       *
		3'o272: data = 8'b00000001; //       *
		3'o273: data = 8'b00000010; //      *
		3'o274: data = 8'b01000100; // *   *
		3'o275: data = 8'b00101000; //  * * 
		3'o276: data = 8'b00010000; //   *
		3'o277: data = 8'b00000000; //
		
		//code x24 ?
		3'o300: data = 8'b00000000; // 
		3'o301: data = 8'b00111110; //  *****
		3'o302: data = 8'b01000001; // *     *
		3'o303: data = 8'b00000010; //      *
		3'o304: data = 8'b00010000; //    *
		3'o305: data = 8'b00000000; //   
		3'o306: data = 8'b00001000; //    *
		3'o307: data = 8'b00000000; //
				
		//code x25 :
		3'o310: data = 8'b00000000; // 
		3'o311: data = 8'b00000000; // 
		3'o312: data = 8'b00000000; // 
		3'o313: data = 8'b00010000; //    *
		3'o314: data = 8'b00000000; //    
		3'o315: data = 8'b00000000; //    
		3'o316: data = 8'b00010000; //    *
 		3'o317: data = 8'b00000000; //
		
		//code x26 :
		3'o320: data = 8'b00000000; // 
		3'o321: data = 8'b01111111; // *******
		3'o322: data = 8'b01000000; // * 
		3'o323: data = 8'b01111000; // ****   
		3'o324: data = 8'b01000000; // *  
		3'o325: data = 8'b01000000; // *
		3'o326: data = 8'b01111111; // *******  
		3'o327: data = 8'b00000000; //
		
		//code x27 :
		3'o330: data = 8'b00000000; // 
		3'o331: data = 8'b01111100; // *****
		3'o332: data = 8'b01000010; // *    *
		3'o333: data = 8'b01000001; // *     *
		3'o334: data = 8'b01000001; // *     *
		3'o335: data = 8'b01000010; // *    *
		3'o336: data = 8'b01111100; // *****  
		3'o337: data = 8'b00000000; //
		
		//code x28 :
		3'o340: data = 8'b00000000; // 
		3'o341: data = 8'b01000001; // *     *
		3'o342: data = 8'b00100010; //  *   *
		3'o343: data = 8'b00010100; //   * *
		3'o344: data = 8'b00001000; //    *
		3'o345: data = 8'b00001000; //    *
		3'o346: data = 8'b00001000; //    *
		3'o347: data = 8'b00000000; 
		
		endcase
endmodule 