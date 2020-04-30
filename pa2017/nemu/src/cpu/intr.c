#include "cpu/intr.h"
#include "cpu/instr.h"
#include "memory/memory.h"


void raise_intr(uint8_t intr_no) {
#ifdef IA32_INTR
	//printf("Please implement raise_intr()");
	//assert(0);
	// Trigger an exception/interrupt with 'intr_no'
	// 'intr_no' is the index to the IDT
	uint8_t index = intr_no;
	// Push EFLAGS, CS, and EIP
	uint32_t val;
	cpu.esp -= data_size / 8;
	val = cpu.eflags.val;
	vaddr_write(cpu.esp, 0, data_size / 8, val);
	cpu.esp -= data_size / 8;
	val = cpu.cs.val;
	vaddr_write(cpu.esp, 0, data_size / 8, val);
	cpu.esp -= data_size / 8;
	val = cpu.eip;
	vaddr_write(cpu.esp, 0, data_size / 8, val);
	// Find the IDT entry using 'intr_no'
	GateDesc gatedesc;
	gatedesc.val[0] = laddr_read(cpu.idtr.base + 8 * index, 4);
	gatedesc.val[1] = laddr_read(cpu.idtr.base + 8 * index + 4, 4);
	// Clear IF if it is an interrupt
	if((gatedesc.type & 0xf) == 0xe)
	{	
		cpu.eflags.IF = 0;
	}
	// Set EIP to the entry of the interrupt handler
	uint32_t offset = gatedesc.offset_15_0 + (gatedesc.offset_31_16 << 16);
	cpu.eip = offset;
	cpu.cs.val = gatedesc.selector;
#endif
}

void raise_sw_intr(uint8_t intr_no) {
	// return address is the next instruction
	cpu.eip += 2;
	raise_intr(intr_no);
}

