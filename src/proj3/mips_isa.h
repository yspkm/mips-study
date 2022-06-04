#pragma once

#include "mips_info.h"
#include "reader.h"
#include "sys_state.h"
#include "cache.h"
#include <stdbool.h>

#define IS_UNKNOWN_INSTRUCTION 1
#define IS_KNOWN_INSTRUCTION 0

typedef struct
{
    word_t opcode;
    word_t func;
    word_t shamt;
    word_t rd_id;
    word_t rd_val;
    word_t rs_id;
    word_t rs_val;
    word_t rt_id;
    word_t rt_val;
    word_t imm;
    word_t label;
} data_set_t;

data_set_t *get_data_set(data_set_t *db, sys_state_t *state, word_t instr);

int eval_isa(sys_state_t *state, unsigned imem_addr);

// Arith/logic, R
void add(sys_state_t *state, word_t instr);
void addu(sys_state_t *state, word_t instr);
void sub(sys_state_t *state, word_t instr);
void subu(sys_state_t *state, word_t instr);
void and (sys_state_t * state, word_t instr);
void or (sys_state_t * state, word_t instr);
void slt(sys_state_t *state, word_t instr);
void sltu(sys_state_t *state, word_t instr);

// Arith/logi, I
void addi(sys_state_t *state, word_t instr);
void addiu(sys_state_t *state, word_t instr);
void andi(sys_state_t *state, word_t instr);
void ori(sys_state_t *state, word_t instr);
void lui(sys_state_t *state, word_t instr);
void slti(sys_state_t *state, word_t instr);
void sltiu(sys_state_t *state, word_t instr);

// Control trasnfer
void beq(sys_state_t *state, word_t instr);
void bne(sys_state_t *state, word_t instr);
void j(sys_state_t *state, word_t instr);
void jal(sys_state_t *state, word_t instr);
void jr(sys_state_t *state, word_t instr);

// Shift
void sll(sys_state_t *state, word_t instr);
void srl(sys_state_t *state, word_t instr);

// Memory Access
void lw(sys_state_t *state, word_t instr);
void sw(sys_state_t *state, word_t instr);
