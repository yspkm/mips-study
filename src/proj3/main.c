#include "sys_state.h"
#include "mips_isa.h"
#include "cache.h"
#include <string.h>
#include <stdlib.h>
#include <math.h>

int main(int argc, char *argv[])
{
    sys_state_t state;
    state.instr_counter = 0;
    state.hit_counter = 0;
    state.miss_counter = 0;
    state.data_size_B = 0;
    state.block_size_B = 0;
    state.tag_size_b = 0;
    word_t cur_pc;
    state.cache_types = (cache_types_t)atoi(argv[1]);
    state.block_size_B = (int)atoi(argv[2]);

    init_cache(&state);
    state.block_bits = (int)log2((double)state.block_size_B);
    state.index_bits = (int)log2((double)state.cache_entry_len);

    init_sys_state_t(&state);
    int instr_len = atoi(argv[3]);

    loadImemFile(&state, argv[4]);

    if (argc > 5)
    {
        loadDmemFile(&state, argv[5]);
    }
    cur_pc = 0x0;
    int test = IS_KNOWN_INSTRUCTION;
    for (int i = 0; i < instr_len; i++)
    {
        state.pc_plus_4 = cur_pc + 1;
        test = eval_isa(&state, getPcValue(cur_pc));
        state.instr_counter++;
        if (test == IS_UNKNOWN_INSTRUCTION)
        {
            break;
        }
        cur_pc = state.pc_plus_4;
        if (state.pc_plus_4 > state.imem_len)
        {
            break;
        }
    }
    printf("Instructions: %d\n", state.instr_counter);
    printf("Total: %d\n", state.hit_counter + state.miss_counter);
    printf("Hits: %d\n", state.hit_counter);
    printf("Misses: %d\n", state.miss_counter);

    free_cache(&state);
    return 0;
}