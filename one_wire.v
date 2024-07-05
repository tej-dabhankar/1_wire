module one_wire (
    input clk,
    input i_rx_serial,
    
    /* one wire */
    input ow_in,
    output ow_out,
    output ow_oe,
    output led
    );
    
    assign led =1;
    
    /*parameter declaration*/
    parameter UID_SERIAL_DATA_WIDTH = 56;
    parameter UID_DATA_WIDTH = 64;
    parameter CLKS_PER_BIT=435;
    parameter FIFO_WIDTH = 8;
    
    /*wire declaration*/
    
    
    // uart to fifo
    wire w_rx_dv;
    wire [7:0] w_rx_byte;
    
    //fifo signals.
    wire w_fifo_rd_en;
    wire w_fifo_empty;
    wire [7:0] w_fifo_rd_data;
    
    // data control wires
    wire w_data_valid;
    wire [55:0] w_UID_Data;
    wire w_read_match;
    wire w_read_write;
    wire [7:0] w_ROM_command;
    wire w_crc_valid;
    wire [5:0] w_data_length;
    wire[7:0] w_Fun_cmd;
    wire[15:0] w_address;
    wire[6:0] w_data_address;
    wire [7:0] w_write_data;
    wire w_write;
    
    wire w_start_crc;
    wire w_data_stream;
   
    wire [7:0] w_crc_data;
    
    wire [5:0] w_read_address; 
    wire w_read_enable;
    wire [7:0] w_data_out;
    wire w_data_dv;
   
    
    
        /* Module Instantiations */
        uart_rx #(
            .CLKS_PER_BIT(CLKS_PER_BIT)
        )uartrx(
            .i_Clock        (clk),
            .i_Rx_Serial    (i_rx_serial),
            .o_Rx_DV        (w_rx_dv),
            .o_Rx_Byte      (w_rx_byte)
        );

        one_wire_fifo owm_fifo(
            .wr_clk_i       (clk),
            .rd_clk_i       (clk),
            .wr_en_i        (w_rx_dv),
            .rd_en_i        (w_fifo_rd_en),
            .wdata          (w_rx_byte),
            .rdata          (w_fifo_rd_data),
            .empty_o        (w_fifo_empty)
        );
        one_wire_data_ctrl owm_dt_ctrl(
        
            .clk(clk),
        
        /* fifo signal*/
            .fifo_empty(w_fifo_empty),
            .fifo_read_data(w_fifo_rd_data),
            .fifo_read_enable(w_fifo_rd_en),
        
        /* crc signal signal*/
            .data_valid(w_data_valid),
            .UID_Data(w_UID_Data),
        
        /* Interface signal*/
            .read_match(w_read_match),
            .read_write(w_read_write),
            .ROM_command(w_ROM_command),
            .data_length(w_data_length),
        
            .Fun_cmd(w_Fun_cmd),
            .address(w_address),
            
            /* write data_to bram*/
            .write_data(w_write_data),
            .data_address(w_data_address),
            
            /* output to start the interface */
            .write(w_write)
        );
        
        
        one_wire_shifter #(
        .UID_SERIAL_DATA_WIDTH(UID_SERIAL_DATA_WIDTH)
        ) owm_shifter(
            .clk(clk),
            .data_valid(w_data_valid),
            .UID_Data(w_UID_Data),
            .start_crc(w_start_crc),
            .data_stream(w_data_stream)
        );
  
  
        one_wire_crc owm_crc(
            .clk(clk),
            .start_crc(w_start_crc),
            .data_stream(w_data_stream),
            .crc_data(w_crc_data),
            .crc_valid(w_crc_valid)
        );
        
        one_wire_bram  owbram(
            .clk(clk),
            .write(w_write),
            .write_address(w_data_address),
            .data_in(w_write_data),
            .read_address(w_read_address),
            .read_en(w_read_enable),
            .data_out(w_data_out),
            .data_dv(w_data_dv)
        );
        
        
     one_wire_interface  owm_interface(

    .clk(clk),
    .reset(reset),
    
                  /*INPUT FROM THE DATA CTRL */
    .data_valid(w_data_valid),
    .UID_Data(w_UID_Data),
    .ROM_commad(w_ROM_command),
    .read_match(w_read_match),
    .read_write(w_read_write),
    .Fun_cmd(w_Fun_cmd),
    .address(w_address),
    .data_length(w_data_length),
    .write(w_write),
   
                    /*INPUT FOROM THE CRC*/
    .crc_data(w_crc_data),
    .crc_valid(w_crc_valid),
    
                    /*INPUT FOROM THE BRAM*/
    .write_data(w_data_out),
    .data_dv(w_data_dv),
    .read_enable(w_read_enable),
    .read_address(w_read_address),
    
    .data_in(ow_in),
    .data_out(ow_out), 
    .data_oe(ow_oe)
    );
 
   
    endmodule
            
        
