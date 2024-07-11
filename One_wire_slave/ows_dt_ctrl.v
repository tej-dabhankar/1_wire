    `include "ows_header.vh"
    
    module ows_dt_ctrl (
            input clk,
            input write_ctrl,
            input start_flag,
            input [7:0] ROM_cmd,
            input [7:0] FUN_cmd,
            input [15:0] address,
            input [63:0] UID,
            input [7:0] wr_data,
            input crc_zero,
    
            output [3:0] mem_wr_add,
            output [7:0] mem_wr_dt,
            output snd_prsnc,
            output stop_flg
    );
    
    reg r_snd_prsnc;
    reg r_stop_flg;
    reg sd_uid_flg;
    reg rd_fun_flg;
    reg uid_mtc_flg;

    reg [7:0] r_mem_wr_dt;
    reg [2:0] r_mem_wr_add;
    reg [2:0] counter = 3'b010;
             
             
    reg [3:0]  state = 4'b0000;
    localparam idle = 4'h0;
    localparam rom_cmd =4'h1;
    localparam uid_dt = 4'h2;
    localparam wait_crc = 4'h3;
    localparam fun_cmd =4'h4;
    localparam write_data = 4'h5;
    
        
    always @(posedge clk) begin
        if (start_flag) begin
            r_snd_prsnc <=1'b1;
        end else begin
            r_snd_prsnc <=1'b0;
        end
        
      
  ///* FSM STARTS HERE *///     
  
        case (state) 
            idle: begin
                r_snd_prsnc<=0;
                r_stop_flg <=0;
                sd_uid_flg <=0;
                rd_fun_flg <=0;
                uid_mtc_flg <=0;

                r_mem_wr_dt <=0;
                r_mem_wr_add <=3'b101;
                counter = 3'b010;
             
                if ( start_flag) begin
                    state <= rom_cmd;
                end else begin
                    state <= idle;
                end
            end
            
            rom_cmd : begin
                if ( write_ctrl) begin 
                    if (ROM_cmd != `MATCH_ROM) begin
                        r_stop_flg <= 1'b1;
                        state <= idle;
                    end else begin
                        r_stop_flg <= 1'b0;
                        state <= uid_dt;
                    end
                end
            end
    
            uid_dt : begin
                if (write_ctrl) begin
                    state <= wait_crc;
                end
            end
    
            wait_crc : begin
                if (crc_zero) begin
                    uid_mtc_flg <= 1'b1;
                end
        
                if (uid_mtc_flg) begin
                    uid_mtc_flg <= 1'b0;
                    if (UID == `UID_DATA) begin
                        r_stop_flg <= 1'b0;
                        state  <= fun_cmd;
                    end else begin
                        r_stop_flg <= 1'b1;	
                        state <= idle;
                    end
                end 
            end                 
            
            fun_cmd : begin
                if (write_ctrl) begin
                    if (FUN_cmd == `WRITE_SCRPD) begin
                        state <= write_data;
                    end else begin
                        r_stop_flg <=1'b1;
                        state <= idle;
                    end
                end 
            end
            
            write_data: begin
                if (write_ctrl) begin
                    r_mem_wr_dt <= wr_data;
                    r_mem_wr_add <= counter;
                    
                    if (counter == 3'b100) begin
                            counter <= 3'b010;
                    end
                end
            end
        endcase			
    end 
    
            assign snd_prsnc = r_snd_prsnc;
            assign stop_flg = r_stop_flg;
            assign mem_wr_add = r_mem_wr_add;
            assign mem_wr_dt = r_mem_wr_dt;
            
    endmodule
        
            
    