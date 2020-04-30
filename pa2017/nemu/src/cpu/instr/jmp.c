#include "cpu/instr.h"

make_instr_func(jmp_near) {
        OPERAND rel;
        rel.type = OPR_IMM;
	rel.sreg = SREG_CS;
        rel.data_size = data_size;
        rel.addr = eip + 1;

        operand_read(&rel);
				
	int offset = sign_ext(rel.val, data_size);
	print_asm_1("jmp", "", 2, &rel);

	cpu.eip += offset;

        return 1 + data_size / 8;
}

make_instr_func(jmp_short) {
        OPERAND rel;
        rel.type = OPR_IMM;
	rel.sreg = SREG_CS;
        rel.data_size = 8;
        rel.addr = eip + 1;
        operand_read(&rel);
	int offset = sign_ext(rel.val, 8);
	print_asm_1("jmp", "", 2, &rel);
	cpu.eip += offset;
        return 2;
}

make_instr_func(jmp_near_indirect){
        OPERAND rm;
	rm.data_size = data_size;
	int len = 1;
	len += modrm_rm(eip + 1, &rm);
	print_asm_1("jmp", "", len, &rm);
        operand_read(&rm);
	cpu.eip = rm.val;
	return 0;
}

make_instr_func(ljmp)
{
	cpu.eip = laddr_read(eip + 1, 4);
	cpu.cs.val = laddr_read(eip + 5, 2);
	load_sreg(1);
	return 0;
}
