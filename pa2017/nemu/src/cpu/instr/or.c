#include "cpu/instr.h"
static void instr_execute_2op() {
	operand_read(&opr_src);
	operand_read(&opr_dest);
	//if(opr_src.data_size == 8 && opr_dest.data_size != 8)
		//opr_dest.val = alu_or(sign_ext(opr_src.val, 8),  opr_dest.val);
	//else opr_dest.val = alu_or(opr_src.val,  opr_dest.val);
	opr_dest.val = alu_or(sign_ext(opr_src.val, opr_src.data_size),  sign_ext(opr_dest.val, opr_dest.data_size));
	operand_write(&opr_dest);
}

make_instr_impl_2op(or, i, rm, b)
make_instr_impl_2op(or, i, rm, v)
make_instr_impl_2op(or, r, rm, v)
make_instr_impl_2op(or, r, rm, b)
make_instr_impl_2op(or, rm, r, v)
make_instr_impl_2op(or, rm, r, b)
make_instr_impl_2op(or, i, a, b)
make_instr_impl_2op(or, i, a, v)
make_instr_impl_2op(or, i, rm, bv)

/*make_instr_func(or_i2rm_bv){
	int len = 1;
	OPERAND i, rm;
	i.data_size = 8;
	rm.data_size = data_size;
	len += modrm_r_rm(eip + 1, &i, &rm);
	operand_read(&i);
	operand_read(&rm);
	rm.val = alu_or(sign_ext(i.val, data_size), sign_ext(rm.val, data_size));
	operand_write(&rm);
	return len;
}
*/
