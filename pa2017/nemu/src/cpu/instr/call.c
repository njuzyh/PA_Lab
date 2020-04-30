#include "cpu/instr.h"

make_instr_func(call_near) {
    OPERAND rel;
    rel.type = OPR_IMM;
	rel.sreg = SREG_CS;
    rel.data_size = data_size;
    rel.addr = cpu.eip + 1;
    operand_read(&rel);
	print_asm_1("call", "", 1 + data_size / 8, &rel);
	cpu.esp -= 4;
	vaddr_write(cpu.esp, 0, rel.data_size / 8, cpu.eip + data_size / 8 + 1);
	cpu.eip += rel.val;
        return 1 + data_size / 8;
}


make_instr_func(call_near_indirect) {
	OPERAND rm;
	int len = 1;
	len += modrm_rm(eip + 1, &rm);
	rm.data_size = 32;
	operand_read(&rm);
	cpu.esp -= 4;
	vaddr_write(cpu.esp, 0, 4, cpu.eip + len);
	cpu.eip = rm.val;
	return 0;
}
