#include "nemu.h"
#include "cpu/cpu.h"
#include "memory/memory.h"
#include "device/mm_io.h"
#include <memory.h>
#include <stdio.h>
#include "memory/cache.h"


void init_cache()
{
	for(int i = 0; i < 1024; i++)
		cache[i].bit = 0;
}

uint32_t cache_read(paddr_t paddr, size_t len, CacheLine * cache)
{
	uint32_t flag = paddr >> 13;
	uint32_t groupnum = paddr >> 6 << 25 >> 25;
	uint32_t addr = paddr << 26 >> 26;
	int i = 0;
	i = i + 8 * groupnum;
	bool suc = 0;
	int j;
	uint32_t ret = 0;
	if(addr + len >= 64)
		memcpy(&ret, hw_mem + paddr, len);
	else
	{
		for(j = i; j < i + 8; j++)
		{
			if(cache[j].cache_flag == flag)
			{
				if(cache[j].bit == 1)
				{
					suc = 1;
					//if(addr + len >= 64)
					//memcpy(&ret, hw_mem + paddr, len);
					//else
						memcpy(&ret, cache[j].cache_data + addr, len);
					break;
				}
			}
		}
		if(suc == 0)
		{
			for(j = i; j < i + 8; j++)
			{
				if(cache[j].bit == 0)
				{
					memcpy(cache[j].cache_data, hw_mem + (paddr>>6<<6), 64);
					cache[j].bit = 1;
					cache[j].cache_flag = flag;
					break;
				}
			}
			if(j == i + 8)
			{
				for(int m = 0; m < 64; m++)
					cache[j - 1].cache_data[m] = 0;			
				cache[j - 1].bit = 1;
				memcpy(cache[j - 1].cache_data, hw_mem + (paddr>>6<<6), 64);
				cache[j - 1].cache_flag = flag;
			}
			memcpy(&ret, hw_mem + paddr, len);
		}
	}
	return ret;
}

void cache_write(paddr_t paddr, size_t len, uint32_t data, CacheLine * cache)
{
	uint32_t flag = paddr >> 13;
	uint32_t groupnum = paddr >> 6 << 25 >> 25;
	uint32_t addr = paddr << 26 >> 26;
	int i = 0;
	i = i + 8 * groupnum;
	bool suc = 0;
	int j = 0;
	if(addr + len >= 64)
	{
		memcpy(hw_mem + paddr, &data, len);
		//cache[j].bit = 0;
		uint32_t paddr2 = paddr + 64 - addr;
		uint32_t flag2 = paddr2 >> 13;
		uint32_t groupnum2 = paddr2 >> 6 << 25 >> 25;
		int x = 0;
		x = x + 8 * groupnum2;
		for(int y = x; y < x + 8; y++)
		{
			if(cache[y].cache_flag == flag2 && cache[y].bit == 1)
			{
				cache[y].bit = 0;
				break;
			}
		}	
	}
	else
	{
		for(j = i; j < i + 8; j++)
		{
			if(cache[j].cache_flag == flag)
			{
				if(cache[j].bit == 1)
				{
					suc = 1;
					memcpy(cache[j].cache_data + addr, &data, len);
					memcpy(hw_mem + paddr, &data, len);
				}
				break;
			}
		}
		if(suc == 0)
			memcpy(hw_mem + paddr, &data, len);
	}
}

