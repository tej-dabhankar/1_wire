module one_wire_shifter (
        
        input clk,
        // input from the data ctrl 
        input data_valid,
        input [UID_SERIAL_DATA_WIDTH-1:0] UID_Data,
        
        // signal to the CRC+
        output               start_crc,
        output               data_stream
        );
        
        /* parameter declaaratiom*/
        parameter UID_SERIAL_DATA_WIDTH =56;
        parameter FIFO_WIDTH = 8;
        
        reg [UID_SERIAL_DATA_WIDTH-1:0] r_UID_Data ;
        reg  r_start_data_stream ;
        reg [FIFO_WIDTH-1:0] data_count;
        reg r_data_Stream;
        
        
        always@(posedge clk) begin
            
            if (data_valid) begin
                r_UID_Data <=UID_Data;
                r_start_data_stream <= 1'b1;
            end 
            
            if (r_start_data_stream) begin
                r_data_Stream <= r_UID_Data[data_count];
                
                if (data_count == UID_SERIAL_DATA_WIDTH) begin
                     data_count <= 0;
                     r_data_Stream <=0;
                end else begin
                     data_count <= data_count + 1;
               end
            end
        end
 
    assign data_stream =  r_data_Stream;
    assign start_crc = r_start_data_stream;
    
    endmodule
 
    
                
        