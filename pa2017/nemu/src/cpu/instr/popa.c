#include "cpu/instr.h"

make_instr_func(popa)
{
	cpu.edi = vaddr_read(cpu.esp, 0, data_size / 8);
	cpu.esp += data_size / 8;
	cpu.esi = vaddr_read(cpu.esp, 0, data_size / 8);
	cpu.esp += data_size / 8;
	cpu.ebp = vaddr_read(cpu.esp, 0, data_size / 8);
	cpu.esp += data_size / 8;
	//uint32_t val = vaddr_read(cpu.esp, 0, data_size / 8);
	cpu.esp += data_size / 8;
	cpu.ebx = vaddr_read(cpu.esp, 0, data_size / 8);
	cpu.esp += data_size / 8;
	cpu.edx = vaddr_read(cpu.esp, 0, data_size / 8);
	cpu.esp += data_size / 8;
	cpu.ecx = vaddr_read(cpu.esp, 0, data_size / 8);
	cpu.esp += data_size / 8;	
	cpu.eax = vaddr_read(cpu.esp, 0, data_size / 8);
	cpu.esp += data_size / 8;	
	return 1;
}
