module one_wire_interface (
    input                                           clk,                  
    
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
    output [5:0]                                    read_address,
    
    input                                           data_in,
    output                                          data_out,
    output                                          data_oe
    );  
    
                /*parameter declaration*/ 
  
    parameter FIFO_WIDTH = 8;
    parameter UID_SERIAL_DATA_WIDTH = 56;
    parameter UID_DATA_WIDTH = 64;
    parameter ADDRESS_WIDTH = 16;
    parameter RESET_COUNT = 24000;
   
                /* reg declaration*/ 
    reg [15:0] wait_counter =0;
    reg [15:0] high_count;
    reg [15:0] low_count;
    //reg [15:0] bit_counter = 3500;
    reg [31:0] presence_count;
    reg [15:0]  read_count;
    reg [15:0] read_wait_count;
   
    reg r_data_out =1'b1;
    reg r_data_oe = 1'b1;
    
    reg [UID_DATA_WIDTH-1:0] r_UID_Data = 0;
    reg [UID_DATA_WIDTH-1:0] read_UID_Data = 0;
    
    //reg [7:0] read_data_reg [0:31];
    
    reg r_read_match = 0; 
    reg r_read_write = 0; 
    
    reg [ 7:0] read_counter =0;
    reg [7:0] counter= 0;
    //reg [7:0] count_bit = 0;
    reg [7:0] r_ROM_command = 0;
    reg [7:0] r_write_data = 0;
    reg [7:0] r_Fun_cmd = 0;
    reg [15:0] r_address = 0;
    reg [5:0] r_data_length = 0;
    reg [4:0] r_read_address = 0;
    
    
    reg r_read_enable;
    reg read_bit;
    reg [5:0] depth;
    
    
    // read data parameters 
    
    reg [63:0] rec_uid_data ; 
    
    
            /* Flag Declaration*/
    reg write_done_flag = 0;
    reg read_done_flag;
    reg reset_flag =0;
    reg high_flag = 0;
    reg low_flag = 0;
    reg read_flag  =0;
    
            /*Collecting Data from the Data_ctrl*/
            
    always @(posedge clk) begin
        if (write) begin
            r_UID_Data[UID_SERIAL_DATA_WIDTH-1:0] <= UID_Data;
            r_read_match  <= read_match;
            r_read_write  <= read_write;
            r_ROM_command <= ROM_commad;
            r_Fun_cmd     <= Fun_cmd;
            r_address     <= address;
            r_data_length <= data_length;
        end else begin 
            r_UID_Data[UID_SERIAL_DATA_WIDTH-1:0] <= r_UID_Data[UID_SERIAL_DATA_WIDTH-1:0];
            r_read_match  <=r_read_match;
            r_read_write  <=r_read_write;
            r_ROM_command <=r_ROM_command;
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
            r_UID_Data[UID_DATA_WIDTH-1:UID_SERIAL_DATA_WIDTH] <= r_UID_Data[UID_DATA_WIDTH-1:UID_SERIAL_DATA_WIDTH];
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
                low count  = 60/0.020 = 3000 count */
    
   /* State machine declaration*/ 
    reg [4:0] state =5'b0000;
    reg [4:0] post_wait_state =5'b0000;
   
    localparam IDLE                     = 5'h0;
    localparam RESET                    = 5'h1;
    localparam WAIT_RESET               = 5'h2;
    localparam WAIT_PRESENCE            = 5'h3;
    localparam DETECT_PRESENCE          = 5'h4;
    localparam WAIT_DETECT_PRESENCE     = 5'h5;
    localparam SEND_ROM_COMMAND         = 5'h6;
    localparam WAIT_ROM_COMMAND         = 5'h7;
    localparam MATCH_UID                = 5'h8;
    localparam WAIT_MATCH_UID           = 5'h9;
    localparam READ_UID                 = 5'hA;
    localparam WAIT_READ_UID            = 5'hB;
    localparam SEND_FUNC_CMD            = 5'hC;
    localparam WAIT_FUNC_CMD            = 5'hD;
    localparam SEND_READ_WRITE_ADDRESS  = 5'hE;
    localparam WAIT_READ_WRITE_ADDRESS  = 5'hF;
    localparam READ_DATA                = 5'h10;
    localparam WAIT_READ                = 5'h11;
    localparam WRITE_DATA               = 5'h12;
    localparam WAIT_DATA                = 5'h13;
    localparam WAIT_WRITE               = 5'h14; 
    localparam WAIT                     = 5'h15;
    
    
    /* state machine declaration*/ // write state
    reg [2:0] write_state = 3'h0;
    localparam [2:0] WRITE_IDLE       = 3'h0;
    localparam [2:0] WRITE_CONDITION  = 3'h1;
    localparam [2:0] WRITE_LOW        = 3'h2;
    localparam [2:0] WRITE_HIGH       = 3'h3;
    localparam [2:0] WRITE_RESET      = 3'h4;
   
       
    /* state machine declaration*/ // write state
    reg [2:0] read_state = 3'h0;
    localparam [2:0] READ_IDLE       = 3'h0;
    localparam [2:0] READ_WAIT       = 3'h1;
    localparam [2:0] READ_BITS        = 3'h2;
    localparam [2:0] DETECT_READ_DATA = 3'h3;
    localparam [2:0] READ_RESET      = 3'h4;
   
   
    always @(posedge clk) begin 
        case (state) // FSM begin        
            IDLE : begin                         //00
                reset_flag <=1'b0;

                high_flag <=1'b0;
                low_flag <=1'b0;
                counter <=0;
                presence_count <=0;
                
                r_read_enable <= 1'b0;
                
                if (write) begin
                    state <= RESET;
                end else  state <= IDLE;         
            end
            
            RESET : begin                         //01
                reset_flag <=1;
                state <=WAIT_RESET;        
            end
                        
            WAIT_RESET :  begin                   //02
                if (write_done_flag) begin
                    reset_flag <= 1'b0;
                    r_data_oe <=1'b0;
                    state <= WAIT_PRESENCE;
                end else  state <= WAIT_RESET;
            end
            
            WAIT_PRESENCE :  begin                   //03
                if (data_in) begin
                    state <= WAIT_PRESENCE;
                end else  state <= DETECT_PRESENCE;
            end
            
            DETECT_PRESENCE : begin              //04
                if (!data_in) begin
                    presence_count <= presence_count +1;
                    state <= DETECT_PRESENCE;
                end else begin
                    state <= WAIT_DETECT_PRESENCE;
                end
            end
           
            
            WAIT_DETECT_PRESENCE : begin           //05
                if (presence_count>4000) begin
                    state <= WAIT;
                    post_wait_state <= SEND_ROM_COMMAND;
                    r_data_oe <=1'b1;
                end else begin
                    state <=IDLE;
                end 
            end       
            
            WAIT : begin
                if (wait_counter <3000) begin
                    state <= WAIT;
                    wait_counter <= wait_counter +1'b1;
                end else begin 
                    state <= post_wait_state;
                end 
            end 
            
            SEND_ROM_COMMAND : begin                //06
                if (r_ROM_command[counter]) begin
                    high_flag<=1'b1;
                    state <= WAIT_ROM_COMMAND;
                end else begin
                    low_flag<=1'b1;
                    state <= WAIT_ROM_COMMAND;
                end
            end    
            
            WAIT_ROM_COMMAND : begin                  //07
                if (!write_done_flag) begin
                    state <= WAIT_ROM_COMMAND;                        
                end else begin
                    high_flag <=1'b0;
                    low_flag <= 1'b0;
                    
                    if (counter <7) begin
                        counter <=counter + 1'b1;
                        state <= SEND_ROM_COMMAND;
                    end else begin
                        counter <= 0;
                        
                        if (read_match) begin
                            post_wait_state <= MATCH_UID;
                            state <= WAIT;
                        end else begin 
                            post_wait_state <= READ_UID;
                            state <= WAIT;
                        end
                    end
                end
            end   
            
            MATCH_UID : begin                        //08
                if (r_UID_Data[counter]) begin
                    high_flag<=1'b1;
                    state <= WAIT_MATCH_UID;
                end else begin
                    low_flag<=1'b1;
                    state <= WAIT_MATCH_UID;
                end
            end
            
            
            WAIT_MATCH_UID : begin                    //09
                if (!write_done_flag) begin
                    state <= WAIT_MATCH_UID;                        
                end else begin
                        high_flag <=1'b0;
                        low_flag <= 1'b0;
                        
                    if (counter <63) begin
                        counter <=counter + 1'b1;
                        state <= MATCH_UID;
                    end else begin
                        counter <= 0;
                        post_wait_state <=SEND_FUNC_CMD;
                        state <= WAIT;
                    end
                end
            end   
            
            READ_UID : begin                        //10
                read_flag <= 1'b1;
                high_flag<= 1'b1;
                state <= WAIT_READ_UID;
            end
            
            
            WAIT_READ_UID : begin                    //11 
                if (!write_done_flag) begin
                    state <= WAIT_READ_UID;                        
                end else begin
                        high_flag <=1'b0;
                        low_flag <= 1'b0;
                        read_flag <=1'b0;
                        r_data_oe <= 1'b1;
                        
                    if (read_counter <63) begin
                        read_counter <=read_counter + 1'b1;
                        state <= READ_UID;
                    end else begin
                        counter <= 0;
                        post_wait_state <=RESET;
                        state <= WAIT;
                    end
                end
            end   


            SEND_FUNC_CMD : begin                   //10
                if (r_Fun_cmd[counter]) begin
                    high_flag <=1'b1;
                    state<= WAIT_FUNC_CMD;
                end else begin
                    low_flag <=1'b1;
                    state <= WAIT_FUNC_CMD;
                end
            end
            
            WAIT_FUNC_CMD : begin                  //11
                if (!write_done_flag) begin
                    state <= WAIT_FUNC_CMD;                        
                end else begin
                    high_flag <=1'b0;
                    low_flag <= 1'b0;
                        
                    if (counter <7) begin
                        counter <=counter + 1'b1;
                        state <= SEND_FUNC_CMD;
                    end else begin
                        counter <= 0;
                        state <= SEND_READ_WRITE_ADDRESS;
                    end
                end
            end              
            
            SEND_READ_WRITE_ADDRESS : begin           //12
                if (r_address[counter]) begin
                    high_flag <=1'b1;
                    state<= WAIT_READ_WRITE_ADDRESS;
                end else begin
                    low_flag <=1'b1;
                    state <= WAIT_READ_WRITE_ADDRESS;
                end
            end
            
            WAIT_READ_WRITE_ADDRESS : begin             //13
                if (!write_done_flag) begin
                    state <= WAIT_READ_WRITE_ADDRESS;                        
                end else begin
                    high_flag <=1'b0;
                    low_flag <= 1'b0;
                    if (counter < 15) begin
                        counter <=counter + 1'b1;
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
            
            WRITE_DATA : begin
                r_read_enable <=1;
                r_read_address <= counter;
                
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
                if (!write_done_flag) begin
                    state <= WAIT_WRITE;                        
                end else begin
                    if (counter <7) begin
                        counter <=counter + 1'b1;
                        state <= WRITE_DATA;
                    end else begin
                        counter <= 0;
                        
                        if (depth < r_data_length) begin
                            depth <= depth + 1'b1;
                            state <= WRITE_DATA;
                        end else begin        
                        state <= IDLE;
                        end
                    end
                    high_flag <= 1'b0;
                    low_flag  <=  1'b0;               
                end
            end                                  
        endcase
        
        case (write_state)
            WRITE_IDLE: begin
                write_done_flag <=1'b0;
                write_state <= WRITE_CONDITION;
            end                
            
            WRITE_CONDITION : begin
                if (reset_flag) begin
                    low_count  <= RESET_COUNT;
                    high_count <= 1000;
                    write_state <= WRITE_LOW;
                end else if (high_flag) begin
                    low_count  <= 500;
                    high_count <= 3000;
                    write_state <=WRITE_LOW;
                end else if (low_flag) begin
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
                    low_count <= low_count -1'b1;
                    write_state <= WRITE_LOW;
                end
            end    
            
            WRITE_HIGH : begin
                r_data_out <=1'b1;
                
                if (high_count ==0) begin
                   write_state <= WRITE_RESET;
                end else begin 
                    high_count <=high_count -1'b1;
                    write_state <=WRITE_HIGH;
                end
           end
           
           WRITE_RESET : begin
                write_done_flag <=1'b1;
                write_state <=WRITE_IDLE;
           end
        endcase 
        
        case (read_state)
            READ_IDLE: begin
                read_done_flag <=1'b0;                
                if (read_flag)  begin
                    read_state <= READ_WAIT;
                end
            end                
            
            READ_WAIT : begin
                if (read_wait_count <490) begin
                    read_wait_count <= read_wait_count + 1'b1 ;
                    read_state <= READ_WAIT;
                end else begin
                    read_wait_count <= 0;
                    r_data_oe <= 1'b0;
                    read_state <= READ_BITS;
                end 
            end
            
            READ_BITS : begin
                if (!data_in) begin
                    read_count <= read_count +1'b1 ;
                end else begin 
                    read_state <= DETECT_READ_DATA;
                end
            end    
            
            DETECT_READ_DATA : begin
                if (read_count >1000) begin
                   rec_uid_data[read_counter]  <= 1'b0;
                end else begin 
                   rec_uid_data[read_counter]  <= 1'b0;;
                end
                read_state <=READ_RESET;

           end
           
           READ_RESET : begin
                read_done_flag <=1'b1;
                read_state <=READ_IDLE;
           end
        endcase 
    end


    assign data_out = r_data_out;
    assign read_enable = r_read_enable;
    assign read_address = r_read_address;
    assign data_oe = r_data_oe;
    
    endmodule
   