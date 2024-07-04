module one_wire (
    input clk,
    input reset,
    /* Input signal from the UART8*/
    input rx_uart,
    
    /* one wire */
    output dout,
    output led
    );
    
    assign led =1;
    
    /*parameter declaration*/
    parameter UID_SERIAL_DATA_WIDTH = 56;
    parameter UID_DATA   = 64;
    parameter CLKS_PER_BIT=435;
    parameter FIFO_WIDTH = 8;
    
    /*wire declaration*/
    
    wire w_rx_dv;
    wire [7:0] w_rx_byte;
    wire w_fifo_rd_en;
    wire w_fifo_empty;
    wire [7:0] fifo_read_data;
    wire w_data_valid;
    wire [55:0] w_UID_Data;
    wire w_start_byte_en;
    wire [7:0] w_ROM_command;
    wire w_crc_valid;
    wire w_data_stream;
    wire w_crc_valid;
    wire [7:0] w_crc_data;
    
/* Module Instantiations */
test_uart_rx #(
    .CLKS_PER_BIT(CLKS_PER_BIT)
)uartrx(
    .i_Clock        (clk),
    .i_Rx_Serial    (i_rx_serial),
    .o_Rx_DV        (w_rx_dv),
    .o_Rx_Byte      (w_rx_byte)
);

phy_fifo ws_wr_fifo(
    .wr_clk_i       (clk),
    .rd_clk_i       (clk),
    .wr_en_i        (w_rx_dv),
    .rd_en_i        (w_fifo_rd_en),
    .wdata          (w_rx_byte),
    .rdata          (w_fifo_rd_data),
    .empty_o        (w_fifo_empty)
);

one_wire_data_ctrl #(
    .FIFO_WIDTH(FIFO_WIDTH),
    .UID_SERIAL_DATA_WIDTH(UID_SERIAL_DATA_WIDTH)
) owm_data_ctrl(
    .clk(clk),
    .reset(reset),

/* fifo signal*/
    .fifo_empty(w_fifo_empty),
    .fifo_read_data(w_fifo_rd_data),
    .fifo_read_enable(w_fifo_rd_en),

/* crc signal signal*/
    .data_valid(w_data_valid),
    .UID_Data(w_UID_Data),

/* Interface signal*/
    .start_enable(w_start_byte_en),
    .ROM_command(w_ROM_command)
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

endmodule
    
        
