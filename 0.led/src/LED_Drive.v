`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/26 01:07:56
// Design Name: 
// Module Name: LED_Drive
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


module LED_Drive#(
    parameter                       P_LED_NUM      = 1      ,  // LED灯个数
    parameter                       P_LED_CNT      = 1000   ,  // LED翻转时间，单位：ms
    parameter                       P_LED_ON       = 1         // LED点亮电平：1高电平；0：低电平
)(
    input                           i_clk                   ,  // 10MHz
    input                           i_rst                   ,
    output  [P_LED_NUM - 1 : 0]     o_led
);

/***************function**************/

/***************parameter*************/

/***************port******************/             

/***************mechine***************/

/***************reg*******************/
reg [P_LED_NUM - 1: 0]      ro_led      ;  // led输出寄存器
reg [15:0]                  r_cnt       ;  

/***************wire******************/
wire                        w_clk_1kHz  ;

/***************component*************/
CLK_DIV_module#(
    .P_CLK_DIV_CNT      (10000         )  // 输入时钟分频，2~65535
)
CLK_DIV_module_U0
(
    .i_clk              (i_clk         ) ,  // 输入时钟
    .i_rst              (i_rst         ) ,  // 复位信号
    .o_clk_div          (w_clk_1kHz    )    // 分频后的信号
);

/***************assign****************/
assign  o_led = ro_led                  ;  //将引脚绑定在输出寄存器上

/***************always****************/
always @(posedge w_clk_1kHz, posedge i_rst)
begin
    if(i_rst)
        r_cnt <= 'd0;
    else if(r_cnt == (P_LED_CNT - 1))
        r_cnt <= 'd0;
    else
        r_cnt <= r_cnt + 1;
end

always @(posedge w_clk_1kHz, posedge i_rst)
begin
    if(i_rst)
        ro_led <= 'd0;
    else if(r_cnt == (P_LED_CNT - 1))
        ro_led <= ~ro_led;
    else
        ro_led <= ro_led;
end


endmodule
