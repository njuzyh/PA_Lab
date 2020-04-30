#include "cpu/instr.h"
static void instr_execute_2op() {
	operand_read(&opr_src);
	operand_read(&opr_dest);
	//if(opr_src.data_size == 8 && opr_dest.data_size != 8)
		//opr_dest.val = alu_sbb(sign_ext(opr_src.val, 8),  opr_dest.val);
	//else opr_dest.val = alu_sbb(opr_src.val,  opr_dest.val);
	opr_dest.val = alu_sbb(sign_ext(opr_src.val, opr_src.data_size),  sign_ext(opr_dest.val, opr_dest.data_size));
	operand_write(&opr_dest);
}

make_instr_impl_2op(sbb, i, rm, b)
make_instr_impl_2op(sbb, i, rm, v)
make_instr_impl_2op(sbb, r, rm, v)
make_instr_impl_2op(sbb, r, rm, b)
make_instr_impl_2op(sbb, rm, r, v)
make_instr_impl_2op(sbb, rm, r, b)
make_instr_impl_2op(sbb, i, a, b)
make_instr_impl_2op(sbb, i, a, v)
make_instr_impl_2op(sbb, i, rm, bv)
/*
make_instr_func(sbb_i2rm_bv){
	int len = 1;
	OPERAND i, rm;
	i.data_size = 8;
	rm.data_size = data_size;
	len += modrm_r_rm(eip + 1, &i, &rm);
	operand_read(&i);
	operand_read(&rm);
	rm.val = alu_sbb(sign_ext(i.val, data_size), sign_ext(rm.val, data_size));
	operand_write(&rm);
	return len;
}
*/
