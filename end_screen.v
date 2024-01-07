`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/12/2022 04:51:13 PM
// Design Name: 
// Module Name: end_screen
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

// f1( clk_d,  x_loc, y_loc, video_on, coll , red, green, blue)
module end_screen(
      input clk_d, 
    input [9:0] x, 
    input [9:0] y, 
    input video_on, 
    input collision,
    output reg [3:0] red = 0, 
    output reg [3:0] green = 0, 
    output reg [3:0] blue = 0 
    ); 
    
    always @(posedge clk_d) begin 
    
//   for G

            if ((x > 600)|| (x < 40) || (y > 440) || (y <40))
            begin
            red <= 4'h0;    
            green <= 4'h1;    
            blue <= 4'h0;    
            end

   else if (
     
       ( x>=119 && x<=210 && y>=130 && y<=150 ) ||
        ( x>=119 && x<=139 && y>=130 && y<=230 )||
       ( x>=119 && x<=210 && y>=210 && y<=230 )||
       ( x>=190 && x<=210 && y>=160 && y<=230 )||
        ( x>=169 && x<=210 && y>=160 && y<=180 )|| 
        
               ( x>=219 && x<=310 && y>=130 && y<=150 )||
        ( x>=219 && x<=239 && y>=130 && y<=230 )||
        ( x>=290 && x<=310 && y>=130 && y<=230 )||
       ( x>=219 && x<=310 && y>=170 && y<=190 )||
       
               ( x>=319 && x<=410 && y>=130 && y<=150 )||
        ( x>=319 && x<=339 && y>=130 && y<=230 )||
       ( x>=354 && x<=374 && y>=130 && y<=180 )||
       ( x>=390 && x<=410 && y>=130 && y<=230 )||
       
              ( x>=419 && x<=510 && y>=130 && y<=150 )||
       ( x>=419 && x<=439 && y>=130 && y<=230 )||
       ( x>=419 && x<=469 && y>=170 && y<=190 )||
       ( x>=419 && x<=510 && y>=210 && y<=230 )||
       
              ( x>=119 && x<=210 && y>=250 && y<=270 )||
       ( x>=119 && x<=139 && y>=250 && y<=350 )||
        ( x>=119 && x<=169 && y>=290 && y<=310 )||
       ( x>=119 && x<=210 && y>=330 && y<=350 )||
       
              ( x>=219 && x<=310 && y>=250 && y<=270 ) ||
       ( x>=219 && x<=239 && y>=250 && y<=350 ) ||
       ( x>=290 && x<=310 && y>=250 && y<=350 )||
       
               ( x>=319 && x<=410 && y>=250 && y<=270 ) ||
       ( x>=319 && x<=339 && y>=250 && y<=350 ) ||
       ( x>=319 && x<=410 && y>=320 && y<=350 )||
        ( x>=390 && x<=410 && y>=250 && y<=350 )          
        
   )
   begin 
    red <= 4'hF;    
    green <= 4'h0;    
    blue <= 4'hF; 
   end
   
           else
            begin
                red <= 4'hF; 
                blue <= 4'hF; 
                green <= 4'hF; 
            end
   
   
        end 

endmodule
