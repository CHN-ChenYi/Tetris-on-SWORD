`timescale 1ns / 1ps

module GameOverChecker(
         input wire [4:0] pos_y, // anchor point position
         input wire [0:15] float, // float blocks' status
         output wire game_over // 1 for game over
       );

assign game_over = ((float[0] | float[1] | float[2] | float[3]) & (pos_y >= 23)) ||
       ((float[4] | float[5] | float[6] | float[7]) & (pos_y >= 22)) ||
       ((float[8] | float[9] | float[10]| float[11]) & (pos_y >= 21)) ||
       ((float[12] | float[13] | float[14] | float[15]) & (pos_y >= 20));

endmodule
