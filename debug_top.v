///////////////////////////////////////////////////////////////////////////////
//
// Auto-generated Efinix JTAG debugger top module. Do not modify. 
//

//`include "dbg_defines.v"
`define DR_WIDTH 82


module edb_top (
    // debug core ports
    input  bscan_CAPTURE,
    input  bscan_DRCK,
    input  bscan_RESET,
    input  bscan_RUNTEST,
    input  bscan_SEL,
    input  bscan_SHIFT,
    input  bscan_TCK,
    input  bscan_TDI,
    input  bscan_TMS,
    input  bscan_UPDATE,
    output bscan_TDO
);

    localparam HUB_CS_WIDTH = 15;

    wire [HUB_CS_WIDTH-1:0] edb_module_selects;
    wire [HUB_CS_WIDTH-1:0] edb_module_inhibit;
    wire [HUB_CS_WIDTH-1:0] edb_module_tdo;
    wire    [`DR_WIDTH-1:0] edb_user_dr;

    // debug core connections
    assign edb_module_inhibit[0]    = 1'b0;
    assign edb_module_tdo[0]        = 1'b0;
    assign edb_module_inhibit[1]    = 1'b0;
    assign edb_module_tdo[1]        = 1'b0;
    assign edb_module_inhibit[2]    = 1'b0;
    assign edb_module_tdo[2]        = 1'b0;
    assign edb_module_inhibit[3]    = 1'b0;
    assign edb_module_tdo[3]        = 1'b0;
    assign edb_module_inhibit[4]    = 1'b0;
    assign edb_module_tdo[4]        = 1'b0;
    assign edb_module_inhibit[5]    = 1'b0;
    assign edb_module_tdo[5]        = 1'b0;
    assign edb_module_inhibit[6]    = 1'b0;
    assign edb_module_tdo[6]        = 1'b0;
    assign edb_module_inhibit[7]    = 1'b0;
    assign edb_module_tdo[7]        = 1'b0;
    assign edb_module_inhibit[8]    = 1'b0;
    assign edb_module_tdo[8]        = 1'b0;
    assign edb_module_inhibit[9]    = 1'b0;
    assign edb_module_tdo[9]        = 1'b0;
    assign edb_module_inhibit[10]   = 1'b0;
    assign edb_module_tdo[10]       = 1'b0;
    assign edb_module_inhibit[11]   = 1'b0;
    assign edb_module_tdo[11]       = 1'b0;
    assign edb_module_inhibit[12]   = 1'b0;
    assign edb_module_tdo[12]       = 1'b0;
    assign edb_module_inhibit[13]   = 1'b0;
    assign edb_module_tdo[13]       = 1'b0;
    assign edb_module_inhibit[14]   = 1'b0;
    assign edb_module_tdo[14]       = 1'b0;

    // debug core instances

    debug_hub debug_hub_inst (
		.bscan_CAPTURE          ( bscan_CAPTURE ),
		.bscan_DRCK             ( bscan_DRCK ),
		.bscan_RESET            ( bscan_RESET ),
		.bscan_RUNTEST          ( bscan_RUNTEST ),
		.bscan_SEL              ( bscan_SEL ),
		.bscan_SHIFT            ( bscan_SHIFT ),
		.bscan_TCK              ( bscan_TCK ),
		.bscan_TDI              ( bscan_TDI ),
		.bscan_TMS              ( bscan_TMS ),
		.bscan_UPDATE           ( bscan_UPDATE ),
		.bscan_TDO              ( bscan_TDO ),
        .edb_module_selects ( edb_module_selects ),
        .edb_module_inhibit ( edb_module_inhibit ),
        .edb_module_tdo     ( edb_module_tdo     ),
        .edb_user_dr        ( edb_user_dr )
    );

endmodule


//////////////////////////////////////////////////////////////////////
// File:  CRC32.v                             
// Date:  Thu Nov 27 13:56:49 2003                                                      
//                                                                     
// Copyright (C) 1999-2003 Easics NV.                 
// This source file may be used and distributed without restriction    
// provided that this copyright statement is not removed from the file 
// and that any derivative work contains the original copyright notice
// and the associated disclaimer.
//
// THIS SOURCE FILE IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS
// OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED
// WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
//
// Purpose: Verilog module containing a synthesizable CRC function
//   * polynomial: (0 1 2 4 5 7 8 10 11 12 16 22 23 26 32)
//   * data width: 1
//                                                                     
// Info: janz@easics.be (Jan Zegers)                           
//       http://www.easics.com
//
// Modified by Nathan Yawn for the Advanced Debug Module
// Changes (C) 2008 - 2010 Nathan Yawn                                 
///////////////////////////////////////////////////////////////////////
//
// CVS Revision History
//
// $Log: adbg_crc32.v,v $
// Revision 1.3  2011-10-24 02:25:11  natey
// Removed extraneous '#1' delays, which were a holdover from the original
// versions in the previous dbg_if core.
//
// Revision 1.2  2010-01-10 22:54:10  Nathan
// Update copyright dates
//
// Revision 1.1  2008/07/22 20:28:29  Nathan
// Changed names of all files and modules (prefixed an a, for advanced).  Cleanup, indenting.  No functional changes.
//
// Revision 1.3  2008/07/06 20:02:53  Nathan
// Fixes for synthesis with Xilinx ISE (also synthesizable with 
// Quartus II 7.0).  Ran through dos2unix.
//
// Revision 1.2  2008/06/20 19:22:10  Nathan
// Reversed the direction of the CRC computation shift, for a more 
// hardware-efficient implementation.
//
//
//
//


