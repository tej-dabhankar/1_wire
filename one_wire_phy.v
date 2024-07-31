module one_wire_phy (
        input clk,
        input i_rx_serial,

      /* ome wire signal from the master*/
        input owm_in,
        output owm_out,
        output owm_oe,
      
      /* one wire slave signal */
        input ows_in,
        output ows_out,
        output ows_oe,
        output led
      );
      
    assign led =1'b1;


    one_wire_master  owm(
          .clk(clk),
           .i_rx_serial(i_rx_serial),
    
    /* one wire */
           .ow_in(owm_in),
           .ow_out(owm_out),
           .ow_oe(owm_oe)
    );    
    
    ows_top  owms(
          .clk(clk),
        
          .data_in(ows_in),
          .data_out(ows_out),
          .data_out_oe(data_oe)
    );
    
    endmodule
        