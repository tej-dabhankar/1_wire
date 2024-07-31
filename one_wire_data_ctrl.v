module one_wire_data_ctrl(

    input clk,
       

/* fifo signal*/
    input fifo_empty,
    input [(FIFO_WIDTH-1):0] fifo_read_data,
    output fifo_read_enable,

/* crc signal signal*/
    output data_valid,
    output [UID_SERIAL_DATA_WIDTH-1:0] UID_Data,

/* Interface signal*/
    output read_match ,
    output read_write,
    output [7:0] ROM_command,
    output [5:0] data_length,

    output [7:0] Fun_cmd,
    output [ADDRESS_WIDTH-1:0] address,
    
    /* write data_to bram*/
    output [7:0] write_data,
    output [4:0] data_address,
    output write_bram,
    
    /* output to start the interface */
    output write
    );

    /*parameter*/

    parameter ADDRESS_WIDTH = 16;
    parameter FIFO_WIDTH = 8;
    parameter UID_SERIAL_DATA_WIDTH = 56;

    /*regiser*/

    reg [FIFO_WIDTH-1:0] r_data = 0;
    reg [FIFO_WIDTH-1:0] r_ROM_Command = 0;
    reg [UID_SERIAL_DATA_WIDTH-1:0] r_UID_signal = 0;
    reg [2:0] byte_count  =0;
    reg [FIFO_WIDTH-1:0] length = 0;
    reg [ADDRESS_WIDTH-1:0] r_read_address = 0;
    reg [FIFO_WIDTH-1:0] r_read_cmd = 0;
    reg [FIFO_WIDTH-1:0] r_write_data = 0;
    reg r_data_valid   =0;
    reg r_fifo_read_enable =0;
    reg r_read_write =0;
    reg r_read_match =0;
    reg r_write =0;
    reg address_count = 0;
    reg [4:0] d_address = 0;
    reg [5:0] r_data_length = 0;
    reg done_flag =0;
    reg r_write_bram = 0;
/* STATE MACHINE PARAMETERS */

    reg [3:0] state = 4'b000;
    reg [3:0] post_wait_state ;

    localparam IDLE              = 4'd0;
    localparam HOLD              = 4'd1;
    localparam FIFO_WAIT         = 4'd2; 
    localparam FIFO_READ_LENGTH  = 4'd3;
    localparam FIFO_READ_DATA_LENGTH = 4'd4;
    localparam FIFO_READ_ROM_CMD = 4'd5;
    localparam FIFO_READ_DATA    = 4'd6;
    localparam SLICE_DATA        = 4'd7;
    localparam FIFO_READ_F_CMD   = 4'd8;
    localparam FIFO_READ_ADDRESS = 4'd9;
    localparam SEND_WRITE_DATA   = 4'd10;
    localparam WRITE             = 4'd11;
    localparam WRITE_CONDITION   = 4'd12;
     
    always @(posedge clk) begin
            case (state) 
                IDLE : begin 
                    r_read_write  <= 1'b0;
                    r_UID_signal  <= 56'h0000000;
                    byte_count    <= 3'b000;
                    r_read_match  <=1'b0;
                    length        <= 0;
                    r_data_valid  <= 0;
                    r_ROM_Command <= 0;
                    r_data        <= 0;
                    address_count <= 0;
                    r_read_cmd    <= 0;
                    r_read_address<= 0;
                    r_write_data  <= 0;
                    d_address     <= 0;
                    r_read_address<= 0;
                    done_flag      <=0;
                    r_write_bram   <=0;
                    state <= HOLD;
                    post_wait_state <= FIFO_READ_DATA_LENGTH;
                end
            
                HOLD : begin // 1
                    if(!fifo_empty) begin
                        r_fifo_read_enable <= 1;
                        state <= FIFO_WAIT;
                    end else begin
                        state <= HOLD;
                    end
                end
    
                FIFO_WAIT : begin // 2
                    r_fifo_read_enable <= 0;
                    state <= post_wait_state;
                end
                
   /*             FIFO_READ_LENGTH : begin
                    length <= fifo_read_data;
                    post_wait_state <= FIFO_READ_DATA_LENGTH;
                    state <= WRITE;
                end
*/      
      
                FIFO_READ_DATA_LENGTH : begin
                    r_data_length <= fifo_read_data[7:2];
                    r_read_match  <= fifo_read_data[1];
                    r_read_write   <= fifo_read_data[0]; 
                    post_wait_state <= FIFO_READ_ROM_CMD;
                    state <= WRITE;
                end                
                
                FIFO_READ_ROM_CMD : begin
                    r_ROM_Command <= fifo_read_data;
                    post_wait_state <= FIFO_READ_DATA;
                    state <= WRITE;
                end
            
                FIFO_READ_DATA : begin
                    r_data <= fifo_read_data;
                    post_wait_state <= FIFO_READ_DATA;
                    state <= SLICE_DATA;
                end
            
                SLICE_DATA : begin
                    r_UID_signal[(byte_count)*FIFO_WIDTH +: FIFO_WIDTH] <= r_data[0  +: FIFO_WIDTH];
                 
                    if (byte_count < 6) begin
                        byte_count <= byte_count + 1;
                        state <= HOLD;
                    end else begin
                        state <= WRITE;
                        post_wait_state <=FIFO_READ_F_CMD;
                        r_data_valid <= 1'b1;
                    end
                end
                   
                FIFO_READ_F_CMD : begin
                    r_read_cmd <= fifo_read_data;
                    post_wait_state <= FIFO_READ_ADDRESS;
                    state <= WRITE;
                end
               
                FIFO_READ_ADDRESS : begin
                   r_read_address[15:8] <= fifo_read_data;
                   r_read_address[(address_count)*FIFO_WIDTH +: FIFO_WIDTH] <= fifo_read_data[0  +: FIFO_WIDTH];
                   
                   if (address_count == 1) begin
                        state<= WRITE;
                        post_wait_state <= SEND_WRITE_DATA;
                   end else begin 
                        state <= FIFO_READ_ADDRESS;
                        address_count <= address_count + 1;
                   end
                end
                
                SEND_WRITE_DATA : begin                    
                    if (r_data_length > 0 ) begin
                        r_write_data <= fifo_read_data;
                        post_wait_state <= SEND_WRITE_DATA;
                        d_address <= d_address +1;
                        r_data_length <=r_data_length-1;
                        state <= WRITE;
                        r_write_bram <=1'b1;
                    end else begin 
                        done_flag <=1;
                        state <= WRITE;
                    end
                end

                WRITE : begin
                    r_write <= 1'b1;
                    state <=WRITE_CONDITION;
                end
                
                WRITE_CONDITION : begin
                    r_write <= 1'b0;   
                    r_data_valid <= 1'b0;
                    r_write_bram <= 1'b0;
                    
                    if (done_flag) begin
                        state <= IDLE;
                    end else begin
                        state <= HOLD;
                    end
                end
            endcase
        end
    
    
    /*ASSIGNING OUTPUT SIGNALS */
    assign UID_Data         = r_UID_signal;
    assign fifo_read_enable = r_fifo_read_enable;
    assign ROM_command      = r_ROM_Command;
    assign address          = r_read_address;
    assign write            = r_write;
    assign write_data       = r_write_data;
    assign read_match       = r_read_match;
    assign read_write       = r_read_write;
    assign Fun_cmd          = r_read_cmd;
    assign data_valid       = r_data_valid;
    assign data_address     = d_address;
    assign data_length      = r_data_length;
    assign write_bram       = r_write_bram;
    endmodule

