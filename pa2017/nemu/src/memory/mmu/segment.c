#include "cpu/cpu.h"
#include "memory/memory.h"

// return the linear address from the virtual address and segment selector
uint32_t segment_translate(uint32_t offset, uint8_t sreg) {
	/* TODO: perform segment translation from virtual address to linear address
	 * by reading the invisible part of the segment register 'sreg'
	 */
	uint32_t trans = cpu.segReg[sreg].base + offset;
	//printf("offset = %x,  base = %x\n", offset, cpu.segReg[sreg].base);
	//assert(offset < 0xc0030000);
	return trans;
}

// load the invisible part of a segment register
void load_sreg(uint8_t sreg) {
	/* TODO: load the invisibile part of the segment register 'sreg' by reading the GDT.
	 * The visible part of 'sreg' should be assigned by mov or ljmp already.
	 */
	SegDesc segtlb;
	//printf("sreg = %x,  index = %x\n", sreg, cpu.segReg[sreg].index);
	//printf("base = %x\n", cpu.gdtr.base);
	segtlb.val[0] = laddr_read(cpu.gdtr.base + 8 * cpu.segReg[sreg].index, 4);
	segtlb.val[1] = laddr_read(cpu.gdtr.base + 8 * cpu.segReg[sreg].index + 4, 4);
	//printf("segtlb.val = %x\n", segtlb.val[1]);
	cpu.segReg[sreg].base = (segtlb.base_31_24 << 24) + (segtlb.base_23_16 << 16) + segtlb.base_15_0;
    cpu.segReg[sreg].limit = (segtlb.limit_19_16 << 16) + segtlb.limit_15_0;
	cpu.segReg[sreg].type = segtlb.type;
	cpu.segReg[sreg].privilege_level = segtlb.privilege_level;
	cpu.segReg[sreg].soft_use = segtlb.soft_use;
	//printf("base = %x\n", cpu.segReg[sreg].base);
	//printf("limit = %x\n", cpu.segReg[sreg].limit);
	assert(cpu.segReg[sreg].base == 0);
	assert(cpu.segReg[sreg].limit == 0xfffff);
}
