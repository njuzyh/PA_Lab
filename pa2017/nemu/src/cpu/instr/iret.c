#include "cpu/instr.h"

make_instr_func(iret)
{
	cpu.eip = vaddr_read(cpu.esp, 2, data_size / 8);	
	cpu.esp += data_size / 8;
	cpu.cs.val = vaddr_read(cpu.esp, 2, data_size / 8);
	cpu.esp += data_size / 8;
	cpu.eflags.val = vaddr_read(cpu.esp, 2, data_size / 8);
	cpu.esp += data_size / 8;
	print_asm_0("iret", "", 1);
	return 0;
}
