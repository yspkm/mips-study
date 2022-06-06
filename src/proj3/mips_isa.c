#include "mips_isa.h"

int eval_isa(sys_state_t *state, unsigned imem_addr)
{
    int imem_index = getImemIndex(imem_addr);
    word_t instr = state->imem[imem_index];
    einames_t iname = get_instr_name(instr);
    bool is_unknown_instr = false;
    // printf("%s: %x\n", inames[iname], instr);

    switch (iname)
    {
    case ADD:
        add(state, instr);
        break;
    case ADDU:
        addu(state, instr);
        break;
    case SUB:
        sub(state, instr);
        break;
    case SUBU:
        subu(state, instr);
        break;
    case AND:
        and(state, instr);
        break;
    case OR:
        or (state, instr);
        break;
    case SLT:
        slt(state, instr);
        break;
    case SLTU:
        sltu(state, instr);
        break;
    case ADDI:
        addi(state, instr);
        break;
    case ADDIU:
        addiu(state, instr);
        break;
    case ANDI:
        andi(state, instr);
        break;
    case ORI:
        ori(state, instr);
        break;
    case LUI:
        lui(state, instr);
        break;
    case SLTI:
        slti(state, instr);
        break;
    case SLTIU:
        sltiu(state, instr);
        break;
    case BEQ:
        beq(state, instr);
        break;
    case BNE:
        bne(state, instr);
        break;
    case J:
        j(state, instr);
        break;
    case JAL:
        jal(state, instr);
        break;
    case JR:
        jr(state, instr);
        break;
    case SLL:
        sll(state, instr);
        break;
    case SRL:
        srl(state, instr);
        break;
    case LW:
        lw(state, instr);
        break;
    case SW:
        sw(state, instr);
        break;
    default:
        is_unknown_instr = true;
        break;
    }
    if (is_unknown_instr)
    {
        return IS_UNKNOWN_INSTRUCTION;
    }
    else
    {
        return IS_KNOWN_INSTRUCTION;
    }
}

data_set_t *get_data_set(data_set_t *db, sys_state_t *state, word_t instr)
{
    db->func = get_funct(instr);
    db->imm = get_imm(instr);
    db->label = get_label(instr);
    db->opcode = get_opcde(instr);

    db->rd_id = get_rd(instr);
    db->rs_id = get_rs(instr);
    db->rt_id = get_rt(instr);

    db->rd_val = getRegVal(state, db->rd_id);
    db->rs_val = getRegVal(state, db->rs_id);
    db->rt_val = getRegVal(state, db->rt_id);

    db->shamt = get_shamt(instr);

    return db;
}

void add(sys_state_t *state, word_t instr)
{
    data_set_t db;
    get_data_set(&db, state, instr);
    db.rd_val = db.rs_val + db.rt_val;
    state->x[db.rd_id] = db.rd_val;
}

void addu(sys_state_t *state, word_t instr)
{
    data_set_t db;
    get_data_set(&db, state, instr);
    db.rd_val = db.rs_val + db.rt_val;
    state->x[db.rd_id] = db.rd_val;
}

void sub(sys_state_t *state, word_t instr)
{
    data_set_t db;
    get_data_set(&db, state, instr);
    db.rd_val = db.rs_val - db.rt_val;
    state->x[db.rd_id] = db.rd_val;
}
void subu(sys_state_t *state, word_t instr)
{
    data_set_t db;
    get_data_set(&db, state, instr);
    db.rd_val = db.rs_val - db.rt_val;
    state->x[db.rd_id] = db.rd_val;
}

void and (sys_state_t * state, word_t instr)
{
    data_set_t db;
    get_data_set(&db, state, instr);
    db.rd_val = db.rs_val & db.rt_val;
    state->x[db.rd_id] = db.rd_val;
}

void or (sys_state_t * state, word_t instr)
{
    data_set_t db;
    get_data_set(&db, state, instr);
    db.rd_val = db.rs_val | db.rt_val;
    state->x[db.rd_id] = db.rd_val;
}

void slt(sys_state_t *state, word_t instr)
{
    data_set_t db;
    get_data_set(&db, state, instr);
    int s, t;
    s = db.rs_val;
    t = db.rt_val;
    db.rd_val = s < t ? 1 : 0;
    state->x[db.rd_id] = db.rd_val;
}

void sltu(sys_state_t *state, word_t instr)
{
    data_set_t db;
    get_data_set(&db, state, instr);
    unsigned s, t;
    s = db.rs_val;
    t = db.rt_val;
    db.rd_val = s < t ? 1 : 0;
    state->x[db.rd_id] = db.rd_val;
}

// Arith/logi, I
void addi(sys_state_t *state, word_t instr)
{
    data_set_t db;
    get_data_set(&db, state, instr);
    short temp = db.imm;
    int temp_int = (int)temp;
    db.rt_val = db.rs_val + temp_int;
    state->x[db.rt_id] = db.rt_val;
}

void addiu(sys_state_t *state, word_t instr)
{
    data_set_t db;
    get_data_set(&db, state, instr);
    short temp = db.imm;
    int temp_int = temp;
    unsigned temp_u = temp_int;
    db.rt_val = db.rs_val + temp_u;
    state->x[db.rt_id] = db.rt_val;
}

