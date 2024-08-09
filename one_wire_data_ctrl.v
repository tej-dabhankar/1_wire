module one_wire_data_ctrl(

    input                                       clk,
       
/* fifo signal*/
    input                                       fifo_empty,
    input [(FIFO_WIDTH-1):0]                    fifo_read_data,
    output                                      fifo_read_enable,

/* crc signal signal*/
    output                                      data_valid,
    output [UID_SERIAL_DATA_WIDTH-1:0]          UID_Data,

/* Interface signal*/
    input                                       ow_busy,
    output [2:0]                                read_command,
    output [7:0]                                ROM_command,
    output [3:0]                                data_length,
    output                                      read_write,

    output [7:0]                                Fun_cmd,
    output [ADDRESS_WIDTH-1:0]                  address,
    
    /* write data_to bram*/
    output [7:0]                                write_data,
    output [4:0]                                data_address,
    output                                      write_bram,
    
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
    reg [2:0] r_read_command = 0;
    reg r_write =0;
    reg address_count = 0;
    reg [4:0] d_address = 0;
    reg [3:0] r_data_length = 0;
    reg done_flag =0;
    reg r_write_bram = 0;
    reg r_read_write = 0;
    reg [3:0] bit_length = 0;
    
/* STATE MACHINE PARAMETERS */

    reg [3:0] state = 4'b000;
    reg [3:0] post_wait_state ;

    localparam IDLE              = 4'd0;
    localparam HOLD              = 4'd1;
    localparam FIFO_WAIT         = 4'd2; 
    localparam FIFO_READ_LENGTH  = 4'd3;
    localparam FIFO_DETECT       = 4'd4;
    localparam FIFO_READ_ROM     = 4'd5;
    localparam FIFO_READ_UID     = 4'd6;
    localparam SLICE_DATA        = 4'd7;
    localparam FIFO_READ_FUNCT   = 4'd8;
    localparam FIFO_READ_DATA    = 4'd9;
    localparam WAIT_FIFO_DATA    = 4'd10;
    localparam WRITE             = 4'd11;
    localparam WRITE_CONDITION   = 4'd12;
    localparam CHECK_BUSY        = 4'd13;
     
    always @(posedge clk) begin
            case (state) 
                IDLE : begin 
                    r_UID_signal  <= 56'h0000000;
                    byte_count    <= 3'b000;
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
                    bit_length     <=0;
                    state <= HOLD;
                    post_wait_state <= FIFO_READ_LENGTH;
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
                    r_write_bram <= 1'b0;
                end
                
     
                FIFO_READ_LENGTH : begin
                    r_data_length <= fifo_read_data[7:4];
                    bit_length <= fifo_read_data[7:4];
                    r_read_write  <= fifo_read_data[3];
                    r_read_command <= fifo_read_data[2:0];
                    post_wait_state <= FIFO_READ_ROM;
                    state <= HOLD;
                end   
  
                FIFO_READ_ROM: begin
                    r_ROM_Command <= fifo_read_data;
                    state <= FIFO_DETECT;
                end  
      
                FIFO_DETECT :begin
				 	case (r_read_command)
						4'b0000:  begin
                            post_wait_state <= FIFO_READ_FUNCT;
                            state <= HOLD;
                        end
                        
						4'b0001: begin 
                            done_flag<=1'b1;
                            state <= WRITE;
                        end
						4'b0010:  begin
                            post_wait_state <= FIFO_READ_UID;
                            state <= HOLD; 
                        end

						4'b0011:  begin
                            done_flag<=1'b1;
                            state <= WRITE; 
                        end

						default :  begin 
                            done_flag<=1'b1;
                            state <= WRITE; 
                        end
					endcase 
				end 
            
                FIFO_READ_UID : begin
                    r_data <= fifo_read_data;
                    post_wait_state <= FIFO_READ_DATA;
                    state <= SLICE_DATA;
                end
            
                SLICE_DATA : begin
                    r_UID_signal[(byte_count)*FIFO_WIDTH +: FIFO_WIDTH] <= r_data[0  +: FIFO_WIDTH];
                 
                    if (byte_count < 6) begin
                        byte_count <= byte_count + 1;
                        post_wait_state <=FIFO_READ_UID;                       
                        state <= HOLD;
                   end else begin
                        state <= HOLD;
                        post_wait_state <=FIFO_READ_FUNCT;
                        r_data_valid <= 1'b1;
                    end
                end
                   
                FIFO_READ_FUNCT : begin
                    r_read_cmd <= fifo_read_data;
                    r_data_valid <= 1'b0;
                    //post_wait_state <= FIFO_READ_DATA;
                    if (r_read_write) begin 
                        post_wait_state <= FIFO_READ_DATA;
                        state <=HOLD;
                    end else begin
                        state <= WRITE;
                        done_flag <= 1'b1;
                    end
               end
               

            /*  FIFO_READ_ADDRESS : begin
                   r_read_address[15:8] <= fifo_read_data;
                   r_read_address[(address_count)*FIFO_WIDTH +: FIFO_WIDTH] <= fifo_read_data[0  +: FIFO_WIDTH];
                   
                   if (address_count == 1) begin
                        state<= WRITE;
                        post_wait_state <= FIFO_READ_DATA;
                   end else begin 
                        state <= FIFO_READ_ADDRESS;
                        address_count <= address_count + 1;
                   end
                end
                
                */
                
                FIFO_READ_DATA : begin      
                    r_write_data <= fifo_read_data;      
                    r_write_bram <=1'b1; 
                    state <= WAIT_FIFO_DATA;
                end 
                
                WAIT_FIFO_DATA : begin   
                    r_write_bram <=1'b0; 
                    d_address <= d_address +1;     
                    if (bit_length == 0 ) begin
                        state <= WRITE;
                        done_flag <= 1'b1;
                    end else begin 
                        bit_length <=bit_length - 1'b1;
                        post_wait_state <= FIFO_READ_DATA;
                        state <= HOLD;
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
                        state <= CHECK_BUSY;
                    end else begin
                        state <= HOLD;
                    end
                end
                CHECK_BUSY : begin
                    if (!ow_busy) begin 
                        state <= IDLE;
                    end else begin 
                        state <= CHECK_BUSY;
                    end
                end 
            endcase
        end
    
    
        /*ASSIGNING OUTPUT SIGNALS */
    assign UID_Data         = r_UID_signal;
    assign fifo_read_enable = r_fifo_read_enable;
    assign ROM_command      = r_ROM_Command;
   // assign address          = r_read_address;
    assign write            = r_write;
    assign write_data       = r_write_data;
    assign Fun_cmd          = r_read_cmd;
    assign data_valid       = r_data_valid;
    assign data_address     = d_address;
    assign data_length      = r_data_length;
    assign write_bram       = r_write_bram;
    assign read_command     = r_read_command;
    assign read_write       = r_read_write;
   
   
    endmodule

