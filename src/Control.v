/******************************************************************
* Description
*	This is control unit for the RISC-V Microprocessor. The control unit is 
*	in charge of generation of the control signals. Its only input 
*	corresponds to opcode from the instruction bus.
*	1.0
* Author:
*	Dr. José Luis Pizano Escalante
* email:
*	luispizano@iteso.mx
* Date:
*	16/08/2021
******************************************************************/
module Control
(
	input [6:0]OP_i,
	
	
	output Branch_o,
	output Mem_Read_o,
	output Mem_to_Reg_o,
	output Mem_Write_o,
	output ALU_Src_o,
	output Reg_Write_o,
	output [2:0]ALU_Op_o,
	output Save_PC_o,
	output PC_Select_o
);

localparam R_Type				= 7'b0110011;
localparam I_Type_LOGIC		= 7'b0010011;
localparam I_Type_MEMORY	= 7'b0000011;
localparam I_Type_JUMP		= 7'b1100111;
localparam S_Type				= 7'b0100011;
localparam U_Type				= 7'b0110111;
localparam B_Type				= 7'b1100011;
localparam J_Type				= 7'b1101111;


reg [10:0] control_values;

always@(OP_i) begin	
	case(OP_i)//                     	  109_876_54_3_210
		R_Type:		 	control_values = 11'b00_001_00_0_000;
		I_Type_LOGIC:	control_values = 11'b00_001_00_1_001;
		I_Type_MEMORY: control_values = 11'b00_011_10_1_010;
		I_Type_JUMP: 	control_values = 11'b11_101_00_1_111;
		S_Type:			control_values = 11'b00_000_01_1_010;
		U_Type:			control_values = 11'b00_001_00_1_100;
		B_Type:			control_values = 11'b00_100_00_0_101;
		J_Type:	 		control_values = 11'b01_101_00_1_110;

		default:
			control_values= 9'b000_00_000;
		endcase
end	

assign PC_Select_o = control_values[10];

assign Save_PC_o = control_values[9];

assign Branch_o = control_values[8];

assign Mem_to_Reg_o = control_values[7];

assign Reg_Write_o = control_values[6];

assign Mem_Read_o = control_values[5];

assign Mem_Write_o = control_values[4];

assign ALU_Src_o = control_values[3];

assign ALU_Op_o = control_values[2:0];	

endmodule


