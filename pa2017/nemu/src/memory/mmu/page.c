#include "cpu/cpu.h"
#include "memory/memory.h"

// translate from linear address to physical address
paddr_t page_translate(laddr_t laddr) {
#ifndef TLB_ENABLED
	/*printf("\nPlease implement page_translate()\n");*/
	//printf("%x\n", laddr);
	uint32_t dir = laddr >> 22;
	uint32_t page = laddr << 10 >> 22;
	uint32_t offset = laddr << 20 >> 20;
	PDE pde;
	uint32_t basepdbr = cpu.cr3.pdbr << 12;
	//printf("%x\n", dir);
	//printf("%x\n", basepdbr + dir * 4);
    pde.val	= paddr_read(basepdbr + dir * 4, 4);
	//printf("pde.val = %x\n", pde.val);
	assert(pde.present == 1);
	PTE pte;
	pte.val = paddr_read((pde.page_frame << 12) + page * 4, 4);
	assert(pte.present == 1);
	paddr_t paddr = (pte.page_frame << 12) + offset;
	return paddr;
#else	
	return tlb_read(laddr) | (laddr & PAGE_MASK);;
#endif
}
