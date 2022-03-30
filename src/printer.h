#pragma once

#include <stdbool.h>
#include "mips_info.h"
#include "reader.h"

typedef enum
{
    ODST = 0,
    ODTA,
    ODTS,
    OTSI,
    OTIS,
    OSTI,
    ODS,
    OST,
    OTI,
    OD,
    OS,
    OL,
    O
} eprint_type_t;

typedef unsigned word_t;

eprint_type_t get_print_type(einames_t);
void print_instruction(word_t instr);

// private methods
void print_name(word_t in);
void print_shamt(word_t in);
void print_rs(word_t in);
void print_rt(word_t in);
void print_rd(word_t in);
void print_imm(word_t in);
void print_imm_u(word_t in);
void print_label(word_t in);

// jalr
void print_ods(word_t in);
// J type only
void print_ol(word_t in);

// for load/store
void print_otis(word_t in);
// for branch e.g. beq
void print_osti(word_t in);

void print_otsi(word_t in);
void print_otsu(word_t in);
void print_odts(word_t in);

void print_odst(word_t in);
void print_ost(word_t in);
void print_os(word_t in);

void print_od(word_t in);
void print_odta(word_t in);

// for lui only
void print_oti(word_t in);

// for syscall only
void print_o(word_t in);

void print_bits(unsigned int x);
