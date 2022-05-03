#include "printer.h"

void print_register(sys_state_t *state)
{
    for (int i = 0; i < 32; i++)
    {
        printf("$%d: 0x%08x\n", i, state->x[i]);
    }
}

void print_pc(sys_state_t *state)
{
    printf("PC: 0x%08x\n", getPcValue(state->pc_plus_4));
}

void print_dmem(sys_state_t *state, int line)
{
    for (int i = 0; i < line; i++)
    {
        printf("%d: %x\n", i, state->dmem[i]);
    }
}

void print_imem(sys_state_t *state, int line)
{
    for (int i = 0; i < line; i++)
    {
        printf("%d: %x\n", i, state->imem[i]);
    }
}