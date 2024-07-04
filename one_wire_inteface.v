module one_wire_interface (

    input                                           clk,
    input                                           reset,
    
                  /*INPUT FROM THE DATA CTRL */
    input                                           data_valid,
    input [UID_SERIAL_DATA_WIDTH-1:0]               UID_Data,
    input [FIFO_WIDTH-1:0]                          ROM_commad,
    input                                           read_match,
    input                                           read_write,
    input [FIFO_WIDTH-1:0]                          Fun_cmd,
    input  [ADDRESS_WIDTH-1:0]                      address,
    input [5:0]                                     data_length,
    input                                           write,
   
                    /*INPUT FOROM THE CRC*/
    input [7:0]                                     crc_data,
    input                                           crc_valid,
    
                    /*INPUT FOROM THE BRAM*/
    input [7:0]                                     write_data,
    input                                           data_dv,
    output                                          read_enable,
    
    input                                           data_in,
    output                                          data_out, 
    output                                          data_out_enable
    );
    
    
                /*parameter declaration*/ 
  
    parameter FIFO_WIDTH = 8;
    parameter UID_SERIAL_DATA_WIDTH = 56;
    parameter UID_DATA_WIDTH = 64;
    parameter ADDRESS_WIDTH = 16;
    parameter RESET_COUNT = 24000;
   
                /* reg declaration*/ 
  
    reg [15:0] high_count;
    reg [15:0] low_count;
    reg [31:0] reset_count;
    reg [15:0] bit_counter;
    reg [31:0] presence_count;
   
    reg r_data_out;
    reg r_data_out_enable;
    
    reg [UID_DATA_WIDTH-1:0] r_UID_Data;
    reg [UID_DATA_WIDTH-1:0] read_UID_Data;
    
    reg [7:0] read_data_reg [0:31];
    
    reg r_read_match; 
    reg r_read_write; 
    
    reg [7:0] counter= 0;
    reg [7:0] count_bit = 0;
    reg [7:0] read_counter = 0;
    reg [7:0] r_ROM_command = 0;
    reg [7:0] r_write_data = 0;
    reg [7:0] r_Fun_cmd = 0;
    reg [15:0] r_address = 0;
    reg [7:0] r_write_data = 0;
    reg [5:0] r_data_length = 0;
    
    
    reg r_read_enable;
    reg read_bit;
    reg [5:0] depth;
    
    
    
            /* Flag Declaration*/
    
    reg reset_flag =0;
    reg high_flag = 0;
    reg low_flag = 0;
    reg presence_flag = 0;
    reg read_UID_flag = 0;
    reg read_flag     =0;
    
   
            /*Collecting Data from the Data_ctrl*/
            
    always @(posedge clk) begin
        if (write) begin
            r_UID_Data[UID_SERIAL_DATA_WIDTH:0]  <= UID_Data;
            r_read_match <=read_match;
            r_read_write <=read_write;
            r_ROM_command <=ROM_commad;
            r_write_data <= write_data;
            r_Fun_cmd    <= Fun_cmd;
            r_address    <= address;
            r_data_length <= data_length;
            r_data_out    <=1'b1;
        end else begin 
            r_UID_Data    <= r_UID_Data;
            r_read_match  <=r_read_match;
            r_read_write  <=r_read_write;
            r_ROM_command <=r_ROM_command;
            r_write_data  <= r_write_data;
            r_Fun_cmd     <= r_Fun_cmd;
            r_address     <= r_address;
            r_data_length <= r_data_length;

        end
    end
    
          /*Collecting data from the CRC */
          
    always @(posedge clk) begin
        if (crc_valid) begin
            r_UID_Data[UID_DATA_WIDTH-1:UID_SERIAL_DATA_WIDTH] <= crc_data;
        end else begin
            r_UID_Data <= r_UID_Data;
        end
    end
    

    
                /* calculation for the counter  
            
                clock frequency is 50 MHz which means
                1 clock cycle = 2o n.sec
                reset cycle  = 480 micro second  
                reset_count =  480/0.020 = 24000 count 
                 
                for presence detect 410 microsecond
                presence count = 410/0.020 = 20500 count
       
                for high count  of 10 microsecond 
                high_count = 10/0.020 = 500 count
        
                for low count of 60 microsecond
                low count  = 60/0.020 = 3000 count
    
    
   /* State machine declaration*/ 
    reg [4:0] state =4'b0000;
   
    localparam IDLE                     = 5'b00000;
    localparam RESET                    = 5'b00001;
    localparam WAIT_RESET               = 5'b00010;
    localparam DETECT_PRESENCE          = 5'b00011;
    localparam WAIT_DETECT_PRESENCE     = 5'b00100;
    localparam SEND_ROM_COMMAND         = 5'b00101;
    localparam WAIT_ROM_COMMAND         = 5'b00110;
    localparam MATCH_UID                = 5'b00111;
    localparam WAIT_MATCH_UID           = 5'b01000;
    localparam READ_UID                 = 5'b01001;
    localparam WAIT_READ_UID            = 5'b01010;
    localparam SEND_FUNC_CMD            = 5'b01011;
    localparam WAIT_FUNC_CMD            = 5'b01100;
    localparam SEND_READ_WRITE_ADDRESS  = 5'b01101;
    localparam WAIT_READ_WRITE_ADDRESS  = 5'b01110;
    localparam READ_DATA                = 5'b01111;
    localparam WAIT_READ                = 5'b10000;
    localparam WRITE_DATA               = 5'b10001;
    localparam WAIT_DATA                = 5'b10010;
    localparam WAIT_WRITE               = 5'b10011;
   
   
    always @(posedge clk) begin
        if (reset) begin
            r_UID_Data    <= 0;
            r_read_match   <=0;
            r_read_write   <=0;
            r_ROM_command  <=0;
            r_write_data  <= 0;
            r_Fun_cmd     <= 0;
            r_address     <= 0;
            counter       <= 0;
            read_counter  <= 0;
        end else begin
            case (state) // FSM begin
                IDLE : begin                         //00
                    r_UID_Data    <= 0;
                    r_read_match  <= 0;
                    r_read_write  <= 0;
                    r_ROM_command <= 0;
                    r_write_data  <= 0;
                    r_Fun_cmd     <= 0;
                    r_address     <= 0;
                    counter       <= 0;
                    read_counter  <= 0;
                    
                    if (write == 1) begin
                        state <= RESET;
                    end else  state <= IDLE;
                    
                end
                
                RESET : begin                         //01
                    reset_flag <=1;
                    state <= WAIT_RESET;
                end
                
                WAIT_RESET :  begin                   //02
                    if (!reset_flag) begin
                        state <= DETECT_PRESENCE;
                    end else  state <= WAIT_RESET;
                end
                
                DETECT_PRESENCE : begin              //03
                    if (!r_data_out) begin
                        presence_count <= presence_count +1;
                        state <= DETECT_PRESENCE;
                    end else begin
                        state <= WAIT_DETECT_PRESENCE;
                    end
                end
                
                WAIT_DETECT_PRESENCE : begin           //04
                    if (presence_count>4000) begin
                            state <= SEND_ROM_COMMAND;
                    end else begin
                        state <=IDLE;
                    end 
                end                        
                
                SEND_ROM_COMMAND : begin                //05
                    if (r_ROM_command[counter]) begin
                        high_flag<=1'b1;
                        state <= WAIT_ROM_COMMAND;
                    end else begin
                        low_flag<=1'b1;
                        state <= WAIT_ROM_COMMAND;
                    end
                end    
                
                WAIT_ROM_COMMAND : begin                  //06
                    if (high_flag || low_flag == 1) begin
                        state <= WAIT_ROM_COMMAND;                        
                    end else begin
                        if (counter <7) begin
                            counter <=counter+1;
                            state <= WAIT_ROM_COMMAND;
                        end else begin
                            counter <= 0;
                            
                            if (read_match) begin
                                state <= MATCH_UID;
                            end else begin 
                                state <= READ_UID;
                            end
                        end
                    end
                end   
                
                MATCH_UID : begin                        //07
                    if (r_UID_Data[counter]) begin
                        high_flag<=1'b1;
                        state <= WAIT_MATCH_UID;
                    end else begin
                        low_flag<=1'b1;
                        state <= WAIT_MATCH_UID;
                    end
                end
                
                WAIT_MATCH_UID : begin                    //08
                    if (high_flag || low_flag == 1) begin
                        state <= WAIT_MATCH_UID;                        
                    end else begin
                        if (counter <63) begin
                            counter <=counter + 1;
                            state <= MATCH_UID;
                        end else begin
                            counter <= 0;
                            state <= SEND_FUNC_CMD;
                        end
                    end
                end   
                 
                READ_UID : begin                         //09
                    high_flag     <=1'b1;
                    read_flag     <=1'b1;
                    state <= WAIT_READ_UID;
                end
                
                WAIT_READ_UID : begin                   //10
                    if (high_flag || low_flag == 0) begin
                        read_UID_Data[counter] <= read_bit;
                    
                        if (counter ==63) begin
                            state <= RESET;
                        end else begin
                            counter <= counter +1;
                            state <= WAIT_READ_UID;
                        end
                    end
                end
                
                SEND_FUNC_CMD : begin                   //11
                    if (r_Fun_cmd[counter]) begin
                        high_flag <=1'b1;
                        state<= WAIT_FUNC_CMD;
                    end else begin
                        low_flag <=1'b1;
                        state <= WAIT_FUNC_CMD;
                    end
                end
                
                WAIT_FUNC_CMD : begin                  //12
                    if (high_flag || low_flag == 1) begin
                        state <= WAIT_FUNC_CMD;                        
                    end else begin
                        if (counter <7) begin
                            counter <=counter + 1;
                            state <= SEND_FUNC_CMD;
                        end else begin
                            counter <= 0;
                            state <= SEND_READ_WRITE_ADDRESS;
                        end
                    end
                end  
                
                SEND_READ_WRITE_ADDRESS : begin           //13
                    if (r_address[counter]) begin
                        high_flag <=1'b1;
                        state<= WAIT_READ_WRITE_ADDRESS;
                    end else begin
                        low_flag <=1'b1;
                        state <= WAIT_READ_WRITE_ADDRESS;
                    end
                end
                
                WAIT_READ_WRITE_ADDRESS : begin             //14
                    if (high_flag || low_flag == 1) begin
                        state <= WAIT_FUNC_CMD;                        
                    end else begin
                        if (counter < 15) begin
                            counter <=counter + 1;
                            state <= SEND_READ_WRITE_ADDRESS;
                        end else begin
                            counter <= 0;
                            
                            if (r_read_write) begin
                                state <= WRITE_DATA;
                            end else begin
                                state <= READ_DATA;
                            end
                        end
                    end
                end  

                READ_DATA : begin                          //15
                    high_flag     <=1'b1;
                    read_flag     <=1'b1;
                    state <= WAIT_READ;
                end
                
                WAIT_READ : begin                          //16
                    if (high_flag || low_flag == 0) begin
                        read_data_reg[counter][depth] <= read_bit;
                    
                        if (counter <7) begin
                            counter <= counter +1;
                            state <=READ_DATA;
                            
                        end else begin
                            depth <= depth +1;
                            counter <=0;
                            
                            if (depth < r_data_length) begin
                                state <= READ_DATA;
                            end else begin  
                                state <= IDLE; 
                            end
                        end
                    end
                end
                
                WRITE_DATA : begin
                    r_read_enable <=1;
                    
                    if (data_dv) begin
                        r_write_data <=write_data;
                        state <= WAIT_DATA;
                    end
                end
                
                WAIT_DATA : begin
                    if(r_write_data[counter]) begin
                        high_flag <= 1'b1;
                        state <=WAIT_WRITE;
                    end else begin
                        low_flag <=1'b1;
                        state <= WAIT_WRITE;
                    end
                end
                
                WAIT_WRITE : begin                    //08
                    if (high_flag || low_flag == 1) begin
                        state <= WAIT_MATCH_UID;                        
                    end else begin
                        if (counter <7) begin
                            counter <=counter + 1;
                            state <= WRITE_DATA;
                        end else begin
                            counter <= 0;
                            
                            if (depth < r_data_length) begin
                                depth <= depth +1;
                                state <= WRITE_DATA;
                            end else begin        
                            state <= IDLE;
                            end
                        end
                    end
                end                                  
            endcase
        end
    end
    
    reg [1:0] write_state ;
    localparam [1:0] WRITE_IDLE       = 2'b00;
    localparam [1:0] WRITE_LOW        = 2'b01;
    localparam [1:0] WRITE_HIGH       = 2'b10;
    localparam [1:0] WRITE_RESET      = 2'b11;

    always @(posedge clk) begin 
        case (write_state)
            WRITE_IDLE : begin
                if (reset_flag) begin
                    low_count  <= RESET_COUNT;
                    high_count <= 4000;
                    write_state <= WRITE_LOW;
                end else begin
                    write_state <= WRITE_IDLE;
                end
                
                if (high_flag) begin
                    low_count  <= 500;
                    high_count <= 3000;
                    write_state <=WRITE_LOW;
                end else begin
                    write_state <= WRITE_IDLE;
                end
                
                if (low_flag) begin
                    low_count <= 3000;
                    high_count <= 500;
                    write_state <=WRITE_LOW;
                end else begin
                    write_state <= WRITE_IDLE;
                end
            end
            
            WRITE_LOW : begin
                r_data_out <=1'b0;
                
                if (low_count ==0) begin
                    write_state <=WRITE_HIGH ;
                end else begin 
                    low_count <= low_count -1;
                    write_state <= WRITE_LOW;
                end
            end    
            
            WRITE_HIGH : begin
                r_data_out <=1'b1;
                
                if (high_count ==0) begin
                   write_state <= WRITE_RESET;
                end else begin 
                    high_count <=high_count -1;
                    write_state <=WRITE_HIGH;
                end
           end
           
           WRITE_RESET : begin
                reset_flag <=0;
                high_flag <= 0;
                low_flag <=0;
                write_state <=WRITE_IDLE;
           end
        endcase 
    end
    reg [1:0] read_state ;
    localparam [1:0] READ_IDLE  = 2'b00;
    localparam [1:0] COUNT_BIT  = 2'b01;
    localparam [1:0] LATCH_DATA = 2'b10;
    localparam [1:0] READ_RESET = 2'b11;

    always @(posedge clk) begin
        
        case (read_state)
            READ_IDLE : begin
                if (read_flag) begin
                    read_state <= COUNT_BIT;
                end else begin
                    read_state <= READ_IDLE;
                end
            end 

            COUNT_BIT : begin
                if (!data_in) begin
                    read_counter <= read_counter + 1;
                end else begin
                    read_counter <= read_counter;
                end
            
                if (bit_counter == 0) begin
                    read_state <= LATCH_DATA;
                end else begin
                    bit_counter <=bit_counter -1;
                    read_state <= COUNT_BIT;
                end
            end
            
            LATCH_DATA : begin
                if( read_counter > 2000) begin
                        read_bit <= 1'b0;
                end else begin 
                        read_bit <=1'b1;
                end   
                state <= READ_RESET;

             end
             
            READ_RESET : begin
                read_flag     <= 0;
                read_counter  <= 0;
                read_state <= READ_IDLE;
            end
        endcase
    end
    
    assign data_out = r_data_out;
    assign read_enable = r_read_enable;
    
    endmodule
   