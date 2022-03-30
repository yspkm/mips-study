#include "reader.h"
#include "printer.h"
#include "sys_state.h"
#include "mips_info.h"

int main(int argc, char *argv[])
{
    sys_state_t state;
    init_sys_state(&state, argv[1]);

    for (int i = 0; i < state.imem_len; i++)
    {
        printf("inst %d: %08x ", i, state.imem[i]);
        print_instruction(state.imem[i]);
        printf("\n");
    }
}