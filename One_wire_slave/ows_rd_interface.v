module ows_rd_interface (
	input clk,
	input data_in,
	input stop_flg,
    
    output start_flag,
    output [DATA_WIDTH-1:0] data,
    output write
	);
    
parameter DATA_WIDTH =8;

    reg [31:0]  counter =0;
    reg [DATA_WIDTH:0] bit_counter = 0;
    reg [DATA_WIDTH:0] bit_count = 0; 
    reg [DATA_WIDTH:0] r_data = 0;
    reg r_write = 0;
    reg data_bit = 0;
    reg r_start =  0;
   
reg [2:0]  state = 3'h00;
localparam IDLE          = 3'h0;
localparam DETECT_BIT    = 3'h1;
localparam DETECT_DATA   = 3'h2;
localparam FETCH_DATA    = 3'h3;
localparam WRITE         = 3'h4;


    always @(posedge clk) begin
        if (stop_flg) begin
             state<= IDLE;
        end	else begin
            case (state)
            IDLE : begin
                counter =0;
                bit_count = 0;
                r_data = 0;
                r_start = 0;
                r_write = 0;
                data_bit = 0;
                r_start =  0;
                
                state <= DETECT_BIT;
            end
        
            DETECT_BIT : begin
                if (!data_in) begin
                    counter <= counter + 1;
                    state <= DETECT_BIT;
                end else begin
                    state <= DETECT_DATA;
                end
            end
     
            DETECT_DATA : begin
                if (counter >23950) begin
                    state <= IDLE;
                    counter<= 0;
                    r_start <= 1'b1;
                end else if ( counter > 1500) begin
                    counter<= 0;
                    data_bit <= 1'b0;
                    state <= FETCH_DATA;
                end else if (counter >500) begin
                    counter<= 0;
                    data_bit <=1'b1;
                    state <=  FETCH_DATA;
                end else begin 
                    counter<= 0;
                    state <=IDLE;
                end
            end
     
            FETCH_DATA :  begin
                r_data[bit_count]  = data_bit;			
                if ( bit_count <7) begin
                    bit_count <= bit_count + 1;
                    state  <= DETECT_BIT ;
                end else begin 
                    bit_count <= 0;
                    state <= WRITE;
                end
            end
            
            WRITE : begin
                r_write <= 1'b1;
                state <= IDLE;
            end
        endcase 
    end
end 
assign write =r_write;
assign data =r_data;
assign start_flag = r_start;

endmodule
