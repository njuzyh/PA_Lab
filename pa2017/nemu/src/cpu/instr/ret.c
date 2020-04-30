#include "cpu/instr.h"

make_instr_func(ret_near) {
	print_asm_0("ret", "", 1);
	cpu.eip = vaddr_read(cpu.esp, 0, 4);
	cpu.esp += data_size / 8; 
	return 0;
}


make_instr_func(ret_near_imm16) {
	OPERAND i;
	int len = 1;
	i.data_size = 16;
	i.type = OPR_IMM;
	i.sreg = SREG_CS;
	i.addr = eip + 1;
	len += i.data_size / 8;
	operand_read(&i);
	print_asm_1("ret", "", len, &i);
	cpu.eip = vaddr_read(cpu.esp, 0, 4);
	cpu.esp = cpu.esp + i.val + 4;
	return 0;
}
