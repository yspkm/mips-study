#include "reader.h"

word_t extract_n2mbits(word_t x, int n, int m)
{
    word_t mask = 0x0;

    if (n < m)
    {
        // n = n + m;
        // m = n - m;
        // n = n - m;
        return 0x0;
    }

    mask = (~0x0);
    mask >>= m;
    mask <<= m + (31 - n);
    mask >>= (31 - n);

    return (x & mask) >> m;
}

// R/I/J
word_t get_opcde(word_t instr)
{
    return extract_n2mbits(instr, 31, 26);
}

// R, I
word_t get_rs(word_t instr)
{
    return extract_n2mbits(instr, 25, 21);
}
word_t get_rt(word_t instr)
{
    return extract_n2mbits(instr, 20, 16);
}

// R
word_t get_rd(word_t instr)
{
    return extract_n2mbits(instr, 15, 11);
}
word_t get_shamt(word_t instr)
{
    return extract_n2mbits(instr, 10, 6);
}
word_t get_funct(word_t instr)
{
    return extract_n2mbits(instr, 5, 0);
}

// I
word_t get_imm(word_t instr)
{
    return extract_n2mbits(instr, 15, 0);
}

// J
word_t get_label(word_t instr)
{
    return extract_n2mbits(instr, 25, 0);
}

einames_t get_instr_name(word_t instr)
{
    einames_t ret = -1;
    word_t i, j;
    static einames_t opcode_table[][8] = {
        {RTYPE, NULL1, J, JAL, BEQ, BNE, NULL6, NULL7},
        {ADDI, ADDIU, SLTI, SLTIU, ANDI, ORI, XORI, LUI},
        {NULL0, NULL1, NULL2, NULL3, NULL4, NULL5, NULL6, NULL7},
        {NULL0, NULL1, NULL2, NULL3, NULL4, NULL5, NULL6, NULL7},
        {LB, LH, NULL2, LW, LBU, LHU, NULL6, NULL7},
        {SB, SH, NULL2, SW, NULL4, NULL5, NULL6, NULL7},
        {NULL0, NULL1, NULL2, NULL3, NULL4, NULL5, NULL6, NULL7},
        {NULL0, NULL1, NULL2, NULL3, NULL4, NULL5, NULL6, NULL7},
    };
    static einames_t funct_table[][8] = {
        {SLL, NULL1, SRL, SRA, SLLV, NULL5, SRLV, SRAV},
        {JR, JALR, NULL2, NULL3, SYSCALL, NULL5, NULL6, NULL7},
        {MFHI, MTHI, MFLO, MTLO, NULL4, NULL5, NULL6, NULL7},
        {MULT, MULTU, DIV, DIVU, NULL4, NULL5, NULL6, NULL7},
        {ADD, ADDU, SUB, SUBU, AND, OR, XOR, NOR},
        {NULL0, NULL1, SLT, SLTU, NULL4, NULL5, NULL6, NULL7},
        {NULL0, NULL1, NULL2, NULL3, NULL4, NULL5, NULL6, NULL7},
        {NULL0, NULL1, NULL2, NULL3, NULL4, NULL5, NULL6, NULL7},
    };
    i = extract_n2mbits(instr, 31, 29);
    j = extract_n2mbits(instr, 28, 26);

    if (opcode_table[i][j] != RTYPE)
    {
        ret = opcode_table[i][j];
    }
    else
    {
        i = extract_n2mbits(instr, 5, 3);
        j = extract_n2mbits(instr, 2, 0);
        ret = funct_table[i][j];
    }
    return ret;
}