void andi(sys_state_t *state, word_t instr)
{
    data_set_t db;
    get_data_set(&db, state, instr);
    db.rt_val = db.rs_val & db.imm;
    state->x[db.rt_id] = db.rt_val;
}
void ori(sys_state_t *state, word_t instr)
{
    data_set_t db;
    get_data_set(&db, state, instr);
    db.rt_val = db.rs_val | db.imm;
    state->x[db.rt_id] = db.rt_val;
}

void lui(sys_state_t *state, word_t instr)
{
    data_set_t db;
    get_data_set(&db, state, instr);
    db.rt_val = db.imm << 16;
    state->x[db.rt_id] = db.rt_val;
}

void slti(sys_state_t *state, word_t instr)
{
    data_set_t db;
    get_data_set(&db, state, instr);
    short temp = db.imm;
    int s, t;
    s = db.rs_val;
    t = temp;
    db.rt_val = s < t ? 1 : 0;
    state->x[db.rt_id] = db.rt_val;
}

void sltiu(sys_state_t *state, word_t instr)
{
    data_set_t db;
    get_data_set(&db, state, instr);
    unsigned s, t;
    s = db.rs_val;
    t = db.imm;
    db.rt_val = s < t ? 1 : 0;
    state->x[db.rt_id] = db.rt_val;
}

// Control trasnfer
void beq(sys_state_t *state, word_t instr)
{
    data_set_t db;
    get_data_set(&db, state, instr);
    word_t cur_pc_plus_4 = getPcValue(state->pc_plus_4);
    short signed_imm = db.imm;
    int signed_imm_int = signed_imm;
    signed_imm_int <<= 2;
    word_t temp_pc_plus_4 = cur_pc_plus_4 + signed_imm_int;
    if (db.rs_val == db.rt_val)
    {
        state->pc_plus_4 = temp_pc_plus_4 / 4;
    }
}

void bne(sys_state_t *state, word_t instr)
{
    data_set_t db;
    get_data_set(&db, state, instr);
    word_t cur_pc_plus_4 = getPcValue(state->pc_plus_4);
    short signed_imm = db.imm;
    int signed_imm_int = signed_imm;
    signed_imm_int <<= 2;
    word_t temp_pc_plus_4 = cur_pc_plus_4 + signed_imm_int;
    if (db.rs_val != db.rt_val)
    {
        state->pc_plus_4 = temp_pc_plus_4 / 4;
    }
}

void j(sys_state_t *state, word_t instr)
{
    data_set_t db;
    get_data_set(&db, state, instr);
    unsigned temp1 = (state->pc_plus_4 >> 28) << 28;
    unsigned temp2 = ((db.label << 2) << 4) >> 4;
    word_t temp_pc_plus_4 = temp1 | temp2;
    state->pc_plus_4 = temp_pc_plus_4 / 4;
}

void jal(sys_state_t *state, word_t instr)
{
    data_set_t db;
    get_data_set(&db, state, instr);
    state->x[31] = getPcValue(state->pc_plus_4);
    unsigned temp1 = (state->pc_plus_4 >> 28) << 28;
    unsigned temp2 = ((db.label << 2) << 4) >> 4;
    word_t temp_pc_plus_4 = temp1 | temp2;
    state->pc_plus_4 = temp_pc_plus_4 / 4;
}

void jr(sys_state_t *state, word_t instr)
{
    data_set_t db;
    get_data_set(&db, state, instr);
    state->pc_plus_4 = db.rs_val / 4;
}

// word_t sll_vector(word_t num, word_t shamp)
// {
//     char temp[32] = {0};
//     word_t temp_num = num;
//     for (int i = 31; i >= 0; i++)
//     {
//         temp[i] = temp_num % 0x2;
//         temp_num = temp_num / 0x2;
//     }
//     for (int i = 31; i)
// }
// Shift
void sll(sys_state_t *state, word_t instr)
{
    data_set_t db;
    get_data_set(&db, state, instr);
    db.rd_val = db.rt_val << db.shamt;
    state->x[db.rd_id] = db.rd_val;
}
void srl(sys_state_t *state, word_t instr)
{
    data_set_t db;
    get_data_set(&db, state, instr);
    db.rd_val = db.rt_val >> db.shamt;
    state->x[db.rd_id] = db.rd_val;
}

// Memory Access
void lw(sys_state_t *state, word_t instr)
{
    data_set_t db;
    get_data_set(&db, state, instr);
    short signed_imm = db.imm;
    int temp = signed_imm;
    word_t addr = (word_t)((int)db.rs_val + temp);
    // proj3: cache simulation
    read_cache(state, addr);
    word_t dmem_idx = getDmemIndex(addr);
    db.rt_val = state->dmem[dmem_idx];
    state->x[db.rt_id] = db.rt_val;
}

void sw(sys_state_t *state, word_t instr)
{
    data_set_t db;
    get_data_set(&db, state, instr);
    short signed_imm = db.imm;
    // word_t addr = db.rs_val + signed_imm;
    int temp = signed_imm;
    word_t addr = (word_t)((int)db.rs_val + temp);
    // proj3: cache simulation
    write_cache(state, addr);
    word_t dmem_idx = getDmemIndex(addr);
    state->dmem[dmem_idx] = db.rt_val;
}