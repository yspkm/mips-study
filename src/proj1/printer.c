#include "printer.h"

void print_instruction(word_t instr)
{
    einames_t e;
    eprint_type_t p;
    e = get_instr_name(instr);
    p = get_print_type(e);

    switch (p)
    {
    case ODST:
        print_odst(instr);
        break;
    case ODTA:
        print_odta(instr);
        break;
    case ODTS:
        print_odts(instr);
        break;
    case OTSI:
        print_otsi(instr);
        break;
    case OTIS:
        print_otis(instr);
        break;
    case OSTI:
        print_osti(instr);
        break;
    case ODS:
        print_ods(instr);
        break;
    case OST:
        print_ost(instr);
        break;
    case OTI:
        print_oti(instr);
        break;
    case OD:
        print_od(instr);
        break;
    case OS:
        print_os(instr);
        break;
    case OL:
        print_ol(instr);
        break;
    case O:
        print_o(instr);
        break;
    default:
        printf("unknown instruction");
        break;
    }
}

eprint_type_t get_print_type(einames_t einame)
{
    eprint_type_t ret = UNKNOWN;
    switch (einame)
    {
    case ADD:
    case ADDU:
    case SUB:
    case SUBU:
    case AND:
    case OR:
    case XOR:
    case NOR:
    case SLT:
    case SLTU:
        ret = ODST;
        break;
    case SLL:
    case SRL:
    case SRA:
        ret = ODTA;
        break;
    case SLLV:
    case SRLV:
    case SRAV:
        ret = ODTS;
        break;
    case ADDI:
    case ADDIU:
    case ANDI:
    case ORI:
    case XORI:
    case SLTI:
    case SLTIU:
        ret = OTSI;
        break;
    case LW:
    case LH:
    case LB:
    case LHU:
    case LBU:
    case SW:
    case SH:
    case SB:
        ret = OTIS;
        break;
    case BEQ:
    case BNE:
        ret = OSTI;
        break;
    case JALR:
        ret = ODS;
        break;
    case DIV:
    case DIVU:
    case MULT:
    case MULTU:
        ret = OST;
        break;
    case LUI:
        ret = OTI;
        break;
    case MFLO:
    case MFHI:
        ret = OD;
        break;
    case MTLO:
    case MTHI:
    case JR:
        ret = OS;
        break;
    case J:
    case JAL:
        ret = OL;
        break;
    case SYSCALL:
        ret = O;
        break;
    default:
        ret = UNKNOWN;
        break;
    }
    return ret;
}

void print_o(word_t in)
{
    print_name(in);
}
// jalr
void print_ods(word_t in)
{
    print_od(in);
    printf(", ");
    print_rs(in);
}

// J type only
void print_ol(word_t in)
{
    print_name(in);
    printf(" ");
    print_label(in);
}

// for load/store
void print_otis(word_t in)
{
    print_name(in);
    printf(" ");
    print_rt(in);
    printf(", ");
    print_imm(in);
    printf("(");
    print_rs(in);
    printf(")");
}

// for branch e.g. beq
void print_osti(word_t in)
{
    print_name(in);
    printf(" ");
    print_rs(in);
    printf(", ");
    print_rt(in);
    printf(", ");
    print_imm(in);
}

void print_otsi(word_t in)
{
    print_name(in);
    printf(" ");
    print_rt(in);
    printf(", ");
    print_rs(in);
    printf(", ");
    print_imm(in);
}

void print_otsu(word_t in)
{
    print_name(in);
    printf(" ");
    print_rt(in);
    printf(", ");
    print_rs(in);
    printf(", ");
    print_imm_u(in);
}

void print_odts(word_t in)
{
    print_od(in);
    printf(", ");
    print_rt(in);
    printf(", ");
    print_rs(in);
}

void print_odst(word_t in)
{
    print_od(in);
    printf(", ");
    print_rs(in);
    printf(", ");
    print_rt(in);
}

void print_ost(word_t in)
{
    print_os(in);
    printf(", ");
    print_rt(in);
}

void print_os(word_t in)
{
    print_name(in);
    printf(" ");
    print_rs(in);
}

void print_od(word_t in)
{
    print_name(in);
    printf(" ");
    print_rd(in);
}

void print_odta(word_t in)
{
    print_name(in);
    printf(" ");
    print_rd(in);
    printf(", ");
    print_rt(in);
    printf(", ");
    print_shamt(in);
}

// for lui only
void print_oti(word_t in)
{
    print_name(in);
    printf(" ");
    print_rt(in);
    printf(", ");
    print_imm(in);
}

void print_name(word_t in)
{
    einames_t ename = get_instr_name(in);
    if (0 <= ename && ename <= 46)
    {
        printf("%s", inames[ename]);
    }
}

void print_shamt(word_t in)
{
    printf("%u", get_shamt(in));
}

void print_rs(word_t in)
{
    printf("$%u", get_rs(in));
}
void print_rt(word_t in)
{
    printf("$%u", get_rt(in));
}

void print_rd(word_t in)
{
    printf("$%u", get_rd(in));
}

void print_imm(word_t in)
{
    unsigned short temp = (unsigned short)get_imm(in);
    short *imm_ptr = (short *)(&temp);
    printf("%hd", *imm_ptr);
}

void print_imm_u(word_t in)
{
    printf("%u", get_imm(in));
}

void print_label(word_t in)
{
    printf("%u", get_label(in));
}

void print_bits(unsigned int x)
{
    word_t temp_x = x;
    char temp[32];
    for (int i = 0; i < 32; i++)
    {
        temp[i] = ((temp_x % 2 == 1) ? '1' : '0');
        temp_x /= 2;
    }
    printf("값 = [");
    for (int i = 31; i >= 0; i--)
    {
        printf("%c", temp[i]);
        if (!(i % 8))
        {
            printf(" ");
        }
    }
    printf("]\n");
}
