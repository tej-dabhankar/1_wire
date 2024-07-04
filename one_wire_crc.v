module one_wire_crc(
    /* Clock Signals */
    input               clk,
    
    /* Input data stream and control signals */
    input               start_crc,
    input               data_stream,
    
    /* Output Computed CRC and control signals */
    output [7:0]        crc_data,
    output              crc_valid,
    output              crc_zero
);

/* Register declaration */
reg [7:0]              r_shift = 0;
reg [7:0]              counter = 0;
reg                    r_crc_valid = 0;

// To be add with configuration signal
reg [8:0]              crc_poly = 9'h119;

// Parameters
parameter UID_SERIAL_DATA_WIDTH =56; 

/* Assigning signals */
assign crc_data     = r_shift[7:0];
assign crc_valid    = r_crc_valid;
assign crc_zero     = ~(&crc_data);

/* State Machine parameters */
reg [1:0]  state = 0;
localparam IDLE             = 2'h0;
localparam CRC_CALCULATE    = 2'h1;

always @(posedge clk) begin
case (state) 
    IDLE: begin
        r_shift <= 0;
        r_crc_valid <= 0;
        
        if(start_crc) begin
            r_shift <= {r_shift, data_stream};
            counter <= UID_SERIAL_DATA_WIDTH + 6'd8;
            state <= CRC_CALCULATE;
        end
    end
    
    CRC_CALCULATE: begin
        if(counter == 1) begin
            counter <= 0;
            r_crc_valid <= 1;
            state <= IDLE;
        end else begin
        /* CRC Algorithm Depending upon CRC Polynomial */
        //r_shift[14]  <= (crc_poly[14]) ? (r_shift[14] ^ r_shift[13]) : r_shift[13];
        //r_shift[13]  <= (crc_poly[13]) ? (r_shift[14] ^ r_shift[12]) : r_shift[12];
        //r_shift[12]  <= (crc_poly[12]) ? (r_shift[14] ^ r_shift[11]) : r_shift[11];
        //r_shift[11]  <= (crc_poly[11]) ? (r_shift[14] ^ r_shift[10]) : r_shift[10];
        //r_shift[10]  <= (crc_poly[10]) ? (r_shift[14] ^ r_shift[9])  : r_shift[9];
        //r_shift[9]   <= (crc_poly[9])  ? (r_shift[14] ^ r_shift[8])  : r_shift[8];
        //r_shift[8]   <= (crc_poly[8])  ? (r_shift[14] ^ r_shift[7])  : r_shift[7];
            r_shift[7]   <= (crc_poly[7])  ? (r_shift[14] ^ r_shift[6])  : r_shift[6];
            r_shift[6]   <= (crc_poly[6])  ? (r_shift[14] ^ r_shift[5])  : r_shift[5];
            r_shift[5]   <= (crc_poly[5])  ? (r_shift[14] ^ r_shift[4])  : r_shift[4];
            r_shift[4]   <= (crc_poly[4])  ? (r_shift[14] ^ r_shift[3])  : r_shift[3];
            r_shift[3]   <= (crc_poly[3])  ? (r_shift[14] ^ r_shift[2])  : r_shift[2];
            r_shift[2]   <= (crc_poly[2])  ? (r_shift[14] ^ r_shift[1])  : r_shift[1];
            r_shift[1]   <= (crc_poly[1])  ? (r_shift[14] ^ r_shift[0])  : r_shift[0];
            r_shift[0]   <= (crc_poly[0])  ? (r_shift[14] ^ data_stream) : data_stream;
        

            counter <= counter - 1;
            state <= CRC_CALCULATE;
        end 
    end
    endcase
end
endmodule