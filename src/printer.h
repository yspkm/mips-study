#pragma once

#include <stdbool.h>
#include "mips_info.h"
#include "reader.h"
#include "sys_state.h"

void print_register(sys_state_t * state);
void print_pc(sys_state_t * state);

void print_dmem(sys_state_t*state, int line);
void print_imem(sys_state_t*state, int line);