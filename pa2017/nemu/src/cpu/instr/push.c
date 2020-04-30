#include "cpu/instr.h"

static void instr_execute_1op() {
	operand_read(&opr_src);
	cpu.esp -= data_size / 8;
	if(opr_src.data_size == 8)
		opr_src.val = sign_ext(opr_src.val, 8);
	vaddr_write(cpu.esp, opr_src.sreg, 4, opr_src.val);
}

make_instr_impl_1op(push, r, v)
make_instr_impl_1op(push, rm, v)
make_instr_impl_1op(push, i, b)
make_instr_impl_1op(push, i, v)

/*make_instr_func(push_rm_v){
    OPERAND rel;
	int len = 1;
	rel.type = OPR_MEM;
	rel.addr = cpu.eip + 1;
    rel.data_size = data_size;
	len += modrm_rm(eip + 1, &rel);
    operand_read(&rel);
	cpu.esp -= data_size / 8;
	vaddr_write(cpu.esp, 0, data_size / 8, rel.val);
	print_asm_1("push", data_size == 16 ? "w" : "l", len, &rel);
    return len;
}*/

