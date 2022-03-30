#pragma once

#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>

typedef unsigned int word_t;
typedef unsigned short half_t;
typedef unsigned char byte_t;

typedef word_t reg_t; 

typedef struct {
    // 인스트럭션 메모리
    word_t * imem;  
    int imem_len; 
    // 정수 레지스터
    reg_t x[32];
    // 프로그램 카운터
    reg_t pc;
    // 마지막에 남는 바이트
    bool is_there_last_unknow;
} sys_state_t;

int init_sys_state(sys_state_t *state, char *fname);