module edb_adbg_crc32 (clk, data, enable, shift, clr, rstn, crc_out, serial_out);
    input         clk;
    input         data;
    input         enable;
    input         shift;
    input         clr;
    input         rstn;
    output [31:0] crc_out;
    output        serial_out;

    reg    [31:0] crc;
    wire   [31:0] new_crc;

    // You may notice that the 'poly' in this implementation is backwards.
    // This is because the shift is also 'backwards', so that the data can
    // be shifted out in the same direction, which saves on logic + routing.
    assign new_crc[0] = crc[1];
    assign new_crc[1] = crc[2];
    assign new_crc[2] = crc[3];
    assign new_crc[3] = crc[4];
    assign new_crc[4] = crc[5];
    assign new_crc[5] = crc[6] ^ data ^ crc[0];
    assign new_crc[6] = crc[7];
    assign new_crc[7] = crc[8];
    assign new_crc[8] = crc[9] ^ data ^ crc[0];
    assign new_crc[9] = crc[10] ^ data ^ crc[0];
    assign new_crc[10] = crc[11];
    assign new_crc[11] = crc[12];
    assign new_crc[12] = crc[13];
    assign new_crc[13] = crc[14];
    assign new_crc[14] = crc[15];
    assign new_crc[15] = crc[16] ^ data ^ crc[0];
    assign new_crc[16] = crc[17];
    assign new_crc[17] = crc[18];
    assign new_crc[18] = crc[19];
    assign new_crc[19] = crc[20] ^ data ^ crc[0];
    assign new_crc[20] = crc[21] ^ data ^ crc[0];
    assign new_crc[21] = crc[22] ^ data ^ crc[0];
    assign new_crc[22] = crc[23];
    assign new_crc[23] = crc[24] ^ data ^ crc[0];
    assign new_crc[24] = crc[25] ^ data ^ crc[0];
    assign new_crc[25] = crc[26];
    assign new_crc[26] = crc[27] ^ data ^ crc[0];
    assign new_crc[27] = crc[28] ^ data ^ crc[0];
    assign new_crc[28] = crc[29];
    assign new_crc[29] = crc[30] ^ data ^ crc[0];
    assign new_crc[30] = crc[31] ^ data ^ crc[0];
    assign new_crc[31] =           data ^ crc[0];

    always @ (posedge clk or negedge rstn)
    begin
        if(~rstn)
            crc[31:0] <= 32'hffffffff;
        else if(clr)
            crc[31:0] <= 32'hffffffff;
        else if(enable)
            crc[31:0] <= new_crc;
        else if (shift)
            crc[31:0] <= {1'b0, crc[31:1]};
    end

    //assign crc_match = (crc == 32'h0);
    assign crc_out = crc; //[31];
    assign serial_out = crc[0];
endmodule
// adbg_crc32


////////////////////////////////////////////////////////////////////////////////
//
// Efinix JTAG debugging debug hub core
//
// Dec 2018, samh
//

//`include "dbg_defines.v"


module debug_hub #(
    parameter ID_WIDTH = 4,
    parameter CS_WIDTH = (1<<ID_WIDTH)-1
)(
    // Xilinx BSCANE2-compatible interface
    input  bscan_CAPTURE,
    input  bscan_DRCK,
    input  bscan_RESET,
    input  bscan_RUNTEST,
    input  bscan_SEL,
    input  bscan_SHIFT,
    input  bscan_TCK,
    input  bscan_TDI,
    input  bscan_TMS,
    input  bscan_UPDATE,
    output bscan_TDO,

    // adv_dbg_if interface used in PULPino, from OpenCores
    output [CS_WIDTH-1:0]   edb_module_selects,
    input  [CS_WIDTH-1:0]   edb_module_inhibit,
    input  [CS_WIDTH-1:0]   edb_module_tdo,
    output [`DR_WIDTH-1:0]  edb_user_dr
);

    reg  [`DR_WIDTH-1:0]        shift_reg;
    wire                        hub_select;
    wire [ID_WIDTH-1:0]         module_id_in;
    reg  [ID_WIDTH-1:0]         module_id_reg;
    wire [ID_WIDTH-1:0]         module_id_sub1;
    wire                        select_inhibit;
    reg  [CS_WIDTH-1:0]         module_selects;
    //reg                         tdo_mux;
    wire [(1<<ID_WIDTH)-1:0]    module_tdo_pwr2;

    assign hub_select   = shift_reg[`DR_WIDTH-1];
    assign module_id_in = shift_reg[`DR_WIDTH-2 -: ID_WIDTH];
    assign edb_user_dr  = shift_reg;

    assign select_inhibit = | edb_module_inhibit;

    always @(posedge bscan_TCK or posedge bscan_RESET) begin
        if (bscan_RESET)
            shift_reg <= {`DR_WIDTH{1'b0}};
        else if (bscan_SEL && bscan_SHIFT)
            shift_reg <= {bscan_TDI, shift_reg[`DR_WIDTH-1:1]};
    end

    always @(posedge bscan_TCK or posedge bscan_RESET) begin
        if (bscan_RESET)
            module_id_reg <= {ID_WIDTH{1'b0}};
        else if (bscan_SEL && hub_select && bscan_UPDATE && !select_inhibit)
            module_id_reg <= module_id_in;
    end

    // one-hot select from id
    genvar i;
    generate
        for (i = 0; i < CS_WIDTH; i = i + 1) begin
            always @(*) begin
                if (module_id_reg == i + 1) // check 4-bit id against 1~15
                    module_selects[i] <= 1'b1;
                else
                    module_selects[i] <= 1'b0;
            end
        end
    endgenerate

    assign edb_module_selects = module_selects;

    // valid id 1~15, sub1 0~14
    // id 0 underflow, becomes 15
    assign module_id_sub1 = module_id_reg - 1'b1; 
    assign module_tdo_pwr2 = {1'b0, edb_module_tdo}; // 1'b0 for id 15
    assign bscan_TDO = module_tdo_pwr2[module_id_sub1];

endmodule
// EFX_DBG_HUB

//////////////////////////////////////////////////////////////////////////////
// Copyright (C) 2013-2019 Efinix Inc. All rights reserved.
//
// This   document  contains  proprietary information  which   is
// protected by  copyright. All rights  are reserved.  This notice
// refers to original work by Efinix, Inc. which may be derivitive
// of other work distributed under license of the authors.  In the
// case of derivative work, nothing in this notice overrides the
// original author's license agreement.  Where applicable, the 
// original license agreement is included in it's original 
// unmodified form immediately below this header.
//
// WARRANTY DISCLAIMER.  
//     THE  DESIGN, CODE, OR INFORMATION ARE PROVIDED “AS IS” AND 
//     EFINIX MAKES NO WARRANTIES, EXPRESS OR IMPLIED WITH 
//     RESPECT THERETO, AND EXPRESSLY DISCLAIMS ANY IMPLIED WARRANTIES, 
//     INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF 
//     MERCHANTABILITY, NON-INFRINGEMENT AND FITNESS FOR A PARTICULAR 
//     PURPOSE.  SOME STATES DO NOT ALLOW EXCLUSIONS OF AN IMPLIED 
//     WARRANTY, SO THIS DISCLAIMER MAY NOT APPLY TO LICENSEE.
//
// LIMITATION OF LIABILITY.  
//     NOTWITHSTANDING ANYTHING TO THE CONTRARY, EXCEPT FOR BODILY 
//     INJURY, EFINIX SHALL NOT BE LIABLE WITH RESPECT TO ANY SUBJECT 
//     MATTER OF THIS AGREEMENT UNDER TORT, CONTRACT, STRICT LIABILITY 
//     OR ANY OTHER LEGAL OR EQUITABLE THEORY (I) FOR ANY INDIRECT, 
//     SPECIAL, INCIDENTAL, EXEMPLARY OR CONSEQUENTIAL DAMAGES OF ANY 
//     CHARACTER INCLUDING, WITHOUT LIMITATION, DAMAGES FOR LOSS OF 
//     GOODWILL, DATA OR PROFIT, WORK STOPPAGE, OR COMPUTER FAILURE OR 
//     MALFUNCTION, OR IN ANY EVENT (II) FOR ANY AMOUNT IN EXCESS, IN 
//     THE AGGREGATE, OF THE FEE PAID BY LICENSEE TO EFINIX HEREUNDER 
//     (OR, IF THE FEE HAS BEEN WAIVED, $100), EVEN IF EFINIX SHALL HAVE 
//     BEEN INFORMED OF THE POSSIBILITY OF SUCH DAMAGES.  SOME STATES DO 
//     NOT ALLOW THE EXCLUSION OR LIMITATION OF INCIDENTAL OR 
//     CONSEQUENTIAL DAMAGES, SO THIS LIMITATION AND EXCLUSION MAY NOT 
//     APPLY TO LICENSEE.
//
/////////////////////////////////////////////////////////////////////////////

