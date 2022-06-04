#pragma once

#include "mips_info.h"
#include "sys_state.h"
#include <stdbool.h>

word_t extract_n2mbits(word_t x, int n, int m);
einames_t get_instr_name(word_t instr);

// R/I/J
word_t get_opcde(word_t instr);  
// J
word_t get_label(word_t instr);
// R, I
word_t get_rs(word_t instr); 
word_t get_rt(word_t instr); 
// R
word_t get_rd(word_t instr); 
word_t get_shamt(word_t instr); 
word_t get_funct(word_t instr);  
// I
word_t get_imm(word_t instr); 

// proj3
word_t get_tag(sys_state_t *state, word_t addr);
word_t get_index(sys_state_t *state, word_t addr);