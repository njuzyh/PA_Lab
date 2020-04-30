#include "cpu/instr.h"

make_instr_func(pusha)
{
	uint32_t tmp = cpu.esp;
	uint32_t val;
	cpu.esp -= data_size / 8;
	val = cpu.eax;
	vaddr_write(cpu.esp, 0, data_size / 8, val);
	cpu.esp -= data_size / 8;
	val = cpu.ecx;
	vaddr_write(cpu.esp, 0, data_size / 8, val);
	cpu.esp -= data_size / 8;
	val = cpu.edx;
	vaddr_write(cpu.esp, 0, data_size / 8, val);
	cpu.esp -= data_size / 8;
	val = cpu.ebx;
	vaddr_write(cpu.esp, 0, data_size / 8, val);
	cpu.esp -= data_size / 8;
	val = tmp;
	vaddr_write(cpu.esp, 0, data_size / 8, val);
	cpu.esp -= data_size / 8;
	val = cpu.ebp;
	vaddr_write(cpu.esp, 0, data_size / 8, val);
	cpu.esp -= data_size / 8;
	val = cpu.esi;
	vaddr_write(cpu.esp, 0, data_size / 8, val);
	cpu.esp -= data_size / 8;
	val = cpu.edi;
	vaddr_write(cpu.esp, 0, data_size / 8, val);
	return 1;
}
