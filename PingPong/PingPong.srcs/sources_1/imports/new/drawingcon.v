`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.03.2022 00:14:13
// Design Name: 
// Module Name: draw
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


module drawblock(
    input clk,
    input reset,
    input [10:0] blkpos_x,
    input [10:0] blkpos_y,
    input [10:0] curr_x,
    input [10:0] curr_y,
    output [3:0] draw_r,
    output [3:0] draw_g,
    output [3:0] draw_b,
    output [2:0] Winner
    
    );
    //scores
    reg [5:0]LScore = 0;
    reg [5:0]RScore = 0;
    reg [2:0]Winner = 0; // 0  no winner; 1 right wins; 2 left wins;
    // sizes
    // paddle size
    reg paddleWidth = 100; //50
    reg paddleHeight = 250; //200
    //Ball size
    reg ballRadius = 50; //50   
    
    //Ball Settings
    reg [10:0] BallCurr_x = 11'd715;
    reg [10:0] BallCurr_y = 11'd400;
    // previous pos
    reg [10:0] BallPrev_x = 11'd505;
    reg [10:0] BallPrev_y = 11'd400;
    // opp pos
    reg [10:0] OppPosX = 11'd1200;
    reg [10:0] OppPosY = 11'd400;
    // direction to move in
    reg [1:0] moveUP = 0; 
    reg [1:0] moveDOWN = 0; 
    reg [1:0] moveLEFT = 0; 
    reg [1:0] moveRIGHT = 0;
    
    reg CollisionOccur = 0;
    reg [4:0]MovTemp = 10; 
    reg [21:0] pongClk = 0;
    
    reg game_clk = 0;
    reg [20:0] clk_div = 0;
   
    reg [30:0]CrazySpinCNT = 0;
    reg CrazyCNT = 0;
    
    
    // segements to display score
   
    
   always@(posedge clk) begin
    if(clk_div == 1666667/2) begin
        clk_div <= 21'd0;
        game_clk <= !game_clk;
        if(MovTemp <6)begin
        MovTemp <= MovTemp + 1;
        end else begin
        MovTemp <= 0;
        end
    end 
    else begin
        clk_div <= clk_div +1;
    end
    
    if(CrazySpinCNT > 1666667*(MovTemp+1)*17)begin
    CrazySpinCNT <= 0;
    CrazyCNT <= !CrazyCNT;
    end else begin 
    CrazySpinCNT <= CrazySpinCNT + 1;
    end
   end
   
   
 
    
    always@(posedge game_clk) begin
    
    //setting collision against walls
    if((BallCurr_y < 11'd10) || (BallCurr_y > 11'd865))begin     
     if(moveUP  == 1) begin
     moveUP  = 0;
     moveDOWN = 1;
     end else if(moveDOWN  == 1) begin
     moveDOWN  = 0;
     moveUP = 1;
     end    
    end else if((BallCurr_x < 11'd10) || (BallCurr_x > 11'd1430))begin 
       if(BallCurr_x < 11'd10) begin
       LScore <= LScore + 1;
       BallCurr_x = 11'd715;
       BallCurr_y = 11'd400;
       end
       if(BallCurr_x > 11'd1430) begin
       RScore <= RScore + 1;
       BallCurr_x = 11'd715;
       BallCurr_y = 11'd400;
       end
    if(moveLEFT == 1) begin
     moveLEFT = 0;
     moveRIGHT = 1;
     end else if(moveRIGHT  == 1) begin
     moveRIGHT  = 0;
     moveLEFT = 1;
     end
    end else
    // setting collisions against pad    
    if( (BallCurr_x - blkpos_x == 0)&&( (BallCurr_y - blkpos_y < 100)||(-BallCurr_y + OppPosY < 35))
    )begin
    moveLEFT  = 0; moveRIGHT = 1;    
    end else
    // setting collisions against pad    
    if( (-BallCurr_x + blkpos_x == 25) && ((BallCurr_y - blkpos_y < 100)||(-BallCurr_y + OppPosY < 35))
    )begin
    moveLEFT  = 1;  moveRIGHT = 0;
    end else
    // setting collisions against pad    
    if( (BallCurr_x - OppPosX  == 0)&&( (BallCurr_y - OppPosY < 100)||(-BallCurr_y + OppPosY < 35))
    )begin
    moveLEFT  = 0; moveRIGHT = 1;    
    end else
    // setting collisions against pad    
    if( (-BallCurr_x + OppPosX == 25) && ((BallCurr_y - OppPosY < 100)||(-BallCurr_y + OppPosY < 35))
    )begin
    moveLEFT  = 1;  moveRIGHT = 0;
    end else   
    if( (moveDOWN == 1) && (moveUP == 1) )begin
    moveDOWN <= 0;
    end
    
    /*if(CrazyCNT == 1)begin    
    if((moveDOWN == 0) &&(moveUP == 0)) begin
    if (CrazySpinCNT & 2 == 1)begin
    moveDOWN  = 1;
    end else begin moveUP  = 1;
    end
    end
    end*/

    //MovTemp = 5; // here for testing purposes
    // if no movement direction start moving
    if((moveLEFT == 0)&&(moveRIGHT == 0)) begin
    case(MovTemp)
        0:begin
        moveDOWN <= 1;
        moveLEFT <= 1;
        end
        1: begin
        moveUP <= 1;
        moveLEFT <= 1;
        end
        2:begin
        moveDOWN <= 1;
        moveRIGHT  <= 1;
        end
        3:begin
        moveUP <= 1;
        moveRIGHT  <= 1;
        end
        4:begin
        moveRIGHT<=1;
        end
        5:begin 
        moveLEFT <=1;
        end
        default:begin
        
        end
        endcase
    end
    //Updating Old Values
    BallPrev_y <= BallCurr_y;
    BallPrev_x <= BallCurr_x;
    //MOV the Ball
    
    if(moveUP == 1) begin // move UP
    BallCurr_y <= BallCurr_y - 1;
    end
    if(moveDOWN == 1) begin // move DOWN
    BallCurr_y <= BallCurr_y + 1;
    end
    if(moveRIGHT == 1) begin // move RIGHT
    BallCurr_x <= BallCurr_x + 1;
    end
    if(moveLEFT == 1) begin // move LEFT
    BallCurr_x <= BallCurr_x - 1;
    end 
    if(reset == 1)begin
    BallCurr_x <= 11'd715;
    BallCurr_y <= 11'd400;
    OppPosY  <= 11'd400;
    LScore <= 0; RScore <= 0;
    moveUP = 0; moveDOWN = 0; moveLEFT = 0; moveRIGHT = 0;
    Winner = 0;
    end
    
    if(Winner == 0)begin
    if(LScore > 9) begin Winner = 1;end
    if(RScore > 9) begin Winner = 2;end    
    end
    
    if(CrazySpinCNT % 3  != 0) begin
    if(BallCurr_y < OppPosY )begin
    OppPosY <= OppPosY - 1;
    end else if (BallCurr_y > OppPosY ) begin
    OppPosY <= OppPosY + 1;
    end
    end else begin
    OppPosY <= OppPosY;
    end
    
    
    end
    
    
    
    
    //drawcon
    
    //initializing colors for individual elements
    reg [3:0] bg_r,bg_g,bg_b = 0;
    reg [3:0] blk_r,blk_g,blk_b = 0;
    //segemnts
    //boolean a = ( 168 < curr_y) && ( curr_y < 188) && ( 133 < curr_x) && (curr_x < 153);
    reg aSeg0 = 1,bSeg0 = 1,cSeg0 = 1,dSeg0 = 1,eSeg0 = 1,fSeg0 = 1,gSeg0 = 1;
    reg aSeg1 = 1,bSeg1 = 1,cSeg1 = 1,dSeg1 = 1,eSeg1 = 1,fSeg1 = 1,gSeg1 = 1;
    
   
   
   
    
    
    

    // background colour
    always@(posedge clk) begin
    //aSegment                                                                                                                                                                                                                        
    if( (RScore==0)|| (RScore==2)|| (RScore==3)|| (RScore==5)|| (RScore==6)|| (RScore==7)|| (RScore==8)|| (RScore==9)) begin                                                                                                          
    aSeg1=1;                                                                                                                                                                                                                          
    end else begin aSeg1=0;                                                                                                                                                                                                           
    end                                                                                                                                                                                                                               
    if( (LScore==0)|| (LScore==2)|| (LScore==3)|| (LScore==5)|| (LScore==6)|| (LScore==7)|| (LScore==8)|| (LScore==9)) begin                                                                                                          
    aSeg0=1;                                                                                                                                                                                                                          
    end else begin aSeg0=0;                                                                                                                                                                                                           
    end                                                                                                                                                                                                                               
    //bSegment                                                                                                                                                                                                                        
    if( (RScore==0)|| (RScore==1)|| (RScore==2)|| (RScore==3)|| (RScore==4)|| (RScore==7)|| (RScore==8)|| (RScore==9)) begin                                                                                                          
    bSeg1=1;                                                                                                                                                                                                                          
    end else begin bSeg1=0;                                                                                                                                                                                                           
    end                                                                                                                                                                                                                               
    if( (LScore==0)|| (LScore==1)|| (LScore==2)|| (LScore==3)|| (LScore==4)|| (LScore==7)|| (LScore==8)|| (LScore==9) )begin                                                                                                          
    bSeg0=1;                                                                                                                                                                                                                          
    end else begin bSeg0=0;                                                                                                                                                                                                           
    end                                                                                                                                                                                                                               
    //cSegment                                                                                                                                                                                                                        
    if( (RScore==0)|| (RScore==1)|| (RScore==3)|| (RScore==4)|| (RScore==5)|| (RScore==6)|| (RScore==7)|| (RScore==8)|| (RScore==9)) begin                                                                                            
    cSeg1=1;                                                                                                                                                                                                                          
    end else begin cSeg1=0;                                                                                                                                                                                                           
    end                                                                                                                                                                                                                               
    if( (LScore==0)|| (LScore==1)|| (LScore==3)|| (LScore==4)|| (LScore==5)|| (LScore==6)|| (LScore==7)|| (LScore==8)|| (LScore==9)) begin                                                                                            
    cSeg0=1;                                                                                                                                                                                                                          
    end else begin cSeg0=0;                                                                                                                                                                                                           
    end                                                                                                                                                                                                                               
    //dSegment                                                                                                                                                                                                                        
    if( (RScore==0)|| (RScore==2)|| (RScore==3)|| (RScore==5)|| (RScore==6)|| (RScore==8)) begin                                                                                                                                      
    dSeg1=1;                                                                                                                                                                                                                          
    end else begin dSeg1=0;                                                                                                                                                                                                           
    end                                                                                                                                                                                                                               
    if( (LScore==0)|| (LScore==2)|| (LScore==3)|| (LScore==5)|| (LScore==6)|| (LScore==8)) begin                                                                                                                                      
    dSeg0=1;                                                                                                                                                                                                                          
    end else begin dSeg0=0;                                                                                                                                                                                                           
    end                                                                                                                                                                                                                               
    //eSegment                                                                                                                                                                                                                        
    if( (RScore==0)|| (RScore==2)|| (RScore==6)|| (RScore==8)) begin                                                                                                                                                                  
    eSeg1=1;                                                                                                                                                                                                                          
    end else begin eSeg1=0;                                                                                                                                                                                                           
    end                                                                                                                                                                                                                               
    if( (LScore==0)|| (LScore==2)|| (LScore==6)|| (LScore==8)) begin                                                                                                                                                                  
    eSeg0=1;                                                                                                                                                                                                                          
    end else begin eSeg0=0;                                                                                                                                                                                                           
    end                                                                                                                                                                                                                               
    //fSegment                                                                                                                                                                                                                        
    if( (RScore==0)|| (RScore==4)|| (RScore==5)|| (RScore==6)|| (RScore==8)|| (RScore==9)) begin                                                                                                                                      
    fSeg1=1;                                                                                                                                                                                                                          
    end else begin fSeg1=0;                                                                                                                                                                                                           
    end                                                                                                                                                                                                                               
    if( (LScore==0)|| (LScore==4)|| (LScore==5)|| (LScore==6)|| (LScore==8)|| (LScore==9)) begin                                                                                                                                      
    fSeg0=1;                                                                                                                                                                                                                          
    end else begin fSeg0=0;                                                                                                                                                                                                           
    end                                                                                                                                                                                                                               
    //gSegment                                                                                                                                                                                                                        
    if( (RScore==2)|| (RScore==3)|| (RScore==4)|| (RScore==5)|| (RScore==6)|| (RScore==7)|| (RScore==8)|| (RScore==9)) begin                                                                                                          
    gSeg1=1;                                                                                                                                                                                                                          
    end else begin gSeg1=0;                                                                                                                                                                                                           
    end                                                                                                                                                                                                                               
    if( (LScore==2)|| (LScore==3)|| (LScore==4)|| (LScore==5)|| (LScore==6)|| (LScore==7)|| (LScore==8)|| (LScore==9)) begin                                                                                                          
    gSeg0=1;                                                                                                                                                                                                                          
    end else begin gSeg0=0;                                                                                                                                                                                                           
    end 
    
                                     
        if((curr_x < 11'd10) || (curr_x > 11'd1430) || (curr_y < 11'd10) || (curr_y > 11'd890)) begin
            bg_r <= 4'b0011;
            bg_g <= 4'b1111;
            bg_b <= 4'b0011;
            end else if(
            // left side
            ((aSeg0 == 1) && (( 168 < curr_y) && ( curr_y < 188) && ( 143 < curr_x) && (curr_x < 572))) ||//done
            ((bSeg0 == 1) && (( 178 < curr_y) && ( curr_y < 445) && ( 562 < curr_x) && (curr_x < 582))) ||//done
            ((cSeg0 == 1) && (( 445 < curr_y) && ( curr_y < 712) && ( 562 < curr_x) && (curr_x < 582))) ||//done
            ((dSeg0 == 1) && (( 702 < curr_y) && ( curr_y < 722) && ( 143 < curr_x) && (curr_x < 572))) ||//done
            ((eSeg0 == 1) && (( 445 < curr_y) && ( curr_y < 712) && ( 133 < curr_x) && (curr_x < 153))) ||
            ((fSeg0 == 1) && (( 178 < curr_y) && ( curr_y < 445) && ( 133 < curr_x) && (curr_x < 153))) ||//done
            ((gSeg0 == 1) && (( 435 < curr_y) && ( curr_y < 455) && ( 143 < curr_x) && (curr_x < 572))) ||//done
            //right side
            ((aSeg1 == 1) && (( 168 < curr_y) && ( curr_y < 188) && ( 143 + 715 < curr_x) && (curr_x < 572+ 715))) ||//done
            ((bSeg1 == 1) && (( 178 < curr_y) && ( curr_y < 445) && ( 562 + 715 < curr_x) && (curr_x < 582+ 715))) ||//done
            ((cSeg1 == 1) && (( 445 < curr_y) && ( curr_y < 712) && ( 562 + 715 < curr_x) && (curr_x < 582+ 715))) ||//done
            ((dSeg1 == 1) && (( 702 < curr_y) && ( curr_y < 722) && ( 143 + 715 < curr_x) && (curr_x < 572+ 715))) ||//done
            ((eSeg1 == 1) && (( 445 < curr_y) && ( curr_y < 712) && ( 133 + 715 < curr_x) && (curr_x < 153+ 715))) ||
            ((fSeg1 == 1) && (( 178 < curr_y) && ( curr_y < 445) && ( 133 + 715 < curr_x) && (curr_x < 153+ 715))) ||//done
            ((gSeg1 == 1) && (( 435 < curr_y) && ( curr_y < 455) && ( 143 + 715 < curr_x) && (curr_x < 572+ 715))) ||//done
            // the colon
            (( 202 < curr_y) && ( curr_y < 242) && (695 < curr_x) && (curr_x < 735)) ||
            (( 648 < curr_y) && ( curr_y < 688) && (695 < curr_x) && (curr_x < 735))
            )begin
            bg_r <= 4'b0011;
            bg_g <= 4'b0000;
            bg_b <= 4'b0011;            
        end else begin
            bg_r <= 4'b0000;
            bg_g <= 4'b0000;
            bg_b <= 4'b0000;
        end
        
    end

     //box
    always@* begin
        if((curr_x-blkpos_x< 25 )&&(-curr_x+blkpos_x>=25)&&(curr_y-blkpos_y<100)&&(-curr_y+blkpos_y>=100) )//Board
        begin
        blk_r <= 4'b1111;
        blk_g <= 4'b0000;
        blk_b <= 4'b1111;  
        end else if((curr_x-OppPosX < 25 )&&(-curr_x+OppPosX>=25)&&(curr_y-OppPosY<100)&&(-curr_y+OppPosY>=100) )//Board
        begin
        blk_r <= 4'b1111;
        blk_g <= 4'b0000;
        blk_b <= 4'b1111;
        end else if((curr_x-BallCurr_x <25)&&(-curr_x+BallCurr_x >=25)&&(curr_y-BallCurr_y <25)&&(-curr_y+BallCurr_y >=25)) //Ball
        begin
        blk_r <= 4'b1111;
        blk_g <= 4'b1111;
        blk_b <= 4'b1111;
        end else begin
            blk_r <= 4'b0000;
            blk_g <= 4'b0000;
            blk_b <= 4'b0000;
        end
        end

        
//assigning final color in priority order of elements
    assign draw_r = (blk_r != 4'b0000) ? blk_r : bg_r;
    assign draw_g = (blk_g != 4'b0000) ? blk_g : bg_g;
    assign draw_b = (blk_b != 4'b0000) ? blk_b : bg_b;  

endmodule
