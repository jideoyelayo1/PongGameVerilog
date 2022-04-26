`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.03.2022 15:51:29
// Design Name: 
// Module Name: vga
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

module vga_out(
    input clk,
    input [3:0] pix_r_IN,
    input [3:0] pix_g_IN,
    input [3:0] pix_b_IN,
    output [3:0] pix_r,
    output [3:0] pix_g,
    output [3:0] pix_b,
    output hsync,
    output vsync,
    output [10:0] curr_x,
    output [10:0] curr_y
    
    );

//initializing pixel counters
    reg [10:0] hcount = 0;
    reg [9:0] vcount = 0;

//initializing reg for pos within display region 
    reg [10:0] curr_x_r, curr_y_r = 0;
// setting line and frame ends    
    wire line_end = (hcount == 11'd1903);
    wire frame_end = (vcount == 10'd931);
 //setting display region   
    assign display_region = ((hcount >= 11'd384) && (hcount <= 11'd1823) && (vcount >= 10'd31) && (vcount <= 10'd930));
//setting sync pulses
    assign hsync = ((hcount >= 11'd0) && (hcount <= 11'd151));
    assign vsync = ((vcount >= 10'd0) && (vcount <= 10'd2));
    
//if not in display egion, output black
    assign pix_r = (display_region) ? pix_r_IN : 4'b0000;
    assign pix_g = (display_region) ? pix_g_IN : 4'b0000;
    assign pix_b = (display_region) ? pix_b_IN : 4'b0000;
   
//setting pixel counters   
    always@(posedge clk) begin
        if(line_end) begin
         begin
            hcount <= 11'd0;
                if(frame_end)begin
                vcount <= 10'd0;
                end
                else begin
                vcount <= vcount + 1;
                end
        end  end
        else begin
            hcount <= hcount + 1;
        end
    end

// curr_x
    always@(posedge clk) begin
        if((hcount >= 11'd384) && (hcount<= 11'd1824)) begin
            curr_x_r <= curr_x_r + 1;
        end else begin
            curr_x_r <= 11'd0;
        end
    end
    
    // curr_y
    always@(posedge clk) begin
        if(line_end) begin
            if((vcount >= 10'd31) && (vcount <= 10'd930)) begin
            curr_y_r <= curr_y_r + 1;
            end 
            else begin
            curr_y_r <= 11'd0;
            end
        end
    end
  
  assign curr_x=curr_x_r;
  assign curr_y=curr_y_r;  

endmodule


