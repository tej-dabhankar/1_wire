module ows_data_select (
		input clk,
		input [data_width:0]  data,
        input write,
        input start_flg,
        input stop_flag,

		output [data_width:0] ROM_cmd,
		output [data_width:0] FUN_cmd,
		output [63:0] UID_dt,
		output [15:0] address,
		output [data_width:0] wr_data,
 		output write_ctrl
);


parameter data_width = 8;

    reg r_write_ctrl =0;
    reg [data_width:0] r_data = 0;
    reg [2:0] byte = 0;
    reg add_flag = 0;
    
    reg [data_width:0] r_ROM_cmd = 0;
    reg [data_width:0]  r_FUN_cmd = 0;
    reg [63:0] r_UID     = 0;
    reg [data_width:0]  r_add     = 0;
    reg [data_width:0] r_wr_data  = 0;
    reg [data_width:0] data_send = 0;
    
    
    reg [3:0]  data_Send = rom;
    localparam rom =4'b0000;
    localparam uid =4'b0001;
    localparam fun  =4'b0010;
    localparam add =4'b0011;

    
    reg [4:0] state = idle;
    localparam idle =5'h0;
    localparam wait_write = 5'h1;
    localparam data_fetch = 5'h2;

always @ (posedge clk) begin
    if (stop_flag) begin
        state <= idle;
    end else begin
        case (state)
            idle : begin
                r_write_ctrl =0;
                r_data = 0;
                byte = 0;
                add_flag = 0;
                r_ROM_cmd = 0;
                r_FUN_cmd = 0;
                r_UID     = 0;
                r_add     = 0;
                r_wr_data  = 0;
                data_Send = rom;
                
                if (start_flg ==1'b1) begin 
                    state <= wait_write;
                end 
            end
    
            wait_write : begin
                r_write_ctrl <=1'b0;
                if (write) begin
                    r_data <= data;
                    state <= data_fetch;
                end else begin
                    state <= wait_write;
                end
            end
            
            data_fetch : begin
                case (data_send)
                    rom : begin
                        r_ROM_cmd <= r_data;
                        r_write_ctrl <=1'b1;
                        data_send <= uid;
                    end
                    
                    uid : begin
                        r_UID [byte *data_width +: data_width] <= r_data;
                        if (byte == 5) begin
                            data_send <= fun;
                            byte <=0;		
                            r_write_ctrl <=1'b1;
                        end else begin 
                            byte <= byte +1;
                            data_send <=uid;	
                            r_write_ctrl <=1'b1;
                        end 
                    end
                    fun : begin
                        r_write_ctrl <=1'b1;
                        r_FUN_cmd <= r_data;
                        data_send <= add;	
                    end
                    add : begin
                        r_write_ctrl <=1'b1;
                        r_add[add_flag * data_width  +: data_width] <= r_data;
                        add_flag <=1'b1;
                        
                        if(add_flag ==1) begin
                            add_flag <=1'b0;
                            data_Send <= data;
                        end
                    end
                    data : 	begin 
                        r_write_ctrl <=1'b1;
                        r_wr_data <= r_data;
                        data_send <= data;
                        state <=wait_write;
                    end
                endcase
                if (start_flg) begin
                    state <= wait_write;
                    data_send <= rom;
                end
            end
        endcase	
    end
    end

	assign  ROM_cmd = r_ROM_cmd;
	assign  FUN_cmd = r_FUN_cmd;
	assign  UID_dt = r_UID;
	assign  address = r_add;
	assign  wr_data = r_wr_data;
    assign   write_ctrl = r_write_ctrl;
    
endmodule
