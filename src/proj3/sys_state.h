#ifndef SYS_STATE_T
#define SYS_STATE_T

#define ABNORMAL -1
#define NORMAL 0
#define MAX_MEM_LEN 16384

#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <memory.h>

typedef unsigned word_t ;
typedef unsigned short half_t;
typedef unsigned char byte_t;

typedef word_t reg_t ;

typedef struct cache_entry_s {
    word_t tag0;
    word_t tag1;
    // valid bit
    bool vb0;
    bool vb1;
    // dirty bit
    bool db0;
    bool db1;
    // LRU (0, 1)
    bool lru;
} cache_entry_t;

typedef enum _cache_types_e
{
    TYPE_1=1,
    TYPE_2=2
} cache_types_t;

typedef struct sys_state_s {
    // 인스트럭션 메모리
    word_t imem[sizeof(word_t) * MAX_MEM_LEN];  
    // 데이터 메모리 
    word_t dmem[sizeof(word_t) * MAX_MEM_LEN];
    int imem_len; 
    int dmem_len; 
    // 정수 레지스터
    reg_t x[32];
    // 프로그램 카운터
    reg_t pc;
    reg_t pc_plus_4;
    // 마지막에 남는 바이트
    bool is_there_last_unknow_imem;
    bool is_there_last_unknow_dmem;

    // proj3 -> cache entries
    struct cache_entry_s* cache_entries;
    int cache_entry_len;
    // proj3 -> input
    cache_types_t cache_types;
    // proj3 -> output
    int hit_counter;
    int miss_counter;
    int instr_counter;

    // proj3
    int data_size_B; 
    int block_size_B;
    int tag_size_b;
    int block_bits;
    int index_bits;
} sys_state_t;

// 메모리 할당 후 우선 0xff로 초기화한다. 
int init_sys_state_t(sys_state_t *state);
// instr mem을 로드한다.
int loadImemFile(sys_state_t *state, char *fname);
// dmem을 로드한다. 
int loadDmemFile(sys_state_t *state, char *fname);
// imem의 값을 index로 변환 (pc)
int getImemIndex(unsigned imem_addr);
// dmem의 값을 index로 변환
int getDmemIndex(unsigned dmem_addr);
word_t getPcValue(word_t pc);

void setRegVal(sys_state_t * state, word_t reg_id, word_t val);
word_t getRegVal(sys_state_t * state, word_t reg_id);

#endif