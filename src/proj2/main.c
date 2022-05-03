#include "printer.h"
#include "sys_state.h"
#include "mips_isa.h"
#include <string.h>
#include <stdlib.h>

int main(int argc, char *argv[])
{
    sys_state_t state;
    word_t cur_pc;
    init_sys_state_t(&state);
    int instr_len = atoi(argv[1]);

    loadImemFile(&state, argv[2]);
    if (argc > 3)
    {
        loadDmemFile(&state, argv[3]);
    }
    cur_pc = 0x0;
    int test = IS_KNOWN_INSTRUCTION;
    for (int i = 0; i < instr_len; i++)
    {
        state.pc_plus_4 = cur_pc + 1;
        test = eval_isa(&state, getPcValue(cur_pc));
        if (test == IS_UNKNOWN_INSTRUCTION)
        {
            printf("unknown instruction\n");
            break;
        }
        cur_pc = state.pc_plus_4;
        if (state.pc_plus_4 > state.imem_len)
        {
            break;
        }
    }
    print_register(&state);
    print_pc(&state);

    return 0;
}