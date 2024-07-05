
//
// Verific Verilog Description of module one_wire_shifter
//

module one_wire_shifter (clk, data_valid, UID_Data, start_crc, data_stream);
    input clk /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;
    input data_valid /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;
    input [55:0]UID_Data /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;
    output start_crc /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    output data_stream /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    
    wire n83_2;
    wire n82_2;
    
    wire \data_count[0] , \r_UID_Data[0] , n65, n66, n67, n68, n69, 
        n70, n71, n72, n73, n74, n75, n76, n77, \data_count[1] , 
        \data_count[2] , \data_count[3] , \data_count[4] , \data_count[5] , 
        \data_count[6] , \data_count[7] , \r_UID_Data[1] , \r_UID_Data[2] , 
        \r_UID_Data[3] , \r_UID_Data[4] , \r_UID_Data[5] , \r_UID_Data[6] , 
        \r_UID_Data[7] , \r_UID_Data[8] , \r_UID_Data[9] , \r_UID_Data[10] , 
        \r_UID_Data[11] , \r_UID_Data[12] , \r_UID_Data[13] , \r_UID_Data[14] , 
        \r_UID_Data[15] , \r_UID_Data[16] , \r_UID_Data[17] , \r_UID_Data[18] , 
        \r_UID_Data[19] , \r_UID_Data[20] , \r_UID_Data[21] , \r_UID_Data[22] , 
        \r_UID_Data[23] , \r_UID_Data[24] , \r_UID_Data[25] , \r_UID_Data[26] , 
        \r_UID_Data[27] , \r_UID_Data[28] , \r_UID_Data[29] , \r_UID_Data[30] , 
        \r_UID_Data[31] , \r_UID_Data[32] , \r_UID_Data[33] , \r_UID_Data[34] , 
        \r_UID_Data[35] , \r_UID_Data[36] , \r_UID_Data[37] , \r_UID_Data[38] , 
        \r_UID_Data[39] , \r_UID_Data[40] , \r_UID_Data[41] , \r_UID_Data[42] , 
        \r_UID_Data[43] , \r_UID_Data[44] , \r_UID_Data[45] , \r_UID_Data[46] , 
        \r_UID_Data[47] , \r_UID_Data[48] , \r_UID_Data[49] , \r_UID_Data[50] , 
        \r_UID_Data[51] , \r_UID_Data[52] , \r_UID_Data[53] , \r_UID_Data[54] , 
        \r_UID_Data[55] , n80, n79, n78, \r_data_Stream~FF_brt_2_brt_5_q_pinv , 
        \r_data_Stream~FF_brt_1_brt_11_q , \r_data_Stream~FF_brt_1_brt_10_q , 
        \r_data_Stream~FF_brt_1_brt_9_q , \r_data_Stream~FF_brt_1_brt_8_q , 
        \r_data_Stream~FF_brt_2_brt_7_q , \r_data_Stream~FF_brt_2_brt_6_q , 
        \r_data_Stream~FF_brt_2_brt_5_q , \r_data_Stream~FF_brt_2_brt_4_q , 
        \r_data_Stream~FF_brt_3_q , \clk~O , \r_data_Stream~FF_brt_0_q , 
        n224, n225, n226, n227, n228, n229, n230, n231, n232, 
        n233, n234, n235, n236, n237, n238, n239, n240, n241, 
        n242, n243, n244, n245, n246, n247, n248, n249, n250, 
        n251, n252, n253, n254, n255, n256, n257, n258, n259, 
        n260, n261, n262, n263, n264, n265, n266, n267, n268, 
        n269;
    
    EFX_LUT4 LUT__361 (.I0(\data_count[6] ), .I1(\data_count[7] ), .I2(\data_count[4] ), 
            .I3(\data_count[5] ), .O(n224)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;
    defparam LUT__361.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__362 (.I0(\data_count[0] ), .I1(\data_count[1] ), .O(n225)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__362.LUTMASK = 16'h1111;
    EFX_FF \data_count[0]~FF  (.D(n83_2), .CE(start_crc), .CLK(\clk~O ), 
           .SR(1'b0), .Q(\data_count[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_shifter.v(38)
    defparam \data_count[0]~FF .CLK_POLARITY = 1'b1;
    defparam \data_count[0]~FF .CE_POLARITY = 1'b1;
    defparam \data_count[0]~FF .SR_POLARITY = 1'b1;
    defparam \data_count[0]~FF .D_POLARITY = 1'b1;
    defparam \data_count[0]~FF .SR_SYNC = 1'b1;
    defparam \data_count[0]~FF .SR_VALUE = 1'b0;
    defparam \data_count[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \start_crc~FF  (.D(1'b1), .CE(data_valid), .CLK(\clk~O ), .SR(1'b0), 
           .Q(start_crc)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_shifter.v(38)
    defparam \start_crc~FF .CLK_POLARITY = 1'b1;
    defparam \start_crc~FF .CE_POLARITY = 1'b1;
    defparam \start_crc~FF .SR_POLARITY = 1'b1;
    defparam \start_crc~FF .D_POLARITY = 1'b1;
    defparam \start_crc~FF .SR_SYNC = 1'b1;
    defparam \start_crc~FF .SR_VALUE = 1'b0;
    defparam \start_crc~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \r_data_Stream~FF_brt_2_brt_4  (.D(n261), .CE(start_crc), .CLK(\clk~O ), 
           .SR(1'b0), .Q(\r_data_Stream~FF_brt_2_brt_4_q )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1, INIT_VALUE=1'b0 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_shifter.v(38)
    defparam \r_data_Stream~FF_brt_2_brt_4 .CLK_POLARITY = 1'b1;
    defparam \r_data_Stream~FF_brt_2_brt_4 .CE_POLARITY = 1'b1;
    defparam \r_data_Stream~FF_brt_2_brt_4 .SR_POLARITY = 1'b1;
    defparam \r_data_Stream~FF_brt_2_brt_4 .D_POLARITY = 1'b1;
    defparam \r_data_Stream~FF_brt_2_brt_4 .SR_SYNC = 1'b1;
    defparam \r_data_Stream~FF_brt_2_brt_4 .SR_VALUE = 1'b0;
    defparam \r_data_Stream~FF_brt_2_brt_4 .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \r_UID_Data[0]~FF  (.D(UID_Data[0]), .CE(data_valid), .CLK(\clk~O ), 
           .SR(1'b0), .Q(\r_UID_Data[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_shifter.v(38)
    defparam \r_UID_Data[0]~FF .CLK_POLARITY = 1'b1;
    defparam \r_UID_Data[0]~FF .CE_POLARITY = 1'b1;
    defparam \r_UID_Data[0]~FF .SR_POLARITY = 1'b1;
    defparam \r_UID_Data[0]~FF .D_POLARITY = 1'b1;
    defparam \r_UID_Data[0]~FF .SR_SYNC = 1'b1;
    defparam \r_UID_Data[0]~FF .SR_VALUE = 1'b0;
    defparam \r_UID_Data[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \data_count[1]~FF  (.D(n82_2), .CE(start_crc), .CLK(\clk~O ), 
           .SR(1'b0), .Q(\data_count[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_shifter.v(38)
    defparam \data_count[1]~FF .CLK_POLARITY = 1'b1;
    defparam \data_count[1]~FF .CE_POLARITY = 1'b1;
    defparam \data_count[1]~FF .SR_POLARITY = 1'b1;
    defparam \data_count[1]~FF .D_POLARITY = 1'b1;
    defparam \data_count[1]~FF .SR_SYNC = 1'b1;
    defparam \data_count[1]~FF .SR_VALUE = 1'b0;
    defparam \data_count[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \data_count[2]~FF  (.D(n71), .CE(start_crc), .CLK(\clk~O ), 
           .SR(1'b0), .Q(\data_count[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_shifter.v(38)
    defparam \data_count[2]~FF .CLK_POLARITY = 1'b1;
    defparam \data_count[2]~FF .CE_POLARITY = 1'b1;
    defparam \data_count[2]~FF .SR_POLARITY = 1'b1;
    defparam \data_count[2]~FF .D_POLARITY = 1'b1;
    defparam \data_count[2]~FF .SR_SYNC = 1'b1;
    defparam \data_count[2]~FF .SR_VALUE = 1'b0;
    defparam \data_count[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \data_count[3]~FF  (.D(n80), .CE(start_crc), .CLK(\clk~O ), 
           .SR(1'b0), .Q(\data_count[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_shifter.v(38)
    defparam \data_count[3]~FF .CLK_POLARITY = 1'b1;
    defparam \data_count[3]~FF .CE_POLARITY = 1'b1;
    defparam \data_count[3]~FF .SR_POLARITY = 1'b1;
    defparam \data_count[3]~FF .D_POLARITY = 1'b1;
    defparam \data_count[3]~FF .SR_SYNC = 1'b1;
    defparam \data_count[3]~FF .SR_VALUE = 1'b0;
    defparam \data_count[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \data_count[4]~FF  (.D(n79), .CE(start_crc), .CLK(\clk~O ), 
           .SR(1'b0), .Q(\data_count[4] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_shifter.v(38)
    defparam \data_count[4]~FF .CLK_POLARITY = 1'b1;
    defparam \data_count[4]~FF .CE_POLARITY = 1'b1;
    defparam \data_count[4]~FF .SR_POLARITY = 1'b1;
    defparam \data_count[4]~FF .D_POLARITY = 1'b1;
    defparam \data_count[4]~FF .SR_SYNC = 1'b1;
    defparam \data_count[4]~FF .SR_VALUE = 1'b0;
    defparam \data_count[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \data_count[5]~FF  (.D(n78), .CE(start_crc), .CLK(\clk~O ), 
           .SR(1'b0), .Q(\data_count[5] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_shifter.v(38)
    defparam \data_count[5]~FF .CLK_POLARITY = 1'b1;
    defparam \data_count[5]~FF .CE_POLARITY = 1'b1;
    defparam \data_count[5]~FF .SR_POLARITY = 1'b1;
    defparam \data_count[5]~FF .D_POLARITY = 1'b1;
    defparam \data_count[5]~FF .SR_SYNC = 1'b1;
    defparam \data_count[5]~FF .SR_VALUE = 1'b0;
    defparam \data_count[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \data_count[6]~FF  (.D(n76), .CE(start_crc), .CLK(\clk~O ), 
           .SR(1'b0), .Q(\data_count[6] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_shifter.v(38)
    defparam \data_count[6]~FF .CLK_POLARITY = 1'b1;
    defparam \data_count[6]~FF .CE_POLARITY = 1'b1;
    defparam \data_count[6]~FF .SR_POLARITY = 1'b1;
    defparam \data_count[6]~FF .D_POLARITY = 1'b1;
    defparam \data_count[6]~FF .SR_SYNC = 1'b1;
    defparam \data_count[6]~FF .SR_VALUE = 1'b0;
    defparam \data_count[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \data_count[7]~FF  (.D(n75), .CE(start_crc), .CLK(\clk~O ), 
           .SR(1'b0), .Q(\data_count[7] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_shifter.v(38)
    defparam \data_count[7]~FF .CLK_POLARITY = 1'b1;
    defparam \data_count[7]~FF .CE_POLARITY = 1'b1;
    defparam \data_count[7]~FF .SR_POLARITY = 1'b1;
    defparam \data_count[7]~FF .D_POLARITY = 1'b1;
    defparam \data_count[7]~FF .SR_SYNC = 1'b1;
    defparam \data_count[7]~FF .SR_VALUE = 1'b0;
    defparam \data_count[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \r_UID_Data[1]~FF  (.D(UID_Data[1]), .CE(data_valid), .CLK(\clk~O ), 
           .SR(1'b0), .Q(\r_UID_Data[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_shifter.v(38)
    defparam \r_UID_Data[1]~FF .CLK_POLARITY = 1'b1;
    defparam \r_UID_Data[1]~FF .CE_POLARITY = 1'b1;
    defparam \r_UID_Data[1]~FF .SR_POLARITY = 1'b1;
    defparam \r_UID_Data[1]~FF .D_POLARITY = 1'b1;
    defparam \r_UID_Data[1]~FF .SR_SYNC = 1'b1;
    defparam \r_UID_Data[1]~FF .SR_VALUE = 1'b0;
    defparam \r_UID_Data[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \r_UID_Data[2]~FF  (.D(UID_Data[2]), .CE(data_valid), .CLK(\clk~O ), 
           .SR(1'b0), .Q(\r_UID_Data[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_shifter.v(38)
    defparam \r_UID_Data[2]~FF .CLK_POLARITY = 1'b1;
    defparam \r_UID_Data[2]~FF .CE_POLARITY = 1'b1;
    defparam \r_UID_Data[2]~FF .SR_POLARITY = 1'b1;
    defparam \r_UID_Data[2]~FF .D_POLARITY = 1'b1;
    defparam \r_UID_Data[2]~FF .SR_SYNC = 1'b1;
    defparam \r_UID_Data[2]~FF .SR_VALUE = 1'b0;
    defparam \r_UID_Data[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \r_UID_Data[3]~FF  (.D(UID_Data[3]), .CE(data_valid), .CLK(\clk~O ), 
           .SR(1'b0), .Q(\r_UID_Data[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_shifter.v(38)
    defparam \r_UID_Data[3]~FF .CLK_POLARITY = 1'b1;
    defparam \r_UID_Data[3]~FF .CE_POLARITY = 1'b1;
    defparam \r_UID_Data[3]~FF .SR_POLARITY = 1'b1;
    defparam \r_UID_Data[3]~FF .D_POLARITY = 1'b1;
    defparam \r_UID_Data[3]~FF .SR_SYNC = 1'b1;
    defparam \r_UID_Data[3]~FF .SR_VALUE = 1'b0;
    defparam \r_UID_Data[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \r_UID_Data[4]~FF  (.D(UID_Data[4]), .CE(data_valid), .CLK(\clk~O ), 
           .SR(1'b0), .Q(\r_UID_Data[4] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_shifter.v(38)
    defparam \r_UID_Data[4]~FF .CLK_POLARITY = 1'b1;
    defparam \r_UID_Data[4]~FF .CE_POLARITY = 1'b1;
    defparam \r_UID_Data[4]~FF .SR_POLARITY = 1'b1;
    defparam \r_UID_Data[4]~FF .D_POLARITY = 1'b1;
    defparam \r_UID_Data[4]~FF .SR_SYNC = 1'b1;
    defparam \r_UID_Data[4]~FF .SR_VALUE = 1'b0;
    defparam \r_UID_Data[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \r_UID_Data[5]~FF  (.D(UID_Data[5]), .CE(data_valid), .CLK(\clk~O ), 
           .SR(1'b0), .Q(\r_UID_Data[5] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_shifter.v(38)
    defparam \r_UID_Data[5]~FF .CLK_POLARITY = 1'b1;
    defparam \r_UID_Data[5]~FF .CE_POLARITY = 1'b1;
    defparam \r_UID_Data[5]~FF .SR_POLARITY = 1'b1;
    defparam \r_UID_Data[5]~FF .D_POLARITY = 1'b1;
    defparam \r_UID_Data[5]~FF .SR_SYNC = 1'b1;
    defparam \r_UID_Data[5]~FF .SR_VALUE = 1'b0;
    defparam \r_UID_Data[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \r_UID_Data[6]~FF  (.D(UID_Data[6]), .CE(data_valid), .CLK(\clk~O ), 
           .SR(1'b0), .Q(\r_UID_Data[6] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_shifter.v(38)
    defparam \r_UID_Data[6]~FF .CLK_POLARITY = 1'b1;
    defparam \r_UID_Data[6]~FF .CE_POLARITY = 1'b1;
    defparam \r_UID_Data[6]~FF .SR_POLARITY = 1'b1;
    defparam \r_UID_Data[6]~FF .D_POLARITY = 1'b1;
    defparam \r_UID_Data[6]~FF .SR_SYNC = 1'b1;
    defparam \r_UID_Data[6]~FF .SR_VALUE = 1'b0;
    defparam \r_UID_Data[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \r_UID_Data[7]~FF  (.D(UID_Data[7]), .CE(data_valid), .CLK(\clk~O ), 
           .SR(1'b0), .Q(\r_UID_Data[7] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_shifter.v(38)
    defparam \r_UID_Data[7]~FF .CLK_POLARITY = 1'b1;
    defparam \r_UID_Data[7]~FF .CE_POLARITY = 1'b1;
    defparam \r_UID_Data[7]~FF .SR_POLARITY = 1'b1;
    defparam \r_UID_Data[7]~FF .D_POLARITY = 1'b1;
    defparam \r_UID_Data[7]~FF .SR_SYNC = 1'b1;
    defparam \r_UID_Data[7]~FF .SR_VALUE = 1'b0;
    defparam \r_UID_Data[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \r_UID_Data[8]~FF  (.D(UID_Data[8]), .CE(data_valid), .CLK(\clk~O ), 
           .SR(1'b0), .Q(\r_UID_Data[8] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_shifter.v(38)
    defparam \r_UID_Data[8]~FF .CLK_POLARITY = 1'b1;
    defparam \r_UID_Data[8]~FF .CE_POLARITY = 1'b1;
    defparam \r_UID_Data[8]~FF .SR_POLARITY = 1'b1;
    defparam \r_UID_Data[8]~FF .D_POLARITY = 1'b1;
    defparam \r_UID_Data[8]~FF .SR_SYNC = 1'b1;
    defparam \r_UID_Data[8]~FF .SR_VALUE = 1'b0;
    defparam \r_UID_Data[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \r_UID_Data[9]~FF  (.D(UID_Data[9]), .CE(data_valid), .CLK(\clk~O ), 
           .SR(1'b0), .Q(\r_UID_Data[9] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_shifter.v(38)
    defparam \r_UID_Data[9]~FF .CLK_POLARITY = 1'b1;
    defparam \r_UID_Data[9]~FF .CE_POLARITY = 1'b1;
    defparam \r_UID_Data[9]~FF .SR_POLARITY = 1'b1;
    defparam \r_UID_Data[9]~FF .D_POLARITY = 1'b1;
    defparam \r_UID_Data[9]~FF .SR_SYNC = 1'b1;
    defparam \r_UID_Data[9]~FF .SR_VALUE = 1'b0;
    defparam \r_UID_Data[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \r_UID_Data[10]~FF  (.D(UID_Data[10]), .CE(data_valid), .CLK(\clk~O ), 
           .SR(1'b0), .Q(\r_UID_Data[10] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_shifter.v(38)
    defparam \r_UID_Data[10]~FF .CLK_POLARITY = 1'b1;
    defparam \r_UID_Data[10]~FF .CE_POLARITY = 1'b1;
    defparam \r_UID_Data[10]~FF .SR_POLARITY = 1'b1;
    defparam \r_UID_Data[10]~FF .D_POLARITY = 1'b1;
    defparam \r_UID_Data[10]~FF .SR_SYNC = 1'b1;
    defparam \r_UID_Data[10]~FF .SR_VALUE = 1'b0;
    defparam \r_UID_Data[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \r_UID_Data[11]~FF  (.D(UID_Data[11]), .CE(data_valid), .CLK(\clk~O ), 
           .SR(1'b0), .Q(\r_UID_Data[11] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_shifter.v(38)
    defparam \r_UID_Data[11]~FF .CLK_POLARITY = 1'b1;
    defparam \r_UID_Data[11]~FF .CE_POLARITY = 1'b1;
    defparam \r_UID_Data[11]~FF .SR_POLARITY = 1'b1;
    defparam \r_UID_Data[11]~FF .D_POLARITY = 1'b1;
    defparam \r_UID_Data[11]~FF .SR_SYNC = 1'b1;
    defparam \r_UID_Data[11]~FF .SR_VALUE = 1'b0;
    defparam \r_UID_Data[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \r_UID_Data[12]~FF  (.D(UID_Data[12]), .CE(data_valid), .CLK(\clk~O ), 
           .SR(1'b0), .Q(\r_UID_Data[12] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_shifter.v(38)
    defparam \r_UID_Data[12]~FF .CLK_POLARITY = 1'b1;
    defparam \r_UID_Data[12]~FF .CE_POLARITY = 1'b1;
    defparam \r_UID_Data[12]~FF .SR_POLARITY = 1'b1;
    defparam \r_UID_Data[12]~FF .D_POLARITY = 1'b1;
    defparam \r_UID_Data[12]~FF .SR_SYNC = 1'b1;
    defparam \r_UID_Data[12]~FF .SR_VALUE = 1'b0;
    defparam \r_UID_Data[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \r_UID_Data[13]~FF  (.D(UID_Data[13]), .CE(data_valid), .CLK(\clk~O ), 
           .SR(1'b0), .Q(\r_UID_Data[13] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_shifter.v(38)
    defparam \r_UID_Data[13]~FF .CLK_POLARITY = 1'b1;
    defparam \r_UID_Data[13]~FF .CE_POLARITY = 1'b1;
    defparam \r_UID_Data[13]~FF .SR_POLARITY = 1'b1;
    defparam \r_UID_Data[13]~FF .D_POLARITY = 1'b1;
    defparam \r_UID_Data[13]~FF .SR_SYNC = 1'b1;
    defparam \r_UID_Data[13]~FF .SR_VALUE = 1'b0;
    defparam \r_UID_Data[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \r_UID_Data[14]~FF  (.D(UID_Data[14]), .CE(data_valid), .CLK(\clk~O ), 
           .SR(1'b0), .Q(\r_UID_Data[14] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_shifter.v(38)
    defparam \r_UID_Data[14]~FF .CLK_POLARITY = 1'b1;
    defparam \r_UID_Data[14]~FF .CE_POLARITY = 1'b1;
    defparam \r_UID_Data[14]~FF .SR_POLARITY = 1'b1;
    defparam \r_UID_Data[14]~FF .D_POLARITY = 1'b1;
    defparam \r_UID_Data[14]~FF .SR_SYNC = 1'b1;
    defparam \r_UID_Data[14]~FF .SR_VALUE = 1'b0;
    defparam \r_UID_Data[14]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \r_UID_Data[15]~FF  (.D(UID_Data[15]), .CE(data_valid), .CLK(\clk~O ), 
           .SR(1'b0), .Q(\r_UID_Data[15] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_shifter.v(38)
    defparam \r_UID_Data[15]~FF .CLK_POLARITY = 1'b1;
    defparam \r_UID_Data[15]~FF .CE_POLARITY = 1'b1;
    defparam \r_UID_Data[15]~FF .SR_POLARITY = 1'b1;
    defparam \r_UID_Data[15]~FF .D_POLARITY = 1'b1;
    defparam \r_UID_Data[15]~FF .SR_SYNC = 1'b1;
    defparam \r_UID_Data[15]~FF .SR_VALUE = 1'b0;
    defparam \r_UID_Data[15]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \r_UID_Data[16]~FF  (.D(UID_Data[16]), .CE(data_valid), .CLK(\clk~O ), 
           .SR(1'b0), .Q(\r_UID_Data[16] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_shifter.v(38)
    defparam \r_UID_Data[16]~FF .CLK_POLARITY = 1'b1;
    defparam \r_UID_Data[16]~FF .CE_POLARITY = 1'b1;
    defparam \r_UID_Data[16]~FF .SR_POLARITY = 1'b1;
    defparam \r_UID_Data[16]~FF .D_POLARITY = 1'b1;
    defparam \r_UID_Data[16]~FF .SR_SYNC = 1'b1;
    defparam \r_UID_Data[16]~FF .SR_VALUE = 1'b0;
    defparam \r_UID_Data[16]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \r_UID_Data[17]~FF  (.D(UID_Data[17]), .CE(data_valid), .CLK(\clk~O ), 
           .SR(1'b0), .Q(\r_UID_Data[17] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_shifter.v(38)
    defparam \r_UID_Data[17]~FF .CLK_POLARITY = 1'b1;
    defparam \r_UID_Data[17]~FF .CE_POLARITY = 1'b1;
    defparam \r_UID_Data[17]~FF .SR_POLARITY = 1'b1;
    defparam \r_UID_Data[17]~FF .D_POLARITY = 1'b1;
    defparam \r_UID_Data[17]~FF .SR_SYNC = 1'b1;
    defparam \r_UID_Data[17]~FF .SR_VALUE = 1'b0;
    defparam \r_UID_Data[17]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \r_UID_Data[18]~FF  (.D(UID_Data[18]), .CE(data_valid), .CLK(\clk~O ), 
           .SR(1'b0), .Q(\r_UID_Data[18] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_shifter.v(38)
    defparam \r_UID_Data[18]~FF .CLK_POLARITY = 1'b1;
    defparam \r_UID_Data[18]~FF .CE_POLARITY = 1'b1;
    defparam \r_UID_Data[18]~FF .SR_POLARITY = 1'b1;
    defparam \r_UID_Data[18]~FF .D_POLARITY = 1'b1;
    defparam \r_UID_Data[18]~FF .SR_SYNC = 1'b1;
    defparam \r_UID_Data[18]~FF .SR_VALUE = 1'b0;
    defparam \r_UID_Data[18]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \r_UID_Data[19]~FF  (.D(UID_Data[19]), .CE(data_valid), .CLK(\clk~O ), 
           .SR(1'b0), .Q(\r_UID_Data[19] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_shifter.v(38)
    defparam \r_UID_Data[19]~FF .CLK_POLARITY = 1'b1;
    defparam \r_UID_Data[19]~FF .CE_POLARITY = 1'b1;
    defparam \r_UID_Data[19]~FF .SR_POLARITY = 1'b1;
    defparam \r_UID_Data[19]~FF .D_POLARITY = 1'b1;
    defparam \r_UID_Data[19]~FF .SR_SYNC = 1'b1;
    defparam \r_UID_Data[19]~FF .SR_VALUE = 1'b0;
    defparam \r_UID_Data[19]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \r_UID_Data[20]~FF  (.D(UID_Data[20]), .CE(data_valid), .CLK(\clk~O ), 
           .SR(1'b0), .Q(\r_UID_Data[20] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_shifter.v(38)
    defparam \r_UID_Data[20]~FF .CLK_POLARITY = 1'b1;
    defparam \r_UID_Data[20]~FF .CE_POLARITY = 1'b1;
    defparam \r_UID_Data[20]~FF .SR_POLARITY = 1'b1;
    defparam \r_UID_Data[20]~FF .D_POLARITY = 1'b1;
    defparam \r_UID_Data[20]~FF .SR_SYNC = 1'b1;
    defparam \r_UID_Data[20]~FF .SR_VALUE = 1'b0;
    defparam \r_UID_Data[20]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \r_UID_Data[21]~FF  (.D(UID_Data[21]), .CE(data_valid), .CLK(\clk~O ), 
           .SR(1'b0), .Q(\r_UID_Data[21] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_shifter.v(38)
    defparam \r_UID_Data[21]~FF .CLK_POLARITY = 1'b1;
    defparam \r_UID_Data[21]~FF .CE_POLARITY = 1'b1;
    defparam \r_UID_Data[21]~FF .SR_POLARITY = 1'b1;
    defparam \r_UID_Data[21]~FF .D_POLARITY = 1'b1;
    defparam \r_UID_Data[21]~FF .SR_SYNC = 1'b1;
    defparam \r_UID_Data[21]~FF .SR_VALUE = 1'b0;
    defparam \r_UID_Data[21]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \r_UID_Data[22]~FF  (.D(UID_Data[22]), .CE(data_valid), .CLK(\clk~O ), 
           .SR(1'b0), .Q(\r_UID_Data[22] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_shifter.v(38)
    defparam \r_UID_Data[22]~FF .CLK_POLARITY = 1'b1;
    defparam \r_UID_Data[22]~FF .CE_POLARITY = 1'b1;
    defparam \r_UID_Data[22]~FF .SR_POLARITY = 1'b1;
    defparam \r_UID_Data[22]~FF .D_POLARITY = 1'b1;
    defparam \r_UID_Data[22]~FF .SR_SYNC = 1'b1;
    defparam \r_UID_Data[22]~FF .SR_VALUE = 1'b0;
    defparam \r_UID_Data[22]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \r_UID_Data[23]~FF  (.D(UID_Data[23]), .CE(data_valid), .CLK(\clk~O ), 
           .SR(1'b0), .Q(\r_UID_Data[23] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_shifter.v(38)
    defparam \r_UID_Data[23]~FF .CLK_POLARITY = 1'b1;
    defparam \r_UID_Data[23]~FF .CE_POLARITY = 1'b1;
    defparam \r_UID_Data[23]~FF .SR_POLARITY = 1'b1;
    defparam \r_UID_Data[23]~FF .D_POLARITY = 1'b1;
    defparam \r_UID_Data[23]~FF .SR_SYNC = 1'b1;
    defparam \r_UID_Data[23]~FF .SR_VALUE = 1'b0;
    defparam \r_UID_Data[23]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \r_UID_Data[24]~FF  (.D(UID_Data[24]), .CE(data_valid), .CLK(\clk~O ), 
           .SR(1'b0), .Q(\r_UID_Data[24] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_shifter.v(38)
    defparam \r_UID_Data[24]~FF .CLK_POLARITY = 1'b1;
    defparam \r_UID_Data[24]~FF .CE_POLARITY = 1'b1;
    defparam \r_UID_Data[24]~FF .SR_POLARITY = 1'b1;
    defparam \r_UID_Data[24]~FF .D_POLARITY = 1'b1;
    defparam \r_UID_Data[24]~FF .SR_SYNC = 1'b1;
    defparam \r_UID_Data[24]~FF .SR_VALUE = 1'b0;
    defparam \r_UID_Data[24]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \r_UID_Data[25]~FF  (.D(UID_Data[25]), .CE(data_valid), .CLK(\clk~O ), 
           .SR(1'b0), .Q(\r_UID_Data[25] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_shifter.v(38)
    defparam \r_UID_Data[25]~FF .CLK_POLARITY = 1'b1;
    defparam \r_UID_Data[25]~FF .CE_POLARITY = 1'b1;
    defparam \r_UID_Data[25]~FF .SR_POLARITY = 1'b1;
    defparam \r_UID_Data[25]~FF .D_POLARITY = 1'b1;
    defparam \r_UID_Data[25]~FF .SR_SYNC = 1'b1;
    defparam \r_UID_Data[25]~FF .SR_VALUE = 1'b0;
    defparam \r_UID_Data[25]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \r_UID_Data[26]~FF  (.D(UID_Data[26]), .CE(data_valid), .CLK(\clk~O ), 
           .SR(1'b0), .Q(\r_UID_Data[26] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_shifter.v(38)
    defparam \r_UID_Data[26]~FF .CLK_POLARITY = 1'b1;
    defparam \r_UID_Data[26]~FF .CE_POLARITY = 1'b1;
    defparam \r_UID_Data[26]~FF .SR_POLARITY = 1'b1;
    defparam \r_UID_Data[26]~FF .D_POLARITY = 1'b1;
    defparam \r_UID_Data[26]~FF .SR_SYNC = 1'b1;
    defparam \r_UID_Data[26]~FF .SR_VALUE = 1'b0;
    defparam \r_UID_Data[26]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \r_UID_Data[27]~FF  (.D(UID_Data[27]), .CE(data_valid), .CLK(\clk~O ), 
           .SR(1'b0), .Q(\r_UID_Data[27] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_shifter.v(38)
    defparam \r_UID_Data[27]~FF .CLK_POLARITY = 1'b1;
    defparam \r_UID_Data[27]~FF .CE_POLARITY = 1'b1;
    defparam \r_UID_Data[27]~FF .SR_POLARITY = 1'b1;
    defparam \r_UID_Data[27]~FF .D_POLARITY = 1'b1;
    defparam \r_UID_Data[27]~FF .SR_SYNC = 1'b1;
    defparam \r_UID_Data[27]~FF .SR_VALUE = 1'b0;
    defparam \r_UID_Data[27]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \r_UID_Data[28]~FF  (.D(UID_Data[28]), .CE(data_valid), .CLK(\clk~O ), 
           .SR(1'b0), .Q(\r_UID_Data[28] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_shifter.v(38)
    defparam \r_UID_Data[28]~FF .CLK_POLARITY = 1'b1;
    defparam \r_UID_Data[28]~FF .CE_POLARITY = 1'b1;
    defparam \r_UID_Data[28]~FF .SR_POLARITY = 1'b1;
    defparam \r_UID_Data[28]~FF .D_POLARITY = 1'b1;
    defparam \r_UID_Data[28]~FF .SR_SYNC = 1'b1;
    defparam \r_UID_Data[28]~FF .SR_VALUE = 1'b0;
    defparam \r_UID_Data[28]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \r_UID_Data[29]~FF  (.D(UID_Data[29]), .CE(data_valid), .CLK(\clk~O ), 
           .SR(1'b0), .Q(\r_UID_Data[29] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_shifter.v(38)
    defparam \r_UID_Data[29]~FF .CLK_POLARITY = 1'b1;
    defparam \r_UID_Data[29]~FF .CE_POLARITY = 1'b1;
    defparam \r_UID_Data[29]~FF .SR_POLARITY = 1'b1;
    defparam \r_UID_Data[29]~FF .D_POLARITY = 1'b1;
    defparam \r_UID_Data[29]~FF .SR_SYNC = 1'b1;
    defparam \r_UID_Data[29]~FF .SR_VALUE = 1'b0;
    defparam \r_UID_Data[29]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \r_UID_Data[30]~FF  (.D(UID_Data[30]), .CE(data_valid), .CLK(\clk~O ), 
           .SR(1'b0), .Q(\r_UID_Data[30] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_shifter.v(38)
    defparam \r_UID_Data[30]~FF .CLK_POLARITY = 1'b1;
    defparam \r_UID_Data[30]~FF .CE_POLARITY = 1'b1;
    defparam \r_UID_Data[30]~FF .SR_POLARITY = 1'b1;
    defparam \r_UID_Data[30]~FF .D_POLARITY = 1'b1;
    defparam \r_UID_Data[30]~FF .SR_SYNC = 1'b1;
    defparam \r_UID_Data[30]~FF .SR_VALUE = 1'b0;
    defparam \r_UID_Data[30]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \r_UID_Data[31]~FF  (.D(UID_Data[31]), .CE(data_valid), .CLK(\clk~O ), 
           .SR(1'b0), .Q(\r_UID_Data[31] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_shifter.v(38)
    defparam \r_UID_Data[31]~FF .CLK_POLARITY = 1'b1;
    defparam \r_UID_Data[31]~FF .CE_POLARITY = 1'b1;
    defparam \r_UID_Data[31]~FF .SR_POLARITY = 1'b1;
    defparam \r_UID_Data[31]~FF .D_POLARITY = 1'b1;
    defparam \r_UID_Data[31]~FF .SR_SYNC = 1'b1;
    defparam \r_UID_Data[31]~FF .SR_VALUE = 1'b0;
    defparam \r_UID_Data[31]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \r_UID_Data[32]~FF  (.D(UID_Data[32]), .CE(data_valid), .CLK(\clk~O ), 
           .SR(1'b0), .Q(\r_UID_Data[32] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_shifter.v(38)
    defparam \r_UID_Data[32]~FF .CLK_POLARITY = 1'b1;
    defparam \r_UID_Data[32]~FF .CE_POLARITY = 1'b1;
    defparam \r_UID_Data[32]~FF .SR_POLARITY = 1'b1;
    defparam \r_UID_Data[32]~FF .D_POLARITY = 1'b1;
    defparam \r_UID_Data[32]~FF .SR_SYNC = 1'b1;
    defparam \r_UID_Data[32]~FF .SR_VALUE = 1'b0;
    defparam \r_UID_Data[32]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \r_UID_Data[33]~FF  (.D(UID_Data[33]), .CE(data_valid), .CLK(\clk~O ), 
           .SR(1'b0), .Q(\r_UID_Data[33] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_shifter.v(38)
    defparam \r_UID_Data[33]~FF .CLK_POLARITY = 1'b1;
    defparam \r_UID_Data[33]~FF .CE_POLARITY = 1'b1;
    defparam \r_UID_Data[33]~FF .SR_POLARITY = 1'b1;
    defparam \r_UID_Data[33]~FF .D_POLARITY = 1'b1;
    defparam \r_UID_Data[33]~FF .SR_SYNC = 1'b1;
    defparam \r_UID_Data[33]~FF .SR_VALUE = 1'b0;
    defparam \r_UID_Data[33]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \r_UID_Data[34]~FF  (.D(UID_Data[34]), .CE(data_valid), .CLK(\clk~O ), 
           .SR(1'b0), .Q(\r_UID_Data[34] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_shifter.v(38)
    defparam \r_UID_Data[34]~FF .CLK_POLARITY = 1'b1;
    defparam \r_UID_Data[34]~FF .CE_POLARITY = 1'b1;
    defparam \r_UID_Data[34]~FF .SR_POLARITY = 1'b1;
    defparam \r_UID_Data[34]~FF .D_POLARITY = 1'b1;
    defparam \r_UID_Data[34]~FF .SR_SYNC = 1'b1;
    defparam \r_UID_Data[34]~FF .SR_VALUE = 1'b0;
    defparam \r_UID_Data[34]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \r_UID_Data[35]~FF  (.D(UID_Data[35]), .CE(data_valid), .CLK(\clk~O ), 
           .SR(1'b0), .Q(\r_UID_Data[35] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_shifter.v(38)
    defparam \r_UID_Data[35]~FF .CLK_POLARITY = 1'b1;
    defparam \r_UID_Data[35]~FF .CE_POLARITY = 1'b1;
    defparam \r_UID_Data[35]~FF .SR_POLARITY = 1'b1;
    defparam \r_UID_Data[35]~FF .D_POLARITY = 1'b1;
    defparam \r_UID_Data[35]~FF .SR_SYNC = 1'b1;
    defparam \r_UID_Data[35]~FF .SR_VALUE = 1'b0;
    defparam \r_UID_Data[35]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \r_UID_Data[36]~FF  (.D(UID_Data[36]), .CE(data_valid), .CLK(\clk~O ), 
           .SR(1'b0), .Q(\r_UID_Data[36] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_shifter.v(38)
    defparam \r_UID_Data[36]~FF .CLK_POLARITY = 1'b1;
    defparam \r_UID_Data[36]~FF .CE_POLARITY = 1'b1;
    defparam \r_UID_Data[36]~FF .SR_POLARITY = 1'b1;
    defparam \r_UID_Data[36]~FF .D_POLARITY = 1'b1;
    defparam \r_UID_Data[36]~FF .SR_SYNC = 1'b1;
    defparam \r_UID_Data[36]~FF .SR_VALUE = 1'b0;
    defparam \r_UID_Data[36]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \r_UID_Data[37]~FF  (.D(UID_Data[37]), .CE(data_valid), .CLK(\clk~O ), 
           .SR(1'b0), .Q(\r_UID_Data[37] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_shifter.v(38)
    defparam \r_UID_Data[37]~FF .CLK_POLARITY = 1'b1;
    defparam \r_UID_Data[37]~FF .CE_POLARITY = 1'b1;
    defparam \r_UID_Data[37]~FF .SR_POLARITY = 1'b1;
    defparam \r_UID_Data[37]~FF .D_POLARITY = 1'b1;
    defparam \r_UID_Data[37]~FF .SR_SYNC = 1'b1;
    defparam \r_UID_Data[37]~FF .SR_VALUE = 1'b0;
    defparam \r_UID_Data[37]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \r_UID_Data[38]~FF  (.D(UID_Data[38]), .CE(data_valid), .CLK(\clk~O ), 
           .SR(1'b0), .Q(\r_UID_Data[38] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_shifter.v(38)
    defparam \r_UID_Data[38]~FF .CLK_POLARITY = 1'b1;
    defparam \r_UID_Data[38]~FF .CE_POLARITY = 1'b1;
    defparam \r_UID_Data[38]~FF .SR_POLARITY = 1'b1;
    defparam \r_UID_Data[38]~FF .D_POLARITY = 1'b1;
    defparam \r_UID_Data[38]~FF .SR_SYNC = 1'b1;
    defparam \r_UID_Data[38]~FF .SR_VALUE = 1'b0;
    defparam \r_UID_Data[38]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \r_UID_Data[39]~FF  (.D(UID_Data[39]), .CE(data_valid), .CLK(\clk~O ), 
           .SR(1'b0), .Q(\r_UID_Data[39] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_shifter.v(38)
    defparam \r_UID_Data[39]~FF .CLK_POLARITY = 1'b1;
    defparam \r_UID_Data[39]~FF .CE_POLARITY = 1'b1;
    defparam \r_UID_Data[39]~FF .SR_POLARITY = 1'b1;
    defparam \r_UID_Data[39]~FF .D_POLARITY = 1'b1;
    defparam \r_UID_Data[39]~FF .SR_SYNC = 1'b1;
    defparam \r_UID_Data[39]~FF .SR_VALUE = 1'b0;
    defparam \r_UID_Data[39]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \r_UID_Data[40]~FF  (.D(UID_Data[40]), .CE(data_valid), .CLK(\clk~O ), 
           .SR(1'b0), .Q(\r_UID_Data[40] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_shifter.v(38)
    defparam \r_UID_Data[40]~FF .CLK_POLARITY = 1'b1;
    defparam \r_UID_Data[40]~FF .CE_POLARITY = 1'b1;
    defparam \r_UID_Data[40]~FF .SR_POLARITY = 1'b1;
    defparam \r_UID_Data[40]~FF .D_POLARITY = 1'b1;
    defparam \r_UID_Data[40]~FF .SR_SYNC = 1'b1;
    defparam \r_UID_Data[40]~FF .SR_VALUE = 1'b0;
    defparam \r_UID_Data[40]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \r_UID_Data[41]~FF  (.D(UID_Data[41]), .CE(data_valid), .CLK(\clk~O ), 
           .SR(1'b0), .Q(\r_UID_Data[41] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_shifter.v(38)
    defparam \r_UID_Data[41]~FF .CLK_POLARITY = 1'b1;
    defparam \r_UID_Data[41]~FF .CE_POLARITY = 1'b1;
    defparam \r_UID_Data[41]~FF .SR_POLARITY = 1'b1;
    defparam \r_UID_Data[41]~FF .D_POLARITY = 1'b1;
    defparam \r_UID_Data[41]~FF .SR_SYNC = 1'b1;
    defparam \r_UID_Data[41]~FF .SR_VALUE = 1'b0;
    defparam \r_UID_Data[41]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \r_UID_Data[42]~FF  (.D(UID_Data[42]), .CE(data_valid), .CLK(\clk~O ), 
           .SR(1'b0), .Q(\r_UID_Data[42] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_shifter.v(38)
    defparam \r_UID_Data[42]~FF .CLK_POLARITY = 1'b1;
    defparam \r_UID_Data[42]~FF .CE_POLARITY = 1'b1;
    defparam \r_UID_Data[42]~FF .SR_POLARITY = 1'b1;
    defparam \r_UID_Data[42]~FF .D_POLARITY = 1'b1;
    defparam \r_UID_Data[42]~FF .SR_SYNC = 1'b1;
    defparam \r_UID_Data[42]~FF .SR_VALUE = 1'b0;
    defparam \r_UID_Data[42]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \r_UID_Data[43]~FF  (.D(UID_Data[43]), .CE(data_valid), .CLK(\clk~O ), 
           .SR(1'b0), .Q(\r_UID_Data[43] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_shifter.v(38)
    defparam \r_UID_Data[43]~FF .CLK_POLARITY = 1'b1;
    defparam \r_UID_Data[43]~FF .CE_POLARITY = 1'b1;
    defparam \r_UID_Data[43]~FF .SR_POLARITY = 1'b1;
    defparam \r_UID_Data[43]~FF .D_POLARITY = 1'b1;
    defparam \r_UID_Data[43]~FF .SR_SYNC = 1'b1;
    defparam \r_UID_Data[43]~FF .SR_VALUE = 1'b0;
    defparam \r_UID_Data[43]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \r_UID_Data[44]~FF  (.D(UID_Data[44]), .CE(data_valid), .CLK(\clk~O ), 
           .SR(1'b0), .Q(\r_UID_Data[44] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_shifter.v(38)
    defparam \r_UID_Data[44]~FF .CLK_POLARITY = 1'b1;
    defparam \r_UID_Data[44]~FF .CE_POLARITY = 1'b1;
    defparam \r_UID_Data[44]~FF .SR_POLARITY = 1'b1;
    defparam \r_UID_Data[44]~FF .D_POLARITY = 1'b1;
    defparam \r_UID_Data[44]~FF .SR_SYNC = 1'b1;
    defparam \r_UID_Data[44]~FF .SR_VALUE = 1'b0;
    defparam \r_UID_Data[44]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \r_UID_Data[45]~FF  (.D(UID_Data[45]), .CE(data_valid), .CLK(\clk~O ), 
           .SR(1'b0), .Q(\r_UID_Data[45] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_shifter.v(38)
    defparam \r_UID_Data[45]~FF .CLK_POLARITY = 1'b1;
    defparam \r_UID_Data[45]~FF .CE_POLARITY = 1'b1;
    defparam \r_UID_Data[45]~FF .SR_POLARITY = 1'b1;
    defparam \r_UID_Data[45]~FF .D_POLARITY = 1'b1;
    defparam \r_UID_Data[45]~FF .SR_SYNC = 1'b1;
    defparam \r_UID_Data[45]~FF .SR_VALUE = 1'b0;
    defparam \r_UID_Data[45]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \r_UID_Data[46]~FF  (.D(UID_Data[46]), .CE(data_valid), .CLK(\clk~O ), 
           .SR(1'b0), .Q(\r_UID_Data[46] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_shifter.v(38)
    defparam \r_UID_Data[46]~FF .CLK_POLARITY = 1'b1;
    defparam \r_UID_Data[46]~FF .CE_POLARITY = 1'b1;
    defparam \r_UID_Data[46]~FF .SR_POLARITY = 1'b1;
    defparam \r_UID_Data[46]~FF .D_POLARITY = 1'b1;
    defparam \r_UID_Data[46]~FF .SR_SYNC = 1'b1;
    defparam \r_UID_Data[46]~FF .SR_VALUE = 1'b0;
    defparam \r_UID_Data[46]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \r_UID_Data[47]~FF  (.D(UID_Data[47]), .CE(data_valid), .CLK(\clk~O ), 
           .SR(1'b0), .Q(\r_UID_Data[47] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_shifter.v(38)
    defparam \r_UID_Data[47]~FF .CLK_POLARITY = 1'b1;
    defparam \r_UID_Data[47]~FF .CE_POLARITY = 1'b1;
    defparam \r_UID_Data[47]~FF .SR_POLARITY = 1'b1;
    defparam \r_UID_Data[47]~FF .D_POLARITY = 1'b1;
    defparam \r_UID_Data[47]~FF .SR_SYNC = 1'b1;
    defparam \r_UID_Data[47]~FF .SR_VALUE = 1'b0;
    defparam \r_UID_Data[47]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \r_UID_Data[48]~FF  (.D(UID_Data[48]), .CE(data_valid), .CLK(\clk~O ), 
           .SR(1'b0), .Q(\r_UID_Data[48] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_shifter.v(38)
    defparam \r_UID_Data[48]~FF .CLK_POLARITY = 1'b1;
    defparam \r_UID_Data[48]~FF .CE_POLARITY = 1'b1;
    defparam \r_UID_Data[48]~FF .SR_POLARITY = 1'b1;
    defparam \r_UID_Data[48]~FF .D_POLARITY = 1'b1;
    defparam \r_UID_Data[48]~FF .SR_SYNC = 1'b1;
    defparam \r_UID_Data[48]~FF .SR_VALUE = 1'b0;
    defparam \r_UID_Data[48]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \r_UID_Data[49]~FF  (.D(UID_Data[49]), .CE(data_valid), .CLK(\clk~O ), 
           .SR(1'b0), .Q(\r_UID_Data[49] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_shifter.v(38)
    defparam \r_UID_Data[49]~FF .CLK_POLARITY = 1'b1;
    defparam \r_UID_Data[49]~FF .CE_POLARITY = 1'b1;
    defparam \r_UID_Data[49]~FF .SR_POLARITY = 1'b1;
    defparam \r_UID_Data[49]~FF .D_POLARITY = 1'b1;
    defparam \r_UID_Data[49]~FF .SR_SYNC = 1'b1;
    defparam \r_UID_Data[49]~FF .SR_VALUE = 1'b0;
    defparam \r_UID_Data[49]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \r_UID_Data[50]~FF  (.D(UID_Data[50]), .CE(data_valid), .CLK(\clk~O ), 
           .SR(1'b0), .Q(\r_UID_Data[50] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_shifter.v(38)
    defparam \r_UID_Data[50]~FF .CLK_POLARITY = 1'b1;
    defparam \r_UID_Data[50]~FF .CE_POLARITY = 1'b1;
    defparam \r_UID_Data[50]~FF .SR_POLARITY = 1'b1;
    defparam \r_UID_Data[50]~FF .D_POLARITY = 1'b1;
    defparam \r_UID_Data[50]~FF .SR_SYNC = 1'b1;
    defparam \r_UID_Data[50]~FF .SR_VALUE = 1'b0;
    defparam \r_UID_Data[50]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \r_UID_Data[51]~FF  (.D(UID_Data[51]), .CE(data_valid), .CLK(\clk~O ), 
           .SR(1'b0), .Q(\r_UID_Data[51] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_shifter.v(38)
    defparam \r_UID_Data[51]~FF .CLK_POLARITY = 1'b1;
    defparam \r_UID_Data[51]~FF .CE_POLARITY = 1'b1;
    defparam \r_UID_Data[51]~FF .SR_POLARITY = 1'b1;
    defparam \r_UID_Data[51]~FF .D_POLARITY = 1'b1;
    defparam \r_UID_Data[51]~FF .SR_SYNC = 1'b1;
    defparam \r_UID_Data[51]~FF .SR_VALUE = 1'b0;
    defparam \r_UID_Data[51]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \r_UID_Data[52]~FF  (.D(UID_Data[52]), .CE(data_valid), .CLK(\clk~O ), 
           .SR(1'b0), .Q(\r_UID_Data[52] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_shifter.v(38)
    defparam \r_UID_Data[52]~FF .CLK_POLARITY = 1'b1;
    defparam \r_UID_Data[52]~FF .CE_POLARITY = 1'b1;
    defparam \r_UID_Data[52]~FF .SR_POLARITY = 1'b1;
    defparam \r_UID_Data[52]~FF .D_POLARITY = 1'b1;
    defparam \r_UID_Data[52]~FF .SR_SYNC = 1'b1;
    defparam \r_UID_Data[52]~FF .SR_VALUE = 1'b0;
    defparam \r_UID_Data[52]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \r_UID_Data[53]~FF  (.D(UID_Data[53]), .CE(data_valid), .CLK(\clk~O ), 
           .SR(1'b0), .Q(\r_UID_Data[53] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_shifter.v(38)
    defparam \r_UID_Data[53]~FF .CLK_POLARITY = 1'b1;
    defparam \r_UID_Data[53]~FF .CE_POLARITY = 1'b1;
    defparam \r_UID_Data[53]~FF .SR_POLARITY = 1'b1;
    defparam \r_UID_Data[53]~FF .D_POLARITY = 1'b1;
    defparam \r_UID_Data[53]~FF .SR_SYNC = 1'b1;
    defparam \r_UID_Data[53]~FF .SR_VALUE = 1'b0;
    defparam \r_UID_Data[53]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \r_UID_Data[54]~FF  (.D(UID_Data[54]), .CE(data_valid), .CLK(\clk~O ), 
           .SR(1'b0), .Q(\r_UID_Data[54] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_shifter.v(38)
    defparam \r_UID_Data[54]~FF .CLK_POLARITY = 1'b1;
    defparam \r_UID_Data[54]~FF .CE_POLARITY = 1'b1;
    defparam \r_UID_Data[54]~FF .SR_POLARITY = 1'b1;
    defparam \r_UID_Data[54]~FF .D_POLARITY = 1'b1;
    defparam \r_UID_Data[54]~FF .SR_SYNC = 1'b1;
    defparam \r_UID_Data[54]~FF .SR_VALUE = 1'b0;
    defparam \r_UID_Data[54]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \r_UID_Data[55]~FF  (.D(UID_Data[55]), .CE(data_valid), .CLK(\clk~O ), 
           .SR(1'b0), .Q(\r_UID_Data[55] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_shifter.v(38)
    defparam \r_UID_Data[55]~FF .CLK_POLARITY = 1'b1;
    defparam \r_UID_Data[55]~FF .CE_POLARITY = 1'b1;
    defparam \r_UID_Data[55]~FF .SR_POLARITY = 1'b1;
    defparam \r_UID_Data[55]~FF .D_POLARITY = 1'b1;
    defparam \r_UID_Data[55]~FF .SR_SYNC = 1'b1;
    defparam \r_UID_Data[55]~FF .SR_VALUE = 1'b0;
    defparam \r_UID_Data[55]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_ADD \add_86/i5  (.I0(\data_count[5] ), .I1(1'b0), .CI(n68), .O(n65), 
            .CO(n66)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_shifter.v(35)
    defparam \add_86/i5 .I0_POLARITY = 1'b1;
    defparam \add_86/i5 .I1_POLARITY = 1'b1;
    EFX_ADD \add_86/i4  (.I0(\data_count[4] ), .I1(1'b0), .CI(n70), .O(n67), 
            .CO(n68)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_shifter.v(35)
    defparam \add_86/i4 .I0_POLARITY = 1'b1;
    defparam \add_86/i4 .I1_POLARITY = 1'b1;
    EFX_ADD \add_86/i3  (.I0(\data_count[3] ), .I1(1'b0), .CI(n72), .O(n69), 
            .CO(n70)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_shifter.v(35)
    defparam \add_86/i3 .I0_POLARITY = 1'b1;
    defparam \add_86/i3 .I1_POLARITY = 1'b1;
    EFX_ADD \add_86/i2  (.I0(\data_count[2] ), .I1(1'b0), .CI(n74), .O(n71), 
            .CO(n72)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_shifter.v(35)
    defparam \add_86/i2 .I0_POLARITY = 1'b1;
    defparam \add_86/i2 .I1_POLARITY = 1'b1;
    EFX_ADD \add_86/i1  (.I0(\data_count[1] ), .I1(\data_count[0] ), .CI(1'b0), 
            .O(n73), .CO(n74)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_shifter.v(35)
    defparam \add_86/i1 .I0_POLARITY = 1'b1;
    defparam \add_86/i1 .I1_POLARITY = 1'b1;
    EFX_ADD \add_86/i7  (.I0(\data_count[7] ), .I1(1'b0), .CI(n77), .O(n75)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_shifter.v(35)
    defparam \add_86/i7 .I0_POLARITY = 1'b1;
    defparam \add_86/i7 .I1_POLARITY = 1'b1;
    EFX_ADD \add_86/i6  (.I0(\data_count[6] ), .I1(1'b0), .CI(n66), .O(n76), 
            .CO(n77)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_shifter.v(35)
    defparam \add_86/i6 .I0_POLARITY = 1'b1;
    defparam \add_86/i6 .I1_POLARITY = 1'b1;
    EFX_LUT4 LUT__363 (.I0(\data_count[2] ), .I1(\data_count[3] ), .I2(n224), 
            .I3(n225), .O(n226)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;
    defparam LUT__363.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__364 (.I0(\data_count[0] ), .I1(n226), .O(n83_2)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__364.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__365 (.I0(\r_UID_Data[39] ), .I1(\r_UID_Data[37] ), .I2(\data_count[0] ), 
            .I3(\data_count[1] ), .O(n227)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h503f */ ;
    defparam LUT__365.LUTMASK = 16'h503f;
    EFX_LUT4 LUT__366 (.I0(\r_UID_Data[38] ), .I1(\r_UID_Data[36] ), .I2(\data_count[0] ), 
            .I3(n227), .O(n228)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf305 */ ;
    defparam LUT__366.LUTMASK = 16'hf305;
    EFX_LUT4 LUT__367 (.I0(\r_UID_Data[35] ), .I1(\r_UID_Data[33] ), .I2(\data_count[0] ), 
            .I3(\data_count[1] ), .O(n229)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h503f */ ;
    defparam LUT__367.LUTMASK = 16'h503f;
    EFX_LUT4 LUT__368 (.I0(\r_UID_Data[34] ), .I1(\r_UID_Data[32] ), .I2(\data_count[0] ), 
            .I3(n229), .O(n230)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf305 */ ;
    defparam LUT__368.LUTMASK = 16'hf305;
    EFX_LUT4 LUT__369 (.I0(n230), .I1(n228), .I2(\data_count[3] ), .I3(\data_count[2] ), 
            .O(n231)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0305 */ ;
    defparam LUT__369.LUTMASK = 16'h0305;
    EFX_LUT4 LUT__370 (.I0(\r_UID_Data[47] ), .I1(\r_UID_Data[45] ), .I2(\data_count[0] ), 
            .I3(\data_count[1] ), .O(n232)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h503f */ ;
    defparam LUT__370.LUTMASK = 16'h503f;
    EFX_LUT4 LUT__371 (.I0(\r_UID_Data[46] ), .I1(\r_UID_Data[44] ), .I2(\data_count[0] ), 
            .I3(n232), .O(n233)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf305 */ ;
    defparam LUT__371.LUTMASK = 16'hf305;
    EFX_LUT4 LUT__372 (.I0(\r_UID_Data[43] ), .I1(\r_UID_Data[41] ), .I2(\data_count[0] ), 
            .I3(\data_count[1] ), .O(n234)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h503f */ ;
    defparam LUT__372.LUTMASK = 16'h503f;
    EFX_LUT4 LUT__373 (.I0(\r_UID_Data[42] ), .I1(\r_UID_Data[40] ), .I2(\data_count[0] ), 
            .I3(n234), .O(n235)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf305 */ ;
    defparam LUT__373.LUTMASK = 16'hf305;
    EFX_LUT4 LUT__374 (.I0(n235), .I1(n233), .I2(\data_count[2] ), .I3(\data_count[3] ), 
            .O(n236)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3500 */ ;
    defparam LUT__374.LUTMASK = 16'h3500;
    EFX_LUT4 LUT__375 (.I0(\r_UID_Data[51] ), .I1(\r_UID_Data[50] ), .I2(\data_count[1] ), 
            .I3(\data_count[0] ), .O(n237)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h503f */ ;
    defparam LUT__375.LUTMASK = 16'h503f;
    EFX_LUT4 LUT__376 (.I0(\r_UID_Data[53] ), .I1(\r_UID_Data[52] ), .I2(\data_count[2] ), 
            .I3(n237), .O(n238)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3f50 */ ;
    defparam LUT__376.LUTMASK = 16'h3f50;
    EFX_LUT4 LUT__377 (.I0(\data_count[3] ), .I1(\data_count[1] ), .I2(\data_count[2] ), 
            .O(n239)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1414 */ ;
    defparam LUT__377.LUTMASK = 16'h1414;
    EFX_LUT4 LUT__378 (.I0(\r_UID_Data[48] ), .I1(\r_UID_Data[49] ), .I2(\data_count[0] ), 
            .O(n240)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3535 */ ;
    defparam LUT__378.LUTMASK = 16'h3535;
    EFX_LUT4 LUT__379 (.I0(\r_UID_Data[54] ), .I1(\r_UID_Data[55] ), .I2(\data_count[0] ), 
            .O(n241)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3535 */ ;
    defparam LUT__379.LUTMASK = 16'h3535;
    EFX_LUT4 LUT__380 (.I0(n240), .I1(n241), .I2(\data_count[1] ), .I3(\data_count[3] ), 
            .O(n242)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hccca */ ;
    defparam LUT__380.LUTMASK = 16'hccca;
    EFX_LUT4 LUT__381 (.I0(n242), .I1(n238), .I2(n239), .O(n243)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;
    defparam LUT__381.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__382 (.I0(\r_data_Stream~FF_brt_1_brt_8_q ), .I1(\r_data_Stream~FF_brt_1_brt_9_q ), 
            .I2(\r_data_Stream~FF_brt_1_brt_10_q ), .I3(\r_data_Stream~FF_brt_1_brt_11_q ), 
            .O(n244)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0fee */ ;
    defparam LUT__382.LUTMASK = 16'h0fee;
    EFX_LUT4 LUT__383 (.I0(\r_UID_Data[27] ), .I1(\r_UID_Data[25] ), .I2(\data_count[0] ), 
            .I3(\data_count[1] ), .O(n245)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h503f */ ;
    defparam LUT__383.LUTMASK = 16'h503f;
    EFX_LUT4 LUT__384 (.I0(\r_UID_Data[26] ), .I1(\r_UID_Data[24] ), .I2(\data_count[0] ), 
            .I3(n245), .O(n246)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf305 */ ;
    defparam LUT__384.LUTMASK = 16'hf305;
    EFX_LUT4 LUT__385 (.I0(\r_UID_Data[19] ), .I1(\r_UID_Data[17] ), .I2(\data_count[0] ), 
            .I3(\data_count[1] ), .O(n247)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h503f */ ;
    defparam LUT__385.LUTMASK = 16'h503f;
    EFX_LUT4 LUT__386 (.I0(\r_UID_Data[18] ), .I1(\r_UID_Data[16] ), .I2(\data_count[0] ), 
            .I3(n247), .O(n248)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf305 */ ;
    defparam LUT__386.LUTMASK = 16'hf305;
    EFX_LUT4 LUT__387 (.I0(n248), .I1(n246), .I2(\data_count[2] ), .I3(\data_count[3] ), 
            .O(n249)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0305 */ ;
    defparam LUT__387.LUTMASK = 16'h0305;
    EFX_LUT4 LUT__388 (.I0(\r_UID_Data[28] ), .I1(\r_UID_Data[30] ), .I2(\data_count[1] ), 
            .O(n250)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3535 */ ;
    defparam LUT__388.LUTMASK = 16'h3535;
    EFX_LUT4 LUT__389 (.I0(\r_UID_Data[20] ), .I1(\r_UID_Data[22] ), .I2(\data_count[1] ), 
            .O(n251)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3535 */ ;
    defparam LUT__389.LUTMASK = 16'h3535;
    EFX_LUT4 LUT__390 (.I0(n251), .I1(n250), .I2(\data_count[0] ), .I3(\data_count[3] ), 
            .O(n252)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0c0a */ ;
    defparam LUT__390.LUTMASK = 16'h0c0a;
    EFX_LUT4 LUT__391 (.I0(\r_UID_Data[29] ), .I1(\r_UID_Data[31] ), .I2(\data_count[1] ), 
            .O(n253)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3535 */ ;
    defparam LUT__391.LUTMASK = 16'h3535;
    EFX_LUT4 LUT__392 (.I0(\r_UID_Data[21] ), .I1(\r_UID_Data[23] ), .I2(\data_count[1] ), 
            .O(n254)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3535 */ ;
    defparam LUT__392.LUTMASK = 16'h3535;
    EFX_LUT4 LUT__393 (.I0(n254), .I1(n253), .I2(\data_count[3] ), .I3(\data_count[0] ), 
            .O(n255)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hca00 */ ;
    defparam LUT__393.LUTMASK = 16'hca00;
    EFX_LUT4 LUT__394 (.I0(n255), .I1(n252), .I2(\data_count[2] ), .I3(\data_count[4] ), 
            .O(n256)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hef00 */ ;
    defparam LUT__394.LUTMASK = 16'hef00;
    EFX_LUT4 LUT__395 (.I0(\r_UID_Data[7] ), .I1(\r_UID_Data[5] ), .I2(\data_count[0] ), 
            .I3(\data_count[1] ), .O(n257)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h503f */ ;
    defparam LUT__395.LUTMASK = 16'h503f;
    EFX_LUT4 LUT__396 (.I0(\r_UID_Data[6] ), .I1(\r_UID_Data[4] ), .I2(\data_count[0] ), 
            .I3(n257), .O(n258)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf305 */ ;
    defparam LUT__396.LUTMASK = 16'hf305;
    EFX_LUT4 LUT__397 (.I0(\r_UID_Data[3] ), .I1(\r_UID_Data[1] ), .I2(\data_count[0] ), 
            .I3(\data_count[1] ), .O(n259)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h503f */ ;
    defparam LUT__397.LUTMASK = 16'h503f;
    EFX_LUT4 LUT__398 (.I0(\r_UID_Data[2] ), .I1(\r_UID_Data[0] ), .I2(\data_count[0] ), 
            .I3(n259), .O(n260)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf305 */ ;
    defparam LUT__398.LUTMASK = 16'hf305;
    EFX_LUT4 LUT__399 (.I0(n260), .I1(n258), .I2(\data_count[3] ), .I3(\data_count[2] ), 
            .O(n261)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0305 */ ;
    defparam LUT__399.LUTMASK = 16'h0305;
    EFX_LUT4 LUT__400 (.I0(\r_UID_Data[9] ), .I1(\r_UID_Data[11] ), .I2(\data_count[1] ), 
            .O(n262)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3535 */ ;
    defparam LUT__400.LUTMASK = 16'h3535;
    EFX_LUT4 LUT__401 (.I0(\r_UID_Data[8] ), .I1(\r_UID_Data[10] ), .I2(\data_count[1] ), 
            .O(n263)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3535 */ ;
    defparam LUT__401.LUTMASK = 16'h3535;
    EFX_LUT4 LUT__402 (.I0(n263), .I1(n262), .I2(\data_count[2] ), .I3(\data_count[0] ), 
            .O(n264)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0c0a */ ;
    defparam LUT__402.LUTMASK = 16'h0c0a;
    EFX_LUT4 LUT__403 (.I0(\r_UID_Data[13] ), .I1(\r_UID_Data[15] ), .I2(\data_count[1] ), 
            .O(n265)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3535 */ ;
    defparam LUT__403.LUTMASK = 16'h3535;
    EFX_LUT4 LUT__404 (.I0(\r_UID_Data[12] ), .I1(\r_UID_Data[14] ), .I2(\data_count[1] ), 
            .O(n266)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3535 */ ;
    defparam LUT__404.LUTMASK = 16'h3535;
    EFX_LUT4 LUT__405 (.I0(n266), .I1(n265), .I2(\data_count[0] ), .I3(\data_count[2] ), 
            .O(n267)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hca00 */ ;
    defparam LUT__405.LUTMASK = 16'hca00;
    EFX_LUT4 LUT__406 (.I0(n267), .I1(n264), .I2(\data_count[3] ), .I3(\data_count[4] ), 
            .O(n268)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00ef */ ;
    defparam LUT__406.LUTMASK = 16'h00ef;
    EFX_LUT4 LUT__407 (.I0(\r_data_Stream~FF_brt_2_brt_4_q ), .I1(\r_data_Stream~FF_brt_2_brt_5_q ), 
            .I2(\r_data_Stream~FF_brt_2_brt_6_q ), .I3(\r_data_Stream~FF_brt_2_brt_7_q ), 
            .O(n269)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb0bb */ ;
    defparam LUT__407.LUTMASK = 16'hb0bb;
    EFX_LUT4 LUT__408 (.I0(\r_data_Stream~FF_brt_0_q ), .I1(n244), .I2(n269), 
            .I3(\r_data_Stream~FF_brt_3_q ), .O(data_stream)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h44f0 */ ;
    defparam LUT__408.LUTMASK = 16'h44f0;
    EFX_LUT4 LUT__409 (.I0(n226), .I1(n73), .O(n82_2)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__409.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__410 (.I0(n226), .I1(n69), .O(n80)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__410.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__411 (.I0(n226), .I1(n67), .O(n79)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__411.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__412 (.I0(n226), .I1(n65), .O(n78)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__412.LUTMASK = 16'h4444;
    EFX_LUT4 \r_data_Stream~FF_brt_2_brt_5_rtinv  (.I0(\r_data_Stream~FF_brt_2_brt_5_q_pinv ), 
            .O(\r_data_Stream~FF_brt_2_brt_5_q )) /* verific LUTMASK=16'h5555, EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, EFX_ATTRIBUTE_INSTANCE__IS_LUT_SOP_INF_INV=TRUE */ ;
    defparam \r_data_Stream~FF_brt_2_brt_5_rtinv .LUTMASK = 16'h5555;
    EFX_FF \r_data_Stream~FF_brt_1_brt_11  (.D(\data_count[4] ), .CE(start_crc), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\r_data_Stream~FF_brt_1_brt_11_q )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1, INIT_VALUE=1'b0 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_shifter.v(38)
    defparam \r_data_Stream~FF_brt_1_brt_11 .CLK_POLARITY = 1'b1;
    defparam \r_data_Stream~FF_brt_1_brt_11 .CE_POLARITY = 1'b1;
    defparam \r_data_Stream~FF_brt_1_brt_11 .SR_POLARITY = 1'b1;
    defparam \r_data_Stream~FF_brt_1_brt_11 .D_POLARITY = 1'b1;
    defparam \r_data_Stream~FF_brt_1_brt_11 .SR_SYNC = 1'b1;
    defparam \r_data_Stream~FF_brt_1_brt_11 .SR_VALUE = 1'b0;
    defparam \r_data_Stream~FF_brt_1_brt_11 .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \r_data_Stream~FF_brt_1_brt_10  (.D(n243), .CE(start_crc), .CLK(\clk~O ), 
           .SR(1'b0), .Q(\r_data_Stream~FF_brt_1_brt_10_q )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1, INIT_VALUE=1'b0 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_shifter.v(38)
    defparam \r_data_Stream~FF_brt_1_brt_10 .CLK_POLARITY = 1'b1;
    defparam \r_data_Stream~FF_brt_1_brt_10 .CE_POLARITY = 1'b1;
    defparam \r_data_Stream~FF_brt_1_brt_10 .SR_POLARITY = 1'b1;
    defparam \r_data_Stream~FF_brt_1_brt_10 .D_POLARITY = 1'b1;
    defparam \r_data_Stream~FF_brt_1_brt_10 .SR_SYNC = 1'b1;
    defparam \r_data_Stream~FF_brt_1_brt_10 .SR_VALUE = 1'b0;
    defparam \r_data_Stream~FF_brt_1_brt_10 .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \r_data_Stream~FF_brt_1_brt_9  (.D(n231), .CE(start_crc), .CLK(\clk~O ), 
           .SR(1'b0), .Q(\r_data_Stream~FF_brt_1_brt_9_q )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1, INIT_VALUE=1'b0 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_shifter.v(38)
    defparam \r_data_Stream~FF_brt_1_brt_9 .CLK_POLARITY = 1'b1;
    defparam \r_data_Stream~FF_brt_1_brt_9 .CE_POLARITY = 1'b1;
    defparam \r_data_Stream~FF_brt_1_brt_9 .SR_POLARITY = 1'b1;
    defparam \r_data_Stream~FF_brt_1_brt_9 .D_POLARITY = 1'b1;
    defparam \r_data_Stream~FF_brt_1_brt_9 .SR_SYNC = 1'b1;
    defparam \r_data_Stream~FF_brt_1_brt_9 .SR_VALUE = 1'b0;
    defparam \r_data_Stream~FF_brt_1_brt_9 .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \r_data_Stream~FF_brt_1_brt_8  (.D(n236), .CE(start_crc), .CLK(\clk~O ), 
           .SR(1'b0), .Q(\r_data_Stream~FF_brt_1_brt_8_q )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1, INIT_VALUE=1'b0 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_shifter.v(38)
    defparam \r_data_Stream~FF_brt_1_brt_8 .CLK_POLARITY = 1'b1;
    defparam \r_data_Stream~FF_brt_1_brt_8 .CE_POLARITY = 1'b1;
    defparam \r_data_Stream~FF_brt_1_brt_8 .SR_POLARITY = 1'b1;
    defparam \r_data_Stream~FF_brt_1_brt_8 .D_POLARITY = 1'b1;
    defparam \r_data_Stream~FF_brt_1_brt_8 .SR_SYNC = 1'b1;
    defparam \r_data_Stream~FF_brt_1_brt_8 .SR_VALUE = 1'b0;
    defparam \r_data_Stream~FF_brt_1_brt_8 .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \r_data_Stream~FF_brt_2_brt_7  (.D(n256), .CE(start_crc), .CLK(\clk~O ), 
           .SR(1'b0), .Q(\r_data_Stream~FF_brt_2_brt_7_q )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1, INIT_VALUE=1'b0 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_shifter.v(38)
    defparam \r_data_Stream~FF_brt_2_brt_7 .CLK_POLARITY = 1'b1;
    defparam \r_data_Stream~FF_brt_2_brt_7 .CE_POLARITY = 1'b1;
    defparam \r_data_Stream~FF_brt_2_brt_7 .SR_POLARITY = 1'b1;
    defparam \r_data_Stream~FF_brt_2_brt_7 .D_POLARITY = 1'b1;
    defparam \r_data_Stream~FF_brt_2_brt_7 .SR_SYNC = 1'b1;
    defparam \r_data_Stream~FF_brt_2_brt_7 .SR_VALUE = 1'b0;
    defparam \r_data_Stream~FF_brt_2_brt_7 .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \r_data_Stream~FF_brt_2_brt_6  (.D(n249), .CE(start_crc), .CLK(\clk~O ), 
           .SR(1'b0), .Q(\r_data_Stream~FF_brt_2_brt_6_q )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1, INIT_VALUE=1'b0 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_shifter.v(38)
    defparam \r_data_Stream~FF_brt_2_brt_6 .CLK_POLARITY = 1'b1;
    defparam \r_data_Stream~FF_brt_2_brt_6 .CE_POLARITY = 1'b1;
    defparam \r_data_Stream~FF_brt_2_brt_6 .SR_POLARITY = 1'b1;
    defparam \r_data_Stream~FF_brt_2_brt_6 .D_POLARITY = 1'b1;
    defparam \r_data_Stream~FF_brt_2_brt_6 .SR_SYNC = 1'b1;
    defparam \r_data_Stream~FF_brt_2_brt_6 .SR_VALUE = 1'b0;
    defparam \r_data_Stream~FF_brt_2_brt_6 .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \r_data_Stream~FF_brt_2_brt_5  (.D(n268), .CE(start_crc), .CLK(\clk~O ), 
           .SR(1'b0), .Q(\r_data_Stream~FF_brt_2_brt_5_q_pinv )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_shifter.v(38)
    defparam \r_data_Stream~FF_brt_2_brt_5 .CLK_POLARITY = 1'b1;
    defparam \r_data_Stream~FF_brt_2_brt_5 .CE_POLARITY = 1'b1;
    defparam \r_data_Stream~FF_brt_2_brt_5 .SR_POLARITY = 1'b1;
    defparam \r_data_Stream~FF_brt_2_brt_5 .D_POLARITY = 1'b0;
    defparam \r_data_Stream~FF_brt_2_brt_5 .SR_SYNC = 1'b1;
    defparam \r_data_Stream~FF_brt_2_brt_5 .SR_VALUE = 1'b0;
    defparam \r_data_Stream~FF_brt_2_brt_5 .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \r_data_Stream~FF_brt_3  (.D(\data_count[5] ), .CE(start_crc), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\r_data_Stream~FF_brt_3_q )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1, INIT_VALUE=1'b0 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_shifter.v(38)
    defparam \r_data_Stream~FF_brt_3 .CLK_POLARITY = 1'b1;
    defparam \r_data_Stream~FF_brt_3 .CE_POLARITY = 1'b1;
    defparam \r_data_Stream~FF_brt_3 .SR_POLARITY = 1'b1;
    defparam \r_data_Stream~FF_brt_3 .D_POLARITY = 1'b1;
    defparam \r_data_Stream~FF_brt_3 .SR_SYNC = 1'b1;
    defparam \r_data_Stream~FF_brt_3 .SR_VALUE = 1'b0;
    defparam \r_data_Stream~FF_brt_3 .SR_SYNC_PRIORITY = 1'b1;
    EFX_GBUFCE CLKBUF__0 (.CE(1'b1), .I(clk), .O(\clk~O )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_GBUFCE, CE_POLARITY=1'b1 */ ;
    defparam CLKBUF__0.CE_POLARITY = 1'b1;
    EFX_FF \r_data_Stream~FF_brt_0  (.D(n226), .CE(start_crc), .CLK(\clk~O ), 
           .SR(1'b0), .Q(\r_data_Stream~FF_brt_0_q )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1, INIT_VALUE=1'b0 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_shifter.v(38)
    defparam \r_data_Stream~FF_brt_0 .CLK_POLARITY = 1'b1;
    defparam \r_data_Stream~FF_brt_0 .CE_POLARITY = 1'b1;
    defparam \r_data_Stream~FF_brt_0 .SR_POLARITY = 1'b1;
    defparam \r_data_Stream~FF_brt_0 .D_POLARITY = 1'b1;
    defparam \r_data_Stream~FF_brt_0 .SR_SYNC = 1'b1;
    defparam \r_data_Stream~FF_brt_0 .SR_VALUE = 1'b0;
    defparam \r_data_Stream~FF_brt_0 .SR_SYNC_PRIORITY = 1'b1;
    
endmodule

//
// Verific Verilog Description of module EFX_LUT4_6e1d35af_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_6e1d35af_1
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_6e1d35af_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_ADD_6e1d35af_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_6e1d35af_2
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_6e1d35af_3
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_6e1d35af_4
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_6e1d35af_5
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_6e1d35af_6
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_6e1d35af_7
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_6e1d35af_8
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_6e1d35af_9
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_6e1d35af_10
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_6e1d35af_11
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_6e1d35af_12
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_6e1d35af_13
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_6e1d35af_14
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_6e1d35af_15
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_6e1d35af_16
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_6e1d35af_17
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_6e1d35af_18
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_6e1d35af_19
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_6e1d35af_20
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_6e1d35af_1
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_GBUFCE_6e1d35af_0
// module not written out since it is a black box. 
//

