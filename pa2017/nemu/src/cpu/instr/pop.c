#include "cpu/instr.h"

static void instr_execute_1op() {
	operand_read(&opr_src);
	opr_src.val = vaddr_read(cpu.esp, opr_src.sreg, data_size / 8);
	operand_write(&opr_src);
	cpu.esp += data_size / 8;
}

make_instr_impl_1op(pop, r, v)

