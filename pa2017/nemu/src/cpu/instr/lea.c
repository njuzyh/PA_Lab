#include "cpu/instr.h"

/*make_instr_func(lea) {
	OPERAND r, m;
	r.data_size = data_size;
	m.data_size = data_size;
	int len = 1;
	// read ModR/M for src and dest
	len += modrm_r_rm(eip + 1, &r, &m);
	r.val = m.addr;
	operand_write(&r);
	return len;
}
*/

static void instr_execute_2op() {
	opr_dest.val = opr_src.addr;
	operand_write(&opr_dest);
}

make_instr_impl_2op(lea, rm, r, v)

