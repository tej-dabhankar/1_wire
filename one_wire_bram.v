module one_wire_bram(
    // input from the cttrl pin
    input clk,
    input write,
    input [4:0] write_address,
    input [7:0] data_in,
    input reset,
  
    // input from the interface for data
    input [4:0] read_address,
    input read_en,
    output [7:0] data_out,
    output data_dv

);
   
    reg data_transfer_flag = 1'b0;
    reg [7:0] write_data_reg [0:31];
    reg [7:0] r_data_out;
    reg r_data_dv;
    integer i;

    
    // State machine parameters
    reg [1:0] state = 2'b00;    // State register initialized to IDLE state

    // Define states using localparam
    localparam IDLE = 2'b00;
    localparam HOLD = 2'b01;
    localparam DATA_TRANSFER = 2'b10;
  
    always @(posedge clk) begin
         if (reset) begin
            for (i=0; i<=31;i=i+1) begin
                write_data_reg [i] = 0;
            end
        end else begin
            if (write) write_data_reg[write_address] <= data_in;
        end
    end


always @(posedge clk) begin
    case (state)
        IDLE:  begin
            r_data_dv <= 0;
            state <=HOLD;
        end
        HOLD:begin
            if (read_en) begin
                data_transfer_flag <=1;
                state <= DATA_TRANSFER;
            end
            else begin
                state <= HOLD;
            end
        end

        DATA_TRANSFER:  begin
            r_data_out <= write_data_reg[read_address];
            r_data_dv <= 1;
            state <= IDLE;
        end
    endcase
end

assign data_out = r_data_out;
assign data_dv =r_data_dv;
endmodule