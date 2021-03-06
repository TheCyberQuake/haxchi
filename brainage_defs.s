
; game stack return address
HAX_TARGET_ADDRESS equ (0x1076FAA4)

HACHI_APPLICATION_PTR equ (0x10A6E038)

ARM9_ROM_LOCATION equ (0x16220400)
ARM7_ROM_MEM2_START equ (0xEBDDFC00)

; constants for position calcs
RPX_OFFSET equ (0x01800000)

; rop-gadgets part 1 (used for all sorts of different things)
LMW_R21R1xC_LWZ_R0R1x3C_MTLR_R0_ADDI_R1_x38_BLR equ (RPX_OFFSET + 0x02208F6C)
BCTRL equ (RPX_OFFSET + 0x02208EA4)
MTCTR_R27_ADDI_R31x2_MR_R3R31_R4R30_R5R29_R6R28_BCTRL_LMW_R26R1x18_MTLR_R1x34_ADDI_R1x30_BLR equ (RPX_OFFSET + 0x0209A500)
LWZ_R0xAFC_MTLR_R0_ADDI_R1xAF8_BLR equ (RPX_OFFSET + 0x0209A12C)
LWZ_R0R1x14_LWZ_R30R1x8_R31R1xC_MTLR_R0_ADDI_R1x10_BLR equ (RPX_OFFSET + 0x020A38AC)
MR_R11R31_LMW_R26R1x8_LWZ_R0x24_MTLR_R0_ADDI_R1x20_CLRLWI_R3R11x18_BLR equ (RPX_OFFSET + 0x0216FBF0)
LWZ_R0R11x4_R31R11xM4_MTLR_R0_MR_R1R11_BLR equ (RPX_OFFSET + 0x02279BB8)

; rop-gadgets part 2 (only used to set up core 0 thread stack)
LWZ_R3_8_R1_LWZ_R0x14_MTLR_R0_ADDI_R1x10_BLR equ (RPX_OFFSET + 0x0206966C)
MR_R12_R3_CMPLW_R12_R0_LI_R3_0_BEQ_ADDI_R3_R12x10_LWZ_R0_R1x14_MTLR_R0_ADDI_R1x10_BLR equ (RPX_OFFSET + 0x020A58C4)
LWZ_R5_R1x8_CMPLW_R5_R31_BNE_MR_R3_R5_LWZ_R0_R1x1C_LWZ_R30_R1x10_MTLR_R0_LWZ_R31_R1x14_ADDI_R1x18_BLR equ (RPX_OFFSET + 0x0200B8D0)
LWZ_R4_R1xC_STW_R12_R1x8_LWZ_R3_R1x8_LWZ_R0_R1x1C_MTLR_R0_ADDI_R1x18_BLR equ (RPX_OFFSET + 0x0207AD84)
LWZ_R7_R1x10_LWZ_R8_R1x14_STW_R7_R31x0_STW_R8_R31x0_LWZ_R0_R1x2C_LWZ_R31_R0x24_MTLR_R0_LWZ_R30_R0x20_ADDI_R1x28_BLR equ (RPX_OFFSET + 0x0205182C)
LWZ_R3_4_R3_LWZ_R0xC_MTLR_R0_ADDI_R1x8_BLR equ (RPX_OFFSET + 0x02014E0C)
LWZ_R0_R1x1C_LWZ_R30_R1x10_MTLR_R0_LWZ_R31_R1x14_ADDI_R1x18_ADD_R3_R7_BLR equ (RPX_OFFSET + 0x0213FE6C)
MTCTR_R12_BCTRL_LI_R3_0_LWZ_R0_R1x14_LWZ_R31_R1xC_MTLR_R0_ADDI_R1x10_BLR equ (RPX_OFFSET + 0x0202028C)

; functions used from game
NERD_CREATETHREAD equ (RPX_OFFSET + 0x02223C40)
NERD_STARTTHREAD equ (RPX_OFFSET + 0x0222405C)
NERD_JOINTHREAD equ (RPX_OFFSET + 0x02223AEC)
HACHI_APPLICATION_SHUTDOWNANDDESTROY equ (RPX_OFFSET + 0x02007774)
NERD_FASTWIIU_SHUTDOWN equ (RPX_OFFSET + 0x0201BD28)
CORE_SHUTDOWN equ (RPX_OFFSET + 0x02222FBC)
_START_EXIT equ (RPX_OFFSET + 0x02022A70)
