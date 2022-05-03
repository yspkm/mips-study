#include "sys_state.h"



void setRegVal(sys_state_t * state, word_t reg_id, word_t val)
{
    state->x[reg_id] = val;
}
word_t getRegVal(sys_state_t * state, word_t reg_id) 
{
    return state->x[reg_id];
}

int getImemIndex(unsigned imem_addr)
{
    return (imem_addr) / 4;
}

int getDmemIndex(unsigned dmem_addr)
{
    return (dmem_addr - 0x10000000) / 4;
}

int init_sys_state_t (sys_state_t * state)
{
    //state->dmem = (word_t* ) malloc(sizeof(word_t) * MAX_MEM_LEN);
    //state->imem = (word_t* ) malloc(sizeof(word_t) * MAX_MEM_LEN);
    memset(state->dmem, 0xff, MAX_MEM_LEN * sizeof(word_t));
    memset(state->imem, 0xff, MAX_MEM_LEN * sizeof(word_t));
    for (int i = 0; i < 32; i++)
    {
        state->x[i] = 0x0;
    }
    state->pc = 0;
    state->pc_plus_4 = 0;
}

int loadDmemFile(sys_state_t *state, char *fname)
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
    state->dmem_len = file_bytes / 4;
    fseek(file, 0L, SEEK_SET);
    if (file_bytes - (state->dmem_len * 4) != 0)
    {
        state->is_there_last_unknow_dmem = true;
    }
    else
    {
        state->is_there_last_unknow_dmem = false;
    }
    for (int i = 0; i < state->dmem_len; i++)
    {
        if (!fread(&(state->dmem[i]), sizeof(word_t), 1, file))
        {
            return ABNORMAL;
        }
        temp_word = (byte_t *)(&state->dmem[i]);
        // 리틀엔디안 / 빅엔디안 변환
        for (int j = 0; j < sizeof(word_t) / 2; j++)
        {
            temp_byte = temp_word[j];
            temp_word[j] = temp_word[(sizeof(word_t) - 1) - j];
            temp_word[(sizeof(word_t) - 1) - j] = temp_byte;
        }
    }
    return NORMAL;
}


int loadImemFile(sys_state_t *state, char *fname)
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
        state->is_there_last_unknow_imem = true;
    }
    else
    {
        state->is_there_last_unknow_imem = false;
    }
    //state->imem = (word_t *)malloc(sizeof(word_t) * state->imem_len);
    for (int i = 0; i < state->imem_len; i++)
    {
        if (!fread(&(state->imem[i]), sizeof(word_t), 1, file))
        {
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
    //state->pc = 0;
    // $zero
    //state->x[0] = 0;
    return NORMAL;
}

void set_next_instruction_to_pc(sys_state_t *state)
{
    state->pc + 0x4;
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

word_t getPcValue(word_t pc)
{
    return pc * 4;
}