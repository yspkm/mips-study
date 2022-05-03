#include "sys_state.h"

#define ABNORMAL -1
#define NORMAL 0

int init_sys_state(sys_state_t *state, char *fname)
{
    FILE *file = NULL;
    byte_t *temp_word = NULL;
    byte_t temp_byte = 0;
    int file_bytes = 0;
    file = fopen(fname, "rb");
    if (file == NULL)
    {
        return ABNORMAL;
    }
    fseek(file, 0L, SEEK_END);
    file_bytes = ftell(file);
    state->imem_len = file_bytes / 4;
    fseek(file, 0L, SEEK_SET);
    if (file_bytes - (state->imem_len * 4) != 0)
    {
        state->is_there_last_unknow = true;
    }
    else
    {
        state->is_there_last_unknow = false;
    }
    state->imem = (word_t *)malloc(sizeof(word_t) * state->imem_len);
    for (int i = 0; i < state->imem_len; i++)
    {
        if (!fread(&(state->imem[i]), sizeof(word_t), 1, file))
        {
            printf("!!!");
            return ABNORMAL;
        }
        temp_word = (byte_t *)(&state->imem[i]);
        // 리틀엔디안 / 빅엔디안 변환
        for (int j = 0; j < sizeof(word_t) / 2; j++)
        {
            temp_byte = temp_word[j];
            temp_word[j] = temp_word[(sizeof(word_t) - 1) - j];
            temp_word[(sizeof(word_t) - 1) - j] = temp_byte;
        }
    }
    state->pc = 0;
    // $zero
    state->x[0] = 0;
    return NORMAL;
}

void set_next_instruction_to_pc(sys_state_t *state)
{
    state->pc + 4;
}

word_t get_cur_instruction(sys_state_t *state)
{
    return state->imem[state->pc];
}
word_t load_cur_instruction(sys_state_t * state)
{
    word_t ret = 0;
    ret = get_cur_instruction(state);
    set_next_instruction_to_pc(state);
    return ret;
}