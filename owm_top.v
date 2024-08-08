module OW_phy (
        /* clock input */
    input clk,
    
        /* one wire data pins */
    input data_in,
    output data_out,
    output data_oe,
    
        /* wr_phy_fifo access */
    input                           wr_phy_fifo_empty,
    output                          wr_phy_fifo_en,
    input [PHY_FIFO_WIDTH-1:0]      wr_phy_fifo_data,
    
        /* Config_fifo access */
   // output                          config_fifo_en,
    //input [CONFIG_DATA_WIDTH-1:0]   config_fifo_data,
   // input                           config_fifo_empty
    
        /* rd_phy_fifo access */
    output                          rd_phy_fifo_en,
    output [PHY_FIFO_WIDTH-1:0]     rd_phy_fifo_data
);
    
  
    /* Gloabal parameters */
    parameter PHY_FIFO_WIDTH    = 8;
    parameter CONFIG_DATA_WIDTH = 40;
    
    parameter UID_SERIAL_DATA_WIDTH = 56;
    parameter UID_DATA_WIDTH = 64;
    parameter FIFO_WIDTH = 8;
    parameter ADDRESS_WIDTH = 16;
    
    /*wire declaration*/

    // data control wires
    wire w_data_valid;
    wire [55:0] w_UID_Data;
    wire w_read_match;
    wire w_read_write;
    wire [7:0] w_ROM_command;
    wire w_crc_valid;
    wire [3:0] w_data_length;
    wire[7:0] w_Fun_cmd;
    wire[15:0] w_address;
    wire[5:0] w_data_address;
    wire [7:0] w_write_data;
    wire w_write_bram;
    wire w_write;
    
    wire w_start_crc;
    wire w_data_stream;
   
    wire [7:0] w_crc_data;
    
    wire [5:0] w_read_address; 
    wire w_read_enable;
    wire [7:0] w_data_out;
    wire w_data_dv;
    wire [2:0]  w_read_command;
    wire w_ow_busy;
   
    
        
        /*one wire data control */
        one_wire_data_ctrl owm_dt_ctrl(
            .clk(clk),
            
            
        /* fifo signal*/
            .fifo_empty(wr_phy_fifo_empty),
            .fifo_read_data(wr_phy_fifo_data),
            .fifo_read_enable(wr_phy_fifo_en),
        
        /* crc signal signal*/
            .data_valid(w_data_valid),
            .UID_Data(w_UID_Data),
        
        /* Interface signal*/
            .read_write(w_read_write),
            .ROM_command(w_ROM_command),
            .data_length(w_data_length),
            .read_command(w_read_command),
            .ow_busy(w_ow_busy),

        
            .Fun_cmd(w_Fun_cmd),
            .address(w_address),
            
            /* write data_to bram*/
            .write_data(w_write_data),
            .data_address(w_data_address),
            .write_bram(w_write_bram),
            
            /* output to start the interface */
            .write(w_write)
        );
        
        /* one wire shifter */
       one_wire_shifter #(
            .UID_SERIAL_DATA_WIDTH (UID_SERIAL_DATA_WIDTH),
            .FIFO_WIDTH (FIFO_WIDTH) 
            ) owm_shifter (    
             .clk(clk),
        // input from the data ctrl  
             .data_valid(w_data_valid),
             .UID_Data(w_UID_Data),
        
        // signal to the CRC+
             .start_crc(w_start_crc),
             .data_stream(w_data_stream)
        );
        
        
        /*one wire crc*/
       one_wire_crc #( 
            .UID_SERIAL_DATA_WIDTH (UID_SERIAL_DATA_WIDTH)
       ) owm_crc (

    /* Clock Signals */
             .clk(clk),
    
    /* Input data stream and control signals */
            .start_crc(w_start_crc),
            .data_stream(w_data_stream),
    
    /* Output Computed CRC and control signals */
            .crc_data(w_crc_data),
            .crc_valid(w_crc_valid)
);
     /* one wire bram */
    one_wire_bram owm_bram(
        // input from the cttrl pin
        .clk(clk),
        .write(w_write_bram),
        .write_address(w_data_address),
        .data_in(w_write_data),
      
        // input from the interface for data
        .read_address(w_read_address),
        .read_en(w_read_enable),
        .data_out(w_data_out),
        .data_dv(w_data_dv)

);
     /* one wire interface */
    one_wire_interface #(
        .FIFO_WIDTH(FIFO_WIDTH),
        .UID_SERIAL_DATA_WIDTH(UID_SERIAL_DATA_WIDTH),
        .UID_DATA_WIDTH(UID_DATA_WIDTH),
        .ADDRESS_WIDTH(ADDRESS_WIDTH)
    ) owm_interface (
   
        .clk(clk),                  
               /*input from the Controller */
        .UID_Data(w_UID_Data),
        .ROM_commad(w_ROM_command),
        .read_write(w_read_write),
        .Fun_cmd(w_Fun_cmd),
        .address(w_address),
        .read_command(w_read_command),
        .data_length(w_data_length),
        .write(w_write),
        .ow_busy(w_ow_busy),

        /*INPUT FOROM THE CRC*/
        .crc_data(w_crc_data),
        .crc_valid(w_crc_valid),
        
                /*INPUT FOROM THE BRAM*/
        .write_data(w_data_out),
        .data_dv(w_data_dv),
        .read_enable(w_read_enable),
        .read_address(w_read_address),
        
        .rd_dt_en(rd_phy_fifo_en),
        .read_data(rd_phy_fifo_data),
        
                /* output signals */
        .data_in(data_in),
        .data_out(data_out),
        .data_oe(data_oe)
    );  
 
endmodule        
   
