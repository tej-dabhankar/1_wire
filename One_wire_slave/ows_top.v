`include "ows_header.vh"
module ows_top(
	input clk,

    input data_in,
    output data_out,
    output data_out_oe,
  
    output led
    );

    assign led =1;
    
    /* wire */
    wire w_start_flag;
    wire w_write;
    wire [7:0] w_data;
    wire [7:0] w_ROM_cmd;
    wire [7:0] w_FUN_cmd;
    wire [63:0] w_UID_dt;
    wire [15:0] w_address;
    wire [7:0] w_wr_data;
    wire w_write_ctrl;
    wire w_crc_zero;
    
 
    ows_rd_interface  ows_rdintr(
        .clk(clk),
        .data_in(data_in),
        .stop_flg(w_stop_flag),
        
        .start_flag(w_start_flag),
        .data(w_data),
        .write(w_write)
	);
    
    ows_data_select ows_ds(
		.clk(clk),
		.data(w_data),
        .write(w_write),
        .start_flg(w_start_flag),

		.ROM_cmd (w_ROM_cmd),
		.FUN_cmd (w_FUN_cmd),
		.UID_dt(w_UID_dt),
		.address(w_address),
		.wr_data(w_wr_data),
 		.write_ctrl(w_write_ctrl)
    );
    
    ows_dt_ctrl  ows_dtctrl(
		.clk(clk),
		.write_ctrl(w_write_ctrl),
		.start_flag(w_start_flag),
        .ROM_cmd(w_ROM_cmd),
       	.FUN_cmd(w_FUN_cmd),
        .address(w_address),
        .UID(w_UID_dt),
        .wr_data(w_wr_data),
		.crc_zero(w_crc_zero),

		.snd_prsnc(w_snd_prsnc),
		.stop_flg(w_stop_flag)
    );
    
    osw_dt_shifter ows_dtshft(
        
        .clk(clk),
        // input from the data ctrl 
        .data_valid(w_data_valid),
        .UID_Data(w_UID_dt),
        
        // signal to the CRC+
        .start_crc(w_start_crc),
        .data_stream(w_data_strem)
    );
    
    ows_crc owscrc(
    /* Clock Signals */
    .clk(clk),
    
    /* Input data stream and control signals */
    .start_crc(w_start_crc),
    .data_stream(w_data_strem),
    
    /* Output Computed CRC and control signals */
    .crc_data(w_crc_data),
    .crc_valid(w_crc_valid),
    .crc_zero(w_crc_zero)
    
    );
    
    ows_wr_interface ows_wrinterface(
       
    .clk(clk),
	.snd_prsnc(w_snd_prsnc),
    .stop_flg(w_stop_flag),
	
	.data_out(data_out),
	.data_out_oe(data_out_oe)
);

endmodule