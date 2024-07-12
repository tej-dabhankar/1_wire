module ows_wr_interface (
	input clk,
	input snd_prsnc,
	input stop_flg,
	
	output data_out,
	output data_out_oe
);

reg r_dout = 1'b1;
reg r_dout_oe= 1'b0;
reg [31:0] counter = 0;

reg strt_counter= 0;
reg count_prsnc = 0;

always @(posedge clk) begin
 	if (stop_flg ) begin 
		counter <= 0;
		strt_counter <=1'b0; 
		count_prsnc <=1'b0;
	end else begin
        if (snd_prsnc) begin 	
            strt_counter <=1'b1;
        end
    
        if (strt_counter) begin		
            if (counter >= 3500) begin
                r_dout <= 1'b0;
                r_dout_oe <= 1'b1;
                count_prsnc <= 1'b1;
                strt_counter <= 1'b0;     
                counter <=0;  
            end else begin
                counter <= counter +1;
            end
        end
        
        if (count_prsnc) begin
            counter <= counter +1;
    
            if (counter == 20000) begin
                counter <= 0;
                r_dout <= 1;
                r_dout_oe <=1'b0;
                count_prsnc <= 1'b0;
            end
        end
    end
end
assign data_out = r_dout ;
assign data_out_oe = r_dout_oe;


endmodule
