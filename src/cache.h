#pragma once

#include "sys_state.h"
#include "reader.h"

word_t get_tag(sys_state_t *state, word_t addr);
word_t get_index(sys_state_t *state, word_t addr);

// proj3: initialize cache
void init_cache(sys_state_t *state);
void free_cache(sys_state_t* state);
int get_cache_entry_len(sys_state_t *state);
void read_cache(sys_state_t *state, word_t addr);
void write_cache(sys_state_t *state, word_t addr);