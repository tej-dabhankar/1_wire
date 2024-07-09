module ows_interface (
	input clk,
	input data_in,
    input data_en,
    
    output start_flag,
    output [DATA_WIDTH-1:0] data,
    output write
	);
    
parameter DATA_WIDTH =8;

reg [31:0]  counter =0;
reg [7:0] bit_counter = 0;
reg [7:0] bit_count = 0;

reg [7:0] r_data = 0;
reg r_write = 0;
reg data_bit = 0;
reg r_presence = 0;

reg [5:0]  state = 5'h00;

localparam IDLE = 5'h00;
localparam WAIT_START = 5'h1;
localparam START_PRESENCE = 5'h2;
localparam WAIT_PRESENCE = 5'h3;
localparam WAIT_DATA     = 5'h4;
localparam DETECT_BIT    = 5'h5;
localparam FETCH_DATA   = 5'h6;
localparam WRITE         = 5'h7;
localparam WAIT_WRITE    = 5'h8;


always @(posedge clk) begin
	case (state)
	   IDLE : begin
		counter <= 0;
		bit_counter <=0;
        bit_count <= 0;
        data_bit <=0;
		state <= WAIT_START;
	   end 	
          
	   WAIT_START :  begin
			if (!data_in) begin
				counter <= counter + 1;
				if (counter >23950) begin
					state <= WAIT_PRESENCE;
					counter<= 0;
				end else begin
					state <= WAIT_START;
				end
			end else begin
				state <= IDLE;
			end
		end

		START_PRESENCE : begin
            r_presence <=1'b1;
            state <= WAIT_PRESENCE;
        end

        WAIT_PRESENCE : begin
            r_presence <=1'b0;
            state <= WAIT_DATA;
		end								

		WAIT_DATA : begin
			if (!data_in) begin
				counter <= counter + 1;
				state <= WAIT_DATA;
            end else if (bit_counter > 3450) begin
				bit_counter <= 0;
				state <=DETECT_BIT;
			end else begin
				state  <= WAIT_DATA;
			end
        bit_counter <= bit_counter + 1;
		end

		DETECT_BIT : begin  
            if (counter > 20000) begin
                state <= START_PRESENCE;
            end else if (counter > 2000) begin
                state <= FETCH_DATA;
				data_bit <= 1'b0;
			end else if (counter >100) begin 
				data_bit <= 1'b1;
                state <= FETCH_DATA;
			end else begin
                state <= IDLE;
            end 
		end

		FETCH_DATA :  begin
            r_data[bit_count]  = data_bit;			
            if ( bit_count <7) begin
                bit_count <= bit_count + 1;
                state  <= WAIT_DATA ;
            end else begin 
                bit_count <= 0;
                state <= WRITE;
            end
        end
        
        WRITE : begin
            r_write <= 1'b1;
            state <= WAIT_WRITE;
        end
       
        WAIT_WRITE : begin
            r_write <= 1'b0;
            state <= WAIT_DATA;
        end
    endcase 
end

assign write =r_write;
assign data =r_data;

endmodule
