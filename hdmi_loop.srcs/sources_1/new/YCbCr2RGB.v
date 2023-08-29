//**************************************************************************
// *** file name      : YCbCr2RGB.v
// *** version        : 1.0
// *** Description    : YCbCr2RGB
// *** Blogs          : https://www.cnblogs.com/WenGalois123/
// *** Author         : Galois_V
// *** Date           : 2019.3.15
// *** Changes        : Initial
//**************************************************************************
`timescale    1ns/1ps
module YCbCr2RGB
(
    input                             i_sys_clk           ,
    input                             i_convert_en        ,
    input            [7:0]            i_y_data            ,
    input            [7:0]            i_cr_data           ,
    input            [7:0]            i_cb_data           ,
    output    reg    [7:0]            o_red               ,
    output    reg    [7:0]            o_green             ,
    output    reg    [7:0]            o_blue
);
reg            [7:0]             r_y_data         ;
reg            [7:0]             r_cb_data        ;
reg            [7:0]             r_cr_data        ;
reg            [17:0]            r_r_ypart        ;
reg            [17:0]            r_r_crpart       ;
reg            [17:0]            r_g_ypart        ;
reg            [17:0]            r_g_crpart       ;
reg            [17:0]            r_g_cbpart       ;
reg            [17:0]            r_b_ypart        ;
reg            [17:0]            r_b_cbpart       ;
reg            [20:0]            r_r_sum          ;
reg            [20:0]            r_g_sum          ;
reg            [20:0]            r_b_sum          ;

always@(posedge i_sys_clk)
begin
    if(i_convert_en)
    begin
        r_y_data  <= i_y_data;
        r_cr_data <= i_cr_data;
        r_cb_data <= i_cb_data;
    end
end
/******************************************************************************\
calculate R = 1.164*(Y-16) + 1.596*(Cr-128) ;all data shift left ten places
\******************************************************************************/
always@(posedge i_sys_clk)
begin
    if(i_convert_en)
    begin
        r_r_ypart  <= 10'd168 * i_y_data;      //0.164*1024 = 168
        r_r_crpart <= 10'd610 * i_cr_data;     //0.594*1024 = 610
        r_r_sum    <= ((r_y_data + r_cr_data)<<10) + r_r_ypart + r_r_crpart - 228262;
    end
end
/******************************************************************************\
calculate G = 1.164*(Y-16) - 0.813*(Cr-128) - 0.392*(Cb-128)
\******************************************************************************/
always@(posedge i_sys_clk)
begin
    if(i_convert_en)
    begin
        r_g_ypart  <= 10'd168 * i_y_data;      //0.164*1024 = 168
        r_g_crpart <= 10'd832 * i_cr_data;     //0.813*1024 = 832
        r_g_cbpart <= 10'd401 * i_cb_data;     //0.392*1024 = 401
        r_g_sum    <= (r_y_data << 10) + r_g_ypart - r_g_crpart - r_g_cbpart + 138740;
    end
end
/******************************************************************************\
calculate B = 1.164*(Y-16) + 2.017*(Cb-128)
\******************************************************************************/
always@(posedge i_sys_clk)
begin
    if(i_convert_en)
    begin
        r_b_ypart  <= 10'd168 * i_y_data;      //0.164*1024 = 168
        r_b_cbpart <= 10'd17  * i_cb_data;     //0.017*1024 = 17
        r_b_sum    <= (r_y_data <<10) + (r_cb_data << 11) + r_b_ypart + r_b_cbpart - 283574;
    end
end
/******************************************************************************\
output R
\******************************************************************************/
always@(posedge i_sys_clk)
begin
    if(i_convert_en)
    begin
        if(r_r_sum[20])
        begin
            o_red <= 'd0;
        end
        else if(r_r_sum[19:10]>255)
        begin
            o_red <= 8'hff;
        end
        else
        begin
            o_red <= r_r_sum[17:10];
        end
    end
end
/******************************************************************************\
output G
\******************************************************************************/
always@(posedge i_sys_clk)
begin
    if(i_convert_en)
    begin
        if(r_g_sum[20])
        begin
            o_green <= 'd0;
        end
        else if(r_g_sum[19:10]>255)
        begin
            o_green <= 8'hff;
        end
        else
        begin
            o_green <= r_g_sum[17:10];
        end
    end
end
/******************************************************************************\
output B
\******************************************************************************/
always@(posedge i_sys_clk)
begin
    if(i_convert_en)
    begin
        if(r_b_sum[20])
        begin
            o_blue <= 'd0;
        end
        else if(r_b_sum[19:10]>255)
        begin
            o_blue <= 8'hff;
        end
        else
        begin
            o_blue <= r_b_sum[17:10];
        end
    end
end

endmodule