#pragma once

#define NUM_INSTR 47

typedef enum _ename_e
{
    RTYPE = -2,
    UNKNOWN = -1,
    NULL0 = -1,
    NULL1 = -1,
    NULL2 = -1,
    NULL3 = -1,
    NULL4 = -1,
    NULL5 = -1,
    NULL6 = -1,
    NULL7 = -1,
    ADD = 0,
    ADDU,
    AND,
    DIV,
    DIVU,
    JALR,
    JR,
    MFHI,
    MFLO,
    MTHI,
    MTLO,
    MULT,
    MULTU,
    NOR,
    OR,
    SLL,
    SLLV,
    SLT,
    SLTU,
    SRA,
    SRAV,
    SRL,
    SRLV,
    SUB,
    SUBU,
    SYSCALL,
    XOR,
    ADDI,
    ADDIU,
    ANDI,
    BEQ,
    BNE,
    LB,
    LBU,
    LH,
    LHU,
    LUI,
    LW,
    ORI,
    SB,
    SLTI,
    SLTIU,
    SH,
    SW,
    XORI,
    J,
    JAL
} einames_t;

typedef enum
{
    R_T = 0,
    I_T,
    J_T, // j, jal -> label len = 26
    S_T  // syscall -> code len = 20
} type_t;