`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/26 01:07:56
// Design Name: 
// Module Name: LED_TOP
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
`define VIVADO

module LED_TOP(
    input           i_clk   ,
    output [1:0]    o_led
);

wire                w_clk_locked      ;
wire                w_clk_10MHz       ;

`ifdef VIVADO
CLK_PLL CLK_PLL_U0
(
    .clk_in1        (i_clk           ),
    .locked         (w_clk_locked    ),   
    .clk_out1       (w_clk_10MHz     )   
);   

`endif 


LED_Drive#(      
    .P_LED_NUM      (2               ),  // LED灯个数
    .P_LED_CNT      (1000            ),  // LED翻转时间，单位：ms
    .P_LED_ON       (1               )   // LED点亮电平：1高电平；0：低电平
)      
LED_Drive_U0      
(      
    .i_clk          (w_clk_10MHz     ),
    .i_rst          (~w_clk_locked   ),
    .o_led          (o_led           )
);





endmodule
