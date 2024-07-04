
//
// Verific Verilog Description of module one_wire_data_ctrl
//

module one_wire_data_ctrl (clk, reset, fifo_empty, fifo_read_data, fifo_read_enable, 
            data_valid, UID_Data, read_match, read_write, ROM_command, 
            data_length, Fun_cmd, address, write_data, data_address, 
            write);
    input clk /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;
    input reset /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;
    input fifo_empty /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;
    input [7:0]fifo_read_data /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;
    output fifo_read_enable /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    output data_valid /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    output [55:0]UID_Data /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    output read_match /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    output read_write /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    output [7:0]ROM_command /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    output [5:0]data_length /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    output [7:0]Fun_cmd /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    output [15:0]address /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    output [7:0]write_data /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    output [4:0]data_address /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    output write /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    
    
    wire \byte_count[0] , \length[0] , \r_data[0] , address_count, \state[0] , 
        \post_wait_state[0] , \byte_count[1] , \byte_count[2] , \length[1] , 
        \length[2] , \length[3] , \length[4] , \length[5] , \r_data[1] , 
        \r_data[2] , \r_data[3] , \r_data[4] , \r_data[5] , \r_data[6] , 
        \r_data[7] , \clk~O , \state[2] , \post_wait_state[1] , \post_wait_state[2] , 
        \post_wait_state[3] , n2549, ceg_net644, n2561, ceg_net1009, 
        n549, ceg_net1583, n1346, ceg_net724, n1352, ceg_net1441, 
        n532, ceg_net1376, n2555, n591, ceg_net1159, \state[3] , 
        ceg_net1380, ceg_net1462, n558, ceg_net1507, n564, n537, 
        ceg_net61, n1324, ceg_net63, n542, ceg_net1548, n2570, ceg_net1419, 
        \state[1] , ceg_net721, n1731, ceg_net729, n1737, ceg_net734, 
        n1743, ceg_net739, n1749, ceg_net744, n1755, ceg_net749, 
        n1761, ceg_net754, n1767, n1773, ceg_net764, n1779, ceg_net769, 
        n1785, ceg_net774, n1791, ceg_net779, n1797, ceg_net784, 
        n1803, ceg_net789, n2103, n2109, n548, n547, n546, n545, 
        n544, n2121, n2127, n2133, n2139, n2145, n2151, n2061, 
        n2067, n2073, n2079, n2085, n2091, n2097, n590, n589, 
        n588, n587, n586, n585, n584, n557, n556, n555, n554, 
        n553, n552, n551, n563, n562, n561, n560, n536, n535, 
        n534, n541, n540, n539, n2154, n2158, n2162, n2166, 
        n2170, n287, n288, n289, n290, n291, n292, n293, n294, 
        n295, n296, n297, n298, n299, n300, n301, n302, n303, 
        n304, n305, n306, n307, n308, n309, n310, n311, n312, 
        n313, n314, n315, n316, n317, n318, n319, n320, n321, 
        n322, n323, n324, n325, n326, n327, n328, n329, n330, 
        n331, n332, n333, n334, n335, n336, n337, n338, n339, 
        n340, n341, n342, n343, n344, n345, n346, n347, n348, 
        n349, n350, n351, n352, n353, n354, n355, n356, n357, 
        n358, n359, n360, n361, n362;
    
    assign UID_Data[55] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign UID_Data[54] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign UID_Data[53] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign UID_Data[52] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign UID_Data[51] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign UID_Data[50] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign UID_Data[49] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign UID_Data[48] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign UID_Data[47] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign UID_Data[46] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign UID_Data[45] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign UID_Data[44] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign UID_Data[43] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign UID_Data[42] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign UID_Data[41] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign UID_Data[40] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign UID_Data[39] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign UID_Data[38] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign UID_Data[37] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign UID_Data[36] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign UID_Data[35] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign UID_Data[34] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign UID_Data[33] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign UID_Data[32] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign UID_Data[31] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign UID_Data[30] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign UID_Data[29] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign UID_Data[28] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign UID_Data[27] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign UID_Data[26] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign UID_Data[25] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign UID_Data[24] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign UID_Data[23] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign UID_Data[22] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign UID_Data[21] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign UID_Data[20] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign UID_Data[19] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign UID_Data[18] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign UID_Data[17] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign UID_Data[16] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign UID_Data[15] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign UID_Data[14] = 1'b0 /* verific EFX_ATTRIBUTE_CELL_NAME=GND */ ;
    EFX_LUT4 LUT__436 (.I0(\r_data[0] ), .I1(\state[2] ), .O(n2549)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__436.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__437 (.I0(reset), .I1(\state[2] ), .O(n287)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__437.LUTMASK = 16'h4444;
    EFX_FF \UID_Data[0]~FF  (.D(n2549), .CE(ceg_net644), .CLK(\clk~O ), 
           .SR(reset), .Q(UID_Data[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_ctrl.v(221)
    defparam \UID_Data[0]~FF .CLK_POLARITY = 1'b1;
    defparam \UID_Data[0]~FF .CE_POLARITY = 1'b0;
    defparam \UID_Data[0]~FF .SR_POLARITY = 1'b1;
    defparam \UID_Data[0]~FF .D_POLARITY = 1'b1;
    defparam \UID_Data[0]~FF .SR_SYNC = 1'b1;
    defparam \UID_Data[0]~FF .SR_VALUE = 1'b0;
    defparam \UID_Data[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \byte_count[0]~FF  (.D(n2561), .CE(ceg_net1009), .CLK(\clk~O ), 
           .SR(reset), .Q(\byte_count[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_ctrl.v(221)
    defparam \byte_count[0]~FF .CLK_POLARITY = 1'b1;
    defparam \byte_count[0]~FF .CE_POLARITY = 1'b0;
    defparam \byte_count[0]~FF .SR_POLARITY = 1'b1;
    defparam \byte_count[0]~FF .D_POLARITY = 1'b1;
    defparam \byte_count[0]~FF .SR_SYNC = 1'b1;
    defparam \byte_count[0]~FF .SR_VALUE = 1'b0;
    defparam \byte_count[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \length[0]~FF  (.D(n549), .CE(ceg_net1583), .CLK(\clk~O ), 
           .SR(reset), .Q(\length[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_ctrl.v(221)
    defparam \length[0]~FF .CLK_POLARITY = 1'b1;
    defparam \length[0]~FF .CE_POLARITY = 1'b1;
    defparam \length[0]~FF .SR_POLARITY = 1'b1;
    defparam \length[0]~FF .D_POLARITY = 1'b1;
    defparam \length[0]~FF .SR_SYNC = 1'b1;
    defparam \length[0]~FF .SR_VALUE = 1'b0;
    defparam \length[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \read_match~FF  (.D(n1346), .CE(ceg_net724), .CLK(\clk~O ), 
           .SR(reset), .Q(read_match)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_ctrl.v(221)
    defparam \read_match~FF .CLK_POLARITY = 1'b1;
    defparam \read_match~FF .CE_POLARITY = 1'b0;
    defparam \read_match~FF .SR_POLARITY = 1'b1;
    defparam \read_match~FF .D_POLARITY = 1'b1;
    defparam \read_match~FF .SR_SYNC = 1'b1;
    defparam \read_match~FF .SR_VALUE = 1'b0;
    defparam \read_match~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \ROM_command[0]~FF  (.D(n1352), .CE(ceg_net1441), .CLK(\clk~O ), 
           .SR(reset), .Q(ROM_command[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_ctrl.v(221)
    defparam \ROM_command[0]~FF .CLK_POLARITY = 1'b1;
    defparam \ROM_command[0]~FF .CE_POLARITY = 1'b0;
    defparam \ROM_command[0]~FF .SR_POLARITY = 1'b1;
    defparam \ROM_command[0]~FF .D_POLARITY = 1'b1;
    defparam \ROM_command[0]~FF .SR_SYNC = 1'b1;
    defparam \ROM_command[0]~FF .SR_VALUE = 1'b0;
    defparam \ROM_command[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \data_valid~FF  (.D(n532), .CE(ceg_net1376), .CLK(\clk~O ), 
           .SR(reset), .Q(data_valid)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_ctrl.v(221)
    defparam \data_valid~FF .CLK_POLARITY = 1'b1;
    defparam \data_valid~FF .CE_POLARITY = 1'b1;
    defparam \data_valid~FF .SR_POLARITY = 1'b1;
    defparam \data_valid~FF .D_POLARITY = 1'b1;
    defparam \data_valid~FF .SR_SYNC = 1'b1;
    defparam \data_valid~FF .SR_VALUE = 1'b0;
    defparam \data_valid~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \r_data[0]~FF  (.D(n2555), .CE(ceg_net1009), .CLK(\clk~O ), 
           .SR(reset), .Q(\r_data[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_ctrl.v(221)
    defparam \r_data[0]~FF .CLK_POLARITY = 1'b1;
    defparam \r_data[0]~FF .CE_POLARITY = 1'b0;
    defparam \r_data[0]~FF .SR_POLARITY = 1'b1;
    defparam \r_data[0]~FF .D_POLARITY = 1'b1;
    defparam \r_data[0]~FF .SR_SYNC = 1'b1;
    defparam \r_data[0]~FF .SR_VALUE = 1'b0;
    defparam \r_data[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Fun_cmd[0]~FF  (.D(n591), .CE(ceg_net1159), .CLK(\clk~O ), 
           .SR(reset), .Q(Fun_cmd[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_ctrl.v(221)
    defparam \Fun_cmd[0]~FF .CLK_POLARITY = 1'b1;
    defparam \Fun_cmd[0]~FF .CE_POLARITY = 1'b1;
    defparam \Fun_cmd[0]~FF .SR_POLARITY = 1'b1;
    defparam \Fun_cmd[0]~FF .D_POLARITY = 1'b1;
    defparam \Fun_cmd[0]~FF .SR_SYNC = 1'b1;
    defparam \Fun_cmd[0]~FF .SR_VALUE = 1'b0;
    defparam \Fun_cmd[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \address_count~FF  (.D(\state[3] ), .CE(ceg_net1380), .CLK(\clk~O ), 
           .SR(reset), .Q(address_count)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_ctrl.v(221)
    defparam \address_count~FF .CLK_POLARITY = 1'b1;
    defparam \address_count~FF .CE_POLARITY = 1'b1;
    defparam \address_count~FF .SR_POLARITY = 1'b1;
    defparam \address_count~FF .D_POLARITY = 1'b1;
    defparam \address_count~FF .SR_SYNC = 1'b1;
    defparam \address_count~FF .SR_VALUE = 1'b0;
    defparam \address_count~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \address[0]~FF  (.D(n591), .CE(ceg_net1462), .CLK(\clk~O ), 
           .SR(reset), .Q(address[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_ctrl.v(221)
    defparam \address[0]~FF .CLK_POLARITY = 1'b1;
    defparam \address[0]~FF .CE_POLARITY = 1'b1;
    defparam \address[0]~FF .SR_POLARITY = 1'b1;
    defparam \address[0]~FF .D_POLARITY = 1'b1;
    defparam \address[0]~FF .SR_SYNC = 1'b1;
    defparam \address[0]~FF .SR_VALUE = 1'b0;
    defparam \address[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \write_data[0]~FF  (.D(n558), .CE(ceg_net1507), .CLK(\clk~O ), 
           .SR(reset), .Q(write_data[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_ctrl.v(221)
    defparam \write_data[0]~FF .CLK_POLARITY = 1'b1;
    defparam \write_data[0]~FF .CE_POLARITY = 1'b1;
    defparam \write_data[0]~FF .SR_POLARITY = 1'b1;
    defparam \write_data[0]~FF .D_POLARITY = 1'b1;
    defparam \write_data[0]~FF .SR_SYNC = 1'b1;
    defparam \write_data[0]~FF .SR_VALUE = 1'b0;
    defparam \write_data[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \data_address[0]~FF  (.D(n564), .CE(ceg_net1507), .CLK(\clk~O ), 
           .SR(reset), .Q(data_address[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_ctrl.v(221)
    defparam \data_address[0]~FF .CLK_POLARITY = 1'b1;
    defparam \data_address[0]~FF .CE_POLARITY = 1'b1;
    defparam \data_address[0]~FF .SR_POLARITY = 1'b1;
    defparam \data_address[0]~FF .D_POLARITY = 1'b1;
    defparam \data_address[0]~FF .SR_SYNC = 1'b1;
    defparam \data_address[0]~FF .SR_VALUE = 1'b0;
    defparam \data_address[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \state[0]~FF  (.D(n537), .CE(ceg_net61), .CLK(\clk~O ), .SR(1'b0), 
           .Q(\state[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_ctrl.v(221)
    defparam \state[0]~FF .CLK_POLARITY = 1'b1;
    defparam \state[0]~FF .CE_POLARITY = 1'b0;
    defparam \state[0]~FF .SR_POLARITY = 1'b1;
    defparam \state[0]~FF .D_POLARITY = 1'b1;
    defparam \state[0]~FF .SR_SYNC = 1'b1;
    defparam \state[0]~FF .SR_VALUE = 1'b0;
    defparam \state[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \write~FF  (.D(n1324), .CE(ceg_net63), .CLK(\clk~O ), .SR(1'b0), 
           .Q(write)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_ctrl.v(221)
    defparam \write~FF .CLK_POLARITY = 1'b1;
    defparam \write~FF .CE_POLARITY = 1'b0;
    defparam \write~FF .SR_POLARITY = 1'b1;
    defparam \write~FF .D_POLARITY = 1'b1;
    defparam \write~FF .SR_SYNC = 1'b1;
    defparam \write~FF .SR_VALUE = 1'b0;
    defparam \write~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \post_wait_state[0]~FF  (.D(n542), .CE(ceg_net1548), .CLK(\clk~O ), 
           .SR(1'b0), .Q(\post_wait_state[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_ctrl.v(221)
    defparam \post_wait_state[0]~FF .CLK_POLARITY = 1'b1;
    defparam \post_wait_state[0]~FF .CE_POLARITY = 1'b0;
    defparam \post_wait_state[0]~FF .SR_POLARITY = 1'b1;
    defparam \post_wait_state[0]~FF .D_POLARITY = 1'b1;
    defparam \post_wait_state[0]~FF .SR_SYNC = 1'b1;
    defparam \post_wait_state[0]~FF .SR_VALUE = 1'b0;
    defparam \post_wait_state[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \data_length[0]~FF  (.D(n2570), .CE(ceg_net1419), .CLK(\clk~O ), 
           .SR(1'b0), .Q(data_length[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_ctrl.v(221)
    defparam \data_length[0]~FF .CLK_POLARITY = 1'b1;
    defparam \data_length[0]~FF .CE_POLARITY = 1'b0;
    defparam \data_length[0]~FF .SR_POLARITY = 1'b1;
    defparam \data_length[0]~FF .D_POLARITY = 1'b1;
    defparam \data_length[0]~FF .SR_SYNC = 1'b1;
    defparam \data_length[0]~FF .SR_VALUE = 1'b0;
    defparam \data_length[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \fifo_read_enable~FF  (.D(\state[1] ), .CE(ceg_net721), .CLK(\clk~O ), 
           .SR(1'b0), .Q(fifo_read_enable)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_ctrl.v(221)
    defparam \fifo_read_enable~FF .CLK_POLARITY = 1'b1;
    defparam \fifo_read_enable~FF .CE_POLARITY = 1'b0;
    defparam \fifo_read_enable~FF .SR_POLARITY = 1'b1;
    defparam \fifo_read_enable~FF .D_POLARITY = 1'b0;
    defparam \fifo_read_enable~FF .SR_SYNC = 1'b1;
    defparam \fifo_read_enable~FF .SR_VALUE = 1'b0;
    defparam \fifo_read_enable~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \read_write~FF  (.D(n1352), .CE(ceg_net724), .CLK(\clk~O ), 
           .SR(reset), .Q(read_write)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_ctrl.v(221)
    defparam \read_write~FF .CLK_POLARITY = 1'b1;
    defparam \read_write~FF .CE_POLARITY = 1'b0;
    defparam \read_write~FF .SR_POLARITY = 1'b1;
    defparam \read_write~FF .D_POLARITY = 1'b1;
    defparam \read_write~FF .SR_SYNC = 1'b1;
    defparam \read_write~FF .SR_VALUE = 1'b0;
    defparam \read_write~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \UID_Data[1]~FF  (.D(n1731), .CE(ceg_net729), .CLK(\clk~O ), 
           .SR(reset), .Q(UID_Data[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_ctrl.v(221)
    defparam \UID_Data[1]~FF .CLK_POLARITY = 1'b1;
    defparam \UID_Data[1]~FF .CE_POLARITY = 1'b0;
    defparam \UID_Data[1]~FF .SR_POLARITY = 1'b1;
    defparam \UID_Data[1]~FF .D_POLARITY = 1'b1;
    defparam \UID_Data[1]~FF .SR_SYNC = 1'b1;
    defparam \UID_Data[1]~FF .SR_VALUE = 1'b0;
    defparam \UID_Data[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \UID_Data[2]~FF  (.D(n1737), .CE(ceg_net734), .CLK(\clk~O ), 
           .SR(reset), .Q(UID_Data[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_ctrl.v(221)
    defparam \UID_Data[2]~FF .CLK_POLARITY = 1'b1;
    defparam \UID_Data[2]~FF .CE_POLARITY = 1'b0;
    defparam \UID_Data[2]~FF .SR_POLARITY = 1'b1;
    defparam \UID_Data[2]~FF .D_POLARITY = 1'b1;
    defparam \UID_Data[2]~FF .SR_SYNC = 1'b1;
    defparam \UID_Data[2]~FF .SR_VALUE = 1'b0;
    defparam \UID_Data[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \UID_Data[3]~FF  (.D(n1743), .CE(ceg_net739), .CLK(\clk~O ), 
           .SR(reset), .Q(UID_Data[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_ctrl.v(221)
    defparam \UID_Data[3]~FF .CLK_POLARITY = 1'b1;
    defparam \UID_Data[3]~FF .CE_POLARITY = 1'b0;
    defparam \UID_Data[3]~FF .SR_POLARITY = 1'b1;
    defparam \UID_Data[3]~FF .D_POLARITY = 1'b1;
    defparam \UID_Data[3]~FF .SR_SYNC = 1'b1;
    defparam \UID_Data[3]~FF .SR_VALUE = 1'b0;
    defparam \UID_Data[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \UID_Data[4]~FF  (.D(n1749), .CE(ceg_net744), .CLK(\clk~O ), 
           .SR(reset), .Q(UID_Data[4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_ctrl.v(221)
    defparam \UID_Data[4]~FF .CLK_POLARITY = 1'b1;
    defparam \UID_Data[4]~FF .CE_POLARITY = 1'b0;
    defparam \UID_Data[4]~FF .SR_POLARITY = 1'b1;
    defparam \UID_Data[4]~FF .D_POLARITY = 1'b1;
    defparam \UID_Data[4]~FF .SR_SYNC = 1'b1;
    defparam \UID_Data[4]~FF .SR_VALUE = 1'b0;
    defparam \UID_Data[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \UID_Data[5]~FF  (.D(n1755), .CE(ceg_net749), .CLK(\clk~O ), 
           .SR(reset), .Q(UID_Data[5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_ctrl.v(221)
    defparam \UID_Data[5]~FF .CLK_POLARITY = 1'b1;
    defparam \UID_Data[5]~FF .CE_POLARITY = 1'b0;
    defparam \UID_Data[5]~FF .SR_POLARITY = 1'b1;
    defparam \UID_Data[5]~FF .D_POLARITY = 1'b1;
    defparam \UID_Data[5]~FF .SR_SYNC = 1'b1;
    defparam \UID_Data[5]~FF .SR_VALUE = 1'b0;
    defparam \UID_Data[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \UID_Data[6]~FF  (.D(n1761), .CE(ceg_net754), .CLK(\clk~O ), 
           .SR(reset), .Q(UID_Data[6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_ctrl.v(221)
    defparam \UID_Data[6]~FF .CLK_POLARITY = 1'b1;
    defparam \UID_Data[6]~FF .CE_POLARITY = 1'b0;
    defparam \UID_Data[6]~FF .SR_POLARITY = 1'b1;
    defparam \UID_Data[6]~FF .D_POLARITY = 1'b1;
    defparam \UID_Data[6]~FF .SR_SYNC = 1'b1;
    defparam \UID_Data[6]~FF .SR_VALUE = 1'b0;
    defparam \UID_Data[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \UID_Data[7]~FF  (.D(n1767), .CE(ceg_net754), .CLK(\clk~O ), 
           .SR(reset), .Q(UID_Data[7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_ctrl.v(221)
    defparam \UID_Data[7]~FF .CLK_POLARITY = 1'b1;
    defparam \UID_Data[7]~FF .CE_POLARITY = 1'b0;
    defparam \UID_Data[7]~FF .SR_POLARITY = 1'b1;
    defparam \UID_Data[7]~FF .D_POLARITY = 1'b1;
    defparam \UID_Data[7]~FF .SR_SYNC = 1'b1;
    defparam \UID_Data[7]~FF .SR_VALUE = 1'b0;
    defparam \UID_Data[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \UID_Data[8]~FF  (.D(n1773), .CE(ceg_net764), .CLK(\clk~O ), 
           .SR(reset), .Q(UID_Data[8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_ctrl.v(221)
    defparam \UID_Data[8]~FF .CLK_POLARITY = 1'b1;
    defparam \UID_Data[8]~FF .CE_POLARITY = 1'b0;
    defparam \UID_Data[8]~FF .SR_POLARITY = 1'b1;
    defparam \UID_Data[8]~FF .D_POLARITY = 1'b1;
    defparam \UID_Data[8]~FF .SR_SYNC = 1'b1;
    defparam \UID_Data[8]~FF .SR_VALUE = 1'b0;
    defparam \UID_Data[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \UID_Data[9]~FF  (.D(n1779), .CE(ceg_net769), .CLK(\clk~O ), 
           .SR(reset), .Q(UID_Data[9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_ctrl.v(221)
    defparam \UID_Data[9]~FF .CLK_POLARITY = 1'b1;
    defparam \UID_Data[9]~FF .CE_POLARITY = 1'b0;
    defparam \UID_Data[9]~FF .SR_POLARITY = 1'b1;
    defparam \UID_Data[9]~FF .D_POLARITY = 1'b1;
    defparam \UID_Data[9]~FF .SR_SYNC = 1'b1;
    defparam \UID_Data[9]~FF .SR_VALUE = 1'b0;
    defparam \UID_Data[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \UID_Data[10]~FF  (.D(n1785), .CE(ceg_net774), .CLK(\clk~O ), 
           .SR(reset), .Q(UID_Data[10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_ctrl.v(221)
    defparam \UID_Data[10]~FF .CLK_POLARITY = 1'b1;
    defparam \UID_Data[10]~FF .CE_POLARITY = 1'b0;
    defparam \UID_Data[10]~FF .SR_POLARITY = 1'b1;
    defparam \UID_Data[10]~FF .D_POLARITY = 1'b1;
    defparam \UID_Data[10]~FF .SR_SYNC = 1'b1;
    defparam \UID_Data[10]~FF .SR_VALUE = 1'b0;
    defparam \UID_Data[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \UID_Data[11]~FF  (.D(n1791), .CE(ceg_net779), .CLK(\clk~O ), 
           .SR(reset), .Q(UID_Data[11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_ctrl.v(221)
    defparam \UID_Data[11]~FF .CLK_POLARITY = 1'b1;
    defparam \UID_Data[11]~FF .CE_POLARITY = 1'b0;
    defparam \UID_Data[11]~FF .SR_POLARITY = 1'b1;
    defparam \UID_Data[11]~FF .D_POLARITY = 1'b1;
    defparam \UID_Data[11]~FF .SR_SYNC = 1'b1;
    defparam \UID_Data[11]~FF .SR_VALUE = 1'b0;
    defparam \UID_Data[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \UID_Data[12]~FF  (.D(n1797), .CE(ceg_net784), .CLK(\clk~O ), 
           .SR(reset), .Q(UID_Data[12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_ctrl.v(221)
    defparam \UID_Data[12]~FF .CLK_POLARITY = 1'b1;
    defparam \UID_Data[12]~FF .CE_POLARITY = 1'b0;
    defparam \UID_Data[12]~FF .SR_POLARITY = 1'b1;
    defparam \UID_Data[12]~FF .D_POLARITY = 1'b1;
    defparam \UID_Data[12]~FF .SR_SYNC = 1'b1;
    defparam \UID_Data[12]~FF .SR_VALUE = 1'b0;
    defparam \UID_Data[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \UID_Data[13]~FF  (.D(n1803), .CE(ceg_net789), .CLK(\clk~O ), 
           .SR(reset), .Q(UID_Data[13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_ctrl.v(221)
    defparam \UID_Data[13]~FF .CLK_POLARITY = 1'b1;
    defparam \UID_Data[13]~FF .CE_POLARITY = 1'b0;
    defparam \UID_Data[13]~FF .SR_POLARITY = 1'b1;
    defparam \UID_Data[13]~FF .D_POLARITY = 1'b1;
    defparam \UID_Data[13]~FF .SR_SYNC = 1'b1;
    defparam \UID_Data[13]~FF .SR_VALUE = 1'b0;
    defparam \UID_Data[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \byte_count[1]~FF  (.D(n2103), .CE(ceg_net1009), .CLK(\clk~O ), 
           .SR(reset), .Q(\byte_count[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_ctrl.v(221)
    defparam \byte_count[1]~FF .CLK_POLARITY = 1'b1;
    defparam \byte_count[1]~FF .CE_POLARITY = 1'b0;
    defparam \byte_count[1]~FF .SR_POLARITY = 1'b1;
    defparam \byte_count[1]~FF .D_POLARITY = 1'b1;
    defparam \byte_count[1]~FF .SR_SYNC = 1'b1;
    defparam \byte_count[1]~FF .SR_VALUE = 1'b0;
    defparam \byte_count[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \byte_count[2]~FF  (.D(n2109), .CE(ceg_net1009), .CLK(\clk~O ), 
           .SR(reset), .Q(\byte_count[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_ctrl.v(221)
    defparam \byte_count[2]~FF .CLK_POLARITY = 1'b1;
    defparam \byte_count[2]~FF .CE_POLARITY = 1'b0;
    defparam \byte_count[2]~FF .SR_POLARITY = 1'b1;
    defparam \byte_count[2]~FF .D_POLARITY = 1'b1;
    defparam \byte_count[2]~FF .SR_SYNC = 1'b1;
    defparam \byte_count[2]~FF .SR_VALUE = 1'b0;
    defparam \byte_count[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \length[1]~FF  (.D(n548), .CE(ceg_net1583), .CLK(\clk~O ), 
           .SR(reset), .Q(\length[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_ctrl.v(221)
    defparam \length[1]~FF .CLK_POLARITY = 1'b1;
    defparam \length[1]~FF .CE_POLARITY = 1'b1;
    defparam \length[1]~FF .SR_POLARITY = 1'b1;
    defparam \length[1]~FF .D_POLARITY = 1'b1;
    defparam \length[1]~FF .SR_SYNC = 1'b1;
    defparam \length[1]~FF .SR_VALUE = 1'b0;
    defparam \length[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \length[2]~FF  (.D(n547), .CE(ceg_net1583), .CLK(\clk~O ), 
           .SR(reset), .Q(\length[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_ctrl.v(221)
    defparam \length[2]~FF .CLK_POLARITY = 1'b1;
    defparam \length[2]~FF .CE_POLARITY = 1'b1;
    defparam \length[2]~FF .SR_POLARITY = 1'b1;
    defparam \length[2]~FF .D_POLARITY = 1'b1;
    defparam \length[2]~FF .SR_SYNC = 1'b1;
    defparam \length[2]~FF .SR_VALUE = 1'b0;
    defparam \length[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \length[3]~FF  (.D(n546), .CE(ceg_net1583), .CLK(\clk~O ), 
           .SR(reset), .Q(\length[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_ctrl.v(221)
    defparam \length[3]~FF .CLK_POLARITY = 1'b1;
    defparam \length[3]~FF .CE_POLARITY = 1'b1;
    defparam \length[3]~FF .SR_POLARITY = 1'b1;
    defparam \length[3]~FF .D_POLARITY = 1'b1;
    defparam \length[3]~FF .SR_SYNC = 1'b1;
    defparam \length[3]~FF .SR_VALUE = 1'b0;
    defparam \length[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \length[4]~FF  (.D(n545), .CE(ceg_net1583), .CLK(\clk~O ), 
           .SR(reset), .Q(\length[4] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_ctrl.v(221)
    defparam \length[4]~FF .CLK_POLARITY = 1'b1;
    defparam \length[4]~FF .CE_POLARITY = 1'b1;
    defparam \length[4]~FF .SR_POLARITY = 1'b1;
    defparam \length[4]~FF .D_POLARITY = 1'b1;
    defparam \length[4]~FF .SR_SYNC = 1'b1;
    defparam \length[4]~FF .SR_VALUE = 1'b0;
    defparam \length[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \length[5]~FF  (.D(n544), .CE(ceg_net1583), .CLK(\clk~O ), 
           .SR(reset), .Q(\length[5] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_ctrl.v(221)
    defparam \length[5]~FF .CLK_POLARITY = 1'b1;
    defparam \length[5]~FF .CE_POLARITY = 1'b1;
    defparam \length[5]~FF .SR_POLARITY = 1'b1;
    defparam \length[5]~FF .D_POLARITY = 1'b1;
    defparam \length[5]~FF .SR_SYNC = 1'b1;
    defparam \length[5]~FF .SR_VALUE = 1'b0;
    defparam \length[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \ROM_command[1]~FF  (.D(n1346), .CE(ceg_net1441), .CLK(\clk~O ), 
           .SR(reset), .Q(ROM_command[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_ctrl.v(221)
    defparam \ROM_command[1]~FF .CLK_POLARITY = 1'b1;
    defparam \ROM_command[1]~FF .CE_POLARITY = 1'b0;
    defparam \ROM_command[1]~FF .SR_POLARITY = 1'b1;
    defparam \ROM_command[1]~FF .D_POLARITY = 1'b1;
    defparam \ROM_command[1]~FF .SR_SYNC = 1'b1;
    defparam \ROM_command[1]~FF .SR_VALUE = 1'b0;
    defparam \ROM_command[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \ROM_command[2]~FF  (.D(n2121), .CE(ceg_net1441), .CLK(\clk~O ), 
           .SR(reset), .Q(ROM_command[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_ctrl.v(221)
    defparam \ROM_command[2]~FF .CLK_POLARITY = 1'b1;
    defparam \ROM_command[2]~FF .CE_POLARITY = 1'b0;
    defparam \ROM_command[2]~FF .SR_POLARITY = 1'b1;
    defparam \ROM_command[2]~FF .D_POLARITY = 1'b1;
    defparam \ROM_command[2]~FF .SR_SYNC = 1'b1;
    defparam \ROM_command[2]~FF .SR_VALUE = 1'b0;
    defparam \ROM_command[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \ROM_command[3]~FF  (.D(n2127), .CE(ceg_net1441), .CLK(\clk~O ), 
           .SR(reset), .Q(ROM_command[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_ctrl.v(221)
    defparam \ROM_command[3]~FF .CLK_POLARITY = 1'b1;
    defparam \ROM_command[3]~FF .CE_POLARITY = 1'b0;
    defparam \ROM_command[3]~FF .SR_POLARITY = 1'b1;
    defparam \ROM_command[3]~FF .D_POLARITY = 1'b1;
    defparam \ROM_command[3]~FF .SR_SYNC = 1'b1;
    defparam \ROM_command[3]~FF .SR_VALUE = 1'b0;
    defparam \ROM_command[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \ROM_command[4]~FF  (.D(n2133), .CE(ceg_net1441), .CLK(\clk~O ), 
           .SR(reset), .Q(ROM_command[4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_ctrl.v(221)
    defparam \ROM_command[4]~FF .CLK_POLARITY = 1'b1;
    defparam \ROM_command[4]~FF .CE_POLARITY = 1'b0;
    defparam \ROM_command[4]~FF .SR_POLARITY = 1'b1;
    defparam \ROM_command[4]~FF .D_POLARITY = 1'b1;
    defparam \ROM_command[4]~FF .SR_SYNC = 1'b1;
    defparam \ROM_command[4]~FF .SR_VALUE = 1'b0;
    defparam \ROM_command[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \ROM_command[5]~FF  (.D(n2139), .CE(ceg_net1441), .CLK(\clk~O ), 
           .SR(reset), .Q(ROM_command[5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_ctrl.v(221)
    defparam \ROM_command[5]~FF .CLK_POLARITY = 1'b1;
    defparam \ROM_command[5]~FF .CE_POLARITY = 1'b0;
    defparam \ROM_command[5]~FF .SR_POLARITY = 1'b1;
    defparam \ROM_command[5]~FF .D_POLARITY = 1'b1;
    defparam \ROM_command[5]~FF .SR_SYNC = 1'b1;
    defparam \ROM_command[5]~FF .SR_VALUE = 1'b0;
    defparam \ROM_command[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \ROM_command[6]~FF  (.D(n2145), .CE(ceg_net1441), .CLK(\clk~O ), 
           .SR(reset), .Q(ROM_command[6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_ctrl.v(221)
    defparam \ROM_command[6]~FF .CLK_POLARITY = 1'b1;
    defparam \ROM_command[6]~FF .CE_POLARITY = 1'b0;
    defparam \ROM_command[6]~FF .SR_POLARITY = 1'b1;
    defparam \ROM_command[6]~FF .D_POLARITY = 1'b1;
    defparam \ROM_command[6]~FF .SR_SYNC = 1'b1;
    defparam \ROM_command[6]~FF .SR_VALUE = 1'b0;
    defparam \ROM_command[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \ROM_command[7]~FF  (.D(n2151), .CE(ceg_net1441), .CLK(\clk~O ), 
           .SR(reset), .Q(ROM_command[7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_ctrl.v(221)
    defparam \ROM_command[7]~FF .CLK_POLARITY = 1'b1;
    defparam \ROM_command[7]~FF .CE_POLARITY = 1'b0;
    defparam \ROM_command[7]~FF .SR_POLARITY = 1'b1;
    defparam \ROM_command[7]~FF .D_POLARITY = 1'b1;
    defparam \ROM_command[7]~FF .SR_SYNC = 1'b1;
    defparam \ROM_command[7]~FF .SR_VALUE = 1'b0;
    defparam \ROM_command[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \r_data[1]~FF  (.D(n2061), .CE(ceg_net1009), .CLK(\clk~O ), 
           .SR(reset), .Q(\r_data[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_ctrl.v(221)
    defparam \r_data[1]~FF .CLK_POLARITY = 1'b1;
    defparam \r_data[1]~FF .CE_POLARITY = 1'b0;
    defparam \r_data[1]~FF .SR_POLARITY = 1'b1;
    defparam \r_data[1]~FF .D_POLARITY = 1'b1;
    defparam \r_data[1]~FF .SR_SYNC = 1'b1;
    defparam \r_data[1]~FF .SR_VALUE = 1'b0;
    defparam \r_data[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \r_data[2]~FF  (.D(n2067), .CE(ceg_net1009), .CLK(\clk~O ), 
           .SR(reset), .Q(\r_data[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_ctrl.v(221)
    defparam \r_data[2]~FF .CLK_POLARITY = 1'b1;
    defparam \r_data[2]~FF .CE_POLARITY = 1'b0;
    defparam \r_data[2]~FF .SR_POLARITY = 1'b1;
    defparam \r_data[2]~FF .D_POLARITY = 1'b1;
    defparam \r_data[2]~FF .SR_SYNC = 1'b1;
    defparam \r_data[2]~FF .SR_VALUE = 1'b0;
    defparam \r_data[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \r_data[3]~FF  (.D(n2073), .CE(ceg_net1009), .CLK(\clk~O ), 
           .SR(reset), .Q(\r_data[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_ctrl.v(221)
    defparam \r_data[3]~FF .CLK_POLARITY = 1'b1;
    defparam \r_data[3]~FF .CE_POLARITY = 1'b0;
    defparam \r_data[3]~FF .SR_POLARITY = 1'b1;
    defparam \r_data[3]~FF .D_POLARITY = 1'b1;
    defparam \r_data[3]~FF .SR_SYNC = 1'b1;
    defparam \r_data[3]~FF .SR_VALUE = 1'b0;
    defparam \r_data[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \r_data[4]~FF  (.D(n2079), .CE(ceg_net1009), .CLK(\clk~O ), 
           .SR(reset), .Q(\r_data[4] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_ctrl.v(221)
    defparam \r_data[4]~FF .CLK_POLARITY = 1'b1;
    defparam \r_data[4]~FF .CE_POLARITY = 1'b0;
    defparam \r_data[4]~FF .SR_POLARITY = 1'b1;
    defparam \r_data[4]~FF .D_POLARITY = 1'b1;
    defparam \r_data[4]~FF .SR_SYNC = 1'b1;
    defparam \r_data[4]~FF .SR_VALUE = 1'b0;
    defparam \r_data[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \r_data[5]~FF  (.D(n2085), .CE(ceg_net1009), .CLK(\clk~O ), 
           .SR(reset), .Q(\r_data[5] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_ctrl.v(221)
    defparam \r_data[5]~FF .CLK_POLARITY = 1'b1;
    defparam \r_data[5]~FF .CE_POLARITY = 1'b0;
    defparam \r_data[5]~FF .SR_POLARITY = 1'b1;
    defparam \r_data[5]~FF .D_POLARITY = 1'b1;
    defparam \r_data[5]~FF .SR_SYNC = 1'b1;
    defparam \r_data[5]~FF .SR_VALUE = 1'b0;
    defparam \r_data[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \r_data[6]~FF  (.D(n2091), .CE(ceg_net1009), .CLK(\clk~O ), 
           .SR(reset), .Q(\r_data[6] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_ctrl.v(221)
    defparam \r_data[6]~FF .CLK_POLARITY = 1'b1;
    defparam \r_data[6]~FF .CE_POLARITY = 1'b0;
    defparam \r_data[6]~FF .SR_POLARITY = 1'b1;
    defparam \r_data[6]~FF .D_POLARITY = 1'b1;
    defparam \r_data[6]~FF .SR_SYNC = 1'b1;
    defparam \r_data[6]~FF .SR_VALUE = 1'b0;
    defparam \r_data[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \r_data[7]~FF  (.D(n2097), .CE(ceg_net1009), .CLK(\clk~O ), 
           .SR(reset), .Q(\r_data[7] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_ctrl.v(221)
    defparam \r_data[7]~FF .CLK_POLARITY = 1'b1;
    defparam \r_data[7]~FF .CE_POLARITY = 1'b0;
    defparam \r_data[7]~FF .SR_POLARITY = 1'b1;
    defparam \r_data[7]~FF .D_POLARITY = 1'b1;
    defparam \r_data[7]~FF .SR_SYNC = 1'b1;
    defparam \r_data[7]~FF .SR_VALUE = 1'b0;
    defparam \r_data[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Fun_cmd[1]~FF  (.D(n590), .CE(ceg_net1159), .CLK(\clk~O ), 
           .SR(reset), .Q(Fun_cmd[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_ctrl.v(221)
    defparam \Fun_cmd[1]~FF .CLK_POLARITY = 1'b1;
    defparam \Fun_cmd[1]~FF .CE_POLARITY = 1'b1;
    defparam \Fun_cmd[1]~FF .SR_POLARITY = 1'b1;
    defparam \Fun_cmd[1]~FF .D_POLARITY = 1'b1;
    defparam \Fun_cmd[1]~FF .SR_SYNC = 1'b1;
    defparam \Fun_cmd[1]~FF .SR_VALUE = 1'b0;
    defparam \Fun_cmd[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Fun_cmd[2]~FF  (.D(n589), .CE(ceg_net1159), .CLK(\clk~O ), 
           .SR(reset), .Q(Fun_cmd[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_ctrl.v(221)
    defparam \Fun_cmd[2]~FF .CLK_POLARITY = 1'b1;
    defparam \Fun_cmd[2]~FF .CE_POLARITY = 1'b1;
    defparam \Fun_cmd[2]~FF .SR_POLARITY = 1'b1;
    defparam \Fun_cmd[2]~FF .D_POLARITY = 1'b1;
    defparam \Fun_cmd[2]~FF .SR_SYNC = 1'b1;
    defparam \Fun_cmd[2]~FF .SR_VALUE = 1'b0;
    defparam \Fun_cmd[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Fun_cmd[3]~FF  (.D(n588), .CE(ceg_net1159), .CLK(\clk~O ), 
           .SR(reset), .Q(Fun_cmd[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_ctrl.v(221)
    defparam \Fun_cmd[3]~FF .CLK_POLARITY = 1'b1;
    defparam \Fun_cmd[3]~FF .CE_POLARITY = 1'b1;
    defparam \Fun_cmd[3]~FF .SR_POLARITY = 1'b1;
    defparam \Fun_cmd[3]~FF .D_POLARITY = 1'b1;
    defparam \Fun_cmd[3]~FF .SR_SYNC = 1'b1;
    defparam \Fun_cmd[3]~FF .SR_VALUE = 1'b0;
    defparam \Fun_cmd[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Fun_cmd[4]~FF  (.D(n587), .CE(ceg_net1159), .CLK(\clk~O ), 
           .SR(reset), .Q(Fun_cmd[4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_ctrl.v(221)
    defparam \Fun_cmd[4]~FF .CLK_POLARITY = 1'b1;
    defparam \Fun_cmd[4]~FF .CE_POLARITY = 1'b1;
    defparam \Fun_cmd[4]~FF .SR_POLARITY = 1'b1;
    defparam \Fun_cmd[4]~FF .D_POLARITY = 1'b1;
    defparam \Fun_cmd[4]~FF .SR_SYNC = 1'b1;
    defparam \Fun_cmd[4]~FF .SR_VALUE = 1'b0;
    defparam \Fun_cmd[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Fun_cmd[5]~FF  (.D(n586), .CE(ceg_net1159), .CLK(\clk~O ), 
           .SR(reset), .Q(Fun_cmd[5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_ctrl.v(221)
    defparam \Fun_cmd[5]~FF .CLK_POLARITY = 1'b1;
    defparam \Fun_cmd[5]~FF .CE_POLARITY = 1'b1;
    defparam \Fun_cmd[5]~FF .SR_POLARITY = 1'b1;
    defparam \Fun_cmd[5]~FF .D_POLARITY = 1'b1;
    defparam \Fun_cmd[5]~FF .SR_SYNC = 1'b1;
    defparam \Fun_cmd[5]~FF .SR_VALUE = 1'b0;
    defparam \Fun_cmd[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Fun_cmd[6]~FF  (.D(n585), .CE(ceg_net1159), .CLK(\clk~O ), 
           .SR(reset), .Q(Fun_cmd[6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_ctrl.v(221)
    defparam \Fun_cmd[6]~FF .CLK_POLARITY = 1'b1;
    defparam \Fun_cmd[6]~FF .CE_POLARITY = 1'b1;
    defparam \Fun_cmd[6]~FF .SR_POLARITY = 1'b1;
    defparam \Fun_cmd[6]~FF .D_POLARITY = 1'b1;
    defparam \Fun_cmd[6]~FF .SR_SYNC = 1'b1;
    defparam \Fun_cmd[6]~FF .SR_VALUE = 1'b0;
    defparam \Fun_cmd[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Fun_cmd[7]~FF  (.D(n584), .CE(ceg_net1159), .CLK(\clk~O ), 
           .SR(reset), .Q(Fun_cmd[7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_ctrl.v(221)
    defparam \Fun_cmd[7]~FF .CLK_POLARITY = 1'b1;
    defparam \Fun_cmd[7]~FF .CE_POLARITY = 1'b1;
    defparam \Fun_cmd[7]~FF .SR_POLARITY = 1'b1;
    defparam \Fun_cmd[7]~FF .D_POLARITY = 1'b1;
    defparam \Fun_cmd[7]~FF .SR_SYNC = 1'b1;
    defparam \Fun_cmd[7]~FF .SR_VALUE = 1'b0;
    defparam \Fun_cmd[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \address[1]~FF  (.D(n590), .CE(ceg_net1462), .CLK(\clk~O ), 
           .SR(reset), .Q(address[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_ctrl.v(221)
    defparam \address[1]~FF .CLK_POLARITY = 1'b1;
    defparam \address[1]~FF .CE_POLARITY = 1'b1;
    defparam \address[1]~FF .SR_POLARITY = 1'b1;
    defparam \address[1]~FF .D_POLARITY = 1'b1;
    defparam \address[1]~FF .SR_SYNC = 1'b1;
    defparam \address[1]~FF .SR_VALUE = 1'b0;
    defparam \address[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \address[2]~FF  (.D(n589), .CE(ceg_net1462), .CLK(\clk~O ), 
           .SR(reset), .Q(address[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_ctrl.v(221)
    defparam \address[2]~FF .CLK_POLARITY = 1'b1;
    defparam \address[2]~FF .CE_POLARITY = 1'b1;
    defparam \address[2]~FF .SR_POLARITY = 1'b1;
    defparam \address[2]~FF .D_POLARITY = 1'b1;
    defparam \address[2]~FF .SR_SYNC = 1'b1;
    defparam \address[2]~FF .SR_VALUE = 1'b0;
    defparam \address[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \address[3]~FF  (.D(n588), .CE(ceg_net1462), .CLK(\clk~O ), 
           .SR(reset), .Q(address[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_ctrl.v(221)
    defparam \address[3]~FF .CLK_POLARITY = 1'b1;
    defparam \address[3]~FF .CE_POLARITY = 1'b1;
    defparam \address[3]~FF .SR_POLARITY = 1'b1;
    defparam \address[3]~FF .D_POLARITY = 1'b1;
    defparam \address[3]~FF .SR_SYNC = 1'b1;
    defparam \address[3]~FF .SR_VALUE = 1'b0;
    defparam \address[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \address[4]~FF  (.D(n587), .CE(ceg_net1462), .CLK(\clk~O ), 
           .SR(reset), .Q(address[4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_ctrl.v(221)
    defparam \address[4]~FF .CLK_POLARITY = 1'b1;
    defparam \address[4]~FF .CE_POLARITY = 1'b1;
    defparam \address[4]~FF .SR_POLARITY = 1'b1;
    defparam \address[4]~FF .D_POLARITY = 1'b1;
    defparam \address[4]~FF .SR_SYNC = 1'b1;
    defparam \address[4]~FF .SR_VALUE = 1'b0;
    defparam \address[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \address[5]~FF  (.D(n586), .CE(ceg_net1462), .CLK(\clk~O ), 
           .SR(reset), .Q(address[5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_ctrl.v(221)
    defparam \address[5]~FF .CLK_POLARITY = 1'b1;
    defparam \address[5]~FF .CE_POLARITY = 1'b1;
    defparam \address[5]~FF .SR_POLARITY = 1'b1;
    defparam \address[5]~FF .D_POLARITY = 1'b1;
    defparam \address[5]~FF .SR_SYNC = 1'b1;
    defparam \address[5]~FF .SR_VALUE = 1'b0;
    defparam \address[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \address[6]~FF  (.D(n585), .CE(ceg_net1462), .CLK(\clk~O ), 
           .SR(reset), .Q(address[6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_ctrl.v(221)
    defparam \address[6]~FF .CLK_POLARITY = 1'b1;
    defparam \address[6]~FF .CE_POLARITY = 1'b1;
    defparam \address[6]~FF .SR_POLARITY = 1'b1;
    defparam \address[6]~FF .D_POLARITY = 1'b1;
    defparam \address[6]~FF .SR_SYNC = 1'b1;
    defparam \address[6]~FF .SR_VALUE = 1'b0;
    defparam \address[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \address[7]~FF  (.D(n584), .CE(ceg_net1462), .CLK(\clk~O ), 
           .SR(reset), .Q(address[7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_ctrl.v(221)
    defparam \address[7]~FF .CLK_POLARITY = 1'b1;
    defparam \address[7]~FF .CE_POLARITY = 1'b1;
    defparam \address[7]~FF .SR_POLARITY = 1'b1;
    defparam \address[7]~FF .D_POLARITY = 1'b1;
    defparam \address[7]~FF .SR_SYNC = 1'b1;
    defparam \address[7]~FF .SR_VALUE = 1'b0;
    defparam \address[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \address[8]~FF  (.D(n591), .CE(ceg_net1380), .CLK(\clk~O ), 
           .SR(reset), .Q(address[8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_ctrl.v(221)
    defparam \address[8]~FF .CLK_POLARITY = 1'b1;
    defparam \address[8]~FF .CE_POLARITY = 1'b1;
    defparam \address[8]~FF .SR_POLARITY = 1'b1;
    defparam \address[8]~FF .D_POLARITY = 1'b1;
    defparam \address[8]~FF .SR_SYNC = 1'b1;
    defparam \address[8]~FF .SR_VALUE = 1'b0;
    defparam \address[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \address[9]~FF  (.D(n590), .CE(ceg_net1380), .CLK(\clk~O ), 
           .SR(reset), .Q(address[9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_ctrl.v(221)
    defparam \address[9]~FF .CLK_POLARITY = 1'b1;
    defparam \address[9]~FF .CE_POLARITY = 1'b1;
    defparam \address[9]~FF .SR_POLARITY = 1'b1;
    defparam \address[9]~FF .D_POLARITY = 1'b1;
    defparam \address[9]~FF .SR_SYNC = 1'b1;
    defparam \address[9]~FF .SR_VALUE = 1'b0;
    defparam \address[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \address[10]~FF  (.D(n589), .CE(ceg_net1380), .CLK(\clk~O ), 
           .SR(reset), .Q(address[10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_ctrl.v(221)
    defparam \address[10]~FF .CLK_POLARITY = 1'b1;
    defparam \address[10]~FF .CE_POLARITY = 1'b1;
    defparam \address[10]~FF .SR_POLARITY = 1'b1;
    defparam \address[10]~FF .D_POLARITY = 1'b1;
    defparam \address[10]~FF .SR_SYNC = 1'b1;
    defparam \address[10]~FF .SR_VALUE = 1'b0;
    defparam \address[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \address[11]~FF  (.D(n588), .CE(ceg_net1380), .CLK(\clk~O ), 
           .SR(reset), .Q(address[11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_ctrl.v(221)
    defparam \address[11]~FF .CLK_POLARITY = 1'b1;
    defparam \address[11]~FF .CE_POLARITY = 1'b1;
    defparam \address[11]~FF .SR_POLARITY = 1'b1;
    defparam \address[11]~FF .D_POLARITY = 1'b1;
    defparam \address[11]~FF .SR_SYNC = 1'b1;
    defparam \address[11]~FF .SR_VALUE = 1'b0;
    defparam \address[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \address[12]~FF  (.D(n587), .CE(ceg_net1380), .CLK(\clk~O ), 
           .SR(reset), .Q(address[12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_ctrl.v(221)
    defparam \address[12]~FF .CLK_POLARITY = 1'b1;
    defparam \address[12]~FF .CE_POLARITY = 1'b1;
    defparam \address[12]~FF .SR_POLARITY = 1'b1;
    defparam \address[12]~FF .D_POLARITY = 1'b1;
    defparam \address[12]~FF .SR_SYNC = 1'b1;
    defparam \address[12]~FF .SR_VALUE = 1'b0;
    defparam \address[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \address[13]~FF  (.D(n586), .CE(ceg_net1380), .CLK(\clk~O ), 
           .SR(reset), .Q(address[13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_ctrl.v(221)
    defparam \address[13]~FF .CLK_POLARITY = 1'b1;
    defparam \address[13]~FF .CE_POLARITY = 1'b1;
    defparam \address[13]~FF .SR_POLARITY = 1'b1;
    defparam \address[13]~FF .D_POLARITY = 1'b1;
    defparam \address[13]~FF .SR_SYNC = 1'b1;
    defparam \address[13]~FF .SR_VALUE = 1'b0;
    defparam \address[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \address[14]~FF  (.D(n585), .CE(ceg_net1380), .CLK(\clk~O ), 
           .SR(reset), .Q(address[14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_ctrl.v(221)
    defparam \address[14]~FF .CLK_POLARITY = 1'b1;
    defparam \address[14]~FF .CE_POLARITY = 1'b1;
    defparam \address[14]~FF .SR_POLARITY = 1'b1;
    defparam \address[14]~FF .D_POLARITY = 1'b1;
    defparam \address[14]~FF .SR_SYNC = 1'b1;
    defparam \address[14]~FF .SR_VALUE = 1'b0;
    defparam \address[14]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \address[15]~FF  (.D(n584), .CE(ceg_net1380), .CLK(\clk~O ), 
           .SR(reset), .Q(address[15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_ctrl.v(221)
    defparam \address[15]~FF .CLK_POLARITY = 1'b1;
    defparam \address[15]~FF .CE_POLARITY = 1'b1;
    defparam \address[15]~FF .SR_POLARITY = 1'b1;
    defparam \address[15]~FF .D_POLARITY = 1'b1;
    defparam \address[15]~FF .SR_SYNC = 1'b1;
    defparam \address[15]~FF .SR_VALUE = 1'b0;
    defparam \address[15]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \write_data[1]~FF  (.D(n557), .CE(ceg_net1507), .CLK(\clk~O ), 
           .SR(reset), .Q(write_data[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_ctrl.v(221)
    defparam \write_data[1]~FF .CLK_POLARITY = 1'b1;
    defparam \write_data[1]~FF .CE_POLARITY = 1'b1;
    defparam \write_data[1]~FF .SR_POLARITY = 1'b1;
    defparam \write_data[1]~FF .D_POLARITY = 1'b1;
    defparam \write_data[1]~FF .SR_SYNC = 1'b1;
    defparam \write_data[1]~FF .SR_VALUE = 1'b0;
    defparam \write_data[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \write_data[2]~FF  (.D(n556), .CE(ceg_net1507), .CLK(\clk~O ), 
           .SR(reset), .Q(write_data[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_ctrl.v(221)
    defparam \write_data[2]~FF .CLK_POLARITY = 1'b1;
    defparam \write_data[2]~FF .CE_POLARITY = 1'b1;
    defparam \write_data[2]~FF .SR_POLARITY = 1'b1;
    defparam \write_data[2]~FF .D_POLARITY = 1'b1;
    defparam \write_data[2]~FF .SR_SYNC = 1'b1;
    defparam \write_data[2]~FF .SR_VALUE = 1'b0;
    defparam \write_data[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \write_data[3]~FF  (.D(n555), .CE(ceg_net1507), .CLK(\clk~O ), 
           .SR(reset), .Q(write_data[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_ctrl.v(221)
    defparam \write_data[3]~FF .CLK_POLARITY = 1'b1;
    defparam \write_data[3]~FF .CE_POLARITY = 1'b1;
    defparam \write_data[3]~FF .SR_POLARITY = 1'b1;
    defparam \write_data[3]~FF .D_POLARITY = 1'b1;
    defparam \write_data[3]~FF .SR_SYNC = 1'b1;
    defparam \write_data[3]~FF .SR_VALUE = 1'b0;
    defparam \write_data[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \write_data[4]~FF  (.D(n554), .CE(ceg_net1507), .CLK(\clk~O ), 
           .SR(reset), .Q(write_data[4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_ctrl.v(221)
    defparam \write_data[4]~FF .CLK_POLARITY = 1'b1;
    defparam \write_data[4]~FF .CE_POLARITY = 1'b1;
    defparam \write_data[4]~FF .SR_POLARITY = 1'b1;
    defparam \write_data[4]~FF .D_POLARITY = 1'b1;
    defparam \write_data[4]~FF .SR_SYNC = 1'b1;
    defparam \write_data[4]~FF .SR_VALUE = 1'b0;
    defparam \write_data[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \write_data[5]~FF  (.D(n553), .CE(ceg_net1507), .CLK(\clk~O ), 
           .SR(reset), .Q(write_data[5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_ctrl.v(221)
    defparam \write_data[5]~FF .CLK_POLARITY = 1'b1;
    defparam \write_data[5]~FF .CE_POLARITY = 1'b1;
    defparam \write_data[5]~FF .SR_POLARITY = 1'b1;
    defparam \write_data[5]~FF .D_POLARITY = 1'b1;
    defparam \write_data[5]~FF .SR_SYNC = 1'b1;
    defparam \write_data[5]~FF .SR_VALUE = 1'b0;
    defparam \write_data[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \write_data[6]~FF  (.D(n552), .CE(ceg_net1507), .CLK(\clk~O ), 
           .SR(reset), .Q(write_data[6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_ctrl.v(221)
    defparam \write_data[6]~FF .CLK_POLARITY = 1'b1;
    defparam \write_data[6]~FF .CE_POLARITY = 1'b1;
    defparam \write_data[6]~FF .SR_POLARITY = 1'b1;
    defparam \write_data[6]~FF .D_POLARITY = 1'b1;
    defparam \write_data[6]~FF .SR_SYNC = 1'b1;
    defparam \write_data[6]~FF .SR_VALUE = 1'b0;
    defparam \write_data[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \write_data[7]~FF  (.D(n551), .CE(ceg_net1507), .CLK(\clk~O ), 
           .SR(reset), .Q(write_data[7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_ctrl.v(221)
    defparam \write_data[7]~FF .CLK_POLARITY = 1'b1;
    defparam \write_data[7]~FF .CE_POLARITY = 1'b1;
    defparam \write_data[7]~FF .SR_POLARITY = 1'b1;
    defparam \write_data[7]~FF .D_POLARITY = 1'b1;
    defparam \write_data[7]~FF .SR_SYNC = 1'b1;
    defparam \write_data[7]~FF .SR_VALUE = 1'b0;
    defparam \write_data[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \data_address[1]~FF  (.D(n563), .CE(ceg_net1507), .CLK(\clk~O ), 
           .SR(reset), .Q(data_address[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_ctrl.v(221)
    defparam \data_address[1]~FF .CLK_POLARITY = 1'b1;
    defparam \data_address[1]~FF .CE_POLARITY = 1'b1;
    defparam \data_address[1]~FF .SR_POLARITY = 1'b1;
    defparam \data_address[1]~FF .D_POLARITY = 1'b1;
    defparam \data_address[1]~FF .SR_SYNC = 1'b1;
    defparam \data_address[1]~FF .SR_VALUE = 1'b0;
    defparam \data_address[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \data_address[2]~FF  (.D(n562), .CE(ceg_net1507), .CLK(\clk~O ), 
           .SR(reset), .Q(data_address[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_ctrl.v(221)
    defparam \data_address[2]~FF .CLK_POLARITY = 1'b1;
    defparam \data_address[2]~FF .CE_POLARITY = 1'b1;
    defparam \data_address[2]~FF .SR_POLARITY = 1'b1;
    defparam \data_address[2]~FF .D_POLARITY = 1'b1;
    defparam \data_address[2]~FF .SR_SYNC = 1'b1;
    defparam \data_address[2]~FF .SR_VALUE = 1'b0;
    defparam \data_address[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \data_address[3]~FF  (.D(n561), .CE(ceg_net1507), .CLK(\clk~O ), 
           .SR(reset), .Q(data_address[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_ctrl.v(221)
    defparam \data_address[3]~FF .CLK_POLARITY = 1'b1;
    defparam \data_address[3]~FF .CE_POLARITY = 1'b1;
    defparam \data_address[3]~FF .SR_POLARITY = 1'b1;
    defparam \data_address[3]~FF .D_POLARITY = 1'b1;
    defparam \data_address[3]~FF .SR_SYNC = 1'b1;
    defparam \data_address[3]~FF .SR_VALUE = 1'b0;
    defparam \data_address[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \data_address[4]~FF  (.D(n560), .CE(ceg_net1507), .CLK(\clk~O ), 
           .SR(reset), .Q(data_address[4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_ctrl.v(221)
    defparam \data_address[4]~FF .CLK_POLARITY = 1'b1;
    defparam \data_address[4]~FF .CE_POLARITY = 1'b1;
    defparam \data_address[4]~FF .SR_POLARITY = 1'b1;
    defparam \data_address[4]~FF .D_POLARITY = 1'b1;
    defparam \data_address[4]~FF .SR_SYNC = 1'b1;
    defparam \data_address[4]~FF .SR_VALUE = 1'b0;
    defparam \data_address[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \state[1]~FF  (.D(n536), .CE(ceg_net61), .CLK(\clk~O ), .SR(1'b0), 
           .Q(\state[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_ctrl.v(221)
    defparam \state[1]~FF .CLK_POLARITY = 1'b1;
    defparam \state[1]~FF .CE_POLARITY = 1'b0;
    defparam \state[1]~FF .SR_POLARITY = 1'b1;
    defparam \state[1]~FF .D_POLARITY = 1'b1;
    defparam \state[1]~FF .SR_SYNC = 1'b1;
    defparam \state[1]~FF .SR_VALUE = 1'b0;
    defparam \state[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \state[2]~FF  (.D(n535), .CE(ceg_net61), .CLK(\clk~O ), .SR(1'b0), 
           .Q(\state[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_ctrl.v(221)
    defparam \state[2]~FF .CLK_POLARITY = 1'b1;
    defparam \state[2]~FF .CE_POLARITY = 1'b0;
    defparam \state[2]~FF .SR_POLARITY = 1'b1;
    defparam \state[2]~FF .D_POLARITY = 1'b1;
    defparam \state[2]~FF .SR_SYNC = 1'b1;
    defparam \state[2]~FF .SR_VALUE = 1'b0;
    defparam \state[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \state[3]~FF  (.D(n534), .CE(ceg_net61), .CLK(\clk~O ), .SR(1'b0), 
           .Q(\state[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_ctrl.v(221)
    defparam \state[3]~FF .CLK_POLARITY = 1'b1;
    defparam \state[3]~FF .CE_POLARITY = 1'b0;
    defparam \state[3]~FF .SR_POLARITY = 1'b1;
    defparam \state[3]~FF .D_POLARITY = 1'b1;
    defparam \state[3]~FF .SR_SYNC = 1'b1;
    defparam \state[3]~FF .SR_VALUE = 1'b0;
    defparam \state[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \post_wait_state[1]~FF  (.D(n541), .CE(ceg_net1548), .CLK(\clk~O ), 
           .SR(1'b0), .Q(\post_wait_state[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_ctrl.v(221)
    defparam \post_wait_state[1]~FF .CLK_POLARITY = 1'b1;
    defparam \post_wait_state[1]~FF .CE_POLARITY = 1'b0;
    defparam \post_wait_state[1]~FF .SR_POLARITY = 1'b1;
    defparam \post_wait_state[1]~FF .D_POLARITY = 1'b1;
    defparam \post_wait_state[1]~FF .SR_SYNC = 1'b1;
    defparam \post_wait_state[1]~FF .SR_VALUE = 1'b0;
    defparam \post_wait_state[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \post_wait_state[2]~FF  (.D(n540), .CE(ceg_net1548), .CLK(\clk~O ), 
           .SR(1'b0), .Q(\post_wait_state[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_ctrl.v(221)
    defparam \post_wait_state[2]~FF .CLK_POLARITY = 1'b1;
    defparam \post_wait_state[2]~FF .CE_POLARITY = 1'b0;
    defparam \post_wait_state[2]~FF .SR_POLARITY = 1'b1;
    defparam \post_wait_state[2]~FF .D_POLARITY = 1'b1;
    defparam \post_wait_state[2]~FF .SR_SYNC = 1'b1;
    defparam \post_wait_state[2]~FF .SR_VALUE = 1'b0;
    defparam \post_wait_state[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \post_wait_state[3]~FF  (.D(n539), .CE(ceg_net1548), .CLK(\clk~O ), 
           .SR(1'b0), .Q(\post_wait_state[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_ctrl.v(221)
    defparam \post_wait_state[3]~FF .CLK_POLARITY = 1'b1;
    defparam \post_wait_state[3]~FF .CE_POLARITY = 1'b0;
    defparam \post_wait_state[3]~FF .SR_POLARITY = 1'b1;
    defparam \post_wait_state[3]~FF .D_POLARITY = 1'b1;
    defparam \post_wait_state[3]~FF .SR_SYNC = 1'b1;
    defparam \post_wait_state[3]~FF .SR_VALUE = 1'b0;
    defparam \post_wait_state[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \data_length[1]~FF  (.D(n2154), .CE(ceg_net1419), .CLK(\clk~O ), 
           .SR(1'b0), .Q(data_length[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_ctrl.v(221)
    defparam \data_length[1]~FF .CLK_POLARITY = 1'b1;
    defparam \data_length[1]~FF .CE_POLARITY = 1'b0;
    defparam \data_length[1]~FF .SR_POLARITY = 1'b1;
    defparam \data_length[1]~FF .D_POLARITY = 1'b1;
    defparam \data_length[1]~FF .SR_SYNC = 1'b1;
    defparam \data_length[1]~FF .SR_VALUE = 1'b0;
    defparam \data_length[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \data_length[2]~FF  (.D(n2158), .CE(ceg_net1419), .CLK(\clk~O ), 
           .SR(1'b0), .Q(data_length[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_ctrl.v(221)
    defparam \data_length[2]~FF .CLK_POLARITY = 1'b1;
    defparam \data_length[2]~FF .CE_POLARITY = 1'b0;
    defparam \data_length[2]~FF .SR_POLARITY = 1'b1;
    defparam \data_length[2]~FF .D_POLARITY = 1'b1;
    defparam \data_length[2]~FF .SR_SYNC = 1'b1;
    defparam \data_length[2]~FF .SR_VALUE = 1'b0;
    defparam \data_length[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \data_length[3]~FF  (.D(n2162), .CE(ceg_net1419), .CLK(\clk~O ), 
           .SR(1'b0), .Q(data_length[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_ctrl.v(221)
    defparam \data_length[3]~FF .CLK_POLARITY = 1'b1;
    defparam \data_length[3]~FF .CE_POLARITY = 1'b0;
    defparam \data_length[3]~FF .SR_POLARITY = 1'b1;
    defparam \data_length[3]~FF .D_POLARITY = 1'b1;
    defparam \data_length[3]~FF .SR_SYNC = 1'b1;
    defparam \data_length[3]~FF .SR_VALUE = 1'b0;
    defparam \data_length[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \data_length[4]~FF  (.D(n2166), .CE(ceg_net1419), .CLK(\clk~O ), 
           .SR(1'b0), .Q(data_length[4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_ctrl.v(221)
    defparam \data_length[4]~FF .CLK_POLARITY = 1'b1;
    defparam \data_length[4]~FF .CE_POLARITY = 1'b0;
    defparam \data_length[4]~FF .SR_POLARITY = 1'b1;
    defparam \data_length[4]~FF .D_POLARITY = 1'b1;
    defparam \data_length[4]~FF .SR_SYNC = 1'b1;
    defparam \data_length[4]~FF .SR_VALUE = 1'b0;
    defparam \data_length[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \data_length[5]~FF  (.D(n2170), .CE(ceg_net1419), .CLK(\clk~O ), 
           .SR(1'b0), .Q(data_length[5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/tejas/Downloads/efinity/2023.2/project/One_wire/one_wire_data_ctrl.v(221)
    defparam \data_length[5]~FF .CLK_POLARITY = 1'b1;
    defparam \data_length[5]~FF .CE_POLARITY = 1'b0;
    defparam \data_length[5]~FF .SR_POLARITY = 1'b1;
    defparam \data_length[5]~FF .D_POLARITY = 1'b1;
    defparam \data_length[5]~FF .SR_SYNC = 1'b1;
    defparam \data_length[5]~FF .SR_VALUE = 1'b0;
    defparam \data_length[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_LUT4 LUT__438 (.I0(\byte_count[2] ), .I1(\state[2] ), .O(n288)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__438.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__439 (.I0(\state[0] ), .I1(\state[1] ), .O(n289)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__439.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__440 (.I0(\state[2] ), .I1(\state[0] ), .I2(\state[1] ), 
            .I3(reset), .O(ceg_net1159)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hff01 */ ;
    defparam LUT__440.LUTMASK = 16'hff01;
    EFX_LUT4 LUT__441 (.I0(n289), .I1(n288), .I2(ceg_net1159), .I3(\state[3] ), 
            .O(n290)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00f8 */ ;
    defparam LUT__441.LUTMASK = 16'h00f8;
    EFX_LUT4 LUT__442 (.I0(\byte_count[1] ), .I1(\byte_count[0] ), .I2(n287), 
            .I3(n290), .O(ceg_net644)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb0ff */ ;
    defparam LUT__442.LUTMASK = 16'hb0ff;
    EFX_LUT4 LUT__443 (.I0(\byte_count[0] ), .I1(\state[0] ), .I2(\state[2] ), 
            .O(n2561)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9090 */ ;
    defparam LUT__443.LUTMASK = 16'h9090;
    EFX_LUT4 LUT__444 (.I0(\state[0] ), .I1(\state[1] ), .O(n291)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__444.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__445 (.I0(n291), .I1(\state[2] ), .I2(reset), .I3(\state[3] ), 
            .O(n292)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00fe */ ;
    defparam LUT__445.LUTMASK = 16'h00fe;
    EFX_LUT4 LUT__446 (.I0(\state[1] ), .I1(n287), .I2(n292), .O(ceg_net1009)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4f4f */ ;
    defparam LUT__446.LUTMASK = 16'h4f4f;
    EFX_LUT4 LUT__447 (.I0(\length[0] ), .I1(\state[2] ), .O(n293)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9999 */ ;
    defparam LUT__447.LUTMASK = 16'h9999;
    EFX_LUT4 LUT__448 (.I0(\state[1] ), .I1(fifo_read_data[0]), .I2(n293), 
            .I3(\state[3] ), .O(n549)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf088 */ ;
    defparam LUT__448.LUTMASK = 16'hf088;
    EFX_LUT4 LUT__449 (.I0(reset), .I1(\state[3] ), .O(ceg_net63)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbbbb */ ;
    defparam LUT__449.LUTMASK = 16'hbbbb;
    EFX_LUT4 LUT__450 (.I0(ceg_net1159), .I1(ceg_net63), .O(n294)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__450.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__451 (.I0(n289), .I1(\state[3] ), .I2(n294), .I3(\state[2] ), 
            .O(ceg_net1583)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfcfa */ ;
    defparam LUT__451.LUTMASK = 16'hfcfa;
    EFX_LUT4 LUT__452 (.I0(fifo_read_data[1]), .I1(\state[2] ), .O(n1346)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__452.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__453 (.I0(reset), .I1(n291), .I2(\state[3] ), .O(ceg_net724)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf1f1 */ ;
    defparam LUT__453.LUTMASK = 16'hf1f1;
    EFX_LUT4 LUT__454 (.I0(fifo_read_data[0]), .I1(\state[2] ), .O(n1352)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__454.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__455 (.I0(\state[1] ), .I1(\state[0] ), .I2(n287), .I3(n292), 
            .O(ceg_net1441)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb0ff */ ;
    defparam LUT__455.LUTMASK = 16'hb0ff;
    EFX_LUT4 LUT__456 (.I0(\byte_count[1] ), .I1(\byte_count[2] ), .O(n295)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__456.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__457 (.I0(n291), .I1(n295), .I2(data_valid), .I3(\state[3] ), 
            .O(n296)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'haf03 */ ;
    defparam LUT__457.LUTMASK = 16'haf03;
    EFX_LUT4 LUT__458 (.I0(\state[3] ), .I1(\state[2] ), .I2(n296), .O(n532)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0e0e */ ;
    defparam LUT__458.LUTMASK = 16'h0e0e;
    EFX_LUT4 LUT__459 (.I0(\state[3] ), .I1(n289), .I2(\state[2] ), .I3(n294), 
            .O(ceg_net1376)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hffe0 */ ;
    defparam LUT__459.LUTMASK = 16'hffe0;
    EFX_LUT4 LUT__460 (.I0(n1352), .I1(n2549), .I2(\state[0] ), .O(n2555)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;
    defparam LUT__460.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__461 (.I0(fifo_read_data[0]), .I1(\state[3] ), .O(n591)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__461.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__462 (.I0(\state[1] ), .I1(\state[2] ), .O(n297)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__462.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__463 (.I0(reset), .I1(\state[0] ), .I2(\state[3] ), .I3(n297), 
            .O(ceg_net1380)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hebaa */ ;
    defparam LUT__463.LUTMASK = 16'hebaa;
    EFX_LUT4 LUT__464 (.I0(address_count), .I1(\state[0] ), .I2(\state[3] ), 
            .I3(n297), .O(n298)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;
    defparam LUT__464.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__465 (.I0(n294), .I1(n298), .O(ceg_net1462)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'heeee */ ;
    defparam LUT__465.LUTMASK = 16'heeee;
    EFX_LUT4 LUT__466 (.I0(write_data[0]), .I1(fifo_read_data[0]), .I2(\state[0] ), 
            .I3(\state[3] ), .O(n558)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__466.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__467 (.I0(n287), .I1(\state[3] ), .I2(\state[1] ), .I3(n294), 
            .O(ceg_net1507)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hff40 */ ;
    defparam LUT__467.LUTMASK = 16'hff40;
    EFX_LUT4 LUT__468 (.I0(\length[2] ), .I1(\length[3] ), .I2(\length[4] ), 
            .I3(\length[5] ), .O(n299)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__468.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__469 (.I0(\length[0] ), .I1(\length[1] ), .I2(n299), 
            .I3(\state[0] ), .O(n300)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00ef */ ;
    defparam LUT__469.LUTMASK = 16'h00ef;
    EFX_LUT4 LUT__470 (.I0(data_address[0]), .I1(n300), .I2(\state[3] ), 
            .O(n564)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;
    defparam LUT__470.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__471 (.I0(\post_wait_state[0] ), .I1(fifo_empty), .I2(\state[0] ), 
            .I3(\state[1] ), .O(n301)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfacf */ ;
    defparam LUT__471.LUTMASK = 16'hfacf;
    EFX_LUT4 LUT__472 (.I0(\state[1] ), .I1(read_write), .I2(\state[2] ), 
            .O(n302)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hc5c5 */ ;
    defparam LUT__472.LUTMASK = 16'hc5c5;
    EFX_LUT4 LUT__473 (.I0(n301), .I1(\state[2] ), .I2(n302), .I3(\state[3] ), 
            .O(n537)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf0ee */ ;
    defparam LUT__473.LUTMASK = 16'hf0ee;
    EFX_LUT4 LUT__474 (.I0(n291), .I1(\state[3] ), .I2(\state[2] ), .I3(reset), 
            .O(ceg_net61)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hff40 */ ;
    defparam LUT__474.LUTMASK = 16'hff40;
    EFX_LUT4 LUT__475 (.I0(\state[2] ), .I1(\state[0] ), .I2(\state[1] ), 
            .I3(write), .O(n1324)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfd40 */ ;
    defparam LUT__475.LUTMASK = 16'hfd40;
    EFX_LUT4 LUT__476 (.I0(n291), .I1(read_write), .I2(\post_wait_state[0] ), 
            .O(n303)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7070 */ ;
    defparam LUT__476.LUTMASK = 16'h7070;
    EFX_LUT4 LUT__477 (.I0(n303), .I1(n291), .I2(n297), .I3(\state[3] ), 
            .O(n542)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcafc */ ;
    defparam LUT__477.LUTMASK = 16'hcafc;
    EFX_LUT4 LUT__478 (.I0(\byte_count[2] ), .I1(\byte_count[1] ), .I2(\state[0] ), 
            .I3(\state[1] ), .O(n304)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7000 */ ;
    defparam LUT__478.LUTMASK = 16'h7000;
    EFX_LUT4 LUT__479 (.I0(n304), .I1(\state[1] ), .I2(\state[0] ), .I3(\state[2] ), 
            .O(n305)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h55c3 */ ;
    defparam LUT__479.LUTMASK = 16'h55c3;
    EFX_LUT4 LUT__480 (.I0(n305), .I1(\state[3] ), .I2(n298), .I3(reset), 
            .O(ceg_net1548)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfff1 */ ;
    defparam LUT__480.LUTMASK = 16'hfff1;
    EFX_LUT4 LUT__481 (.I0(data_length[0]), .I1(fifo_read_data[2]), .I2(n291), 
            .O(n2570)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;
    defparam LUT__481.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__482 (.I0(\state[3] ), .I1(n287), .O(ceg_net1419)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbbbb */ ;
    defparam LUT__482.LUTMASK = 16'hbbbb;
    EFX_LUT4 LUT__483 (.I0(reset), .I1(\state[2] ), .I2(\state[3] ), .O(n306)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0101 */ ;
    defparam LUT__483.LUTMASK = 16'h0101;
    EFX_LUT4 LUT__484 (.I0(fifo_empty), .I1(\state[1] ), .I2(\state[0] ), 
            .I3(n306), .O(ceg_net721)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he3ff */ ;
    defparam LUT__484.LUTMASK = 16'he3ff;
    EFX_LUT4 LUT__485 (.I0(\byte_count[0] ), .I1(\byte_count[2] ), .I2(\byte_count[1] ), 
            .O(n307)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;
    defparam LUT__485.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__486 (.I0(\r_data[1] ), .I1(\r_data[0] ), .I2(n307), 
            .I3(\state[2] ), .O(n1731)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hca00 */ ;
    defparam LUT__486.LUTMASK = 16'hca00;
    EFX_LUT4 LUT__487 (.I0(n290), .I1(\byte_count[1] ), .I2(\byte_count[0] ), 
            .I3(n287), .O(ceg_net729)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd755 */ ;
    defparam LUT__487.LUTMASK = 16'hd755;
    EFX_LUT4 LUT__488 (.I0(\r_data[1] ), .I1(\r_data[0] ), .I2(\byte_count[0] ), 
            .O(n308)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3535 */ ;
    defparam LUT__488.LUTMASK = 16'h3535;
    EFX_LUT4 LUT__489 (.I0(\byte_count[0] ), .I1(\r_data[2] ), .O(n309)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__489.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__490 (.I0(n309), .I1(n308), .I2(\byte_count[1] ), .I3(n288), 
            .O(n1737)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3a00 */ ;
    defparam LUT__490.LUTMASK = 16'h3a00;
    EFX_LUT4 LUT__491 (.I0(\byte_count[1] ), .I1(\byte_count[0] ), .I2(n287), 
            .I3(n290), .O(ceg_net734)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h10ff */ ;
    defparam LUT__491.LUTMASK = 16'h10ff;
    EFX_LUT4 LUT__492 (.I0(\r_data[2] ), .I1(\byte_count[1] ), .I2(\byte_count[0] ), 
            .O(n310)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0707 */ ;
    defparam LUT__492.LUTMASK = 16'h0707;
    EFX_LUT4 LUT__493 (.I0(\r_data[3] ), .I1(\r_data[1] ), .I2(\byte_count[1] ), 
            .I3(\byte_count[0] ), .O(n311)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3500 */ ;
    defparam LUT__493.LUTMASK = 16'h3500;
    EFX_LUT4 LUT__494 (.I0(\byte_count[2] ), .I1(\state[2] ), .O(n312)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__494.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__495 (.I0(\byte_count[0] ), .I1(\byte_count[1] ), .I2(\r_data[0] ), 
            .I3(n312), .O(n313)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;
    defparam LUT__495.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__496 (.I0(n311), .I1(n310), .I2(n288), .I3(n313), .O(n1743)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hff10 */ ;
    defparam LUT__496.LUTMASK = 16'hff10;
    EFX_LUT4 LUT__497 (.I0(\byte_count[0] ), .I1(\byte_count[1] ), .I2(\byte_count[2] ), 
            .I3(n289), .O(n314)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1e00 */ ;
    defparam LUT__497.LUTMASK = 16'h1e00;
    EFX_LUT4 LUT__498 (.I0(n314), .I1(n287), .I2(n292), .O(ceg_net739)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4f4f */ ;
    defparam LUT__498.LUTMASK = 16'h4f4f;
    EFX_LUT4 LUT__499 (.I0(\r_data[3] ), .I1(\r_data[2] ), .I2(\byte_count[0] ), 
            .O(n315)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3535 */ ;
    defparam LUT__499.LUTMASK = 16'h3535;
    EFX_LUT4 LUT__500 (.I0(\byte_count[2] ), .I1(n315), .O(n316)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__500.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__501 (.I0(\r_data[4] ), .I1(\byte_count[0] ), .I2(n308), 
            .I3(\byte_count[2] ), .O(n317)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf077 */ ;
    defparam LUT__501.LUTMASK = 16'hf077;
    EFX_LUT4 LUT__502 (.I0(n317), .I1(n316), .I2(\byte_count[1] ), .I3(\state[2] ), 
            .O(n1749)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hc500 */ ;
    defparam LUT__502.LUTMASK = 16'hc500;
    EFX_LUT4 LUT__503 (.I0(\byte_count[0] ), .I1(\byte_count[1] ), .I2(\byte_count[2] ), 
            .O(n318)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0101 */ ;
    defparam LUT__503.LUTMASK = 16'h0101;
    EFX_LUT4 LUT__504 (.I0(n318), .I1(n304), .I2(n287), .I3(n292), .O(ceg_net744)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb0ff */ ;
    defparam LUT__504.LUTMASK = 16'hb0ff;
    EFX_LUT4 LUT__505 (.I0(\r_data[2] ), .I1(\r_data[4] ), .I2(\byte_count[1] ), 
            .I3(\byte_count[2] ), .O(n319)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf53f */ ;
    defparam LUT__505.LUTMASK = 16'hf53f;
    EFX_LUT4 LUT__506 (.I0(\r_data[5] ), .I1(\r_data[3] ), .I2(\byte_count[1] ), 
            .O(n320)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3535 */ ;
    defparam LUT__506.LUTMASK = 16'h3535;
    EFX_LUT4 LUT__507 (.I0(\r_data[0] ), .I1(\r_data[1] ), .I2(\byte_count[0] ), 
            .I3(\byte_count[1] ), .O(n321)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf53f */ ;
    defparam LUT__507.LUTMASK = 16'hf53f;
    EFX_LUT4 LUT__508 (.I0(n320), .I1(\byte_count[0] ), .I2(n321), .I3(\byte_count[2] ), 
            .O(n322)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf0bb */ ;
    defparam LUT__508.LUTMASK = 16'hf0bb;
    EFX_LUT4 LUT__509 (.I0(n319), .I1(\byte_count[0] ), .I2(n322), .I3(\state[2] ), 
            .O(n1755)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1f00 */ ;
    defparam LUT__509.LUTMASK = 16'h1f00;
    EFX_LUT4 LUT__510 (.I0(n295), .I1(\byte_count[0] ), .I2(n318), .I3(n289), 
            .O(n323)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0700 */ ;
    defparam LUT__510.LUTMASK = 16'h0700;
    EFX_LUT4 LUT__511 (.I0(n323), .I1(n287), .I2(n292), .O(ceg_net749)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4f4f */ ;
    defparam LUT__511.LUTMASK = 16'h4f4f;
    EFX_LUT4 LUT__512 (.I0(n315), .I1(n308), .I2(\byte_count[1] ), .O(n324)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;
    defparam LUT__512.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__513 (.I0(\r_data[6] ), .I1(\r_data[4] ), .I2(\byte_count[1] ), 
            .O(n325)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3535 */ ;
    defparam LUT__513.LUTMASK = 16'h3535;
    EFX_LUT4 LUT__514 (.I0(\byte_count[1] ), .I1(\r_data[5] ), .I2(n325), 
            .I3(\byte_count[0] ), .O(n326)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf077 */ ;
    defparam LUT__514.LUTMASK = 16'hf077;
    EFX_LUT4 LUT__515 (.I0(n326), .I1(n324), .I2(\byte_count[2] ), .I3(\state[2] ), 
            .O(n1761)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3500 */ ;
    defparam LUT__515.LUTMASK = 16'h3500;
    EFX_LUT4 LUT__516 (.I0(n318), .I1(n289), .I2(n287), .I3(n292), .O(ceg_net754)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb0ff */ ;
    defparam LUT__516.LUTMASK = 16'hb0ff;
    EFX_LUT4 LUT__517 (.I0(\byte_count[1] ), .I1(\r_data[4] ), .I2(n310), 
            .I3(n311), .O(n327)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h004f */ ;
    defparam LUT__517.LUTMASK = 16'h004f;
    EFX_LUT4 LUT__518 (.I0(\r_data[7] ), .I1(\r_data[5] ), .I2(\byte_count[1] ), 
            .O(n328)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3535 */ ;
    defparam LUT__518.LUTMASK = 16'h3535;
    EFX_LUT4 LUT__519 (.I0(\byte_count[1] ), .I1(\r_data[6] ), .I2(n328), 
            .I3(\byte_count[0] ), .O(n329)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf077 */ ;
    defparam LUT__519.LUTMASK = 16'hf077;
    EFX_LUT4 LUT__520 (.I0(n329), .I1(n327), .I2(\byte_count[2] ), .I3(\state[2] ), 
            .O(n1767)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hc500 */ ;
    defparam LUT__520.LUTMASK = 16'hc500;
    EFX_LUT4 LUT__521 (.I0(\r_data[7] ), .I1(\r_data[6] ), .I2(\byte_count[0] ), 
            .O(n330)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3535 */ ;
    defparam LUT__521.LUTMASK = 16'h3535;
    EFX_LUT4 LUT__522 (.I0(\r_data[5] ), .I1(\r_data[4] ), .I2(\byte_count[0] ), 
            .O(n331)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3535 */ ;
    defparam LUT__522.LUTMASK = 16'h3535;
    EFX_LUT4 LUT__523 (.I0(n331), .I1(n330), .I2(\byte_count[1] ), .I3(\byte_count[2] ), 
            .O(n332)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfacf */ ;
    defparam LUT__523.LUTMASK = 16'hfacf;
    EFX_LUT4 LUT__524 (.I0(n315), .I1(n295), .I2(n332), .I3(\state[2] ), 
            .O(n1773)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4f00 */ ;
    defparam LUT__524.LUTMASK = 16'h4f00;
    EFX_LUT4 LUT__525 (.I0(\byte_count[2] ), .I1(\byte_count[1] ), .I2(n289), 
            .I3(n287), .O(n333)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1f00 */ ;
    defparam LUT__525.LUTMASK = 16'h1f00;
    EFX_LUT4 LUT__526 (.I0(n333), .I1(n292), .O(ceg_net764)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbbbb */ ;
    defparam LUT__526.LUTMASK = 16'hbbbb;
    EFX_LUT4 LUT__527 (.I0(n325), .I1(n320), .I2(\byte_count[0] ), .O(n334)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;
    defparam LUT__527.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__528 (.I0(\byte_count[0] ), .I1(\byte_count[1] ), .I2(\r_data[7] ), 
            .O(n335)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__528.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__529 (.I0(n335), .I1(n334), .I2(\byte_count[2] ), .I3(\state[2] ), 
            .O(n1779)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3a00 */ ;
    defparam LUT__529.LUTMASK = 16'h3a00;
    EFX_LUT4 LUT__530 (.I0(\byte_count[1] ), .I1(\byte_count[0] ), .I2(\byte_count[2] ), 
            .I3(n289), .O(n336)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf800 */ ;
    defparam LUT__530.LUTMASK = 16'hf800;
    EFX_LUT4 LUT__531 (.I0(n336), .I1(n287), .I2(n292), .O(ceg_net769)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4f4f */ ;
    defparam LUT__531.LUTMASK = 16'h4f4f;
    EFX_LUT4 LUT__532 (.I0(n330), .I1(n331), .I2(\byte_count[1] ), .I3(n312), 
            .O(n1785)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3500 */ ;
    defparam LUT__532.LUTMASK = 16'h3500;
    EFX_LUT4 LUT__533 (.I0(n289), .I1(n312), .I2(ceg_net1159), .I3(\state[3] ), 
            .O(ceg_net774)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hff07 */ ;
    defparam LUT__533.LUTMASK = 16'hff07;
    EFX_LUT4 LUT__534 (.I0(n329), .I1(n312), .O(n1791)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__534.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__535 (.I0(\byte_count[1] ), .I1(\byte_count[0] ), .I2(n287), 
            .I3(ceg_net774), .O(ceg_net779)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hff10 */ ;
    defparam LUT__535.LUTMASK = 16'hff10;
    EFX_LUT4 LUT__536 (.I0(n330), .I1(n312), .I2(\byte_count[1] ), .O(n1797)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__536.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__537 (.I0(\byte_count[1] ), .I1(n287), .I2(ceg_net774), 
            .O(ceg_net784)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf4f4 */ ;
    defparam LUT__537.LUTMASK = 16'hf4f4;
    EFX_LUT4 LUT__538 (.I0(n312), .I1(n335), .O(n1803)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__538.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__539 (.I0(\byte_count[1] ), .I1(\byte_count[0] ), .I2(n287), 
            .I3(ceg_net774), .O(ceg_net789)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hff70 */ ;
    defparam LUT__539.LUTMASK = 16'hff70;
    EFX_LUT4 LUT__540 (.I0(\state[0] ), .I1(\byte_count[0] ), .O(n337)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__540.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__541 (.I0(\byte_count[1] ), .I1(n337), .I2(\state[2] ), 
            .O(n2103)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;
    defparam LUT__541.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__542 (.I0(\byte_count[1] ), .I1(n337), .I2(\byte_count[2] ), 
            .I3(\state[2] ), .O(n2109)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;
    defparam LUT__542.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__543 (.I0(\length[0] ), .I1(\state[2] ), .I2(\length[1] ), 
            .O(n338)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he1e1 */ ;
    defparam LUT__543.LUTMASK = 16'he1e1;
    EFX_LUT4 LUT__544 (.I0(\state[1] ), .I1(fifo_read_data[1]), .I2(n338), 
            .I3(\state[3] ), .O(n548)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf088 */ ;
    defparam LUT__544.LUTMASK = 16'hf088;
    EFX_LUT4 LUT__545 (.I0(\length[0] ), .I1(\length[1] ), .I2(\state[2] ), 
            .I3(\length[2] ), .O(n339)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfe01 */ ;
    defparam LUT__545.LUTMASK = 16'hfe01;
    EFX_LUT4 LUT__546 (.I0(\state[1] ), .I1(fifo_read_data[2]), .I2(n339), 
            .I3(\state[3] ), .O(n547)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf088 */ ;
    defparam LUT__546.LUTMASK = 16'hf088;
    EFX_LUT4 LUT__547 (.I0(fifo_read_data[3]), .I1(\state[1] ), .O(n340)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__547.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__548 (.I0(\length[0] ), .I1(\length[1] ), .I2(\length[2] ), 
            .I3(\state[2] ), .O(n341)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__548.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__549 (.I0(n340), .I1(\length[3] ), .I2(n341), .I3(\state[3] ), 
            .O(n546)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3caa */ ;
    defparam LUT__549.LUTMASK = 16'h3caa;
    EFX_LUT4 LUT__550 (.I0(\length[3] ), .I1(n341), .I2(\length[4] ), 
            .O(n342)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4b4b */ ;
    defparam LUT__550.LUTMASK = 16'h4b4b;
    EFX_LUT4 LUT__551 (.I0(\state[1] ), .I1(fifo_read_data[4]), .I2(n342), 
            .I3(\state[3] ), .O(n545)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0f88 */ ;
    defparam LUT__551.LUTMASK = 16'h0f88;
    EFX_LUT4 LUT__552 (.I0(\length[3] ), .I1(\length[4] ), .I2(n341), 
            .I3(\length[5] ), .O(n343)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h10ef */ ;
    defparam LUT__552.LUTMASK = 16'h10ef;
    EFX_LUT4 LUT__553 (.I0(\state[1] ), .I1(fifo_read_data[5]), .I2(n343), 
            .I3(\state[3] ), .O(n544)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0f88 */ ;
    defparam LUT__553.LUTMASK = 16'h0f88;
    EFX_LUT4 LUT__554 (.I0(fifo_read_data[2]), .I1(\state[2] ), .O(n2121)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__554.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__555 (.I0(fifo_read_data[3]), .I1(\state[2] ), .O(n2127)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__555.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__556 (.I0(fifo_read_data[4]), .I1(\state[2] ), .O(n2133)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__556.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__557 (.I0(fifo_read_data[5]), .I1(\state[2] ), .O(n2139)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__557.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__558 (.I0(fifo_read_data[6]), .I1(\state[2] ), .O(n2145)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__558.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__559 (.I0(fifo_read_data[7]), .I1(\state[2] ), .O(n2151)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__559.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__560 (.I0(\r_data[1] ), .I1(fifo_read_data[1]), .I2(\state[0] ), 
            .I3(\state[2] ), .O(n2061)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__560.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__561 (.I0(\r_data[2] ), .I1(fifo_read_data[2]), .I2(\state[0] ), 
            .I3(\state[2] ), .O(n2067)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__561.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__562 (.I0(\r_data[3] ), .I1(fifo_read_data[3]), .I2(\state[0] ), 
            .I3(\state[2] ), .O(n2073)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__562.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__563 (.I0(\r_data[4] ), .I1(fifo_read_data[4]), .I2(\state[0] ), 
            .I3(\state[2] ), .O(n2079)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__563.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__564 (.I0(\r_data[5] ), .I1(fifo_read_data[5]), .I2(\state[0] ), 
            .I3(\state[2] ), .O(n2085)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__564.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__565 (.I0(\r_data[6] ), .I1(fifo_read_data[6]), .I2(\state[0] ), 
            .I3(\state[2] ), .O(n2091)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__565.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__566 (.I0(\r_data[7] ), .I1(fifo_read_data[7]), .I2(\state[0] ), 
            .I3(\state[2] ), .O(n2097)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__566.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__567 (.I0(fifo_read_data[1]), .I1(\state[3] ), .O(n590)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__567.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__568 (.I0(fifo_read_data[2]), .I1(\state[3] ), .O(n589)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__568.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__569 (.I0(fifo_read_data[3]), .I1(\state[3] ), .O(n588)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__569.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__570 (.I0(fifo_read_data[4]), .I1(\state[3] ), .O(n587)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__570.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__571 (.I0(fifo_read_data[5]), .I1(\state[3] ), .O(n586)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__571.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__572 (.I0(fifo_read_data[6]), .I1(\state[3] ), .O(n585)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__572.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__573 (.I0(fifo_read_data[7]), .I1(\state[3] ), .O(n584)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__573.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__574 (.I0(write_data[1]), .I1(fifo_read_data[1]), .I2(\state[0] ), 
            .I3(\state[3] ), .O(n557)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__574.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__575 (.I0(write_data[2]), .I1(fifo_read_data[2]), .I2(\state[0] ), 
            .I3(\state[3] ), .O(n556)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__575.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__576 (.I0(write_data[3]), .I1(fifo_read_data[3]), .I2(\state[0] ), 
            .I3(\state[3] ), .O(n555)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__576.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__577 (.I0(write_data[4]), .I1(fifo_read_data[4]), .I2(\state[0] ), 
            .I3(\state[3] ), .O(n554)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__577.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__578 (.I0(write_data[5]), .I1(fifo_read_data[5]), .I2(\state[0] ), 
            .I3(\state[3] ), .O(n553)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__578.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__579 (.I0(write_data[6]), .I1(fifo_read_data[6]), .I2(\state[0] ), 
            .I3(\state[3] ), .O(n552)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__579.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__580 (.I0(write_data[7]), .I1(fifo_read_data[7]), .I2(\state[0] ), 
            .I3(\state[3] ), .O(n551)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__580.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__581 (.I0(\length[0] ), .I1(\length[1] ), .I2(n299), 
            .O(n344)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;
    defparam LUT__581.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__582 (.I0(\state[0] ), .I1(data_address[0]), .O(n345)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__582.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__583 (.I0(n344), .I1(n345), .I2(data_address[1]), .I3(\state[3] ), 
            .O(n563)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb400 */ ;
    defparam LUT__583.LUTMASK = 16'hb400;
    EFX_LUT4 LUT__584 (.I0(data_address[1]), .I1(n345), .O(n346)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__584.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__585 (.I0(n344), .I1(n346), .I2(data_address[2]), .I3(\state[3] ), 
            .O(n562)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb400 */ ;
    defparam LUT__585.LUTMASK = 16'hb400;
    EFX_LUT4 LUT__586 (.I0(\state[0] ), .I1(data_address[0]), .I2(data_address[1]), 
            .I3(data_address[2]), .O(n347)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;
    defparam LUT__586.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__587 (.I0(\length[1] ), .I1(\length[0] ), .I2(n299), 
            .I3(n347), .O(n348)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hef00 */ ;
    defparam LUT__587.LUTMASK = 16'hef00;
    EFX_LUT4 LUT__588 (.I0(data_address[3]), .I1(n348), .I2(\state[3] ), 
            .O(n561)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;
    defparam LUT__588.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__589 (.I0(data_address[3]), .I1(n348), .I2(data_address[4]), 
            .I3(\state[3] ), .O(n560)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;
    defparam LUT__589.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__590 (.I0(\state[0] ), .I1(address_count), .I2(\state[2] ), 
            .I3(\state[3] ), .O(n349)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0d00 */ ;
    defparam LUT__590.LUTMASK = 16'h0d00;
    EFX_LUT4 LUT__591 (.I0(\post_wait_state[1] ), .I1(fifo_empty), .I2(\state[1] ), 
            .I3(\state[0] ), .O(n350)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0c5f */ ;
    defparam LUT__591.LUTMASK = 16'h0c5f;
    EFX_LUT4 LUT__592 (.I0(n350), .I1(n304), .I2(\state[3] ), .I3(\state[2] ), 
            .O(n351)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0305 */ ;
    defparam LUT__592.LUTMASK = 16'h0305;
    EFX_LUT4 LUT__593 (.I0(n300), .I1(\state[1] ), .I2(n349), .I3(n351), 
            .O(n536)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hffb0 */ ;
    defparam LUT__593.LUTMASK = 16'hffb0;
    EFX_LUT4 LUT__594 (.I0(\post_wait_state[2] ), .I1(\state[2] ), .I2(\state[3] ), 
            .I3(\state[0] ), .O(n352)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcff1 */ ;
    defparam LUT__594.LUTMASK = 16'hcff1;
    EFX_LUT4 LUT__595 (.I0(n352), .I1(\state[1] ), .O(n535)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__595.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__596 (.I0(n295), .I1(\post_wait_state[3] ), .I2(\state[0] ), 
            .I3(\state[2] ), .O(n353)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5f03 */ ;
    defparam LUT__596.LUTMASK = 16'h5f03;
    EFX_LUT4 LUT__597 (.I0(\state[3] ), .I1(n297), .O(n354)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__597.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__598 (.I0(\length[0] ), .I1(\state[0] ), .I2(\length[1] ), 
            .I3(\state[1] ), .O(n355)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__598.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__599 (.I0(n355), .I1(n299), .I2(\state[2] ), .I3(\state[3] ), 
            .O(n356)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0700 */ ;
    defparam LUT__599.LUTMASK = 16'h0700;
    EFX_LUT4 LUT__600 (.I0(\state[1] ), .I1(n353), .I2(n354), .I3(n356), 
            .O(n534)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hff70 */ ;
    defparam LUT__600.LUTMASK = 16'hff70;
    EFX_LUT4 LUT__601 (.I0(\state[0] ), .I1(\state[2] ), .I2(\post_wait_state[1] ), 
            .I3(\state[3] ), .O(n357)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0fbb */ ;
    defparam LUT__601.LUTMASK = 16'h0fbb;
    EFX_LUT4 LUT__602 (.I0(read_write), .I1(\state[0] ), .I2(\state[2] ), 
            .I3(\state[3] ), .O(n358)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd330 */ ;
    defparam LUT__602.LUTMASK = 16'hd330;
    EFX_LUT4 LUT__603 (.I0(\state[2] ), .I1(\state[3] ), .I2(\post_wait_state[1] ), 
            .O(n359)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__603.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__604 (.I0(n358), .I1(n357), .I2(n359), .I3(\state[1] ), 
            .O(n541)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf3f5 */ ;
    defparam LUT__604.LUTMASK = 16'hf3f5;
    EFX_LUT4 LUT__605 (.I0(\state[2] ), .I1(n289), .O(n360)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__605.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__606 (.I0(\state[0] ), .I1(read_write), .I2(\state[2] ), 
            .I3(\state[1] ), .O(n361)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h004f */ ;
    defparam LUT__606.LUTMASK = 16'h004f;
    EFX_LUT4 LUT__607 (.I0(n361), .I1(\post_wait_state[2] ), .I2(\state[3] ), 
            .O(n362)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__607.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__608 (.I0(n360), .I1(n354), .I2(n362), .O(n540)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf4f4 */ ;
    defparam LUT__608.LUTMASK = 16'hf4f4;
    EFX_LUT4 LUT__609 (.I0(\post_wait_state[3] ), .I1(n361), .I2(n360), 
            .I3(\state[3] ), .O(n539)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'heef0 */ ;
    defparam LUT__609.LUTMASK = 16'heef0;
    EFX_LUT4 LUT__610 (.I0(data_length[1]), .I1(fifo_read_data[3]), .I2(n291), 
            .O(n2154)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;
    defparam LUT__610.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__611 (.I0(data_length[2]), .I1(fifo_read_data[4]), .I2(n291), 
            .O(n2158)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;
    defparam LUT__611.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__612 (.I0(data_length[3]), .I1(fifo_read_data[5]), .I2(n291), 
            .O(n2162)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;
    defparam LUT__612.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__613 (.I0(data_length[4]), .I1(fifo_read_data[6]), .I2(n291), 
            .O(n2166)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;
    defparam LUT__613.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__614 (.I0(data_length[5]), .I1(fifo_read_data[7]), .I2(n291), 
            .O(n2170)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;
    defparam LUT__614.LUTMASK = 16'hcaca;
    EFX_GBUFCE CLKBUF__0 (.CE(1'b1), .I(clk), .O(\clk~O )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_GBUFCE, CE_POLARITY=1'b1 */ ;
    defparam CLKBUF__0.CE_POLARITY = 1'b1;
    
endmodule

//
// Verific Verilog Description of module EFX_LUT4_6ca781a0_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_6ca781a0_1
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_6ca781a0_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_6ca781a0_1
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_6ca781a0_2
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_6ca781a0_2
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_6ca781a0_3
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_6ca781a0_4
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_6ca781a0_5
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_6ca781a0_6
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_6ca781a0_7
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_6ca781a0_8
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_6ca781a0_9
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_6ca781a0_10
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_6ca781a0_11
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_6ca781a0_12
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_6ca781a0_13
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_6ca781a0_14
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_6ca781a0_15
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_6ca781a0_16
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_6ca781a0_17
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_6ca781a0_18
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_6ca781a0_19
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_6ca781a0_20
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_6ca781a0_21
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_6ca781a0_22
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_6ca781a0_23
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_6ca781a0_24
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_6ca781a0_25
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_6ca781a0_26
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_6ca781a0_27
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_6ca781a0_28
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_6ca781a0_29
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_6ca781a0_30
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_6ca781a0_31
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_6ca781a0_32
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_6ca781a0_33
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_6ca781a0_34
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_6ca781a0_35
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_6ca781a0_36
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_6ca781a0_37
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_6ca781a0_38
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_6ca781a0_39
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_6ca781a0_40
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_6ca781a0_41
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_6ca781a0_42
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_6ca781a0_43
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_6ca781a0_44
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_6ca781a0_45
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_6ca781a0_46
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_6ca781a0_47
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_6ca781a0_48
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_6ca781a0_49
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_6ca781a0_50
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_6ca781a0_51
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_6ca781a0_52
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_6ca781a0_53
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_6ca781a0_54
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_6ca781a0_55
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_6ca781a0_56
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_6ca781a0_57
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_6ca781a0_58
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_6ca781a0_59
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_6ca781a0_60
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_6ca781a0_61
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_6ca781a0_62
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_6ca781a0_63
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_6ca781a0_64
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_6ca781a0_65
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_6ca781a0_66
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_6ca781a0_67
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_6ca781a0_68
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_6ca781a0_69
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_6ca781a0_70
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_6ca781a0_71
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_6ca781a0_72
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_6ca781a0_73
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_6ca781a0_74
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_6ca781a0_75
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_6ca781a0_76
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_6ca781a0_77
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_6ca781a0_78
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_6ca781a0_79
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_6ca781a0_80
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_6ca781a0_81
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_GBUFCE_6ca781a0_0
// module not written out since it is a black box. 
//

