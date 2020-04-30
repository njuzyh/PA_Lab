#ifndef  __CACHE_H__
#define __CACHE_H__

#include "nemu.h"
#include "memory/memory.h"
#include "memory/mmu/segment.h"
#include "memory/mmu/page.h"
#include "memory/mmu/tlb.h"

typedef struct Cache_
{
	bool bit;
	uint32_t cache_flag;
	uint8_t cache_data[64];
}CacheLine;

CacheLine cache[1024];

void init_cache();
uint32_t cache_read(paddr_t paddr, size_t len, CacheLine * cache);
void cache_write(paddr_t paddr, size_t len, uint32_t data, CacheLine * cache);

#endif
