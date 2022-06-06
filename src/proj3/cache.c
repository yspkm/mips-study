#include "cache.h"

// proj3: initialize cache
void init_cache(sys_state_t *state)
{
    // 32bit, variable block size
    switch (state->cache_types)
    {
    // 1024B, 1-way, no-write-allocate, write-through
    case TYPE_1:
        state->data_size_B = 1024;
        break;
    case TYPE_2:
        state->data_size_B = 4096;
        break;
    default:
        // printf("type error");
        break;
    }

    state->cache_entry_len = get_cache_entry_len(state);
    state->cache_entries = (cache_entry_t *)malloc(sizeof(cache_entry_t) * state->cache_entry_len);
    // initialize each entry
    for (int i = 0; i < state->cache_entry_len; i++)
    {
        // load entry0 first
        (state->cache_entries)[i].lru = true;
        (state->cache_entries)[i].vb0 = false;
        (state->cache_entries)[i].vb1 = false;
        (state->cache_entries)[i].db0 = false;
        (state->cache_entries)[i].db1 = false;
        (state->cache_entries)[i].tag0 = 0x0;
        (state->cache_entries)[i].tag1 = 0x0;
    }
}

int get_cache_entry_len(sys_state_t *state)
{
    int ret = 0;

    switch (state->cache_types)
    {
    case TYPE_1:
        ret = state->data_size_B / state->block_size_B;
        break;
    case TYPE_2:
        ret = (state->data_size_B / state->block_size_B) / 2;
        break;
    default:
        break;
    }

    return ret;
}

void read_cache(sys_state_t *state, word_t addr)
{
    cache_entry_t *caches = state->cache_entries;
    word_t tag = get_tag(state, addr);
    int index = get_index(state, addr);
    cache_entry_t *entry = &caches[index];
    switch (state->cache_types)
    {
    case TYPE_1:
        // HIT
        if (entry->vb0 && entry->tag0 == tag)
        {
            state->hit_counter++;
        }
        // MISS
        else
        {
            entry->vb0 = true;
            entry->tag0 = tag;
            state->miss_counter++;
        }
        break;
    case TYPE_2:
        // HIT
        if (entry->vb0 && entry->tag0 == tag)
        {
            state->hit_counter++;
            entry->lru = 0;
        }
        else if (entry->vb1 && entry->tag1 == tag)
        {
            state->hit_counter++;
            entry->lru = 1;
        }
        // MISS
        else
        {
            // change 0 entry
            if (entry->lru == 1)
            {
                entry->vb0 = true;
                entry->tag0 = tag;
                entry->lru = 0;
                state->miss_counter++;
            }
            else if (entry->lru == 0)
            {
                entry->vb1 = true;
                entry->tag1 = tag;
                entry->lru = 1;
                state->miss_counter++;
            }
        }
        break;

    default:
        // printf("error")
        break;
    }
}

void write_cache(sys_state_t *state, word_t addr)
{
    cache_entry_t *caches = state->cache_entries;
    word_t tag = get_tag(state, addr);
    int index = get_index(state, addr);
    cache_entry_t *entry = &caches[index];
    switch (state->cache_types)
    {
    case TYPE_1:
        // HIT
        if (entry->vb0 && entry->tag0 == tag)
        {
            state->hit_counter++;
        }
        // MISS
        else
        {
            state->miss_counter++;
        }
        break;
    case TYPE_2:
        // HIT
        if (entry->vb0 && entry->tag0 == tag)
        {
            state->hit_counter++;
            entry->lru = 0;
        }
        else if (entry->vb1 && entry->tag1 == tag)
        {
            state->hit_counter++;
            entry->lru = 1;
        }
        // MISS
        else
        {
            // change 0 entry
            if (entry->lru == 1)
            {
                entry->vb0 = true;
                entry->tag0 = tag;
                entry->lru = 0;
                state->miss_counter++;
            }
            // change 1 entry
            else if (entry->lru == 0)
            {
                entry->vb1 = true;
                entry->tag1 = tag;
                entry->lru = 1;
                state->miss_counter++;
            }
        }
        break;

    default:
        // printf("error")
        break;
    }
}

void free_cache(sys_state_t *state)
{
    free(state->cache_entries);
}