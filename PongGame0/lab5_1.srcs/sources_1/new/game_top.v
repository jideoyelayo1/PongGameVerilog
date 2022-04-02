`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.03.2022 16:29:49
// Design Name: 
// Module Name: game_top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
module game_tp(
    input clk,
    input [4:0] btn,
    output [3:0] pix_r,
    output [3:0] pix_g,
    output [3:0] pix_b,
    output hsync,
    output vsync
    );
    //clock for VGA
   wire pix_clk;
   


 
//holds color input for VGA module
   wire [3:0] draw_r_Sig;
   wire [3:0] draw_g_Sig;
   wire [3:0] draw_b_Sig;
//holds color output from draw logic module
   wire [3:0] draw_r_Sig1;
   wire [3:0] draw_g_Sig1;
   wire [3:0] draw_b_Sig1;
// assigning output of draw logic to wire holding VGA input
   assign draw_r_Sig=draw_r_Sig1;
   assign draw_g_Sig=draw_g_Sig1;
   assign draw_b_Sig=draw_b_Sig1;
   
   wire [10:0] curr_x;
   wire [10:0] curr_y;

 
//clock for VGA 106.47 MHz using IP 
clk_wiz_0 inst(.clk_out1(pix_clk),.clk_in1(clk));
 
//Generating a 60 Hz game clock  
   reg game_clk = 0;
   reg [20:0] clk_div = 0;
   
    
   always@(posedge clk) begin
    //if(clk_div == 1666667) begin
    if(clk_div == 1666667/2) begin
        clk_div <= 21'd0;
        game_clk <= !game_clk;
    end 
    else begin
        clk_div <= clk_div +1;
    end
   end
  
//initializing position of two blocks 
   /*reg [10:0] blkpos_x = 11'd505;
   reg [10:0] blkpos_y = 11'd400;*/
   
   reg [10:0] blkpos_x = 11'd150;
   reg [10:0] blkpos_y = 11'd400;
   reg reset = 0;


       //Buttons that move left square
       always@(posedge game_clk) 
      begin
      if(btn[0] == 1) begin
      blkpos_x = 11'd150;
      blkpos_y = 11'd400;
      reset = 1;
      end else begin
      reset = 0;
      end
      
      if(btn[1] == 1) begin
      if( blkpos_y > 11'd10) begin//up
        blkpos_y <= blkpos_y-1;
        end
      end
      
      if(btn[2] == 1) begin
      if( blkpos_x > 11'd10) begin//left
        blkpos_x <= blkpos_x-1;
        end
      end
      
      if(btn[3] == 1) begin
      if( blkpos_x < 11'd1430) begin // right
        blkpos_x <= blkpos_x+1;
        end
      end
      
      if(btn[4] == 1) begin
      if( blkpos_y < 11'd890) begin//down
        blkpos_y <= blkpos_y+1;
        end
      end      
              
       end
             
             
    //instantiating VGA
    vga_out inst_1 (
        .clk(pix_clk),
        .pix_r_IN(draw_r_Sig),
        .pix_g_IN(draw_g_Sig),
        .pix_b_IN(draw_b_Sig),
        .pix_r(pix_r),
        .pix_g(pix_g),
        .pix_b(pix_b),
        .curr_x(curr_x),
        .curr_y(curr_y),
        .hsync(hsync),
        .vsync(vsync)
     );
     //instantiating draw logic
     drawblock inst_2 (
        .clk(pix_clk),
        .reset(reset),
        .blkpos_x(blkpos_x),
        .blkpos_y(blkpos_y),
        .curr_x(curr_x),
        .curr_y(curr_y),
        .draw_r(draw_r_Sig1),
        .draw_g(draw_g_Sig1),
        .draw_b(draw_b_Sig1),
        .Winner(result)
    );


endmodule
